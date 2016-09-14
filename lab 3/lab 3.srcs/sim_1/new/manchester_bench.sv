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
    
    task check_bit(nrz_val);
        $display(nrz_val);
        if (nrz_val > 1 || nrz_val < 0)
            $error("NRZ value should be 0 or 1");
        #1;
        check("Check TXD value 1/2", txd, nrz_val);
        @(posedge clk) #1 //wait 1 clock cycle
        check("Check TXD val 2/2", txd, !nrz_val); 
        @(posedge clk) #1; //wait 1 clock cycle
    
    endtask
    
    task check_byte();
        //$display(val);
        //val &= 8'hFF; // make sure val is only 8 bits long
        logic [7:0] val = 8'h76;
        $display("%d, %b", val, val);
        for (int i=0; i<8; i++)
            $display("%b", (val >> i) & 1'b1);
        for (int i=0; i<8; i++) begin
            $display("Showing %d, shifted by %d, original %b", val >> (i) & 8'h01, (i), val);
            check_bit(((val >> (i)) & 8'h01));
        end
        
    endtask
    
    task check_idle();
        check("Checking idle", txd, 1'b1);
    endtask
    
    task check_txen_on_eof;
            reset = 1;
            repeat (2) @(posedge clk); #1
            reset = 0;
            data = 8'h76;
            send = 1;
            @(negedge rdy); #1; // wait until we are starting to transmit
            check_byte();
//            check_bit(0);
//            check_bit(1);
//            check_bit(1);
//            check_bit(0);
//            check_bit(1);
//            check_bit(1);
//            check_bit(1);
//            check_bit(0);
            
            send = 0; // drop send
            
            // check_ok("Verify", txd, 1'b1); // Check that the txd line is held high
            
    endtask
   
   
   // Create the DUV
    manchester_tx #(.BAUD_RATE(50_000_000)) DUV(.clk,.send,.reset,.data,.rdy,.txen,.txd);
    
    
    
    // Start the clock
    always
        #5 clk = ~clk;
    
    
        
            
    initial begin
        init_signals;
        check_txen_on_eof;
        check_summary_stop;
        $stop;        
    end
endmodule