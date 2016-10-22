`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2016 04:13:36 PM
// Design Name: 
// Module Name: counter
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


module counter #(parameter MAX)(
	input logic clk, enb, inc, dec, reset,
	output [$clog2(MAX)-1:0] q
    );

	always_ff @(posedge clk)
	begin
		if(reset) q <= 0;
		if(inc) q <= q + 2; // skip a step
		if(dec) q <= q; // hold a step
		if(enb) q <= q+1;
	end
endmodule
