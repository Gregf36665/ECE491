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
    logic clk = 0;
    logic send = 0;
    logic [7:0] data = 8'b01010101;
    
    // Outputs
    logic rdy, txd;
    
    transmitter #(.BAUD_RATE(25_000_000)) UUT(.clk,.send,.data,.rdy,.txd);
    
    always
        #5 clk = ~clk;
        
    initial begin
        #40;
        send = 1'b1;
        #400
        //send = 1'b0;
        // is sending 2 bits a long enough pause for stop bit and start bit?
        data = 8'b00001111;
        #200
        send = 1'b0;
        #400
        data = 8'b00110011;
        send = 1'b1;
        repeat(30) @(posedge clk);
        send = 1'b0;
        #200
        $stop;
        
    end
    
endmodule
