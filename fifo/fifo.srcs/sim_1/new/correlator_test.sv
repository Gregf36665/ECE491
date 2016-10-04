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
	logic clk=0, reset=1, enb=0,d_in=1;

	// outputs
	logic h_out, l_out;

	// 1 count output
	logic csum;

	correlator DUV (.*);

	always
		#5 clk = ~clk;

	initial
	begin
		#100;
		reset = 0;
		DUV.shreg = 16'h007F;
		#100;
		@(negedge clk) enb = 1;
		@(posedge clk) #1 enb = 0;
		$finish;
	end

endmodule
