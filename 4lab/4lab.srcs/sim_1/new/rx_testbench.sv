`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Greg
// 
// Create Date: 09/29/2016 07:38:10 PM
// Design Name: 
// Module Name: rx_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

import check_p::*;

module rx_testbench();

	
	
	parameter baud_rate = 9600;
	parameter period = 1_000_000_000 / baud_rate; // baud rate time period in ns
	parameter period_min = 1_000_000_000 / (baud_rate + 300); // baudrate for worse case (max baud) 
	parameter period_max = 1_000_000_000 / (baud_rate - 300); // baudrate for worse case (min baud)

	// Inputs
	logic  rxd = 1; // Idle the data line
	logic clk = 0;
	logic reset = 1;
	
	// Outputs
	logic ferr, ready;
	logic [7:0] data;
	
	// Create the DUV
	receiver #(.BAUD_RATE(baud_rate)) DUV ( 
		.rxd,.clk, .reset,
		.ferr, .ready,
		.data);

	// tasks
	task delay_for_one_baud();
		# period;
	endtask
	
	task delay_for_one_sixteenth_baud();
			# (period >> 4); // divide by 16
	endtask
	
	task start_bit();
		rxd = 0;
		delay_for_one_baud();
	endtask
	
	task stop_bit();
		rxd = 1;
		delay_for_one_baud();
	endtask
	
	// Tx one byte of data to the rx
	task send_byte(logic [7:0] data_in);
		int i;
		start_bit;
		for (i=0; i<8; i++)
		begin
			rxd = data_in[i];
			#period_max;
		end
		stop_bit;
		check("Verifying correct data received", data, data_in);	
		check("Verifying ferr low", ferr, 1'b0);	
	endtask
	
	task send_byte_faster(logic [7:0] data_in);
		int i;
		start_bit;
		for (i=0; i<8; i++)
		begin
			rxd = data_in[i];
			#period_min;
		end
		stop_bit;
		check_ok("1.0 Verifying correct data received at a faster baud rate", data, data_in);	
		check_ok("1.0 Verifying ferr low", ferr, 1'b0);
	endtask
	
	task send_byte_slower(logic [7:0] data_in);
			int i;
			start_bit;
			for (i=0; i<8; i++)
			begin
				rxd = data_in[i];
				delay_for_one_baud();
			end
			stop_bit;
			check_ok("1.0 Verifying correct data received at a slower baud rate", data, data_in);
			check_ok("1.0 Verifying ferr low", ferr, 1'b0);	
	endtask
	
	task send_byte_bad_eof(logic [7:0] data_in, logic [7:0] last_data);
		int i;
		start_bit;
		for (i=0; i<8; i++)
		begin
			rxd = data_in[i];
			#period_max;
		end
		rxd = 1'b0;
		check("Verifying data ignored", data, last_data);	
		check("Verifying ferr high", ferr, 1'b1);	
	endtask

	task start_bit_glitch();
		send_byte(8'hFF);
		rxd = 0;
		# ((period + period + period) / 8); // check at 6/16 the baud rate
		rxd = 1;
		# period check_ok("2.0 Testing start bit ready stays high on glitch", ready, 1'b1);
		check_ok("2.0 Verifying data did not change after glitch", data, 8'hFF);
	endtask
	
	task start_bit_glitch_go();
		send_byte(8'hFF);
		rxd = 0;
		// check at 9/16
		# ((period/2) + (period/16)); // why doesn't * work?????
		rxd = 1;
		# period check_ok("2.0 Testing start bit ready stays goes low on glitch at 9/16 periods", ready, 1'b0);
		// Wait to see ready come high again
		fork : ready_timeout
			begin
				while(~ready)
					#1; // keep spinning until we see ready go to 1
				disable ready_timeout;
			end
			begin
				// timeout, we saw an error
				repeat(10) # period;
				check_p::error_count += 1;
				check_p::test_count += 1;
				$error("2.0 Never saw ready come high");
				disable ready_timeout;
			end
		join
		
		check_ok("2.0 Checking data after glitch", data, 8'hFF);
		
	endtask
	
	// This task waits for ready to be high 
	task check_idle();
		if(!rxd)
			$error("Data line low, idle should not be checked here");
		fork : ready_timeout
			begin
				while (~ready)
					#1;
				disable ready_timeout;
			end
			begin
				#10000; $error("Ready still low");
				disable ready_timeout;
			end
		join
		$display("check idle completed"); // why does this need to be here?
	endtask
	
	// verify that there is an ferr generated on bad eof
	task check_single_ferr(logic [7:0] data_in);
		int i;
		// send a good byte first
		send_byte(8'haa); // send a known byte
		send_byte_bad_eof(data_in, 8'haa); // send a bad byte
		rxd = 1'b1; // send the data line to idle
		check_ok("3.1 Verify ferr error generated", ferr, 1'b1);
		check_ok("3.1 Verify data not changed", data, 8'h55);
		repeat (10) # period; // wait 10 periods
	endtask

	task check_ferr_reset;
		check("3.2 Cheking ferr is high", ferr, 1'b1);
		rxd = 1'b1;
		// wait until the receiver is ready to receive a new byte
		fork : ready_timeout
			if (ready) disable ready_timeout;
			begin
				repeat (15) #period; // wait for 15 baud rates
				$error("Ready never came high after line is idle");
				disable ready_timeout;
			end
		join
		send_byte(8'hff); // send a well formatted byte
		check("3.2 Checking ferr reset", ferr, 1'b0);

	endtask

	task check_multi_ferr(logic [7:0] data_in);
		int i;
		check_single_ferr(8'hFF); // trigger ferr
		// send the second byte
		start_bit;
		check_ok("3.4 ferr reset on incomming data stream", ferr, 1'b0);
		for (i=0; i<8; i++)
		begin
			rxd = data_in[i];
			#period;
		end
		rxd = 1'b0; // hold the line low
		# period;
		rxd = 1'b1;
		check_ok("3.1 Verify ferr error generated", ferr, 1'b1);
		check_ok("3.1 Verify data not changed", data, 8'h55);
	endtask

	// All of the gropus of tests
	task check_baud_rate_bounds;
		check_group_begin("1.0 Baud Rate Bounds");
		send_byte_faster(8'h55);
		check_idle();
		send_byte_slower(8'haa);
		check_group_end();
		
	endtask
	
	task check_glitches;
		check_group_begin("2.0 Start bit width");
		start_bit_glitch;
		start_bit_glitch_go;
		check_group_end();
	endtask
	
	task check_frame_error();
		check_group_begin("3.0 Framing error tests");
		check_single_ferr(8'h55);
		check_ferr_reset;
		check_group_end();
	endtask
	// get the clock going
    always
    	#5 clk = ~clk;


	// fire up all tests
	initial 
	begin
		#100;
		reset = 0;
		#100;
		check_baud_rate_bounds;
		repeat(10) #period; // since apparently vivado hates *
		check_glitches;
		repeat(10) #period; // since apparently vivado hates *
		check_frame_error;
		check_summary_stop;
		
	end

endmodule
