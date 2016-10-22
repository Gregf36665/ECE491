`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lafayette
// Engineer: Greg
// 
// Create Date: 10/22/2016 03:18:56 PM
// Design Name: 
// Module Name: FSMs
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


module FSMs(input logic clk, rst, slow_sample_count, preamble_match,
			sfd_match, match_error, match_idle, match_one, match_zero,
			set_ferr,
			input logic [6:0] slow_sample_count,
			input logic [5:0] sample_count,
			input logic [2:0] bit_count,
			input logic [6:0] zero_one_strength,
			output logic sample_inc, sample_dec, bit_count_rst,
			store_bit, slow_sample_reset, store_data, store_bit, data_bit);


	logic enable_pll;
	fsm_pll U_PLL (.clk, .rst, .data_bit, .enable_pll, .sample_count, 
			.current_corr(zero_one_strength), .sample_inc, .sample_dec);

	fsm_psfd U_DETECT (.clk, .rst, .preamble_match, .sfd_match, .set_ferr,
						.data_done,  .slow_sample_count, .cardet, .bit_count_rst,
						.sample_count, .slow_sample_reset, enable_pll);

	fsm_data U_DATA (.clk, .rst, .match_one, .match_zero, .match_idle, .match_error,
					.sample_count, . bit_count, .data_bit, .store_bit, .store_byte,
					,.set_ferr, .write);


	
					
endmodule
