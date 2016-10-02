`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Greg
// 
// Create Date: 10/01/2016 08:41:44 PM
// Design Name: 
// Module Name: tx_rx_testbench
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

module tx_rx_testbench();

	parameter baud_rate = 9600;
	parameter period = 1_000_000_000 / baud_rate; // get the time period in ns
	
	// Inputs
	logic clk = 0;
	logic send;
	logic reset = 1;

	// Internal connections
	logic data_line;

	// data input and output
	logic [7:0] data_in, data_out;

	// outputs
	logic rdy;

	transmitter #(.BAUDRATE(baud_rate)) DUV_TX (.clk, .send, .rdy, .data(data_in), .txd(data_line));

	// great convention with naming the parameters
	receiver #(.BAUD_RATE(baud_rate)) DUV_RX (.clk, .reset, .rxd(data_line), .data(data_out));

	task send_one_byte(logic [7:0] data);
		data_in = data;
		send = 1;
		#period send = 0;
		repeat(10) #period;
		check_ok("5.4 Check single byte", data_out, data);
	endtask

	task send_many_byte;
		data_in = 8'hFF;
		send = 1;
		@(posedge rdy) data_in = 8'h00;
		#period;
		check_ok("5.4 Check multi byte 1/2", data_out, 8'hFF);
		repeat(10) #period;
		check_ok("5.4 Check multi byte 2/2", data_out, 8'h00);
	endtask
		
	always
		#5 clk = ~clk;

	initial
	begin
		#100;
		reset = 0;
		send_one_byte(8'h55);
		send_many_byte;
		check_summary_stop;
	end

endmodule
