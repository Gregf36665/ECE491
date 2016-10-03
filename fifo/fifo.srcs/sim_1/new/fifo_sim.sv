`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2016 06:24:28 PM
// Design Name: 
// Module Name: fifo_sim
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


module fifo_sim(

    );

	// inputs
	logic clk = 0;
	logic rst = 0;
	logic clr = 0;

	// Data in/out
	logic [7:0] din, dout;

	logic we; // Write enable
	logic re; // Read enable

	logic full, empty;

	sasc_fifo4 DUV (clk, rst, clr, din, we, dout, re, full, empty);
endmodule
