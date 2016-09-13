`timescale 1ns / 1ps
//-----------------------------------------------------------------------------
// Title         : manchester_bench - MANCHESTER TRANSMITTER TESTBENCH
// Project       : ECE 491 - Senior Design I
//-----------------------------------------------------------------------------
// File          : manchester_bench.sv
// Author        : Raji Birru & Greg Flynn
// Created       : 09.13.2016
// Last modified : 09.13.2016
//-----------------------------------------------------------------------------
// Description : This file serves as the testing module for the transmitter.
// Various requirements listed in the Lab 3 design file are verified below. 
// The baud rate is set to 2 clock cycles
//-----------------------------------------------------------------------------
// Modification history :
// 09.13.2016 : created
//-----------------------------------------------------------------------------

module manchester_bench();
    
    import check_p::*;
    // Inputs
    logic clk;
    logic send;
    logic reset;
    logic [7:0] data;
    
    // Outputs
    logic rdy, txen, txd;
    
    task init_signals;
        // Set up the inputs correctly;
        clk = 0;
        send = 0;
    endtask
    
    manchester_tx #(.BAUD_RATE(50_000_000)) DUV(.clk,.send,.reset,.data,.rdy,.txen,.txd);
    
    always
        #5 clk = ~clk;
    
    task check_txen_on_eof;
        reset = 1;
        repeat (2) @(posedge clk); #1
        reset = 0;
        data = 8'h76;
        send = 1;
        #10;
        send = 0;
        @(posedge rdy); #1; // wait until we are in the EOF
        #50
        check_ok("Verify", txd, 1'b1); // Check that the txd line is held high
        
    endtask
        
            
    initial begin
        init_signals;
        check_txen_on_eof;
        check_summary_stop;
        $stop;        
    end
endmodule