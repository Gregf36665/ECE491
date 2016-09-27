`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2016 09:50:10 AM
// Design Name: 
// Module Name: delay_timer_test
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


module delay_timer_test();

	// Inputs
    logic clk = 0;
    logic delay_timer_rst;
    logic [7:0] data;
    
    // Outputs
    logic half_timer, full_timer;

	delay_timer #(.BAUD_RATE(9600)) U_DUV (.clk, .delay_timer_rst, .full_timer, .half_timer);

    always
    	#5 clk = ~clk;
    
	initial begin
		delay_timer_rst = 1;
		#10;
		delay_timer_rst = 0;
		
	end
endmodule
