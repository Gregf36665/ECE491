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
		  input logic [15:0]  SW,
		  input logic 	      BTNC,
//		  input logic 	      BTNU, 
//		  input logic 	      BTNL, 
//		  input logic 	      BTNR,
//		  input logic 	      BTND,
		  output logic [6:0]  SEGS,
		  output logic [7:0]  AN,
		  output logic 	      DP,
		  output logic [1:0]  LED, // can be up to 7
//		  input logic         UART_TXD_IN,
		  output logic [2:0]  JA
//		  input logic         UART_RTS,		  
//		  output logic        UART_RXD_OUT
//		  output logic        UART_CTS		  
            );


	// Data input and output for tx and rx
    logic [7:0] data_in, data_out;
    
	logic data_line, cardet, write, error, send;
	logic txd; // Raw output from the tx

	// Modules to connect
	// receiver
	mx_rcvr U_RX (.clk, .reset, .rxd(data_line), .cardet, .data(data_out), .write, .error);

	// transmitter don't connect the txen to anything
	manchester_tx U_TX (.clk, .reset, .send, .txen(), .data(data_in), .rdy, .txd);

	// mx_test, ROM to send bytes
	mxtest_2 U_MXTEST (.clk, .reset, .run, .length(SW[5:0]), .send, .data(data_in), .ready(rdy));

	// Control the seven seg display with data from the rx
	dispctl U_SEG_CTL (.clk, .reset, .d7(4'h0), .d6(4'h0), .d5(4'h0), .d4(4'h0), 
						.d3(4'h0), .d2(4'h0), .d1(data_out[7:4]), .d0(data_out[3:0]),
						.dp7(1'b0), .dp6(1'b0), .dp5(1'b0), .dp4(1'b0), .dp3(1'b0), 
						.dp2(1'b0), .dp1(1'b0), .dp0(1'b0), .seg(SEGS), .dp(DP), .an(AN)); 
						
	// This FIFO FSM pulls data out of the FIFO
	fifo_fsm U_FIFO_EXTRACTOR (.clk, .reset, .empty, .ready,
								.read, .send,
								.data_fifo, .data_fsm);
                     
	// Assign statements
    assign JA[0] = data_line; // This allows the data to be viewed on the scope
    assign JA[1] = error;
	assign JA[2] = cardet; 
    assign LED[0] = error; // Is there an error for the rx
    assign LED[1] = cardet; // Light up when carrier detected
	assign clk = CLK100MHZ; // connect the clock
	assign reset = BTNC;
	assign run = SW[6]; // enable mxtest
    
	assign crash_type = SW[14]; // Go high or low when crashing
	assign data_line = SW[15] ? crash_type : txd; // Crash the line
    
                                            
endmodule // nexys4DDR
