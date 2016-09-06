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
    
    transmitter #(.BAUD_RATE(50_000_000)) UUT(.clk,.send,.data,.rdy,.txd);
    
    always
        #5 clk = ~clk;
        
    initial begin
        #20;
        send = 1'b1;
        #20
        send = 1'b0;
        #200
        $stop;
        
    end
    
endmodule
