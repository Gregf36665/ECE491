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
        if (nrz_val > 1 || nrz_val < 0)
            $error("NRZ value should be 0 or 1");
        #1;
        check("Check TXD value frame 1/2", txd, nrz_val);
        @(posedge clk) #1 //wait 1 clock cycle
        check("Check TXD val frame 2/2", txd, !nrz_val); 
        @(posedge clk) #1; //wait 1 clock cycle
    
    endtask
    
    // This task checks the transmission of 1 byte.
    // It cannot verify multiple byte transmissions
    task check_byte(logic [7:0] val);
        data = val; // set the next data to the current value
        @(posedge clk); // wait one clock cycle
        send = 1; // assert send
        @(negedge rdy); #1; // wait until we are starting to transmit
        send = 0; // stop asserting send
        for (int i=0; i<8; i++)
            check_bit(((val >> (i)) & 8'h01)); // check each bit
    endtask
    
    task check_idle();
        check("Checking idle", txd, 1'b1);
    endtask
    
    task check_txen;
        reset = 1;
        repeat (2) @(posedge clk); #1
        reset = 0;
        data = 8'hFF;
        @(posedge clk); #1;
        send = 1;
        @(negedge rdy); #1; // we have started transmitting
        check_ok("txen line high on transmission", txen, 1'b1);
        @(posedge rdy); // this gets to the 8th bit
        repeat(2) @(posedge clk); #1; // this gets to the EOF section
        
        check_ok("txen line high for EOF tx", txen, 1'b1);
        repeat(4) @(posedge clk) // checking that the EOF is all good
               #1 check_ok("txen line high for EOF tx", txen, 1'b1);
         
         @(posedge clk) // The clk enb module is off by 1 cycle
            #1 check_ok("txen line high for EOF tx due to clock delay", txen, 1'b1);
                                       
         #1 check_ok("txen line low at end of tx", txen, 1'b0);
            
            // check_ok("Verify", txd, 1'b1); // Check that the txd line is held high
            
    endtask
   
   task check_single_bit_tx;
        check_group_begin("Starting single bit verification");
        check_byte(8'h00);
        check_byte(8'hFF);
        check_byte(8'h55);
        check_group_end;
   endtask
   
   // Create the DUV
    manchester_tx #(.BAUD_RATE(50_000_000)) DUV(.clk,.send,.reset,.data,.rdy,.txen,.txd);
    
    
    
    // Start the clock
    always
        #5 clk = ~clk;
    
    
        
            
    initial begin
        init_signals;
        // check_single_bit_tx;
        check_txen;
        check_summary_stop;
        $stop;        
    end
endmodule