//-----------------------------------------------------------------------------
// Title         : Test Circuit for Manchester Code Transmitter
// Project       : ECE 491 - Senior Design 1
//-----------------------------------------------------------------------------
// File          : mxtest.sv
// Author        : John Nestor  <nestorj@lafayette.edu>
// Last modified : 15.09.2016
//-----------------------------------------------------------------------------
// Description :
// This module is intended to exercise the Manchester transmitter designed for Lab 3.
// It generates the proper signals to feed 1-4 bytes of data to the Manchester
// transmitter to create a "frame" of transmitted bytes.  If the attached Manchester
// transmitter is implemented correctly, there should be no gaps between bytes.
// 
// To use this module, instantiate it with the parameter MEM_SIZE set to the number of bytes
// to be stored in the RAM (fill in the initializers as shown below)
//
// Connect "run" to a debounced pushbutton input.
// When run=1, this module will send the data bytes to the parallel interface of
// the transmitter and then wait for WAIT_TIME_US microseconds and the retransmit the same
// values as long as run is asserted.
//-----------------------------------------------------------------------------
// Modification history :
// 21.10.2004 : created
// 16.09.2010 : revised to Verilog 2001
// 09.09.2016 : converted to SystemVerilog using a RAM instead of input ports


module mxtest(
	      input logic 	 clk, // should be same clock used by Manchester transmitter
	      input logic 	 reset,
	      input logic 	 run, // assert to start sending bytes
	      output logic 	 send, // start the Manchester transmitter
	      output logic [7:0] data, // data output (connects to transmitter data input logic)
	      input logic 	 ready // ready input (connects to transmitter ready output)
	      );
   
   parameter  MEM_SIZE = 5;
   parameter  WAIT_TIME_US  = 10000;   // delay between frames in clock cycles (10ms default)
   parameter  CLK_PD_NS = 10;          // clock period in ns (10ns for Nexys4DDR)
   parameter  WAIT_TIME = (WAIT_TIME_US*1000)/CLK_PD_NS;
   
   parameter WAIT_BITS = $clog2(WAIT_TIME);        // bits required for wait delay counter
   
   //-----------------------------------------------------------------------------
   //        byte counter
   //-----------------------------------------------------------------------------
   
   logic 			 byte_addr_reset;
   logic 			 byte_addr_enable;
   logic [$clog2(MEM_SIZE)-1:0]  byte_addr;
   logic 			 byte_addr_last;

   assign byte_addr_last = byte_addr == MEM_SIZE-1;
   

   always_ff @(posedge clk)  // does separating register and counting logic result in a BRAM?
     if (reset | byte_addr_reset) byte_addr <= 0;
     else if (byte_addr_enable) 
       begin
          if (byte_addr==MEM_SIZE-1) byte_addr <= 0;
          else byte_addr <= byte_addr + 1;
       end
   
   //-----------------------------------------------------------------------------
   //        RAM for for data (really implements as a multiplexer)
   //-----------------------------------------------------------------------------
   
   wire [0:MEM_SIZE-1][7:0] byterom  = {       // must list MEM_SIZE values
					 8'haa,
					 8'h05,
					 8'h34,
					 8'h77,
					 8'hff
					 };
   
   assign data = byterom[byte_addr];
   
   
   //-----------------------------------------------------------------------------
   //        wait cycle counter - used to delay between frames
   //-----------------------------------------------------------------------------
   
   logic 		    wait_count_enable;
   logic 		    wait_count_reset;
   
   logic [WAIT_BITS-1:0]    wait_count;
   logic 		    wait_count_done;
   
   assign   wait_count_done = (wait_count == WAIT_TIME - 1);
   
   always_ff @(posedge clk)
     if (reset || wait_count_reset) wait_count <= 0;
     else if (wait_count_enable) wait_count <= wait_count + 1;
   
   //-----------------------------------------------------------------------------
   //        FSM to generate test signals
   //-----------------------------------------------------------------------------
   
   typedef enum logic [1:0] {WAIT_RH=2'd0, WAIT_RL=2'd1, WAIT_DELAY=2'd2 } state_t;
   
   state_t    	                 state, next;
   
   always_ff @(posedge clk)
     if (reset) state <= WAIT_RH;
     else state <= next;
   
   always_comb
     begin
        send = 1'b0;              // default output values
        byte_addr_enable = 1'b0;
        byte_addr_reset = 1'b0;
        wait_count_enable = 1'b0;
        wait_count_reset = 1'b0;
        next = WAIT_RH;
        case (state)              // default next state
          WAIT_RH:    // wait for run=1 and ready=1
            begin
               if (run & ready) next = WAIT_RL;
	       else next = WAIT_RH;
	    end
	  WAIT_RL:	// wait for run=0
	    begin
               send = 1'b1;
               if (ready) next = WAIT_RL;
	       else
		 begin
		    byte_addr_enable = 1'b1;  // increment byte count at END of state
		    if (byte_addr_last) 
                      begin
			 next = WAIT_DELAY;
			 byte_addr_reset = 1'b1;
			 wait_count_reset = 1'b1;
                      end
		    else next = WAIT_RH;
		 end
            end
          WAIT_DELAY:
            begin
               wait_count_enable = 1'b1;
               if (wait_count_done) next = WAIT_RH;
               else next = WAIT_DELAY;
            end
        endcase
     end
   
endmodule

