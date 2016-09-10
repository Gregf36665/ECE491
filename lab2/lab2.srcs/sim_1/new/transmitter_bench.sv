`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2016 09:47:25 AM
// Design Name: 
// Module Name: transmitter_bench
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


module transmitter_bench();

    // Inputs
    logic clk;
    logic send;
    logic [7:0] data;
    
    // Outputs
    logic rdy, txd;
    
    // tasks
    task check_alternate_data;
        data = 8'h55;
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
        data = 8'h0F;
        #10;
        send = 1;
        repeat (12) @(posedge clk); // wait long enough for the first data to be saved
        data = 8'h00;
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
        data = 8'hXX;
        #10;
        send = 0;
        repeat (10) @(posedge clk);
    endtask
    
    task init_signals;
        // Set up the inputs correctly;
        clk = 0;
        send = 0;
    endtask
    
    transmitter #(.BAUD_RATE(12_500_000)) DUV(.clk,.send,.data,.rdy,.txd);
    
    always
        #5 clk = ~clk;
        
    initial begin
        init_signals;
        check_no_send;
        check_alternate_data;
        repeat (9) @(posedge clk); // wait a little between each test
        check_data33;
        repeat (7) @(posedge clk); // wait a little between each test
        check_multidata;
        repeat (7) @(posedge clk); // wait a little between each test
        check_all_1;
        repeat (5) @(posedge clk); // wait a little between each test
        $stop;
        
    end
    
endmodule
