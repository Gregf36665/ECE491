`timescale 1ns / 1ps
//-----------------------------------------------------------------------------
// Title         : transmitter_bench - ASYNCHRONOUS TRANSMITTER TESTBENCH
// Project       : ECE 491 - Senior Design I
//-----------------------------------------------------------------------------
// File          : transmitter_bench.sv
// Author        : Raji Birru & Greg Flynn
// Created       : 09.05.2016
// Last modified : 09.11.2016
//-----------------------------------------------------------------------------
// Description : This file serves as the testing module for the transmitter.
// Various requirements listed in the Lab 2 design file are verified below. 
//-----------------------------------------------------------------------------
// Modification history :
// 09.05.2016 : created
//-----------------------------------------------------------------------------

module transmitter_bench();

    // Inputs
    logic clk;
    logic send;
    logic [7:0] data;
    
    // Outputs
    logic idle, rdy, txen, txd;
    
    // tasks
    task check_alternate_data;
        //data = 8'h55;
        //data = 8'h00;
        data = 8'b01110110;
        #10;
        send = 1;
        repeat (21) @(posedge clk); // half way through the transmission pull send 
        send = 0;
        repeat (20) @(posedge clk); #1; //  wait until the end of transmission
        #20; // verify txd stays high
    endtask
    
    task check_data33;
        data = 8'h33;
        #10;
        send = 1;
        #10; // drop the send signal after one clock cycle
        send = 0;
        repeat (40) @(posedge clk);
    endtask
    
    task check_multidata;
        data = 8'h00;
        #10;
        send = 1;
        repeat (12) @(posedge clk); // wait long enough for the first data to be saved
        data = 8'hFF;
        repeat (40) @(posedge clk); // wait long enough to be at the second transmission
        send = 0;
        repeat (40) @(posedge clk); // wait long enough to send both bytes
    endtask
        
    task check_all_1;
        data = 8'hFF;
        #10
        send = 1;
        #40;
        send = 0;
        repeat (40) @(posedge clk);
    endtask    
    
    task check_no_send;
        data = 8'h00;
        #10;
        send = 0;
        repeat (10) @(posedge clk);
    endtask
    
    task init_signals;
        // Set up the inputs correctly;
        clk = 0;
        send = 0;
    endtask
    
    transmitter #(.BAUD_RATE(12_500_000)) DUV(.clk,.send,.data,.idle,.rdy,.txen,.txd);
    
    always
        #5 clk = ~clk;
        
    initial begin
        init_signals;
        check_no_send;
//        check_alternate_data;
//        repeat (9) @(posedge clk); // wait a little between each test
//        check_data33;
        repeat (7) @(posedge clk); // wait a little between each test
        check_multidata;
        repeat (7) @(posedge clk); // wait a little between each test
//        check_all_1;
//        repeat (5) @(posedge clk); // wait a little between each test
        $stop;
        
    end
    
endmodule
