`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Raji Birru & Greg Flynn
// 
// Create Date: 10/20/2016 08:00:54 PM
// Design Name: 
// Module Name: fsm_psfd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: One of a set of three finite state machines that form the nucleus
// of a Manchester Reciever design. This is in charge of detecting the preamble 
// and then SFD from an incoming serial manchester encoded signal, then setting
// off flags to alert when valid SFD and preamble are found.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module fsm_psfd(
		input logic clk, reset, preamble_match, sfd_match, set_ferr, data_done,
		input logic [6:0] slow_sample_count,
		output logic cardet, bit_counter_reset, sample_counter_reset, slow_sample_rst, enable_pll
		);
				
		typedef enum logic [2:0] {
			IDLE 			  = 3'b000,
			PREAMBLE_MATCH    = 3'b001,
			RESET_SLOW_SAMPLE = 3'b010,
			SFD_MAYBE 		  = 3'b011,
			START 			  = 3'b100
		} states;
				
		states state, next;
		
		always_ff @(posedge clk)
			begin
				if(reset) state <= IDLE;
				else state <= next;
			end
			
		always_comb
			begin
				
				cardet = 1'b0;
				bit_counter_rst = 1'b0;
				sample_counter_rst = 1'b0;
				slow_sample_rst = 1'b0;
				enable_pll = 1'b0;
				next = IDLE;
							
				unique case (state)
					IDLE:
						begin
							if(preamble_match) next = PREAMBLE_MATCH;
							else next = IDLE;
							bit_counter_rst    = 1'b1;
							sample_counter_rst = 1'b1;
							slow_sample_rst    = 1'b1;
						end
					PREAMBLE_MATCH:
						begin
							if(slow_sample_count [4:0] == 5'd31)
								begin
									if(!preamble_match) next = RESET_SLOW_SAMPLE;
									else next = PREAMBLE_MATCH;
								end
							else next = PREAMBLE_MATCH;
							cardet = 1'b1;
						end
					RESET_SLOW_SAMPLE:
						begin
							next = SFD_MAYBE;
							cardet = 1'b1;
							slow_sample_rst = 1'b1;
						end
					SFD_MAYBE:
						begin
							if(slow_sample_count == 7'd95)
								begin
									if(sfd_match) next = START;
									else next = IDLE;
								end
							else next = SFD_MAYBE;
							cardet = 1'b1;
						end
					START:
						begin
							if(set_ferr)
								next = IDLE;
							else
								begin
									if(data_done) next = IDLE;
									else next = START;
								end
							cardet = 1'b1;
							enable_pll = 1'b1;
						end
					default:
						next <= IDLE;
				endcase
			end
endmodule		
