`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2016 08:46:25 AM
// Design Name: 
// Module Name: transmitter
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


module transmitter(
    input logic clk,
    input logic send,
    input logic [7:0] data,    
    output logic rdy,    
    output logic txd
    );
    
    parameter BAUD_RATE = 9600;
       
    logic counter_rst, mux_out, carry, lden, reset;
    logic [7:0] saved_data;
    logic [2:0] count;
    
    typedef enum logic [1:0] {
        IDLE     = 2'b00,
        START   = 2'b01,
        SEND    = 2'b10,
        STOP    = 2'b11 
    } states;
    
    states state, next;
    
    always_ff @(posedge clk)
        begin
            state <= next;
        end 
    
    always_comb
        begin
            unique case(state)
                IDLE:
                    begin
                        if(send) next = START;
                        else next = IDLE;
                        
                        lden = 1'b0;
                        rdy = 1'b1;
                        txd = 1'b1;
                        counter_rst = 1'b0;
                        reset = 1'b1;                        
                    end
                START:
                    begin
                        next = SEND;
                       
                        lden = 1'b1;
                        txd = 1'b0;
                        rdy = 1'b0;
                        reset = 1'b0;
                        counter_rst = 1'b1;
                    end
                SEND:
                    begin    
                        if(carry == 1'b1) next = STOP;
                        else next = SEND;
                        
                        lden = 1'b0;
                        counter_rst = 1'b0;
                        txd = mux_out;
                    end
                STOP:
                    begin
                        if(send) next = START;
                        else next = IDLE;
                        
                        lden = 1'b0;
                        rdy = 1'b1;
                        txd = 1'b1;                        
                    end
                default:
                        next = IDLE;
            endcase
        end
        
        clkenb #(.DIVFREQ(BAUD_RATE)) U_CLKENB (.clk(clk), .enb(enb), .reset(reset));
        reg_parm #(.W(8))      U_SNAPSHOT (.clk, .reset(1'b0), .lden, .d(data), .q(saved_data));
        mux8_parm #(.W(1))     U_SENDER   (.d0(saved_data[0]), .d1(saved_data[1]), .d2(saved_data[2]), 
                                            .d3(saved_data[3]), .d4(saved_data[4]), .d5(saved_data[5]), 
                                            .d6(saved_data[6]), .d7(saved_data[7]), .sel(count), .y(mux_out));
        counter_parm #(.W(3))  U_COUNTER  (.clk, .enb(enb), .reset(counter_rst), .q(count), .carry(carry));
            
endmodule
