`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2016 09:50:29 PM
// Design Name: 
// Module Name: top_lvl_sim
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


module top_lvl_sim();

    // inputs
    logic CLK100MHZ = 0, BTNC = 0, BTND = 0;
    
    // outputs  JA is txd JB is rdy
    // JC is txenb
    logic LED, JA, JB, JC;
    
    // module
    nexys4DDR DUV (.*);
    
    always
        #5 CLK100MHZ = ~CLK100MHZ;
        
    initial
        begin
            #100; // Wait for GSR to end
            BTND = 1; // Reset the tx
            repeat (10) @(posedge CLK100MHZ);
            BTND = 0;
            repeat (10) @(posedge CLK100MHZ);
            BTNC = 1;
            #5_000_000;
            BTNC = 0;
            #1_000_000;
            $stop;
        end
            
            
    
endmodule
