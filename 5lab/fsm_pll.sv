`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Raji Birru & Greg Flynn
// 
// Create Date: 10/20/2016 08:07:20 PM
// Design Name: 
// Module Name: fsm_pll
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: One of a set of three finite state machines that form the nucleus
// of a Manchester Reciever design. This works to continiously improve the quality
// of our sampling by use of a Phase-Locked Loop.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module fsm_pll(
		input logic clk, reset, data_bit, enable_pll,
		input logic [5:0] sample_count, current_time,
		input logic [6:0] current_corr,
		output logic sample_inc, sample_dec
		);
				
		typedef enum logic [3:0] {
			IDLE 			  = 4'b0000,
			WAIT			  = 4'b0001,
			FIND_MINMAX		  = 4'b0010,
			UPDATE_MAX 		  = 4'b0011,
			UPDATE_MIN		  = 4'b0100,
			UPDATE_TIME_MAX	  = 4'b0101,
			UPDATE_TIME_MIN   = 4'b0110,
			INC_SAMPLE        = 4'b0111,
			DEC_SAMPLE		  = 4'b1000,
			INC_DEC			  = 4'b1001
		} states;
				
		states state, next;
		
		logic [6:0] final_corr, min_corr, max_corr;
		logic [5:0] min_time, max_time, final_time;
		
		always_ff @(posedge clk)
			begin
				if(reset) state <= IDLE;
				else state <= next;
			end
			
		always_comb
			begin
				
				sample_inc = 1'b0;
				sample_dec = 1'b0;
				
				min_corr = 7'd0;
				max_corr = 7'd0;
				
				final_time = 6'd0;
				min_time = 6'd0;
				max_time = 6'd0;
							
				unique case (state)
					IDLE:
						begin
							if(enable_pll) next = WAIT;
							else next = IDLE;
						end
					WAIT:
						begin
							if(sample_count > 6'd48) next = FIND_MINMAX;
							else next = WAIT;
							final_time = 6'd0;
							min_corr = 7'd127;
							max_corr = 7'd0;
						end
					FIND_MINMAX:
						begin
							if(sample_count < 6'd48 && sample_count > 6'd15)
								begin
									if(data_bit == 1'b1) next = UPDATE_TIME_MAX;
									else next = UPDATE_TIME_MIN;
								end
							else if (current_corr > max_corr) next = UPDATE_MAX;
							else if (current_corr < min_corr) next = UPDATE_MIN;
							else next = FIND_MINMAX;
						end
					UPDATE_MAX:
						begin
							next = FIND_MINMAX;
							max_corr = current_corr;
							max_time = current_time;
						end
					UPDATE_MIN:
						begin
							next = FIND_MINMAX;
							min_corr = current_corr;
							min_time = current_time;
						end
					UPDATE_TIME_MAX:
						begin
							next = INC_DEC;
							final_time = max_time;
						end
					UPDATE_TIME_MIN:
						begin
							next = INC_DEC;
							final_time = min_time;
						end
					INC_DEC:
						begin
							if((final_time <= 6'd15) && (final_time >= 6'd4)) next = INC_SAMPLE;
							else if(final_time <= 6'd60 && final_time >= 6'd48) next = DEC_SAMPLE;
							else next = WAIT;
						end
					INC_SAMPLE:
						begin
							next = WAIT;
							sample_inc = 1'b1;
						end
					DEC_SAMPLE:
						begin
							next = WAIT;
							sample_dec = 1'b1;
						end
					default:
						next <= IDLE;
				endcase
			end
endmodule		