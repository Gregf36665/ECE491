`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2016 10:14:04 AM
// Design Name: 
// Module Name: enb_bench
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


module enb_bench();
    parameter BAUD_RATE = 50_000_000;
    logic clk=0, reset = 1;
    clkenb #(.DIVFREQ(BAUD_RATE)) U_CLKENB (.clk(clk), .enb(enb), .reset);
    
    always
            #5 clk = ~clk;
            
    initial
    begin
        #10;
        reset = 0;    
        #100;
        $stop;
    end
    
endmodule
