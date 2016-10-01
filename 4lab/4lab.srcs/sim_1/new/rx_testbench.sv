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
			delay_for_one_baud();
		end
		stop_bit;
		check("Verifying correct data received", data, data_in);
		
	endtask
	
    always
    	#5 clk = ~clk;

	initial 
	begin
		#100;
		reset = 0;
		#100;
		send_byte(8'h55);
		#1000;
		check_summary_stop;
		
	end

endmodule
