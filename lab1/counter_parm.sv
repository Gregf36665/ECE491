module counter_parm #(parameter W=4) (
		     input logic clk, reset, enb,
		     output logic [W-1:0] q
		     );

   always_ff @(posedge clk)
     if (reset) q <= '0;
     else if (enb) q <= q + 1;
      
endmodule // counter_parm
