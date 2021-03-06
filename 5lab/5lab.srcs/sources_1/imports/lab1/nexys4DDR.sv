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
          input logic         CLK100MHZ,
		  input logic [15:0]  SW,
		  input logic 	      BTNC,
		  input logic 	      BTND,
		  output logic [6:0]  SEGS,
		  output logic [7:0]  AN,
		  output logic 	      DP,
		  output logic [3:0]  LED, // can be up to 7
//		  input logic         UART_TXD_IN,
		  output logic [2:0]  JA,
		  //input logic  [0:0]  JA_I, // Use for hooking up a tx to the rx
		  output logic        UART_RXD_OUT,
		  output logic		  LED16_R, LED16_G,
		  output logic		  LED17_R, LED17_G
            );


	// Data input and output for tx and rx, data out of the fifo and the fsm
    logic [7:0] data_in, data_out, data_fifo, data_fsm;
    
	logic data_line, cardet, write, error, send_mx, pulse;
	logic txd; // Raw output from the tx

	// Modules to connect
	
	// Single pulser to enable MX_test once
	single_pulser U_PULSER (.clk, .reset, .pulse, .enb(BTND));

	assign run = pulse | SW[6]; // either send MXTEST once or continious

	// mx_test, ROM to send bytes 
	mxtest_2 U_MXTEST (.clk, .reset, .run, .length(SW[5:0]), .send(send_mx), .data(data_in), .ready(rdy));

	// transmitter don't connect the txen to anything
	manchester_tx U_TX (.clk, .reset, .send(send_mx), .txen(), .data(data_in), .rdy, .txd);

	// receiver
	mx_rcvr U_RX (.clk, .reset, .rxd(data_line), .cardet, .data(data_out), .write, .error);

	// Control the seven seg display with data from the rx
	dispctl U_SEG_CTL (.clk, .reset, .d7(SW[5:4]), .d6(SW[3:0]), .d5(4'h0), .d4(4'h0), 
						.d3(4'h0), .d2(4'h0), .d1(data_out[7:4]), .d0(data_out[3:0]),
						.dp7(1'b0), .dp6(1'b0), .dp5(1'b0), .dp4(1'b0), .dp3(1'b0), 
						.dp2(1'b0), .dp1(1'b0), .dp0(1'b0), .seg(SEGS), .dp(DP), .an(AN)); 
						
	// Conections between the FIFO and the FSM
	logic empty, read, full;

	// The FIFO is active low reset
	// A FIFO to deal with data from the receiver
	// What is the biggest packet we can deal with?
	// 1kB FIFO
	// If more space is needed on the board make this smaller
	p_fifo #(.DEPTH(1024)) U_FIFO (.clk, .rst(~reset), .clr(1'b0), 
							.din(data_out), .we(write), .re(read),
							.full, .empty, .dout(data_fifo));

	// Connection between FIFO and UART_tx
	logic send_uart, ready; 
	// This FIFO FSM pulls data out of the FIFO
	fifo_fsm U_FIFO_EXTRACTOR (.clk, .reset, .empty, .ready,
								.read, .send(send_uart),
								.data_fifo, .data_fsm);

	// This UART tx sends the messages to the com port

	transmitter U_UART_TX (.clk, .send(send_uart), .data(data_fsm), .rdy(ready), .txd(UART_RXD_OUT));

                     
	// Assign statements
	//assign txd = JA_I; // Do this to connect to a tx
    assign JA[0] = data_line; // This allows the mx data link to be viewed on the scope
    assign JA[1] = error;
	assign JA[2] = cardet; 
    assign LED[0] = error; // Is there an error for the rx
    assign LED[1] = cardet; // Light up when carrier detected
	assign clk = CLK100MHZ; // connect the clock
	assign reset = BTNC;
    
	assign crash_type = SW[14]; // Go high or low when crashing
	assign data_line = SW[15] ? crash_type : txd; // Crash the line
    
	// Color LEDs to update the user
	// Green = Empty
	// Red = Full
	// FIFO information
	assign LED16_G = empty;
	assign LED16_R = full; 
	assign LED[2] = empty;
	assign LED[3] = full;


	// Mx receiver info
	assign LED17_R = error; // Red = error
	assign LED17_G = cardet; // carrier detected

                                            
endmodule // nexys4DDR
