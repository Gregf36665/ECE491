`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2016 09:52:39 AM
// Design Name: 
// Module Name: fsm_test_bench
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


module fsm_test_bench(

    );
    
    logic clk = 0;
    logic reset = 1;
    logic rxd_synced = 1;
    logic start_check = 0;
    logic full_timer = 0;
    logic half_timer = 0;
    logic [2:0] bit_count;
    logic [3:0] ferr_delay_count;
    
    logic bit_counter_rst, ferr_counter_rst, delay_timer_rst, rdy, store_data, store_bit, clr_ferr, set_ferr, data;
    
    fsm DUV (.clk, .reset, .rxd_synced, .start_check, .full_timer, .half_timer,
        .bit_count,
        .ferr_delay_count,
        .bit_counter_rst, .ferr_counter_rst, .delay_timer_rst, .rdy, .store_data, .store_bit, .clr_ferr, .set_ferr,
        .data
        );
        
    always
        #5 clk = !clk;
        
    initial
    begin
        #100;
        reset = 0;
        #50;
        rxd_synced = 0;
        #1000;    
    end
    
endmodule
