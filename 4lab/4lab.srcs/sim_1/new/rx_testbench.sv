`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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


module rx_testbench();

	task hello_world();
		$display("Test");
	endtask

	// Inputs
	logic rxd = 1; // Idle the data line
	logic clk = 0;
	logic reset = 1;
	
	// Outputs
	logic ferr, ready;
	logic [7:0] data;
	// Create the DUV
	receiver #(.BAUD_RATE(9600)) DUV ( 
		.rxd,.clk, .reset,
		.ferr, .ready,
		.data);

    always
    	#5 clk = ~clk;

	initial 
	begin
		#100;
		reset = 0;
		rxd = 0;
		
	end

endmodule
