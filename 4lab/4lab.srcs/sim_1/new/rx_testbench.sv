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
		check_ok("Verifying correct data received", data, data_in);	
		check_ok("Verifying ferr low", ferr, 1'b0);	
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
		check_ok("Verifying correct data received", data, data_in);	
		check_ok("Verifying ferr low", ferr, 1'b0);
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
			check_ok("Verifying correct data received", data, data_in);
			check_ok("Verifying ferr low", ferr, 1'b0);	
	endtask
	
	
	task start_bit_glitch();
		rxd = 0;
		# ((period + period + period) / 8); // check at 6/16 the baud rate
		rxd = 1;
		# period check_ok("Testing start bit ready stays high on glitch", ready, 1'b1);
	endtask
	
	// This task waits for ready to be high 
	task check_idle();
		if(!rxd)
			$error("Data line low, idle should not be checked here");
		fork : ready_timeout
			begin
			while (~ready)
			begin
				#1;
			end
			disable ready_timeout;
			end
			begin
				#10000; $error("Ready still low");
				disable ready_timeout;
			end
		join
				
	endtask
	
	task check_baud_rate_bounds;
		check_group_begin("1.0 Baud Rate Bounds");
		send_byte_faster(8'h55);
		check_idle();
		send_byte_slower(8'haa);
		check_group_end;
		
	endtask
	
    always
    	#5 clk = ~clk;

	initial 
	begin
		#100;
		reset = 0;
		#100;
		start_bit_glitch;
		repeat(10) #period; // since apparently vivado hates *
		check_baud_rate_bounds;
		check_summary_stop;
		
	end

endmodule
