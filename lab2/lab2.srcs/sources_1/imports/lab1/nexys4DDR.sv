`timescale 1ns / 1ps
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
		  input logic [7:0]   SW,
		  input logic 	      BTNC,
//		  input logic 	      BTNU, 
//		  input logic 	      BTNL, 
//		  input logic 	      BTNR,
//		  input logic 	      BTND,
//		  output logic [6:0]  SEGS,
//		  output logic [7:0]  AN,
//		  output logic 	      DP
		  output logic        LED,
//		  input logic         UART_TXD_IN,
		  output logic        JA,
//		  input logic         UART_RTS,		  
		  output logic        UART_RXD_OUT
//		  output logic        UART_CTS		  
            );


    logic send;
    
    single_pulser U_SINGLE_PULSER (.clk(CLK100MHZ), .din(BTNC), .d_pulse(send));
    
    transmitter #(.BAUD_RATE(9600)) U_TX (.clk(CLK100MHZ), .send, .data(SW),
                                            .rdy(LED), .txd(UART_RXD_OUT));   
                                            
    assign JA = UART_RXD_OUT; // This allows the data to be viewed on the scope
                                            
endmodule // nexys4DDR
