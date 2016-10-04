//-----------------------------------------------------------------------------
// Title         : Correlator
// Project       : ECE 491 Senior Design 1
//-----------------------------------------------------------------------------
// File          : correlator.sv
// Author        : John Nestor  <nestorj@nestorj-mbpro-15>
// Created       : 22.09.2016
// Last modified : 22.09.2016
//-----------------------------------------------------------------------------
// Description :
// Inputs a sequence of bits on d_in and computes the number matching bits a sequence
// of LEN most recent bits with a PATTERN of the same length.
// Asserts h_out true when the number of matching bits equals or exceeds
// threshold value HTHRESH.
// Asserts l_out true when the number of matching equals or is less than LTHRESH.
//-----------------------------------------------------------------------------
// Modification history :
// 22.09.2016 : created
//-----------------------------------------------------------------------------



module correlator #(parameter LEN=16, PATTERN=16'b0000000011111111, HTHRESH=13, LTHRESH=3, W=$clog2(LEN)+1)
          (
	      input logic 	   clk,
	      input logic 	   reset,
	      input logic 	   enb,
	      input logic 	   d_in,
	      output logic [W-1:0] csum,
	      output logic 	   h_out,  
	      output logic 	   l_out
	      );


	logic [LEN-1:0] 		   shreg, match_count;


	// shift register shifts from right to left so that oldest data is on
	// the left and newest data is on the right
	always_ff  @(posedge clk)
	  if (reset) shreg <= '0;
	  else if (enb) shreg <= { shreg[LEN-2:0], d_in };

	assign match_count = shreg ^~ PATTERN;

	assign csum = count_ones(match_count);

	assign h_out = csum >= HTHRESH;

	assign l_out = csum <= LTHRESH;

	// This sends the value into a 6 bit LUT
	// From there all of the values are summed together
	function count_ones (input [LEN-1:0] val);
		int i;
		localparam PADDING = LEN % 6;
		localparam WIDTH = (LEN/6) * 6; // ceil LEN to factor of 6
		logic [PADDING - 1: 0] pad = 0; // get the data a factor of 6
		logic [WIDTH-1:0] data;
		data = {pad, val};
		for (i=0; i< LEN / 6; i++);
			count_ones += count_ones6(data[i*6+:6]);
	endfunction


	function count_ones6(input [5:0] val);
	logic [2:0] out; // set the output
	// Generated in python
	// for x in range(64):
	// print ("6'd%d: out = %d;" % (x, count_one(x)))
	// 
	// def count_one(a):
	// return bin(a)[2:].count('1')
	case(val)
		6'd0: out = 0;
		6'd1: out = 1;
		6'd2: out = 1;
		6'd3: out = 2;
		6'd4: out = 1;
		6'd5: out = 2;
		6'd6: out = 2;
		6'd7: out = 3;
		6'd8: out = 1;
		6'd9: out = 2;
		6'd10: out = 2;
		6'd11: out = 3;
		6'd12: out = 2;
		6'd13: out = 3;
		6'd14: out = 3;
		6'd15: out = 4;
		6'd16: out = 1;
		6'd17: out = 2;
		6'd18: out = 2;
		6'd19: out = 3;
		6'd20: out = 2;
		6'd21: out = 3;
		6'd22: out = 3;
		6'd23: out = 4;
		6'd24: out = 2;
		6'd25: out = 3;
		6'd26: out = 3;
		6'd27: out = 4;
		6'd28: out = 3;
		6'd29: out = 4;
		6'd30: out = 4;
		6'd31: out = 5;
		6'd32: out = 1;
		6'd33: out = 2;
		6'd34: out = 2;
		6'd35: out = 3;
		6'd36: out = 2;
		6'd37: out = 3;
		6'd38: out = 3;
		6'd39: out = 4;
		6'd40: out = 2;
		6'd41: out = 3;
		6'd42: out = 3;
		6'd43: out = 4;
		6'd44: out = 3;
		6'd45: out = 4;
		6'd46: out = 4;
		6'd47: out = 5;
		6'd48: out = 2;
		6'd49: out = 3;
		6'd50: out = 3;
		6'd51: out = 4;
		6'd52: out = 3;
		6'd53: out = 4;
		6'd54: out = 4;
		6'd55: out = 5;
		6'd56: out = 3;
		6'd57: out = 4;
		6'd58: out = 4;
		6'd59: out = 5;
		6'd60: out = 4;
		6'd61: out = 5;
		6'd62: out = 5;
		6'd63: out = 6;
	endcase

	assign count_ones6 = out;

	endfunction
endmodule














			       ;
