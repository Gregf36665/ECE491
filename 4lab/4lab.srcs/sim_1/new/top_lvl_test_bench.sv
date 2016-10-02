`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2016 12:45:47 PM
// Design Name: 
// Module Name: top_lvl_test_bench
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


module top_lvl_test_bench();

	parameter period = 1_000_000_000 / 9600;
	// Signals
	logic CLK100MHZ = 0, BTNC = 1, UART_RTS;
	logic [2:0] JA;
	logic [1:0] LED;
	logic [1:0] SW;


	always
		#5 CLK100MHZ = ~CLK100MHZ;


	nexys4DDR DUV(.CLK100MHZ, .BTNC, .LED, .JA, .SW, .UART_RTS);
	initial
	begin
		#100;
		BTNC = 0;

		SW = 2'b10;
		repeat(10) #period;
		
		SW = 2'b00;
		repeat(10) #period;
		$stop;

	end
	

endmodule
