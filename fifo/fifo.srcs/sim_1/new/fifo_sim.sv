`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2016 06:24:28 PM
// Design Name: 
// Module Name: fifo_sim
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

import check_p::*;

module fifo_sim(

    );

	// inputs
	logic clk = 0;
	logic rst = 0;
	logic clr = 0;

	// Data in/out
	logic [7:0] din, dout;

	logic we; // Write enable
	logic re; // Read enable

	logic full, empty;

	task read_byte(logic [7:0] expected);
		$display("Checking %h", expected);
		check_ok("Verify data read correctly", expected, dout);
		// line up to look at the next value
		@(negedge clk) #1 re = 1;
		@(negedge clk) #1 re = 0;
	endtask

	task write_byte(logic [7:0] byte_to_write);
		din = byte_to_write;
		@(negedge clk) #1 we = 1;
		@(negedge clk) #1 we = 0;
	endtask

	task multi_read_write;
		int i;
		// set up the 4 bytes to R/W
		logic [7:0] data [3:0] = '{8'h42, 8'h10, 8'hab, 8'h0f};

		// write in the 4 bytes
		for (i=0; i<4;i++) 
			write_byte(data[i]);
		
		// read the 4 bytes out
		for (i=0; i<4;i++)
			read_byte(data[i]);

	endtask

	task over_write;
		int i;
		logic [7:0] data [4:0] = '{8'h42, 8'h00, 8'h10, 8'hab, 8'h0f};
	
		for (i=0; i<5; i++) 
			write_byte(data[i]);

		#50;

		for (i=0; i<5; i++)
		begin
			read_byte(data[i]);
			if(empty) break; // we don't want to read an empty fifo in this test
		end

		#50;

	endtask

	task over_read;
		read_byte(8'h00);
	endtask
		
	// Get the FIFO into a known state
	// Not really, I'd like to flush the data
	task reset;
		#50; 
		we = 0;
		re = 0;
		rst = 1'b0;
		clr = 1; // apparently reset doesn't clear the FIFO
		// well apparently clr doesn't either.
		// just putting the read/write pt back to 0 apparently
		#50;
		rst = 1'b1;
		clr = 1'b0;
	endtask


	sasc_fifo4 DUV (clk, rst, clr, din, we, dout, re, full, empty);

	always
		#5 clk = ~clk;

	initial
	begin
		reset;
		write_byte(8'h10);
		read_byte(8'h10);
		reset;
		multi_read_write;
		reset;
		over_write;
		reset;
		// get all 0s into the FIFO
		repeat(4) write_byte(8'h00);
		reset;
		over_read;
		#100; // wait to see what happened
		check_summary;
		$finish();
	end
endmodule
