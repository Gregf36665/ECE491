`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2016 04:54:22 PM
// Design Name: 
// Module Name: correlator_test
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


module correlator_test();

	// Inputs
	logic clk=0, reset=0, enb=0,d_in;

	// outputs
	logic h_out, l_out;

	// 1 count output
	logic csum;

	correlator DUV (.*);

	always
		#5 clk = ~clk;


endmodule
