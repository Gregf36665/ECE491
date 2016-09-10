// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Wed Sep 07 22:08:04 2016
// Host        : ECE400-F6N3KB2 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/flynng/Desktop/ECE491/lab2/lab2.sim/sim_1/synth/func/transmitter_bench_func_synth.v
// Design      : nexys4DDR
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clkenb
   (E,
    SR,
    CLK,
    out);
  output [0:0]E;
  output [0:0]SR;
  input CLK;
  input [2:0]out;

  wire CLK;
  wire [0:0]E;
  wire [0:0]SR;
  wire [13:1]data0;
  wire enb;
  wire [2:0]out;
  wire [13:0]q;
  wire q0_carry__0_n_0;
  wire q0_carry__0_n_1;
  wire q0_carry__0_n_2;
  wire q0_carry__0_n_3;
  wire q0_carry__1_n_0;
  wire q0_carry__1_n_1;
  wire q0_carry__1_n_2;
  wire q0_carry__1_n_3;
  wire q0_carry_n_0;
  wire q0_carry_n_1;
  wire q0_carry_n_2;
  wire q0_carry_n_3;
  wire \q[13]_i_2_n_0 ;
  wire \q[13]_i_3_n_0 ;
  wire \q[13]_i_4_n_0 ;
  wire [13:0]q_0;
  wire [3:0]NLW_q0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_q0_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h01)) 
    \U_TX/ 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    enb_i_1
       (.I0(\q[13]_i_2_n_0 ),
        .O(enb));
  FDRE #(
    .INIT(1'b0)) 
    enb_reg
       (.C(CLK),
        .CE(1'b1),
        .D(enb),
        .Q(E),
        .R(SR));
  CARRY4 q0_carry
       (.CI(1'b0),
        .CO({q0_carry_n_0,q0_carry_n_1,q0_carry_n_2,q0_carry_n_3}),
        .CYINIT(q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(q[4:1]));
  CARRY4 q0_carry__0
       (.CI(q0_carry_n_0),
        .CO({q0_carry__0_n_0,q0_carry__0_n_1,q0_carry__0_n_2,q0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(q[8:5]));
  CARRY4 q0_carry__1
       (.CI(q0_carry__0_n_0),
        .CO({q0_carry__1_n_0,q0_carry__1_n_1,q0_carry__1_n_2,q0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(q[12:9]));
  CARRY4 q0_carry__2
       (.CI(q0_carry__1_n_0),
        .CO(NLW_q0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_q0_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,q[13]}));
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1 
       (.I0(q[0]),
        .O(q_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[10]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[10]),
        .O(q_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[11]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[11]),
        .O(q_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[12]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[12]),
        .O(q_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[13]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[13]),
        .O(q_0[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \q[13]_i_2 
       (.I0(\q[13]_i_3_n_0 ),
        .I1(q[3]),
        .I2(q[2]),
        .I3(q[5]),
        .I4(q[4]),
        .I5(\q[13]_i_4_n_0 ),
        .O(\q[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \q[13]_i_3 
       (.I0(q[7]),
        .I1(q[6]),
        .I2(q[9]),
        .I3(q[8]),
        .O(\q[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \q[13]_i_4 
       (.I0(q[12]),
        .I1(q[13]),
        .I2(q[10]),
        .I3(q[11]),
        .I4(q[1]),
        .I5(q[0]),
        .O(\q[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[1]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[1]),
        .O(q_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[2]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[2]),
        .O(q_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[3]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[3]),
        .O(q_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[4]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[4]),
        .O(q_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[5]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[5]),
        .O(q_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[6]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[6]),
        .O(q_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[7]),
        .O(q_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[8]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[8]),
        .O(q_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[9]_i_1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[9]),
        .O(q_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[0]),
        .Q(q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[10]),
        .Q(q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[11]),
        .Q(q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[12]),
        .Q(q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[13]),
        .Q(q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[1]),
        .Q(q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[2]),
        .Q(q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[3]),
        .Q(q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[4]),
        .Q(q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[5]),
        .Q(q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[6]),
        .Q(q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[7]),
        .Q(q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[8]),
        .Q(q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(q_0[9]),
        .Q(q[9]),
        .R(SR));
endmodule

module counter_parm
   (Q,
    carry,
    SR,
    E,
    CLK);
  output [3:0]Q;
  output carry;
  input [0:0]SR;
  input [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire carry;
  wire [3:0]p_0_in;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    carry__0
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(carry));
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1__0 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(SR));
endmodule

(* NotValidForBitStream *)
module nexys4DDR
   (CLK100MHZ,
    BTNC,
    LED,
    UART_TXD_IN);
  input CLK100MHZ;
  input BTNC;
  output [15:0]LED;
  input UART_TXD_IN;

  wire BTNC;
  wire BTNC_IBUF;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [15:0]LED;
  wire [0:0]LED_OBUF;

  IBUF BTNC_IBUF_inst
       (.I(BTNC),
        .O(BTNC_IBUF));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF),
        .O(LED[0]));
  OBUFT \LED_OBUF[10]_inst 
       (.I(1'b0),
        .O(LED[10]),
        .T(1'b1));
  OBUFT \LED_OBUF[11]_inst 
       (.I(1'b0),
        .O(LED[11]),
        .T(1'b1));
  OBUFT \LED_OBUF[12]_inst 
       (.I(1'b0),
        .O(LED[12]),
        .T(1'b1));
  OBUFT \LED_OBUF[13]_inst 
       (.I(1'b0),
        .O(LED[13]),
        .T(1'b1));
  OBUFT \LED_OBUF[14]_inst 
       (.I(1'b0),
        .O(LED[14]),
        .T(1'b1));
  OBUFT \LED_OBUF[15]_inst 
       (.I(1'b0),
        .O(LED[15]),
        .T(1'b1));
  OBUFT \LED_OBUF[1]_inst 
       (.I(1'b0),
        .O(LED[1]),
        .T(1'b1));
  OBUFT \LED_OBUF[2]_inst 
       (.I(1'b0),
        .O(LED[2]),
        .T(1'b1));
  OBUFT \LED_OBUF[3]_inst 
       (.I(1'b0),
        .O(LED[3]),
        .T(1'b1));
  OBUFT \LED_OBUF[4]_inst 
       (.I(1'b0),
        .O(LED[4]),
        .T(1'b1));
  OBUFT \LED_OBUF[5]_inst 
       (.I(1'b0),
        .O(LED[5]),
        .T(1'b1));
  OBUFT \LED_OBUF[6]_inst 
       (.I(1'b0),
        .O(LED[6]),
        .T(1'b1));
  OBUFT \LED_OBUF[7]_inst 
       (.I(1'b0),
        .O(LED[7]),
        .T(1'b1));
  OBUFT \LED_OBUF[8]_inst 
       (.I(1'b0),
        .O(LED[8]),
        .T(1'b1));
  OBUFT \LED_OBUF[9]_inst 
       (.I(1'b0),
        .O(LED[9]),
        .T(1'b1));
  transmitter U_TX
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK(CLK100MHZ_IBUF_BUFG),
        .LED_OBUF(LED_OBUF));
endmodule

module transmitter
   (LED_OBUF,
    CLK,
    BTNC_IBUF);
  output [0:0]LED_OBUF;
  input CLK;
  input BTNC_IBUF;

  wire BTNC_IBUF;
  wire CLK;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [0:0]LED_OBUF;
  wire carry;
  wire counter_rst;
  wire enb;
  wire [3:0]q_reg__0;
  (* RTL_KEEP = "yes" *) wire [2:0]state;

  LUT6 #(
    .INIT(64'h0000AA88AA8822A0)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(enb),
        .I2(BTNC_IBUF),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44404040)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[2]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(enb),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state[0]),
        .I1(q_reg__0[2]),
        .I2(q_reg__0[1]),
        .I3(q_reg__0[3]),
        .I4(q_reg__0[0]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08303830)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(carry),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(BTNC_IBUF),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h45)) 
    \LED_OBUF[0]_inst_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(LED_OBUF));
  clkenb U_CLKENB
       (.CLK(CLK),
        .E(enb),
        .SR(counter_rst),
        .out(state));
  counter_parm U_COUNTER
       (.CLK(CLK),
        .E(enb),
        .Q(q_reg__0),
        .SR(counter_rst),
        .carry(carry));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
