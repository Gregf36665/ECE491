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
    input logic clk,
    input logic reset,
    input logic rxd,
    output logic cardet,
    output logic [7:0] data,
    output logic write,
    output logic error
    );

	// All of the internal wires
	logic data_bit, set_ferr, match_error, store_data, match_zero, match_one, sfd_match;
	logic preamble_match, match_idle, clr_ferr;
	logic [6:0] zero_one_strength;

	// Start up all 3 FSM blocks to RX data
	FSMs U_FSM (.clk, .reset, .slow_sample_count, .preamble_match(1'b0), .bad_port(),
				.sfd_match, .match_error, .match_idle, .match_one, .match_zero, 
				.set_ferr, .sample_count,
				.bit_count, .zero_one_strength, .sample_inc, .sample_dec, .bit_count_rst, 
				.slow_sample_reset, .store_data, .store_bit, .data_bit, .write);

	// Create a buffer to keep track of the data
	data_buffer U_DATA (.clk, .reset ,.data_bit, .store_bit, .store_data, .data);

	// Sync the input 
	sync_input U_SYNC (.clk, .async_in(rxd), .sync_out(rxd_sync));


	// Set up the samplers
	clkenb #(.DIVFREQ(BIT_RATE * 16)) U_SLOW_SAMPLE (.clk, .enb(sample_slow)); 
	clkenb #(.DIVFREQ(BIT_RATE * 64)) U_SAMPLE (.clk, .enb(sample));

	// Set up the counters for the samplers and bit count
	counter #(.MAX(7)) U_BIT_COUNT (.clk, .enb(store_bit), .reset(bit_count_rst), .q(bit_count));
	counter #(.MAX(127)) U_SLOW_COUNT (.clk, .enb(sample_slow), .reset(slow_sample_reset),
										.q(slow_sample_count));
	// TODO fix the reset signal
	counter #(.MAX(63)) U_FAST_COUNT (.clk, .enb(sample), .reset(1'b0), .inc(sample_inc),
										.dec(sample_dec), .q(sample_count));

	// error block
	f_error U_ERROR (.clk, .set_ferr, .clr_ferr, .reset, .ferr(error));
	


endmodule
