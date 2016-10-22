`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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

	task send_bit(logic data_bit)
		repeat(1_000_000) @(posedge clk);

	endtask

	initial
	begin
		#100;
		$finish();
	end

endmodule
