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
		  input logic [1:0]   SW,
		  input logic 	      BTNC,
//		  input logic 	      BTNU, 
//		  input logic 	      BTNL, 
//		  input logic 	      BTNR,
//		  input logic 	      BTND,
		  output logic [6:0]  SEGS,
		  output logic [7:0]  AN,
		  output logic [1:0]  LED,
//		  input logic         UART_TXD_IN,
		  output logic [2:0]  JA,
		  input logic         UART_TXD_IN		  
//		  output logic        UART_RXD_OUT
//		  output logic        UART_CTS		  
            );


	// Signals
	logic ferr, ready, rxd;
    logic [7:0] data;


	// GSR
	assign reset = BTNC;

	// wiring for the 7 seg display
	logic [6:0] seg;
	logic [7:0] an;
	assign SEGS = seg;
	assign AN = an;

	assign clk = CLK100MHZ;

	// create the 7-seg display
	dispctl U_DISP (.clk, .reset, .d7(4'b0), .d6(4'b0),. d5(4'b0), 
					.d4(4'b0), .d3(4'b0),. d2(4'b0),
					.dp7(1'b0), .dp6(1'b0), .dp5(1'b0), .dp4(1'b0), 
					.dp3(1'b0), .dp2(1'b0), .dp1(1'b0), .dp0(1'b0),
					.d1(data[7:4]), .d0(data[3:0]), .seg, .an, .dp());

	// create the receiver
	receiver #(.BAUD_RATE(9600)) U_RX (.clk, .rxd, .reset, .ferr, .ready, .data);


	always_comb
	case(SW)
		2'b00: rxd = 1'b1; // idle
		2'b01: rxd = 1'b1; // not implemented yet
		2'b10: rxd = 1'b0; // get ferr
		2'b11: rxd = UART_TXD_IN; // Use realterm
	endcase
    
                     
    assign JA[0] = rxd; // This allows the data to be viewed on the scope
    assign JA[1] = ferr; // This allows the data to be viewed on the scope
    assign JA[2] = ready; // This allows the data to be viewed on the scope
    assign LED[0] = ready;
    assign LED[1] = ferr;
    
                                            
endmodule // nexys4DDR
