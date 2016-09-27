`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2016 09:05:09 AM
// Design Name: 
// Module Name: receiver
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


module receiver #(parameter BAUD_RATE = 9600)(
		input logic rxd,clk,
		output logic ferr, edy,
		output logic [7:0] data
    );
    
    fsm U_FSM ( .clk(clk), .reset(), .rxd_synced(rxd_synced), .start_check(start_check), .full_timer(), .half_timer(), .bit_count(),
    			.ferr_delay_count(), .bit_counter_rst(), .ferr_counter_rst(), .delay_timer_rst(), .rdy(), 
    			.store_data(), .store_bit(), .clr_ferr(clr_ferr), .set_ferr(set_ferr), .data());
    			
    counter_parm #(.W(3), .CARRY_VAL(4'd7)) U_BIT_COUNTER  		(.clk, .enb(), .reset(), .q(), .carry());
    counter_parm #(.W(4), .CARRY_VAL(4'd9)) U_FERR_COUNTER 		(.clk, .enb(), .reset(), .q(), .carry());
    delay_timer  #(.BAUD_RATE(BAUD_RATE)) 	U_DELAY_TIMER  		(.clk, .delay_timer_rst(), .half_timer(), .full_timer());
    clkenb #(.DIVFREQ(BAUD_RATE*16)) 		U_START_PULSER 		(.clk, .enb(start_check), .reset(), .baud());
    rxd_synchroniser 						U_RXD_SYNCHRONISER 	(.clk, .rxd(rxd), .rxd_synced(rxd_synced));
    f_error									U_F_ERROR			(.clk, .set_ferr(set_ferr), .clr_ferr(clr_ferr), .ferr(ferr));
    
endmodule
