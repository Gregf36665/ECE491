`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Greg
// 
// Create Date: 10/22/2016 03:54:26 PM
// Design Name: 
// Module Name: data_buffer
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


module data_buffer(
    input logic clk,
    input logic reset,
    input logic data_bit,
    input logic store_bit,
    input logic store_data,
    output logic [7:0] data
    );

	logic [7:0] buffer;
	always_ff @(posedge clk)
	begin
		if (reset) buffer <= 8'h00;
		if (store_bit) buffer <= {buffer[6:0], data_bit};
		if (store_data) data <= buffer;
	end

endmodule
