`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Raji Birru & Greg Flynn
// 
// Create Date: 10/20/2016 08:02:22 PM
// Design Name: 
// Module Name: fsm_data
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: One of a set of three finite state machines that form the nucleus
// of a Manchester Reciever design. This is in charge of recieving data bytes in a
// frame.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module fsm_data(
		input logic clk, reset, match_one, match_zero, match_idle, match_error, enable_data,
		input logic [5:0] sample_count,
		input logic [2:0] bit_count,
		output logic data_bit, store_bit, store_byte, set_ferr, write, data_done
		);
				
		typedef enum logic [2:0] {
			IDLE 			  = 3'b000,
			START_RECIEVE     = 3'b001,
			FOUND_ONE		  = 3'b010,
			FOUND_ZERO 		  = 3'b011,
			STORE_DATA		  = 3'b100,
			BYTE_DONE		  = 3'b101,
			WAIT_FOR_NEXT     = 3'b110,
			ERROR 			  = 3'b111
		} states;
				
		states state, next;
		
		always_ff @(posedge clk)
			begin
				if(reset) state <= IDLE;
				else state <= next;
			end
			
		always_comb
			begin
				
				data_bit 	= 1'b0;
				store_bit 	= 1'b0;
				store_byte 	= 1'b0;
				set_ferr    = 1'b0;
				write       = 1'b0;
				data_done   = 1'b0;
							
				unique case (state)
					IDLE:
					   begin
					       next = enable_data ? START_RECIEVE : IDLE;
					       data_done = 1'b1;
					   end
					START_RECIEVE:
						begin
							if(6'd15 > sample_count && sample_count < 6'd48)
								begin
									if(match_one) next = FOUND_ONE;
									else if(match_zero)next = FOUND_ZERO;
									else if(match_idle)
										begin
											if(bit_count == 1'b0) next = IDLE;
											else next = ERROR;
										end
									else if (match_error) next = ERROR;
									else if (sample_count > 15) next = ERROR;
									else next = START_RECIEVE;
								end
							else next = START_RECIEVE;
						end
					FOUND_ONE:
						begin
							next = STORE_DATA;
							data_bit = 1'b1;
							store_bit = 1'b1;
						end
					FOUND_ZERO:
						begin
							next = STORE_DATA;
							data_bit = 1'b0;
							store_bit = 1'b1;
						end
					STORE_DATA:
						begin
							if(bit_count == 3'b000)	next = BYTE_DONE;
							else next = WAIT_FOR_NEXT;
						end
					BYTE_DONE:
						begin
							next = WAIT_FOR_NEXT;
							store_byte = 1'b1;
							write = 1'b1;
						end
					WAIT_FOR_NEXT:
						begin
							if(sample_count > 6'h15) next = START_RECIEVE;
							else next = WAIT_FOR_NEXT;
						end
					ERROR:
					    begin
						  next = IDLE;
						  set_ferr = 1'b1;
						end
					default:
						next <= IDLE;
				endcase
			end
endmodule		
