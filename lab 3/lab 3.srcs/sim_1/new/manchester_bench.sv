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
        reset = 0;
    endtask
    
    task check_bit(nrz_val);
        if (nrz_val > 1 || nrz_val < 0)
            $error("NRZ value should be 0 or 1");
        #1; // get away from the clock edge
        check("Check TXD value frame 1/2", txd, nrz_val);
        @(posedge clk) #1 //wait 1 clock cycle and get away from the edge
        check("Check TXD val frame 2/2", txd, !nrz_val); 
        @(posedge clk) #1; //wait 1 clock cycle and get away from the edge
    
    endtask
    
    // This task checks the transmission of 1 byte.
    // It cannot verify multiple byte transmissions
    task check_byte(logic [7:0] val);
        check_group_begin("Checking single byte");
        data = val; // set the next data to the current value
        @(posedge clk); // wait one clock cycle
        send = 1; // assert send
        @(negedge rdy); #1; // wait until we are starting to transmit
        send = 0; // stop asserting send
        for (int i=0; i<8; i++)
            check_bit(((val >> (i)) & 8'h01)); // check each bit
        check_group_end;
    endtask
    
    
    // This task checks multiple byte transmissions
    // It assumes that the data can be changed after the first bit 
    // has been transmitted
    task check_multi_byte(logic [7:0] val_a, val_b, val_c, val_d, val_e);
        check_group_begin("Checking multi byte tx");
        data = val_a;
        send = 1;
        @(negedge rdy); #1; // wait until we are starting to transmit
        
        // verify first byte
        for (int i=0; i<4; i++)
                check_bit(((val_a >> (i)) & 8'h01)); // check each bit
        data = val_b;
        for (int i=4; i<8; i++)
                check_bit(((val_a >> (i)) & 8'h01)); // check each bit
        
        // verify second byte
        for (int i=0; i<4; i++)
                check_bit(((val_b >> (i)) & 8'h01)); // check each bit
        data = val_c;
        for (int i=4; i<8; i++) 
                check_bit(((val_b >> (i)) & 8'h01)); // check each bit
                
        // verify third byte
        for (int i=0; i<4; i++)
                check_bit(((val_c >> (i)) & 8'h01)); // check each bit
        data = val_d;
        for (int i=4; i<8; i++)
                check_bit(((val_c >> (i)) & 8'h01)); // check each bit
                        
        // verify fourth byte
        for (int i=0; i<4; i++)
                check_bit(((val_d >> (i)) & 8'h01)); // check each bit
        data = val_e;
        for (int i=4; i<8; i++)
                check_bit(((val_d >> (i)) & 8'h01)); // check each bit       
                
        // verify fifth byte
        for (int i=0; i<4; i++)
                check_bit(((val_e >> (i)) & 8'h01)); // check each bit
        send = 0;
        for (int i=4; i<8; i++)
                check_bit(((val_e >> (i)) & 8'h01)); // check each bit
                
        check_group_end;
    endtask
        
        
    
    task check_idle();
        check("Checking idle", txd, 1'b1);
    endtask
    
    task check_txen;
        check_group_begin("Checking tx_en line");
        reset = 1;
        repeat (2) @(posedge clk); #1
        reset = 0;
        data = 8'hFF;
        @(posedge clk); #1;
        send = 1;
        fork : ready_timeout
            begin
                @(negedge rdy); #1; // we have started transmitting
                disable ready_timeout;
            end
            begin
                #1000;
                $error("Never found a falling ready edge");
                check("No falling ready after send asserted", 1'b1, 1'b0);
                disable ready_timeout;
            end
        join
        check_ok("txen line high on transmission", txen, 1'b1);
        send = 0;
        repeat(5) @(posedge clk); // get away from rdy
        
        @(posedge rdy); // this gets to the 8th bit
        
        repeat(2) @(posedge clk); #1; // this gets to the EOF section
        
        check_ok("txen line high for EOF tx", txen, 1'b1);
        // get away from the clock edge
        repeat(3) @(posedge clk) // checking that the EOF is all good
               #1 check_ok("txen line still high for EOF tx", txen, 1'b1);
            
         @(posedge clk) // next clock edge the txen should be low                              
         #1 check_ok("txen line low at end of tx", txen, 1'b0);  
         check_group_end;          
    endtask
   
   
   // Create the DUV
    manchester_tx #(.BAUD_RATE(50_000_000)) DUV(.clk,.send,.reset,.data,.rdy,.txen,.txd);
    
    
    
    // Start the clock
    always
        #5 clk = ~clk;
    
    
        
            
    initial begin
        init_signals;
        check_byte(8'h55);
        #50;
        check_txen;
        #100;
        check_multi_byte(8'h00, 8'hFF, 8'haa, 8'h55, 8'hcc);
        check_multi_byte(8'h00, 8'h00, 8'h00, 8'h00, 8'h00);
        check_idle;
        #50; 
        check_summary_stop;        
    end
endmodule