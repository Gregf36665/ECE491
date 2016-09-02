//-----------------------------------------------------------------------------
// Title         : Nexys4 Simple Top-Level File
// Project       : ECE 491
//-----------------------------------------------------------------------------
// File          : nexys4DDR.sv
// Author        : John Nestor  <nestorj@nestorj-mbpro-15>
// Created       : 22.07.2016
// Last modified : 22.07.2016
//-----------------------------------------------------------------------------
// Description :
// This file provides a starting point for Lab 1 and includes some basic I/O
// ports.  To use, un-comment the port declarations and the corresponding
// configuration statements in the constraints file "Nexys4DDR.xdc".
// This module only declares some basic i/o ports; additional ports
// can be added - see the board documentation and constraints file
// more information
//-----------------------------------------------------------------------------
// Modification history :
// 22.07.2016 : created
//-----------------------------------------------------------------------------

module nexys4DDR (
		  // un-comment the ports that you will use
          input logic         CLK100MHZ,
		  input logic [15:0]  SW,
		  input logic 	      BTNC,
//		  input logic 	      BTNU, 
//		  input logic 	      BTNL, 
//		  input logic 	      BTNR,
//		  input logic 	      BTND,
		  output logic [6:0]  SEGS,
		  output logic [7:0]  AN,
		  output logic 	      DP
//		  output logic [15:0] LED,
//		  input logic         UART_TXD_IN,
//		  input logic         UART_RTS,		  
//		  output logic        UART_RXD_OUT,
//		  output logic        UART_CTS		  
            );
  // add SystemVerilog code & module instantiations here
  
    logic [4:0] d0, d1, d2, d3, d4, d5, d6, d7;
   
    assign LED = SW; // For testing 
       
    dispctl U_DISPCTL ( .clk(CLK100MHZ), .reset(BTNC), .d7(d7[4:1]), .d6(d6[4:1]), .d5(d5[4:1]), .d4(d4[4:1]), .d3(d3[4:1]), 
              .d2(d2[4:1]), .d1(d1[4:1]), .d0(d0[4:1]), .dp7(d7[0]), .dp6(d6[0]), .dp5(d5[0]), .dp4(d4[0]), 
              .dp3(d3[0]), .dp2(d2[0]), .dp1(d1[0]), .dp0(d0[0]), .seg(SEGS), .dp(DP), .an(AN)
            );
          
    reg_parm #(.W(5)) U_DIG0 (.clk(CLK100MHZ), .reset(BTNC), .lden(SW[0]), .d(SW[15:11]), .q(d0));
    reg_parm #(.W(5)) U_DIG1 (.clk(CLK100MHZ), .reset(BTNC), .lden(SW[1]), .d(SW[15:11]), .q(d1));
    reg_parm #(.W(5)) U_DIG2 (.clk(CLK100MHZ), .reset(BTNC), .lden(SW[2]), .d(SW[15:11]), .q(d2));
    reg_parm #(.W(5)) U_DIG3 (.clk(CLK100MHZ), .reset(BTNC), .lden(SW[3]), .d(SW[15:11]), .q(d3));
    reg_parm #(.W(5)) U_DIG4 (.clk(CLK100MHZ), .reset(BTNC), .lden(SW[4]), .d(SW[15:11]), .q(d4));
    reg_parm #(.W(5)) U_DIG5 (.clk(CLK100MHZ), .reset(BTNC), .lden(SW[5]), .d(SW[15:11]), .q(d5));
    reg_parm #(.W(5)) U_DIG6 (.clk(CLK100MHZ), .reset(BTNC), .lden(SW[6]), .d(SW[15:11]), .q(d6));
    reg_parm #(.W(5)) U_DIG7 (.clk(CLK100MHZ), .reset(BTNC), .lden(SW[7]), .d(SW[15:11]), .q(d7));


endmodule // nexys4DDR
