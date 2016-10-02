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

	// useful tasks for all tests
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
			delay_for_one_baud;
		end
		stop_bit;
		check("Verifying correct data received", data, data_in);	
		check("Verifying ferr low", ferr, 1'b0);	
	endtask
	
	task send_byte_no_check(logic [7:0] data_in);
		int i;
		start_bit;
		for (i=0; i<8; i++)
		begin
			rxd = data_in[i];
			#period_max;
		end
		stop_bit;
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
			#period;
		end
		rxd = 1'b0;
		#period
		check("Verifying data ignored", data, last_data);	
		check("Verifying ferr high", ferr, 1'b1);	
	endtask

	// Generate glitches as required
	task start_bit_glitch(logic [7:0] last_data);
		rxd = 0;
		# ((period + period + period) / 8); // check at 6/16 the baud rate
		rxd = 1;
		# period check_ok("2.0 Testing start bit ready stays high on glitch", ready, 1'b1);
		check_ok("2.0 Verifying data did not change after glitch", data, last_data);
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
				check_p::test_count += 1;
				$display("4.1 ready is high in idle");
				disable ready_timeout;
			end
			begin
				#10000; $error("4.1 Ready still low");
				check_p::error_count += 1;
				check_p::test_count += 1;
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
		check_ok("3.1 Verify data not changed", data, 8'haa);
		repeat (10) # period; // wait 10 periods
	endtask

	// Send a good byte to reset ferr
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

	// Send a bad byte after ferr trigger
	task check_multi_ferr(logic [7:0] data_in);
		int i;
		check_single_ferr(8'hFF); // trigger ferr
		// send the second byte
		start_bit;
		check_ok("3.2 ferr reset on incomming data stream", ferr, 1'b0);
		for (i=0; i<8; i++)
		begin
			rxd = data_in[i];
			#period;
		end
		rxd = 1'b0; // hold the line low
		# period;
		rxd = 1'b1;
		check_ok("3.3 Verify ferr error generated", ferr, 1'b1);
		check_ok("3.3 Verify data not changed", data, 8'haa);
	endtask

	// Send 5 bytes in a row with the 3rd missformatted
	task check_ferr_in_middle(logic [7:0] data_a, data_b, data_c, data_d, data_e);
		send_byte(data_a);
		send_byte(data_b);
		send_byte_bad_eof(data_c, data_b);
		send_byte_no_check(data_d);
		send_byte_no_check(data_e);
		check_ok("3.4 ferr held high due to misformat halfway through the message", ferr, 1'b1);
	endtask

	// Send a good byte and check how it is
	task check_ready_on_good_byte;
		int i;
		fork : ready_timeout
			begin
				check("4.2 Ready is high to start", ready, 1'b1);
				start_bit;
				repeat(10) #(period / 16);  // again * doesn't sit well
				check("4.2 Ready has gone low with data starting", ready, 1'b0);
				repeat(7) # period;  // wait for 7 more bits bits
				repeat(6) # (period/16); // get back in sync
				stop_bit;
				while(!ready)
					#1; 
				check_p::test_count += 1;
				$display("4.2 Ready came high within required time");
				disable ready_timeout;
			end
			begin
				repeat(10) #period;
				$error("4.2 Ready timedout");
				check_p::test_count += 1;
				check_p::error_count += 1;
				disable ready_timeout;
			end
		join
		rxd = 1'b1;

	endtask

	// Send a bad byte and check out rdy
	task check_ready_on_bad_byte;
		int i;
		fork : ready_timeout
			begin
				check("4.3 Ready is high to start", ready, 1'b1);
				start_bit;
				repeat(10) #(period / 16);  // again * doesn't sit well
				check("4.3 Ready has gone low with data starting", ready, 1'b0);
				repeat(7) # period;  // wait for 7 more bits bits
				repeat(6) # (period/16); // get back in sync
				start_bit; // this will trigger ferr
				stop_bit;
				check_ok("4.3 Ready still low due to ferr", ready, 1'b0);
				while(!ready)
					#1; 
				check_p::test_count += 1;
				$display("4.3 Ready came high within required time");
				disable ready_timeout;
			end
			begin
				repeat(20) #period;
				$error("4.3 Ready timedout");
				check_p::test_count += 1;
				check_p::error_count += 1;
				disable ready_timeout;
			end
		join
		rxd = 1'b1; // set the data line high

	endtask

	// Watch ready during a glitch
	task check_ready_on_glitch;
		if(~ready | ~rxd)
			rxd = 1'b1; // idle the line if the rx is not ready
		fork : ready_timeout
			begin
				while (~ready)
					#1;
				disable ready_timeout;
			end
			begin
				repeat(20) #period;
				$error("Transmitter did not return to idle");
				disable ready_timeout;
			end
		join
		$display("4.4 System ready to start test");
		// system is in ready
		fork : ready_glitch
			begin
				//start_bit_glitch;
				rxd = 1'b1; #period;
				$display("4.4 No fall in ready");
				check_p::test_count += 1;
				disable ready_glitch;
			end
			begin
				while(ready)
					#1; 
				$error("4.4 Ready fell");
				check_p::test_count += 1;
				check_p::error_count += 1;
				disable ready_glitch;
			end
		join
		$display("4.4 test completed");

	endtask

	// Watch ready during each byte transmission
	task check_ready_multi_byte;
		int i;
		check_idle(); // get back to a resting state
		check_ok("4.5 Ready high at the beginning", ready, 1'b1);
		for (i=0;i<5;i++)
			begin
			send_byte(8'haa);
			check("4.5 Ready high after 1 byte transmitted", ready, 1'b1);
			end
	endtask

	// Watch the data during a standard tx
	task check_data_good;
		send_byte(8'h82);
		check("5.1 Check data is good during 1 byte tx", data, 8'h82);
	endtask
	
	task check_multi_data_good;
		int i;
		for (i=0; i<16; i++)
		begin
			send_byte((i<<4) | i);
			check("5.2 Check multiple bytes", data, (i<<4) | i);
		end
	endtask
	
	task check_no_update_on_ferr;
		send_byte(8'h0F);
		send_byte_bad_eof(8'hF0, 8'h0F);
		check("5.3 Check data not updated", data, 8'h0F);
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
		send_byte(8'h55);
		start_bit_glitch(8'h55);
		start_bit_glitch_go;
		check_group_end();
	endtask
	
	task check_frame_error;
		check_group_begin("3.0 Framing error tests");
		check_single_ferr(8'h55);
		check_ferr_reset;
		check_ferr_in_middle(8'h00,8'haa, 8'h55, 8'h66, 8'hcc);
		check_group_end();
	endtask

	task check_ready;
		check_group_begin("4.0 Ready testing");
		check_idle();
		check_ready_on_good_byte();
		check_ready_on_bad_byte();
		check_ready_on_glitch;
		check_ready_multi_byte;
		check_group_end();
	endtask

	task check_data;
		check_group_begin("5.0 Data testing");
		check_data_good;
		check_multi_data_good;
		check_no_update_on_ferr;
		check_group_end();
	endtask;
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
		repeat(10) #period; // since apparently vivado hates *
		check_ready;
		repeat(10) #period; // since apparently vivado hates *
		check_data;
		repeat(10) #period; // since apparently vivado hates *
		check_summary_stop;
		
	end

endmodule
