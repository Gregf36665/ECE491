`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2016 10:41:07 AM
// Design Name: 
// Module Name: temp_data_bench
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


module temp_data_bench();

	// Inputs
    logic clk = 0;
    logic data = 0;
    logic store_bit = 0;
    logic [2:0] bit_count = 3'b0;
    
    // Outputs
    logic [7:0] data_out;
    
    temp_data U_DUV (.clk, .data, .store_bit, .bit_count, .data_out);

    always
    	#5 clk = ~clk;
    
    initial begin
    	data = 1'b1;
    	store_bit = 1'b1;
    	bit_count = 3'd3;
    	#10;
    	store_bit = 0;
    	#10
    	data = 1'b0;
    	#10
    	bit_count = 3'd7;
    	#50
    	store_bit = 1'b1;
    	
    end
    
endmodule
