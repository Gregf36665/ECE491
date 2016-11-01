`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Christer Hoeflinger
// 
// Create Date: 10/13/2016 08:21:01 PM
// Design Name: FIFO
// Module Name: p_fifo
// Project Name: Lab 5: Manchester Receiver
// Target Devices: Nexys4DDR
// Description: Parameterized FIFO buffer for 8-bit data which will alert the user
//              when full/empty
//////////////////////////////////////////////////////////////////////////////////


module ness_christer_fifo(input logic clk,
              input logic rst,
              input logic clr,
              input logic we,
              input logic re,
              input logic [7:0] din,
              output logic full,
              output logic empty,
              output logic [7:0] dout);
    
    parameter W = 4;
    parameter Y = $clog2(W);

////////////////////////////////////////////////////////////////////
//
// Local Wires
//

logic     [7:0]          mem[0:W-1];
logic     [Y-1:0] wp;
logic     [Y-1:0]   rp;
logic     [Y-1:0]   wp_p1;
logic     [Y-1:0]   wp_p2;
logic     [Y-1:0]   rp_p1;
logic                      gb;

////////////////////////////////////////////////////////////////////
//
// Misc Logic
//

always_ff @(posedge clk or negedge rst)
  begin
        if(!rst)        wp <= #1 2'd0;
        else
        if(clr)                wp <= #1 2'd0;
        else
        if(we & !full)                wp <= #1 wp_p1;
  end

assign wp_p1 = wp + 2'd1;
assign wp_p2 = wp + 2'd2;

always_ff @(posedge clk or negedge rst)
  begin
        if(!rst)        rp <= #1 2'd0;
        else
        if(clr)                rp <= #1 2'd0;
        else
        if(re & !empty)                rp <= #1 rp_p1;
  end

assign rp_p1 = rp + 2'd1;

// Fifo Output
assign  dout = mem[ rp ];

// Fifo Input 
always_ff @(posedge clk)
  begin
        if(we & !full)     mem[ wp ] <= #1 din;
  end
  
// Status
assign empty = (wp == rp) & !gb;
assign full  = (wp == rp) &  gb;

// Guard Bit ...
always_ff @(posedge clk)
  begin
        if(!rst)                        gb <= #1 1'b0;
        else
        if(clr)                                gb <= #1 1'b0;
        else
        if((wp_p1 == rp) & we)                gb <= #1 1'b1;
        else
        if(re)                                gb <= #1 1'b0;
  end
  
endmodule
