`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Greg
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
	logic preamble_match, match_idle, clr_ferr, bit_count_reset;
	logic [6:0] zero_one_strength;

	// Start up all 3 FSM blocks to RX data
	FSMs U_FSM (.clk, .reset, .slow_sample_count, .preamble_match,
				.sfd_match, .match_error, .match_idle, .match_one, .match_zero, 
				.set_ferr, .sample_count, .cardet,
				.bit_count, .zero_one_strength, .sample_inc, .sample_dec, .bit_count_reset, 
				.slow_sample_reset, .store_data, .store_bit, .data_bit, .write);

	// Create a buffer to keep track of the data
	data_buffer U_DATA (.clk, .reset ,.data_bit, .store_bit, .store_data, .data);

	// Sync the input 
	sync_input U_SYNC (.clk, .async_in(rxd), .sync_out(rxd_sync));


	// Set up the samplers
	clkenb #(.DIVFREQ(BIT_RATE * 16)) U_SLOW_SAMPLE (.clk, .enb(sample_slow)); 
	clkenb #(.DIVFREQ(BIT_RATE * 64)) U_SAMPLE (.clk, .enb(sample));

	// Set up the counters for the samplers and bit count
	counter #(.MAX(7)) U_BIT_COUNT (.clk, .enb(store_bit), .reset(bit_count_reset), .q(bit_count));
	counter #(.MAX(127)) U_SLOW_COUNT (.clk, .enb(sample_slow), .reset(slow_sample_reset),
										.q(slow_sample_count));
	// TODO fix the reset signal
	counter #(.MAX(63)) U_FAST_COUNT (.clk, .enb(sample), .reset(1'b0), .inc(sample_inc),
										.dec(sample_dec), .q(sample_count));

	// error block
	f_error U_ERROR (.clk, .set_ferr, .clr_ferr, .reset, .ferr(error));
	
	// Correlators
	parameter PREAMBLE_PATTERN = {4{32'hFF0000FF}};
	parameter SFD_PATTERN = {{PREAMBLE_PATTERN,
							{4{16'h00FF}},
							{1{16'hFF00}},
							{1{16'h00FF}},
							{2{16'hFF00}}
							}};
	parameter ONE_PATTERN = {{32{1'b1}},{32{1'b0}}};
	parameter IDLE_PATTERN = {{32{1'b1}},{32{1'b1}}};

	correlator #(.LEN(128), .PATTERN(PREAMBLE_PATTERN), .HTHRESH(8'd100)) U_PREAMBLE_CORR 
		(.clk, .reset, .enb(sample_slow), .d_in(rxd_sync), .h_out(preamble_match));
	correlator #(.LEN(256), .PATTERN(SFD_PATTERN), .HTHRESH(8'd200)) U_SFD_CORR 
		(.clk, .reset, .enb(sample_slow), .d_in(rxd_sync), .h_out(sfd_match));
	correlator #(.LEN(64), .PATTERN(ONE_PATTERN), .HTHRESH(8'd50)) U_ONE_N_ZERO_CORR
		(.clk, .reset, .enb(sample), .d_in(rxd_sync), .h_out(match_one), 
		.l_out(match_zero), .csum(zero_one_strength));
	correlator #(.LEN(64), .PATTERN(IDLE_PATTERN), .HTHRESH(8'd50)) U_IDLE_N_ERROR_CORR
		(.clk, .reset, .enb(sample), .d_in(rxd_sync), 
		.h_out(match_idle), .l_out(match_error));



endmodule
