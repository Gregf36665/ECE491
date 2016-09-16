`timescale 1ns / 1ps
//-----------------------------------------------------------------------------
// Title         : transmitter - ASYNCHRONOUS TRANSMITTER
// Project       : ECE 491 - Senior Design I
//-----------------------------------------------------------------------------
// File          : transmitter.sv
// Author        : Raji Birru & Greg Flynn
// Created       : 09.05.2016
// Last modified : 09.11.2016
//-----------------------------------------------------------------------------
// Description : This module is for an asynchronus parametrized 8-bit 
// transmitter with a single start bit and a single stop bit with no parity.
// 
//
//-----------------------------------------------------------------------------
// Modification history :
// 09.05.2016 : created
//-----------------------------------------------------------------------------

module transmitter #(parameter EOF_WIDTH = 2, parameter BAUD_RATE = 9600)(
    input logic clk,
    input logic send,
    input logic reset,
    input logic [7:0] data,
    output logic idle,    
    output logic rdy,
    output logic txen,
    output logic baud,    
    output logic txd
    );   
       
    logic counter_rst, mux_out, carry, lden, clk_reset, eof_carry, eof_reset;
    logic [7:0] saved_data;
    logic [2:0] count; // this counts start, 8-bit and stop, 10 bits total
    logic [$clog2(EOF_WIDTH)-1:0] eof_count;
    
    typedef enum logic [2:0] {
        IDLE    = 3'b000,
        STAND_BY_START   = 3'b001,
        SEND    = 3'b010,
        STAND_BY_STOP    = 3'b011,
        EOF = 3'b100,
        EOF_end = 3'b101
    } states;
    
    states state, next;
    
    always_ff @(posedge clk)
        begin
            if(reset) state <= IDLE;
            else state <= next;
        end 
    
   
    always_comb
        begin
            unique case(state)
                IDLE:
                    begin
                        if(send) next = STAND_BY_START;
                        else next = IDLE;
                        
                        lden = 1'b0;
                        rdy = 1'b1;
                        txen = 1'b0;
                        txd = 1'b1;
                        counter_rst = 1'b1; // reset the counter 
                        clk_reset = 1'b1;
                        eof_reset = 1'b1;
                        idle = 1'b1;                      
                    end
                STAND_BY_START:
                // This waits for the baud rate clock to increment
                    begin
                        if(enb) next = SEND;
                        else next = STAND_BY_START;
                        
                        lden = 1'b1;
                        rdy = 1'b1;
                        txen = 1'b0;
                        txd = 1'b1; 
                        clk_reset = 1'b0;
                        eof_reset = 1'b1;
                        counter_rst = 1'b1; // make sure the counter is at 0
                        idle = 1'b1;
                    end
                
                SEND:
                    begin    
                        if(carry == 1'b1)
                            begin
                                next = send ? SEND : STAND_BY_STOP;
                                rdy = 1'b1;
                                lden = 1'b1;
                            end
                        else 
                            begin
                                next = SEND;
                                rdy = 1'b0;
                                lden = 1'b0;
                            end                   
                        txen = 1'b1;
                        clk_reset = 1'b0;
                        
                        counter_rst = 1'b0;
                        eof_reset = 1'b1;
                        txd = mux_out;
                        idle = 1'b0;
                    end
                STAND_BY_STOP:
                // This lets the stop bit stay in position for the entire baud cycle
                // I think this is acutally the last transmitted bit not the stop bit
                    begin
                        if(enb) begin
                            lden = send; // reset the counter position if the send line is high  
                            next = send ? SEND : EOF;
                        end
                        else next = STAND_BY_STOP;                    
                        rdy = 1'b1;
                        clk_reset = 1'b0;
                        lden = 1'b0;
                        counter_rst = 1'b0;
                        eof_reset = 1'b1;
                        txen = 1'b1;
                        txd = mux_out;
                        idle = 1'b0;
                    end
                EOF:
                    begin
                        if(eof_carry) next = EOF_end;
                        else next = EOF;
                        lden = 1'b0;
                        rdy = 1'b1;
                        txen = 1'b1;
                        txd = 1'b1;
                        counter_rst = 1'b1; // reset the counter
                        eof_reset = 1'b0;
                        clk_reset = 1'b0;
                        idle = 1'b1;
                    end 
                EOF_end:
                // This state ensures that the last bit of the EOF is sent completly 
                // Since the enb signal is 1 clock cycle too late the EOF will be sent
                // for 1 extra period.  This is noticable in the simulation but it will
                // be acceptable in the hardware since we expect to operate at 10kHz
                begin
                    if(eof_count == '0) next = IDLE;
                    else next = EOF_end;
                    lden = 1'b0;
                    rdy = 1'b1;
                    txen = 1'b1;
                    txd = 1'b1;
                    counter_rst = 1'b1; // reset the counter
                    eof_reset = 1'b0;
                    clk_reset = 1'b0;
                    idle = 1'b1;
                end 
                default:
                    begin
                       next = IDLE;
                       lden = 1'b0;
                       rdy = 1'b1;
                       txd = 1'b1;
                       txen = 1'b0;
                       counter_rst = 1'b1; // reset the counter 
                       eof_reset = 1'b1; 
                       clk_reset = 1'b1;
                       idle = 1'b1;
                   end
            endcase
        end
        
        clkenb #(.DIVFREQ(BAUD_RATE)) U_CLKENB (.clk(clk), .enb(enb), .reset(clk_reset));
        reg_parm #(.W(8))      U_SNAPSHOT (.clk, .reset(1'b0), .lden, .d(data), .q(saved_data));
        
  
        mux8_parm #(.W(1))     U_SENDER   (.d0(saved_data[0]), .d1(saved_data[1]), .d2(saved_data[2]), 
                                           .d3(saved_data[3]), .d4(saved_data[4]), .d5(saved_data[5]), 
                                           .d6(saved_data[6]), .d7(saved_data[7]), .sel(count), .y(mux_out));
                                            
        counter_parm #(.W(3), .CARRY_VAL(4'd7))  U_COUNTER  (.clk, .enb(enb), .reset(counter_rst), .q(count), .carry(carry));
        counter_parm #(.W($clog2(EOF_WIDTH)), .CARRY_VAL(EOF_WIDTH - 1))  
                U_EOF_WIDTH_COUNT (.clk, .enb(enb), .reset(eof_reset), .q(eof_count), .carry(eof_carry));
        
        assign baud = enb;
            
endmodule
