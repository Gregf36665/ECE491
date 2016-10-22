`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2016 03:48:34 PM
// Design Name: 
// Module Name: mx_rcvr
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


module mx_rcvr #(parameter BIT_RATE = 50_000)(
    input clk,
    input reset,
    input rxd,
    output cardet,
    output [7:0] data,
    output write,
    output error
    );

	// Start up all 3 FSM blocks to RX data
	FSMs U_FSM (.clk, .rst(reset), .slow_sample_count, .preamble_match, .sfd_match, .match_error,
				.match_idle, .match_one, .match_zero, .set_ferr, . slow_sample_count, sample_count,
				.bit_count, .zero_one_strength, .sample_inc, .sample_dec, .bit_count_rst, .store_bit,
				.slow_sample_reset, .store_data, .store_bit, .data_bit);

	// Create a buffer to keep track of the data
	data_buffer U_DATA (.clk, .rst,.data_bit, .store_bit, .store_data, .data);

	// Sync the input 
	sync_input U_SYNC (.clk, .async_in(rxd), .sync_out(rxd_sync));


	// Set up the samplers
	clkenb #(.DIVFREQ(BIT_RATE * 16)) U_SLOW_SAMPLE (.clk, .enb(sample_slow)); 
	clkenb #(.DIVFREQ(BIT_RATE * 64)) U_SAMPLE (.clk, .enb(sample));

	// Set up the counters for the samplers and bit count
	counter #(.MAX(7)) U_BIT_COUNT (.clk, .enb(store_bit), .reset(.bit_count_rst), .q(bit_count));
	counter #(.MAX(127)) U_SLOW_COUNT (.clk, .enb(sample_slow), .reset(slow_sample_reset),
										.q(slow_sample_count);
	counter #(.MAX(63)) U_FAST_COUNT (.clk, .enb(sample), .reset(?), .inc(sample_inc),
										.dec(sample_dec), .q(sample_count));



	// error block
	f_error U_ERROR (.clk, .set_ferr, .clr_ferr, .reset, .ferr(error));
	


endmodule
