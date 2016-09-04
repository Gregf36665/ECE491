`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2016 03:19:17 AM
// Design Name: 
// Module Name: decoder_3-8_test
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

module decoder_3_8_test;

    // Inputs
    logic [2:0] a;
    logic enb;
    // Output
    logic [7:0] y, expected_y;
   
    decoder_3_8_en uut (
    .a(a),
    .enb(enb),
    .y(y)
    );
    
    initial begin
        a = 0;
        enb = 0;
        #10;
        expected_y = 8'h00;
        if(expected_y != y) begin
           $display("Error found %h expected %h", y, expected_y);
           $stop;
        end
        enb = 1;
        #10;
        expected_y = 8'h01;
                if(expected_y != y) begin
                   $display("Error found %h expected %h", y, expected_y);
                   $stop;
                end
        
        $stop;
     end
    
endmodule
