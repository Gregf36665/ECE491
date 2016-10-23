`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Greg
// 
// Create Date: 10/22/2016 05:35:18 PM
// Design Name: 
// Module Name: mx_rcvr_test
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

module mx_rcvr_test();
	
	// Connections
	// Inputs
	logic clk = 0;
	logic reset = 0;
	logic rxd = 0;

	logic cardet, write, error;
	logic [7:0] data;
	
	// Start the clock
	always
		#5 clk = ~clk;

	task reset_systems();
		reset = 1;
		repeat(10) @(posedge clk);
		reset = 0;
		repeat(10) @(posedge clk); // get into known state
	endtask

	// Create interfearance on the line
	function interfear(input logic rxd_clean);
		parameter NOISE = 0; // Bigger = more noise
		if ($urandom_range(100,1) <= NOISE) interfear = ~rxd_clean;
		else interfear = rxd_clean; 
	endfunction

	// Send a manchester bit
	task send_bit(input logic data_bit, input logic noise);
		@(posedge clk);
		rxd = data_bit;
		repeat(1_000) @(posedge clk) // 1000 clock cycles @10ns = 100kBaud
			rxd = noise ? interfear(data_bit) : data_bit;
		repeat(1_000) @(posedge clk) // 1000 clock cycles @10ns = 100kBaud
			rxd = noise ? interfear(~data_bit) : ~data_bit;
	endtask

	// Send a byte of data
	// This sends LSB first
	task send_byte(input logic [7:0] data_byte, input logic noise);
		int i;
		for (i=0;i<8;i++)
			send_bit(data_byte[i], noise);
	endtask

	// Hold the rxd line for both bauds
	task send_EOF(input logic noise);
		rxd = 1;
		repeat(2_000) @(posedge clk);
	endtask

	// Send preamble
	task send_preamble(input logic noise);
		repeat(2) send_byte(8'h55, noise);
	endtask

	// Send SFD
	task send_SFD(input logic noise);
		send_byte(8'hD0, noise);
	endtask

	// Hold rxd line low for both baud
	task send_error(input logic noise);
		rxd = 0;
		repeat(2_000) @(posedge clk);
	endtask

	// Generate random noise on data
	task noise();
		parameter NOISE = 10;  // Amount of noise compared to rxd = 1
		if ($urandom_range(100,1) <= NOISE)
			data = 0;
		else
			data = 1;
	endtask

	// This checks for cardet rise and fall with no data and a clean line
	task check_preamble_clean();
		reset_systems;
		// Start up clean preamble
		send_preamble(.noise(1'b0)); // no noise
		check("Clean preamble cardet trigger", cardet, 1'b1); // The cardet should go high
		send_preamble(.noise(1'b0)); // no noise
		check("Clean preamble cardet stay trigger", cardet, 1'b1); // The cardet should go high
		send_EOF(.noise(1'b0));
		check("Cardet fell on clean EOF", cardet, 1'b0); // No one talking, cardet should be low
		// TODO check if we even pass this, I don't think we will.  Should we?
	endtask

	// This checks for cardet rise and fall with no data and a noisy line
	task check_preamble_noise();
		reset_systems;
		// Start up clean preamble
		send_preamble(.noise(1'b1)); // no noise
		check("Noisy preamble cardet trigger", cardet, 1'b1); // The cardet should go high
		send_preamble(.noise(1'b1)); // no noise
		check("Clean preamble cardet stay trigger", cardet, 1'b1); // The cardet should go high
		send_EOF(.noise(1'b1));
		check("Cardet fell on noisy EOF", cardet, 1'b0); // No one talking, cardet should be low
		// TODO check if we even pass this, I don't think we will.  Should we?
	endtask

	// Tx 1 byte correctly framed
	task send_clean_byte();
		reset_systems;
		send_preamble(.noise(1'b0)); // Should only need one byte of preamble
		send_SFD(.noise(1'b0)); // SFD should trigger
		send_byte(8'h55, 1'b0);
		check("Cardet high with data", cardet, 1'b1);
		check("Data matches expected value", data, 8'h55);
		check("No error", error, 1'b0);
		check("Write pulsed", write, 1'b1);
		send_EOF(.noise(1'b0));
		check("No error after EOF detected", error, 1'b0);
		check("Cardet fell after EOF", cardet, 1'b0);
	endtask

	// Create a module to test and connect every wire
	// This will check that there are only the ports assigned
	mx_rcvr DUV (.*);

	initial
	begin
		#100
		send_preamble(.noise(1'b0));
		$finish();
	end

endmodule
