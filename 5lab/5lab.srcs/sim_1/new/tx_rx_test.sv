`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Greg
// 
// Create Date: 10/24/2016 05:35:18 PM
// Design Name: 
// Module Name: tx_rx_test.sv
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

module tx_rx_test();
	
	// This is the chance of a bit flip happening
	parameter NOISE = 10; // Set between 0 and 100.

	// Connections
	// Inputs
	logic clk_1 = 0;
	logic clk_2 = 0;
	logic reset = 0;
	logic send = 0;

	// Internal connection
	assign rxd = txd;
	

	logic cardet, write, error;
	logic [7:0] data_out;
	logic [7:0] data_in;
	
	// Start the two clocks
	jitteryclock #(.SEED(4321)) U_CLK1 (.clk(clk_1));
	jitteryclock #(.SEED(1234)) U_CLK2 (.clk(clk_2));

	task reset_systems();
		reset = 1;
		repeat(10) @(posedge clk_1);
		reset = 0;
		repeat(10) @(posedge clk_1); // get into known state
	endtask

	// Send a byte of data
	// This sends LSB first
	task send_byte(input logic [7:0] data_byte);
		data_in = data_byte;
		send = 1;
		// TODO check that this is ok to wait till here
		@(posedge rdy) send = 0;
		check("One byte sent", data_out, data_in);
	endtask


	// Send preamble
	task send_preamble();
		repeat(2) send_byte(8'h55);
	endtask

	// Send SFD
	task send_SFD();
		send_byte(8'hD0);
	endtask

	// This checks for cardet rise and fall with no data and a clean line
	task check_preamble_clean();
		// Start up clean preamble
		send_preamble(); 
		check("Clean preamble cardet trigger", cardet, 1'b1); // The cardet should go high
		send_preamble(); 
		check("Clean preamble cardet stay trigger", cardet, 1'b1); // The cardet should go high
		check("Cardet fell on loss of preamble", cardet, 1'b0); // No one talking, cardet should be low
		// TODO check if we even pass this, I don't think we will.  Should we?
	endtask

	// Tx 1 byte correctly framed
	task send_clean_byte();
		send_preamble(); // Should only need one byte of preamble
		send_SFD(); // SFD should trigger
		send_byte(8'h55);
		check("Cardet high with data", cardet, 1'b1);
		check("Data matches expected value", data, 8'h55);
		check("No error", error, 1'b0);
		check("Write pulsed", write, 1'b1);
		send_EOF();
		check("No error after EOF detected", error, 1'b0);
		check("Cardet fell after EOF", cardet, 1'b0);
	endtask

	// Tx 1 byte with error in the middle noisy
	task tx_error_noise;
		reset = 1;
		repeat(10) @(posedge clk);
		reset = 0;
		repeat(10) @(posedge clk);
		send_preamble(1'b1);
		send_SFD(1'b0);
		send_bit(1'b1,.noise(1'b1));
		send_bit(1'b1,.noise(1'b1));
		send_bit(1'b1,.noise(1'b1));
		send_error(1'b1); // one bit is actually an error
		send_bit(1'b1,.noise(1'b1));
		send_bit(1'b1,.noise(1'b1));
		send_bit(1'b1,.noise(1'b1));
		send_bit(1'b1,.noise(1'b1));
		check("Error triggered", error, 1'b1);
		check("Carrier detect dropped", cardet, 1'b0);
		// Who cares what the data output is doing
	endtask

	// Tx 1 byte but stop halfway through
	task tx_short;
		reset = 1;
		repeat(10) @(posedge clk);
		reset = 0;
		repeat(10) @(posedge clk);
		send_preamble(1'b0);
		send_SFD(1'b0);
		send_bit(1'b1,.noise(1'b0));
		send_bit(1'b1,.noise(1'b0));
		send_bit(1'b1,.noise(1'b0));
		send_EOF(1'b0);
		check("Error triggered", error, 1'b1);
		check("Carrier detect dropped", cardet, 1'b0);
		// Who cares what the data output is doing
	endtask

	// Tx 1 byte but stop halfway through
	task tx_short_noise;
		reset = 1;
		repeat(10) @(posedge clk);
		reset = 0;
		repeat(10) @(posedge clk);
		send_preamble(1'b1);
		send_SFD(1'b1);
		send_bit(1'b1,.noise(1'b1));
		send_bit(1'b1,.noise(1'b1));
		send_bit(1'b1,.noise(1'b1));
		send_EOF(1'b1);
		check("Error triggered", error, 1'b1);
		check("Carrier detect dropped", cardet, 1'b0);
		// Who cares what the data output is doing
	endtask

	// Create a module to test and connect every wire
	// This will check that there are only the ports assigned
	mx_rcvr DUV_RX (.clk(clk_1), .reset, .rxd, .cardet, .data, .write, .error);

	manchester_tx DUV_TX (.clk(clk_2), .reset, .send, .data(data_in), .rdy(), .txd);

	task preamble_tests;
		check_group_begin("2.1 Check response to preamble");
		check_preamble_clean;
		check_preamble_noise;
		check_group_end();
	endtask

	task one_byte_test;
		send_clean_byte;
		send_noise_byte;
	endtask

	// Send 0 bytes test
	task test_just_SFD;
		check_group_begin("Check no byte");
		rxd = 1;
		reset_systems;
		send_preamble(.noise(1'b0));
		check("Cardet high", cardet, 1'b1);
		send_SFD(.noise(1'b0));
		send_EOF(.noise(1'b0));
		check("Error low", error, 1'b0);
		check("Cardet low", cardet, 1'b0);
		check_group_end;
	endtask

	// 10a test
	task test_10a;
		check_group_begin("10a check one byte");
		rxd = 1;
		reset_systems;
		send_preamble(.noise(1'b0));
		check("Cardet high", cardet, 1'b1);
		send_SFD(.noise(1'b0));
		send_byte(8'h55, .noise(1'b0));
		send_EOF(.noise(1'b0));
		check("Error low", error, 1'b0);
		check("Data received", data, 8'h0F);
		check_group_end;
	endtask

	// 10b test
	task test_10b;
		logic [7:0] byte_to_send;
		check_group_begin("10b check 24 bytes");
		rxd = 1;
		reset_systems;
		send_preamble(.noise(1'b0));
		check("Cardet high", cardet, 1'b1);
		send_SFD(.noise(1'b0));
		repeat(24)  // send 24 bytes
		begin
			byte_to_send = $urandom_range(8'hFF,8'h00);
			send_byte(byte_to_send, .noise(1'b0));
			check("Error low", error, 1'b0);
			check("Data received", data, byte_to_send);
		end
		send_EOF(.noise(1'b0));
		check_group_end;
	endtask
		
	// 10c test
	task one_byte_noise_before_after;
		check_group_begin("10c test");
		// repeat 10e6 for bits then 2000 for each clock in a bit period
		repeat(10e6) repeat(2000) @(posedge clk) noise();
		send_noise_byte;
		repeat(10e6) repeat(2000) @(posedge clk) noise();
		check_group_end;
	endtask

	task test_10d;
		check_group_begin("10d test");
		tx_error;
		tx_error_noise;
		check_group_end;
	endtask

	task test_10e;
		check_group_begin("10e test");
		tx_short;
		tx_short_noise;
		check_group_end;
	endtask
	
	// Test 10f/g are in a different test bench

	initial
	begin
		reset_systems;
		#100;
		test_10a; // The most basic test send 1 byte clean
		$finish();
	end

endmodule
