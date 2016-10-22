`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Greg
// 
// Create Date: 10/22/2016 05:35:18 PM
// Design Name: 
// Module Name: mx_rcvr_test
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

module mx_rcvr_test();
	
	// Connections
	// Inputs
	logic clk = 0;
	logic reset = 0;
	logic rxd = 0;

	logic cardet, write, error;
	logic [7:0] data;
	
	// Start the clock
	always
		#5 clk = ~clk;

	// Send a clean manchester bit
	task send_bit(input logic data_bit);
		@(posedge clk);
		rxd = data_bit;
		repeat(1_000) @(posedge clk); // 1000 clock cycles @10ns = 100kBaud
		rxd = ~data_bit; // flip the bit for the second half
		repeat(1_000) @(posedge clk); // 1000 clock cycles @10ns = 100kBaud
	endtask

	// Send a byte of data
	// This sends LSB first
	task send_byte(input logic [7:0] data_byte);
		int i;
		for (i=0;i<8;i++)
			send_bit(data_byte[i]);
	endtask

	// Hold the rxd line for both bauds
	task send_EOF();
		rxd = 1;
		repeat(2_000) @(posedge clk);
	endtask

	// Send preamble
	task send_preamble();
		repeat(2) send_byte(8'h55);
	endtask

	// Send SFD
	task send_SFD();
		send_byte(8'hD0);
	endtask

	// Hold rxd line low for both baud
	task send_error();
		rxd = 0;
		repeat(2_000) @(posedge clk);
	endtask

	initial
	begin
		#100
		send_SFD();
		$finish();
	end

endmodule
