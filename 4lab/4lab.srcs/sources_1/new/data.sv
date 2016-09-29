`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lafayette
// Engineer: Greg
// 
// Create Date: 09/28/2016 19:44:00
// Design Name: 
// Module Name: data
// Project Name: Receiver
// Target Devices: Nexus4 DDR
// Tool Versions: 
// Description: 
//	A module to allow the saving of 8 bits of data
// Dependencies: 
//	None
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module data(input logic clk,
			input logic [7:0] data_in,
			input logic save,
			output logic [7:0] data_out
			);

	always_ff @(posedge clk)
		if (save)
			data_out <= data_in;
