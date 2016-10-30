// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Sat Oct 29 20:08:42 2016
// Host        : ECE400-9877QW1 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/flynng/Desktop/ECE491/5lab/5lab.sim/sim_1/synth/func/top_sim_func_synth.v
// Design      : nexys4DDR
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module FSMs
   (write,
    out,
    \q_reg[5] ,
    \q_reg[3] ,
    \buffer_reg[7] ,
    E,
    SR,
    \q_reg[3]_0 ,
    \q_reg[0] ,
    ferr_reg,
    \buffer_reg[0] ,
    p_0_in1_out,
    \data_reg[0] ,
    \FSM_sequential_state_reg[3] ,
    \LED[1] ,
    \FSM_onehot_state_reg[2] ,
    store_bit,
    \FSM_onehot_state_reg[4] ,
    \FSM_onehot_state_reg[3] ,
    set_ferr,
    \FSM_sequential_state_reg[3]_0 ,
    CLK100MHZ_IBUF_BUFG,
    BTNC_IBUF,
    DI,
    S,
    \csum_reg[6] ,
    sample,
    Q,
    sample_slow,
    \wp_reg[2] ,
    \csum_reg[6]_0 ,
    \q_reg[0]_0 ,
    \q_reg[0]_1 ,
    sfd_match,
    \q_reg[2] ,
    \csum_reg[5] ,
    \q_reg[2]_0 ,
    \q_reg[2]_1 ,
    \q_reg[5]_0 ,
    \q_reg[2]_2 ,
    \q_reg[1] ,
    \csum_reg[3] ,
    match_idle,
    D);
  output write;
  output [3:0]out;
  output [1:0]\q_reg[5] ;
  output [0:0]\q_reg[3] ;
  output \buffer_reg[7] ;
  output [0:0]E;
  output [0:0]SR;
  output [3:0]\q_reg[3]_0 ;
  output [0:0]\q_reg[0] ;
  output ferr_reg;
  output \buffer_reg[0] ;
  output p_0_in1_out;
  output [0:0]\data_reg[0] ;
  output [0:0]\FSM_sequential_state_reg[3] ;
  output [0:0]\LED[1] ;
  output \FSM_onehot_state_reg[2] ;
  output store_bit;
  output \FSM_onehot_state_reg[4] ;
  output \FSM_onehot_state_reg[3] ;
  output set_ferr;
  output [6:0]\FSM_sequential_state_reg[3]_0 ;
  input CLK100MHZ_IBUF_BUFG;
  input BTNC_IBUF;
  input [3:0]DI;
  input [2:0]S;
  input [0:0]\csum_reg[6] ;
  input sample;
  input [5:0]Q;
  input sample_slow;
  input \wp_reg[2] ;
  input [6:0]\csum_reg[6]_0 ;
  input \q_reg[0]_0 ;
  input \q_reg[0]_1 ;
  input sfd_match;
  input \q_reg[2] ;
  input \csum_reg[5] ;
  input \q_reg[2]_0 ;
  input \q_reg[2]_1 ;
  input \q_reg[5]_0 ;
  input \q_reg[2]_2 ;
  input \q_reg[1] ;
  input \csum_reg[3] ;
  input match_idle;
  input [4:0]D;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [4:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[4] ;
  wire [0:0]\FSM_sequential_state_reg[3] ;
  wire [6:0]\FSM_sequential_state_reg[3]_0 ;
  wire [0:0]\LED[1] ;
  wire [5:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire U_DATA_n_0;
  wire U_DATA_n_1;
  wire U_DATA_n_10;
  wire U_DATA_n_14;
  wire U_DATA_n_6;
  wire U_DATA_n_9;
  wire U_DETECT_n_5;
  wire U_DETECT_n_9;
  wire U_PLL_n_0;
  wire U_PLL_n_8;
  wire \buffer_reg[0] ;
  wire \buffer_reg[7] ;
  wire \csum_reg[3] ;
  wire \csum_reg[5] ;
  wire [0:0]\csum_reg[6] ;
  wire [6:0]\csum_reg[6]_0 ;
  wire data_bit_last;
  wire data_done;
  wire [0:0]\data_reg[0] ;
  wire enable_data;
  wire ferr_reg;
  wire match_idle;
  wire [3:0]out;
  wire p_0_in1_out;
  wire [0:0]\q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[1] ;
  wire \q_reg[2] ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire \q_reg[2]_2 ;
  wire [0:0]\q_reg[3] ;
  wire [3:0]\q_reg[3]_0 ;
  wire [1:0]\q_reg[5] ;
  wire \q_reg[5]_0 ;
  wire sample;
  wire sample_slow;
  wire set_ferr;
  wire sfd_match;
  wire store_bit;
  wire \wp_reg[2] ;
  wire write;

  fsm_data U_DATA
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D({D,U_DETECT_n_9}),
        .\FSM_onehot_state_reg[0]_0 (U_DATA_n_14),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state_reg[3] ),
        .\FSM_onehot_state_reg[4]_0 (\FSM_onehot_state_reg[4] ),
        .\FSM_sequential_state_reg[2] (U_DATA_n_9),
        .Q_reg(U_DATA_n_10),
        .\buffer_reg[0] (\buffer_reg[0] ),
        .\buffer_reg[7] (\buffer_reg[7] ),
        .\csum_reg[3] (\csum_reg[3] ),
        .data_bit_last(data_bit_last),
        .\data_reg[0] (\data_reg[0] ),
        .enable_data(enable_data),
        .match_idle(match_idle),
        .out({U_DATA_n_0,U_DATA_n_1,out,U_DATA_n_6,data_done}),
        .\q_reg[1] (\q_reg[1] ),
        .\q_reg[2] (\q_reg[2]_2 ),
        .\q_reg[5] (\q_reg[5]_0 ),
        .set_ferr(set_ferr),
        .store_bit(store_bit));
  fsm_psfd U_DETECT
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D(U_DETECT_n_9),
        .\FSM_onehot_state_reg[2] (\FSM_onehot_state_reg[2] ),
        .\FSM_onehot_state_reg[6] (U_DATA_n_14),
        .\FSM_onehot_state_reg[9] ({U_DATA_n_0,U_DATA_n_1,U_DATA_n_6,data_done}),
        .\FSM_onehot_state_reg[9]_0 (U_DATA_n_9),
        .\FSM_sequential_state_reg[0]_0 (U_DETECT_n_5),
        .\FSM_sequential_state_reg[1]_0 (U_PLL_n_8),
        .\FSM_sequential_state_reg[2]_0 (U_PLL_n_0),
        .\LED[1] (\LED[1] ),
        .SR(SR),
        .\csum_reg[5] (\csum_reg[5] ),
        .enable_data(enable_data),
        .ferr_reg(ferr_reg),
        .out(\q_reg[5] ),
        .\q_reg[0] (\q_reg[0] ),
        .\q_reg[2] (\q_reg[2] ),
        .\q_reg[2]_0 (\q_reg[2]_0 ),
        .\q_reg[2]_1 (\q_reg[2]_1 ),
        .sample(sample),
        .sample_slow(sample_slow),
        .sfd_match(sfd_match));
  one_bit_ff U_LAST_BIT
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .\FSM_onehot_state_reg[3] (U_DATA_n_10),
        .data_bit_last(data_bit_last));
  fsm_pll U_PLL
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .DI(DI),
        .E(E),
        .\FSM_sequential_state_reg[3]_0 (\FSM_sequential_state_reg[3] ),
        .\FSM_sequential_state_reg[3]_1 (U_PLL_n_8),
        .\FSM_sequential_state_reg[3]_2 (\FSM_sequential_state_reg[3]_0 ),
        .Q(Q),
        .S(S),
        .SR(U_DETECT_n_5),
        .\csum_reg[6] (\csum_reg[6] ),
        .\csum_reg[6]_0 (\csum_reg[6]_0 ),
        .data_bit_last(data_bit_last),
        .enable_data(enable_data),
        .out(U_PLL_n_0),
        .\q_reg[0] (\q_reg[0]_0 ),
        .\q_reg[0]_0 (\q_reg[0]_1 ),
        .\q_reg[3] (\q_reg[3] ),
        .\q_reg[3]_0 (\q_reg[3]_0 ),
        .sample(sample));
  sync_input_1 U_WRITE
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .out(out[3]),
        .p_0_in1_out(p_0_in1_out),
        .\wp_reg[2] (\wp_reg[2] ),
        .write(write));
endmodule

module clkenb
   (enb,
    SR,
    D,
    CLK100MHZ_IBUF_BUFG,
    out,
    \FSM_sequential_state_reg[3] ,
    \q_reg[1]_0 );
  output enb;
  output [0:0]SR;
  output [2:0]D;
  input CLK100MHZ_IBUF_BUFG;
  input [3:0]out;
  input \FSM_sequential_state_reg[3] ;
  input \q_reg[1]_0 ;

  wire CLK100MHZ_IBUF_BUFG;
  wire [2:0]D;
  wire \FSM_sequential_state_reg[3] ;
  wire [0:0]SR;
  wire enb;
  wire enb_0;
  wire [3:0]out;
  wire [10:0]q;
  wire \q[10]_i_2_n_0 ;
  wire \q[1]_i_2__0_n_0 ;
  wire \q[1]_i_3_n_0 ;
  wire \q[4]_i_2_n_0 ;
  wire \q[6]_i_2_n_0 ;
  wire \q[6]_i_3_n_0 ;
  wire \q[8]_i_2_n_0 ;
  wire \q[8]_i_3_n_0 ;
  wire \q_reg[1]_0 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[10] ;
  wire \q_reg_n_0_[1] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[3] ;
  wire \q_reg_n_0_[4] ;
  wire \q_reg_n_0_[5] ;
  wire \q_reg_n_0_[6] ;
  wire \q_reg_n_0_[7] ;
  wire \q_reg_n_0_[8] ;
  wire \q_reg_n_0_[9] ;

  LUT5 #(
    .INIT(32'h06FF0600)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(out[0]),
        .I1(enb),
        .I2(out[3]),
        .I3(out[2]),
        .I4(\FSM_sequential_state_reg[3] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(enb),
        .I4(out[3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0F0F000F80008000)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(out[0]),
        .I1(enb),
        .I2(out[2]),
        .I3(out[1]),
        .I4(\q_reg[1]_0 ),
        .I5(out[3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    enb_i_1__1
       (.I0(\q_reg_n_0_[4] ),
        .I1(\q_reg_n_0_[10] ),
        .I2(\q_reg_n_0_[9] ),
        .I3(\q_reg_n_0_[5] ),
        .I4(\q[10]_i_2_n_0 ),
        .O(enb_0));
  FDRE #(
    .INIT(1'b0)) 
    enb_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(enb_0),
        .Q(enb),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1__2 
       (.I0(\q_reg_n_0_[0] ),
        .O(q[0]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT5 #(
    .INIT(32'hC6CCCCC4)) 
    \q[10]_i_1__0 
       (.I0(\q_reg_n_0_[9] ),
        .I1(\q_reg_n_0_[10] ),
        .I2(\q[10]_i_2_n_0 ),
        .I3(\q_reg_n_0_[5] ),
        .I4(\q_reg_n_0_[4] ),
        .O(q[10]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \q[10]_i_2 
       (.I0(\q_reg_n_0_[6] ),
        .I1(\q[6]_i_3_n_0 ),
        .I2(\q_reg_n_0_[8] ),
        .I3(\q_reg_n_0_[7] ),
        .O(\q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6660666666666666)) 
    \q[1]_i_1__2 
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q[1]_i_2__0_n_0 ),
        .I3(\q_reg_n_0_[4] ),
        .I4(\q_reg_n_0_[10] ),
        .I5(\q_reg_n_0_[9] ),
        .O(q[1]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \q[1]_i_2__0 
       (.I0(\q_reg_n_0_[6] ),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q_reg_n_0_[8] ),
        .I3(\q_reg_n_0_[7] ),
        .I4(\q[1]_i_3_n_0 ),
        .O(\q[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \q[1]_i_3 
       (.I0(\q_reg_n_0_[3] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .I3(\q_reg_n_0_[5] ),
        .O(\q[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q[2]_i_1__2 
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .O(q[2]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q[3]_i_1__2 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[1] ),
        .I3(\q_reg_n_0_[3] ),
        .O(q[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA45555555)) 
    \q[4]_i_1__1 
       (.I0(\q[6]_i_3_n_0 ),
        .I1(\q[4]_i_2_n_0 ),
        .I2(\q_reg_n_0_[8] ),
        .I3(\q_reg_n_0_[7] ),
        .I4(\q_reg_n_0_[6] ),
        .I5(\q_reg_n_0_[4] ),
        .O(q[4]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \q[4]_i_2 
       (.I0(\q_reg_n_0_[10] ),
        .I1(\q_reg_n_0_[9] ),
        .I2(\q_reg_n_0_[5] ),
        .O(\q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \q[5]_i_1__2 
       (.I0(\q_reg_n_0_[4] ),
        .I1(\q_reg_n_0_[2] ),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(\q_reg_n_0_[3] ),
        .I5(\q_reg_n_0_[5] ),
        .O(q[5]));
  LUT6 #(
    .INIT(64'hF0F0F0F03C3CF0E0)) 
    \q[6]_i_1__1 
       (.I0(\q[8]_i_2_n_0 ),
        .I1(\q_reg_n_0_[4] ),
        .I2(\q_reg_n_0_[6] ),
        .I3(\q[6]_i_2_n_0 ),
        .I4(\q_reg_n_0_[5] ),
        .I5(\q[6]_i_3_n_0 ),
        .O(q[6]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \q[6]_i_2 
       (.I0(\q_reg_n_0_[7] ),
        .I1(\q_reg_n_0_[8] ),
        .O(\q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \q[6]_i_3 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[1] ),
        .I3(\q_reg_n_0_[3] ),
        .O(\q[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCC3CC4)) 
    \q[7]_i_1__3 
       (.I0(\q_reg_n_0_[8] ),
        .I1(\q_reg_n_0_[7] ),
        .I2(\q_reg_n_0_[4] ),
        .I3(\q_reg_n_0_[5] ),
        .I4(\q[8]_i_2_n_0 ),
        .I5(\q[8]_i_3_n_0 ),
        .O(q[7]));
  LUT6 #(
    .INIT(64'hCCCCCCCC6CCC6CC4)) 
    \q[8]_i_1__1 
       (.I0(\q_reg_n_0_[7] ),
        .I1(\q_reg_n_0_[8] ),
        .I2(\q_reg_n_0_[4] ),
        .I3(\q_reg_n_0_[5] ),
        .I4(\q[8]_i_2_n_0 ),
        .I5(\q[8]_i_3_n_0 ),
        .O(q[8]));
  LUT2 #(
    .INIT(4'h7)) 
    \q[8]_i_2 
       (.I0(\q_reg_n_0_[9] ),
        .I1(\q_reg_n_0_[10] ),
        .O(\q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \q[8]_i_3 
       (.I0(\q_reg_n_0_[3] ),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[2] ),
        .I4(\q_reg_n_0_[6] ),
        .O(\q[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[9]_i_1 
       (.I0(out[3]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT5 #(
    .INIT(32'hC3CCCCC4)) 
    \q[9]_i_1__1 
       (.I0(\q_reg_n_0_[10] ),
        .I1(\q_reg_n_0_[9] ),
        .I2(\q[10]_i_2_n_0 ),
        .I3(\q_reg_n_0_[5] ),
        .I4(\q_reg_n_0_[4] ),
        .O(q[9]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[0]),
        .Q(\q_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[10]),
        .Q(\q_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[1]),
        .Q(\q_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[2]),
        .Q(\q_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[3]),
        .Q(\q_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[4]),
        .Q(\q_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[5]),
        .Q(\q_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[6]),
        .Q(\q_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[7]),
        .Q(\q_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[8]),
        .Q(\q_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[9]),
        .Q(\q_reg_n_0_[9] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "clkenb" *) 
module clkenb__parameterized0
   (sample_slow,
    BTNC_IBUF,
    CLK100MHZ_IBUF_BUFG);
  output sample_slow;
  input BTNC_IBUF;
  input CLK100MHZ_IBUF_BUFG;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire enb;
  wire [6:0]q;
  wire \q[2]_i_2_n_0 ;
  wire \q[4]_i_2__0_n_0 ;
  wire \q[6]_i_2__0_n_0 ;
  wire [6:0]q_0;
  wire sample_slow;

  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    enb_i_1__3
       (.I0(\q[6]_i_2__0_n_0 ),
        .I1(q[6]),
        .I2(q[5]),
        .I3(q[1]),
        .I4(q[0]),
        .O(enb));
  FDRE #(
    .INIT(1'b0)) 
    enb_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(enb),
        .Q(sample_slow),
        .R(BTNC_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \q[0]_i_1__3 
       (.I0(\q[6]_i_2__0_n_0 ),
        .I1(q[6]),
        .I2(q[5]),
        .I3(q[1]),
        .I4(q[0]),
        .O(q_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \q[1]_i_1__3 
       (.I0(q[0]),
        .I1(q[1]),
        .O(q_0[1]));
  LUT6 #(
    .INIT(64'hFFFFAA001515AA00)) 
    \q[2]_i_1__3 
       (.I0(q[1]),
        .I1(q[4]),
        .I2(q[3]),
        .I3(q[0]),
        .I4(q[2]),
        .I5(\q[2]_i_2_n_0 ),
        .O(q_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h0FF7)) 
    \q[2]_i_2 
       (.I0(q[5]),
        .I1(q[6]),
        .I2(q[1]),
        .I3(q[0]),
        .O(\q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC0001111C000)) 
    \q[3]_i_1__3 
       (.I0(q[4]),
        .I1(q[1]),
        .I2(q[2]),
        .I3(q[0]),
        .I4(q[3]),
        .I5(\q[4]_i_2__0_n_0 ),
        .O(q_0[3]));
  LUT6 #(
    .INIT(64'hFFFF800055558000)) 
    \q[4]_i_1__2 
       (.I0(q[3]),
        .I1(q[2]),
        .I2(q[1]),
        .I3(q[0]),
        .I4(q[4]),
        .I5(\q[4]_i_2__0_n_0 ),
        .O(q_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h6777FFFF)) 
    \q[4]_i_2__0 
       (.I0(q[0]),
        .I1(q[1]),
        .I2(q[6]),
        .I3(q[5]),
        .I4(q[2]),
        .O(\q[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'hC3CCCCC4)) 
    \q[5]_i_1__3 
       (.I0(q[6]),
        .I1(q[5]),
        .I2(\q[6]_i_2__0_n_0 ),
        .I3(q[1]),
        .I4(q[0]),
        .O(q_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'hC6CCCCC4)) 
    \q[6]_i_1__2 
       (.I0(q[5]),
        .I1(q[6]),
        .I2(\q[6]_i_2__0_n_0 ),
        .I3(q[1]),
        .I4(q[0]),
        .O(q_0[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \q[6]_i_2__0 
       (.I0(q[4]),
        .I1(q[3]),
        .I2(q[2]),
        .O(\q[6]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[0]),
        .Q(q[0]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[1]),
        .Q(q[1]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[2]),
        .Q(q[2]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[3]),
        .Q(q[3]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[4]),
        .Q(q[4]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[5]),
        .Q(q[5]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[6]),
        .Q(q[6]),
        .R(BTNC_IBUF));
endmodule

(* ORIG_REF_NAME = "clkenb" *) 
module clkenb__parameterized1
   (E,
    BTNC_IBUF,
    CLK100MHZ_IBUF_BUFG);
  output [0:0]E;
  input BTNC_IBUF;
  input CLK100MHZ_IBUF_BUFG;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]E;
  wire enb_i_1__2_n_0;
  wire [4:1]p_0_in;
  wire \q[0]_i_1__5_n_0 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[1] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[3] ;
  wire \q_reg_n_0_[4] ;

  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    enb_i_1__2
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q_reg_n_0_[3] ),
        .I2(\q_reg_n_0_[4] ),
        .I3(\q_reg_n_0_[1] ),
        .I4(\q_reg_n_0_[2] ),
        .O(enb_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enb_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(enb_i_1__2_n_0),
        .Q(E),
        .R(BTNC_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \q[0]_i_1__5 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q_reg_n_0_[4] ),
        .I3(\q_reg_n_0_[3] ),
        .I4(\q_reg_n_0_[0] ),
        .O(\q[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h33334CCC)) 
    \q[1]_i_1 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q_reg_n_0_[4] ),
        .I3(\q_reg_n_0_[3] ),
        .I4(\q_reg_n_0_[0] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h66662AAA)) 
    \q[2]_i_1 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q_reg_n_0_[4] ),
        .I3(\q_reg_n_0_[3] ),
        .I4(\q_reg_n_0_[0] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h77887F00)) 
    \q[3]_i_1 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q_reg_n_0_[4] ),
        .I3(\q_reg_n_0_[3] ),
        .I4(\q_reg_n_0_[0] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h78F070F0)) 
    \q[4]_i_1 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q_reg_n_0_[4] ),
        .I3(\q_reg_n_0_[3] ),
        .I4(\q_reg_n_0_[0] ),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[0]_i_1__5_n_0 ),
        .Q(\q_reg_n_0_[0] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\q_reg_n_0_[1] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\q_reg_n_0_[2] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\q_reg_n_0_[3] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\q_reg_n_0_[4] ),
        .R(BTNC_IBUF));
endmodule

(* ORIG_REF_NAME = "clkenb" *) 
module clkenb__parameterized2
   (enb,
    BTNC_IBUF,
    CLK100MHZ_IBUF_BUFG);
  output enb;
  input BTNC_IBUF;
  input CLK100MHZ_IBUF_BUFG;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [16:1]data0;
  wire enb;
  wire enb_0;
  wire [16:0]q;
  wire q0_carry__0_n_0;
  wire q0_carry__0_n_1;
  wire q0_carry__0_n_2;
  wire q0_carry__0_n_3;
  wire q0_carry__1_n_0;
  wire q0_carry__1_n_1;
  wire q0_carry__1_n_2;
  wire q0_carry__1_n_3;
  wire q0_carry__2_n_1;
  wire q0_carry__2_n_2;
  wire q0_carry__2_n_3;
  wire q0_carry_n_0;
  wire q0_carry_n_1;
  wire q0_carry_n_2;
  wire q0_carry_n_3;
  wire \q[16]_i_2_n_0 ;
  wire \q[16]_i_3_n_0 ;
  wire \q[16]_i_4_n_0 ;
  wire \q[16]_i_5_n_0 ;
  wire [16:0]q_1;
  wire [3:3]NLW_q0_carry__2_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT1 #(
    .INIT(2'h1)) 
    enb_i_1__0
       (.I0(\q[16]_i_2_n_0 ),
        .O(enb_0));
  FDRE #(
    .INIT(1'b0)) 
    enb_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(enb_0),
        .Q(enb),
        .R(BTNC_IBUF));
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
        .CO({NLW_q0_carry__2_CO_UNCONNECTED[3],q0_carry__2_n_1,q0_carry__2_n_2,q0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(q[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1__0 
       (.I0(q[0]),
        .O(q_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[10]_i_1 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[10]),
        .O(q_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[11]_i_1 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[11]),
        .O(q_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[12]_i_1 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[12]),
        .O(q_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[13]_i_1 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[13]),
        .O(q_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[14]_i_1 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[14]),
        .O(q_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[15]_i_1 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[15]),
        .O(q_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[16]_i_1 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[16]),
        .O(q_1[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \q[16]_i_2 
       (.I0(q[4]),
        .I1(q[3]),
        .I2(q[6]),
        .I3(q[5]),
        .I4(\q[16]_i_3_n_0 ),
        .I5(\q[16]_i_4_n_0 ),
        .O(\q[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \q[16]_i_3 
       (.I0(q[0]),
        .I1(q[15]),
        .I2(q[16]),
        .I3(q[2]),
        .I4(q[1]),
        .O(\q[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \q[16]_i_4 
       (.I0(q[9]),
        .I1(q[10]),
        .I2(q[8]),
        .I3(q[7]),
        .I4(\q[16]_i_5_n_0 ),
        .O(\q[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[16]_i_5 
       (.I0(q[12]),
        .I1(q[11]),
        .I2(q[14]),
        .I3(q[13]),
        .O(\q[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[1]_i_1__0 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[1]),
        .O(q_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[2]_i_1__0 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[2]),
        .O(q_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[3]_i_1__0 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[3]),
        .O(q_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[4]_i_1__0 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[4]),
        .O(q_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[5]_i_1__0 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[5]),
        .O(q_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[6]_i_1__0 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[6]),
        .O(q_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_1__1 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[7]),
        .O(q_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[8]_i_1__0 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[8]),
        .O(q_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[9]_i_1__0 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(data0[9]),
        .O(q_1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[0]),
        .Q(q[0]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[10]),
        .Q(q[10]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[11]),
        .Q(q[11]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[12]),
        .Q(q[12]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[13]),
        .Q(q[13]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[14]),
        .Q(q[14]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[15]),
        .Q(q[15]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[16]),
        .Q(q[16]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[1]),
        .Q(q[1]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[2]),
        .Q(q[2]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[3]),
        .Q(q[3]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[4]),
        .Q(q[4]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[5]),
        .Q(q[5]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[6]),
        .Q(q[6]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[7]),
        .Q(q[7]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[8]),
        .Q(q[8]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_1[9]),
        .Q(q[9]),
        .R(BTNC_IBUF));
endmodule

(* ORIG_REF_NAME = "clkenb" *) 
module clkenb__parameterized3
   (E,
    SR,
    CLK100MHZ_IBUF_BUFG);
  output [0:0]E;
  input [0:0]SR;
  input CLK100MHZ_IBUF_BUFG;

  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]E;
  wire [0:0]SR;
  wire [13:1]data0;
  wire enb;
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

  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT1 #(
    .INIT(2'h1)) 
    enb_i_1__4
       (.I0(\q[13]_i_2_n_0 ),
        .O(enb));
  FDRE #(
    .INIT(1'b0)) 
    enb_reg
       (.C(CLK100MHZ_IBUF_BUFG),
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
    \q[0]_i_1__4 
       (.I0(q[0]),
        .O(q_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[10]_i_1__1 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[10]),
        .O(q_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[11]_i_1__0 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[11]),
        .O(q_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[12]_i_1__0 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[12]),
        .O(q_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[13]_i_1__0 
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
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[1]_i_1__4 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[1]),
        .O(q_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[2]_i_1__4 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[2]),
        .O(q_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[3]_i_1__4 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[3]),
        .O(q_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[4]_i_1__3 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[4]),
        .O(q_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[5]_i_1__4 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[5]),
        .O(q_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[6]_i_1__3 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[6]),
        .O(q_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_1__4 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[7]),
        .O(q_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[8]_i_1__2 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[8]),
        .O(q_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[9]_i_1__2 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(data0[9]),
        .O(q_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[0]),
        .Q(q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[10]),
        .Q(q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[11]),
        .Q(q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[12]),
        .Q(q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[13]),
        .Q(q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[1]),
        .Q(q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[2]),
        .Q(q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[3]),
        .Q(q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[4]),
        .Q(q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[5]),
        .Q(q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[6]),
        .Q(q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[7]),
        .Q(q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[8]),
        .Q(q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q_0[9]),
        .Q(q[9]),
        .R(SR));
endmodule

module clkenb_baud
   (baud,
    SR,
    CLK100MHZ_IBUF_BUFG,
    out);
  output baud;
  input [0:0]SR;
  input CLK100MHZ_IBUF_BUFG;
  input [3:0]out;

  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]SR;
  wire baud;
  wire baud_i_1_n_0;
  wire enb;
  wire enb_reg_n_0;
  wire [3:0]out;
  wire [9:0]q;
  wire \q[3]_i_2_n_0 ;
  wire \q[5]_i_2_n_0 ;
  wire \q[5]_i_3_n_0 ;
  wire \q[7]_i_2_n_0 ;
  wire \q[7]_i_3_n_0 ;
  wire \q[9]_i_3_n_0 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[1] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[3] ;
  wire \q_reg_n_0_[4] ;
  wire \q_reg_n_0_[5] ;
  wire \q_reg_n_0_[6] ;
  wire \q_reg_n_0_[7] ;
  wire \q_reg_n_0_[8] ;
  wire \q_reg_n_0_[9] ;

  LUT6 #(
    .INIT(64'h6666666666666664)) 
    baud_i_1
       (.I0(baud),
        .I1(enb_reg_n_0),
        .I2(out[3]),
        .I3(out[0]),
        .I4(out[1]),
        .I5(out[2]),
        .O(baud_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    baud_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(baud_i_1_n_0),
        .Q(baud),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    enb_i_1
       (.I0(\q_reg_n_0_[3] ),
        .I1(\q_reg_n_0_[9] ),
        .I2(\q_reg_n_0_[8] ),
        .I3(\q_reg_n_0_[4] ),
        .I4(\q[9]_i_3_n_0 ),
        .O(enb));
  FDRE #(
    .INIT(1'b0)) 
    enb_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(enb),
        .Q(enb_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .O(q[0]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[1]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\q_reg_n_0_[1] ),
        .O(q[1]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q[2]_i_1 
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .O(q[2]));
  LUT6 #(
    .INIT(64'hFFFF00000000FF7F)) 
    \q[3]_i_1 
       (.I0(\q_reg_n_0_[5] ),
        .I1(\q_reg_n_0_[6] ),
        .I2(\q_reg_n_0_[7] ),
        .I3(\q[3]_i_2_n_0 ),
        .I4(\q[5]_i_3_n_0 ),
        .I5(\q_reg_n_0_[3] ),
        .O(q[3]));
  LUT3 #(
    .INIT(8'hF7)) 
    \q[3]_i_2 
       (.I0(\q_reg_n_0_[9] ),
        .I1(\q_reg_n_0_[8] ),
        .I2(\q_reg_n_0_[4] ),
        .O(\q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q[4]_i_1 
       (.I0(\q_reg_n_0_[3] ),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[2] ),
        .I4(\q_reg_n_0_[4] ),
        .O(q[4]));
  LUT6 #(
    .INIT(64'hF0F0F0F0BCACB0A0)) 
    \q[5]_i_1 
       (.I0(\q[7]_i_2_n_0 ),
        .I1(\q_reg_n_0_[3] ),
        .I2(\q_reg_n_0_[5] ),
        .I3(\q[5]_i_2_n_0 ),
        .I4(\q_reg_n_0_[4] ),
        .I5(\q[5]_i_3_n_0 ),
        .O(q[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \q[5]_i_2 
       (.I0(\q_reg_n_0_[6] ),
        .I1(\q_reg_n_0_[7] ),
        .O(\q[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \q[5]_i_3 
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .O(\q[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FFC011C0)) 
    \q[6]_i_1 
       (.I0(\q_reg_n_0_[7] ),
        .I1(\q_reg_n_0_[3] ),
        .I2(\q_reg_n_0_[4] ),
        .I3(\q_reg_n_0_[6] ),
        .I4(\q[7]_i_2_n_0 ),
        .I5(\q[7]_i_3_n_0 ),
        .O(q[6]));
  LUT6 #(
    .INIT(64'hFF00FF00FF800F80)) 
    \q[7]_i_1__0 
       (.I0(\q_reg_n_0_[3] ),
        .I1(\q_reg_n_0_[4] ),
        .I2(\q_reg_n_0_[6] ),
        .I3(\q_reg_n_0_[7] ),
        .I4(\q[7]_i_2_n_0 ),
        .I5(\q[7]_i_3_n_0 ),
        .O(q[7]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h0FF7)) 
    \q[7]_i_2 
       (.I0(\q_reg_n_0_[8] ),
        .I1(\q_reg_n_0_[9] ),
        .I2(\q_reg_n_0_[4] ),
        .I3(\q_reg_n_0_[3] ),
        .O(\q[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \q[7]_i_3 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[1] ),
        .I3(\q_reg_n_0_[5] ),
        .O(\q[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT5 #(
    .INIT(32'hC3CCCCC4)) 
    \q[8]_i_1 
       (.I0(\q_reg_n_0_[9] ),
        .I1(\q_reg_n_0_[8] ),
        .I2(\q[9]_i_3_n_0 ),
        .I3(\q_reg_n_0_[4] ),
        .I4(\q_reg_n_0_[3] ),
        .O(q[8]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT5 #(
    .INIT(32'hC6CCCCC4)) 
    \q[9]_i_2 
       (.I0(\q_reg_n_0_[8] ),
        .I1(\q_reg_n_0_[9] ),
        .I2(\q[9]_i_3_n_0 ),
        .I3(\q_reg_n_0_[4] ),
        .I4(\q_reg_n_0_[3] ),
        .O(q[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \q[9]_i_3 
       (.I0(\q_reg_n_0_[5] ),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[2] ),
        .I4(\q_reg_n_0_[7] ),
        .I5(\q_reg_n_0_[6] ),
        .O(\q[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[0]),
        .Q(\q_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[1]),
        .Q(\q_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[2]),
        .Q(\q_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[3]),
        .Q(\q_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[4]),
        .Q(\q_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[5]),
        .Q(\q_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[6]),
        .Q(\q_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[7]),
        .Q(\q_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[8]),
        .Q(\q_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(q[9]),
        .Q(\q_reg_n_0_[9] ),
        .R(SR));
endmodule

module correlator
   (\shreg_reg[2] ,
    \shreg_reg[4] ,
    \shreg_reg[6] ,
    \shreg_reg[8] ,
    \shreg_reg[10] ,
    \shreg_reg[12] ,
    \shreg_reg[14] ,
    \shreg_reg[16] ,
    \shreg_reg[18] ,
    \shreg_reg[20] ,
    \shreg_reg[22] ,
    \shreg_reg[25] ,
    \shreg_reg[27] ,
    \shreg_reg[29] ,
    \shreg_reg[31] ,
    \shreg_reg[33] ,
    \shreg_reg[35] ,
    \shreg_reg[37] ,
    \shreg_reg[39] ,
    \shreg_reg[41] ,
    \shreg_reg[44] ,
    \shreg_reg[46] ,
    \shreg_reg[48] ,
    \shreg_reg[50] ,
    \shreg_reg[52] ,
    \shreg_reg[54] ,
    \shreg_reg[56] ,
    \shreg_reg[58] ,
    \shreg_reg[60] ,
    \shreg_reg[62] ,
    \shreg_reg[64] ,
    \shreg_reg[66] ,
    \shreg_reg[68] ,
    \shreg_reg[70] ,
    \shreg_reg[72] ,
    \shreg_reg[74] ,
    \shreg_reg[76] ,
    \shreg_reg[79] ,
    \shreg_reg[81] ,
    \shreg_reg[83] ,
    \shreg_reg[85] ,
    \shreg_reg[87] ,
    \shreg_reg[89] ,
    \shreg_reg[91] ,
    \shreg_reg[93] ,
    \shreg_reg[95] ,
    \shreg_reg[98] ,
    \shreg_reg[100] ,
    \shreg_reg[102] ,
    \shreg_reg[104] ,
    \shreg_reg[106] ,
    \shreg_reg[108] ,
    \shreg_reg[110] ,
    \shreg_reg[112] ,
    \shreg_reg[114] ,
    \shreg_reg[116] ,
    \shreg_reg[118] ,
    \shreg_reg[120] ,
    \shreg_reg[122] ,
    \shreg_reg[124] ,
    \shreg_reg[126] ,
    \csum_reg[7]_0 ,
    \csum_reg[7]_1 ,
    \csum_reg[3]_0 ,
    \csum_reg[7]_2 ,
    \csum_reg[3]_1 ,
    \csum_reg[3]_2 ,
    \csum_reg[7]_3 ,
    \csum_reg[7]_4 ,
    \csum_reg[3]_3 ,
    \csum_reg[7]_5 ,
    \csum_reg[7]_6 ,
    \csum_reg[3]_4 ,
    \csum_reg[7]_7 ,
    \csum_reg[3]_5 ,
    \csum_reg[3]_6 ,
    \csum_reg[7]_8 ,
    \csum_reg[7]_9 ,
    \csum_reg[3]_7 ,
    \csum_reg[7]_10 ,
    \csum_reg[3]_8 ,
    \csum_reg[3]_9 ,
    \FSM_sequential_state_reg[1] ,
    \csum_reg[3]_10 ,
    \csum_reg[7]_11 ,
    \csum_reg[3]_11 ,
    \csum_reg[3]_12 ,
    \csum_reg[3]_13 ,
    \csum_reg[7]_12 ,
    \csum_reg[3]_14 ,
    \csum_reg[3]_15 ,
    \csum_reg[7]_13 ,
    \csum_reg[7]_14 ,
    \csum_reg[7]_15 ,
    \csum_reg[7]_16 ,
    \csum_reg[3]_16 ,
    \csum_reg[3]_17 ,
    \csum_reg[3]_18 ,
    \csum_reg[3]_19 ,
    \csum_reg[7]_17 ,
    \csum_reg[7]_18 ,
    \csum_reg[7]_19 ,
    \csum_reg[3]_20 ,
    \csum_reg[3]_21 ,
    \csum_reg[7]_20 ,
    \csum_reg[7]_21 ,
    \csum_reg[7]_22 ,
    \csum_reg[3]_22 ,
    \csum_reg[7]_23 ,
    \csum_reg[7]_24 ,
    \csum_reg[7]_25 ,
    \csum_reg[7]_26 ,
    \csum_reg[7]_27 ,
    \csum_reg[7]_28 ,
    \csum_reg[7]_29 ,
    preamble_match,
    out,
    BTNC_IBUF,
    sample_slow,
    shreg,
    CLK100MHZ_IBUF_BUFG,
    \shreg_reg[111]_0 ,
    \shreg_reg[41]_0 ,
    \shreg_reg[41]_1 ,
    \shreg_reg[41]_2 ,
    \shreg_reg[60]_0 ,
    \shreg_reg[111]_1 ,
    \shreg_reg[77]_0 ,
    \shreg_reg[107]_0 ,
    \shreg_reg[96] ,
    \shreg_reg[60]_1 ,
    \shreg_reg[107]_1 ,
    \FSM_sequential_state_reg[2] ,
    \shreg_reg[107]_2 ,
    \shreg_reg[96]_0 ,
    \shreg_reg[0] ,
    \shreg_reg[77]_1 ,
    \shreg_reg[111]_2 ,
    \shreg_reg[77]_2 ,
    \shreg_reg[77]_3 ,
    \shreg_reg[96]_1 ,
    \shreg_reg[0]_0 ,
    \shreg_reg[111]_3 ,
    \shreg_reg[77]_4 ,
    \shreg_reg[77]_5 ,
    \shreg_reg[179] ,
    \shreg_reg[233] ,
    \shreg_reg[95]_0 ,
    \shreg_reg[77]_6 ,
    \shreg_reg[96]_2 ,
    \shreg_reg[95]_1 ,
    \shreg_reg[77]_7 ,
    \shreg_reg[77]_8 ,
    \shreg_reg[95]_2 );
  output \shreg_reg[2] ;
  output \shreg_reg[4] ;
  output \shreg_reg[6] ;
  output \shreg_reg[8] ;
  output \shreg_reg[10] ;
  output \shreg_reg[12] ;
  output \shreg_reg[14] ;
  output \shreg_reg[16] ;
  output \shreg_reg[18] ;
  output \shreg_reg[20] ;
  output \shreg_reg[22] ;
  output \shreg_reg[25] ;
  output \shreg_reg[27] ;
  output \shreg_reg[29] ;
  output \shreg_reg[31] ;
  output \shreg_reg[33] ;
  output \shreg_reg[35] ;
  output \shreg_reg[37] ;
  output \shreg_reg[39] ;
  output \shreg_reg[41] ;
  output \shreg_reg[44] ;
  output \shreg_reg[46] ;
  output \shreg_reg[48] ;
  output \shreg_reg[50] ;
  output \shreg_reg[52] ;
  output \shreg_reg[54] ;
  output \shreg_reg[56] ;
  output \shreg_reg[58] ;
  output \shreg_reg[60] ;
  output \shreg_reg[62] ;
  output \shreg_reg[64] ;
  output \shreg_reg[66] ;
  output \shreg_reg[68] ;
  output \shreg_reg[70] ;
  output \shreg_reg[72] ;
  output \shreg_reg[74] ;
  output \shreg_reg[76] ;
  output \shreg_reg[79] ;
  output \shreg_reg[81] ;
  output \shreg_reg[83] ;
  output \shreg_reg[85] ;
  output \shreg_reg[87] ;
  output \shreg_reg[89] ;
  output \shreg_reg[91] ;
  output \shreg_reg[93] ;
  output \shreg_reg[95] ;
  output \shreg_reg[98] ;
  output \shreg_reg[100] ;
  output \shreg_reg[102] ;
  output \shreg_reg[104] ;
  output \shreg_reg[106] ;
  output \shreg_reg[108] ;
  output \shreg_reg[110] ;
  output \shreg_reg[112] ;
  output \shreg_reg[114] ;
  output \shreg_reg[116] ;
  output \shreg_reg[118] ;
  output \shreg_reg[120] ;
  output \shreg_reg[122] ;
  output \shreg_reg[124] ;
  output \shreg_reg[126] ;
  output \csum_reg[7]_0 ;
  output \csum_reg[7]_1 ;
  output \csum_reg[3]_0 ;
  output \csum_reg[7]_2 ;
  output \csum_reg[3]_1 ;
  output \csum_reg[3]_2 ;
  output \csum_reg[7]_3 ;
  output \csum_reg[7]_4 ;
  output \csum_reg[3]_3 ;
  output \csum_reg[7]_5 ;
  output \csum_reg[7]_6 ;
  output \csum_reg[3]_4 ;
  output \csum_reg[7]_7 ;
  output \csum_reg[3]_5 ;
  output \csum_reg[3]_6 ;
  output \csum_reg[7]_8 ;
  output \csum_reg[7]_9 ;
  output \csum_reg[3]_7 ;
  output \csum_reg[7]_10 ;
  output \csum_reg[3]_8 ;
  output \csum_reg[3]_9 ;
  output \FSM_sequential_state_reg[1] ;
  output \csum_reg[3]_10 ;
  output \csum_reg[7]_11 ;
  output \csum_reg[3]_11 ;
  output \csum_reg[3]_12 ;
  output \csum_reg[3]_13 ;
  output \csum_reg[7]_12 ;
  output \csum_reg[3]_14 ;
  output \csum_reg[3]_15 ;
  output \csum_reg[7]_13 ;
  output \csum_reg[7]_14 ;
  output \csum_reg[7]_15 ;
  output \csum_reg[7]_16 ;
  output \csum_reg[3]_16 ;
  output \csum_reg[3]_17 ;
  output \csum_reg[3]_18 ;
  output \csum_reg[3]_19 ;
  output \csum_reg[7]_17 ;
  output \csum_reg[7]_18 ;
  output \csum_reg[7]_19 ;
  output \csum_reg[3]_20 ;
  output \csum_reg[3]_21 ;
  output \csum_reg[7]_20 ;
  output \csum_reg[7]_21 ;
  output \csum_reg[7]_22 ;
  output \csum_reg[3]_22 ;
  output \csum_reg[7]_23 ;
  output \csum_reg[7]_24 ;
  output \csum_reg[7]_25 ;
  output \csum_reg[7]_26 ;
  output \csum_reg[7]_27 ;
  output \csum_reg[7]_28 ;
  output \csum_reg[7]_29 ;
  output preamble_match;
  output [2:0]out;
  input BTNC_IBUF;
  input sample_slow;
  input [61:0]shreg;
  input CLK100MHZ_IBUF_BUFG;
  input \shreg_reg[111]_0 ;
  input \shreg_reg[41]_0 ;
  input \shreg_reg[41]_1 ;
  input \shreg_reg[41]_2 ;
  input \shreg_reg[60]_0 ;
  input \shreg_reg[111]_1 ;
  input \shreg_reg[77]_0 ;
  input \shreg_reg[107]_0 ;
  input \shreg_reg[96] ;
  input \shreg_reg[60]_1 ;
  input \shreg_reg[107]_1 ;
  input [0:0]\FSM_sequential_state_reg[2] ;
  input \shreg_reg[107]_2 ;
  input \shreg_reg[96]_0 ;
  input \shreg_reg[0] ;
  input \shreg_reg[77]_1 ;
  input \shreg_reg[111]_2 ;
  input \shreg_reg[77]_2 ;
  input \shreg_reg[77]_3 ;
  input \shreg_reg[96]_1 ;
  input \shreg_reg[0]_0 ;
  input \shreg_reg[111]_3 ;
  input \shreg_reg[77]_4 ;
  input \shreg_reg[77]_5 ;
  input \shreg_reg[179] ;
  input \shreg_reg[233] ;
  input \shreg_reg[95]_0 ;
  input \shreg_reg[77]_6 ;
  input \shreg_reg[96]_2 ;
  input \shreg_reg[95]_1 ;
  input \shreg_reg[77]_7 ;
  input \shreg_reg[77]_8 ;
  input \shreg_reg[95]_2 ;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1] ;
  wire [0:0]\FSM_sequential_state_reg[2] ;
  wire \csum[3]_i_10_n_0 ;
  wire \csum[3]_i_11_n_0 ;
  wire \csum[3]_i_12_n_0 ;
  wire \csum[3]_i_13_n_0 ;
  wire \csum[3]_i_16_n_0 ;
  wire \csum[3]_i_17_n_0 ;
  wire \csum[3]_i_19_n_0 ;
  wire \csum[3]_i_21_n_0 ;
  wire \csum[3]_i_22_n_0 ;
  wire \csum[3]_i_28__0_n_0 ;
  wire \csum[3]_i_2_n_0 ;
  wire \csum[3]_i_32__0_n_0 ;
  wire \csum[3]_i_3_n_0 ;
  wire \csum[3]_i_4_n_0 ;
  wire \csum[3]_i_54_n_0 ;
  wire \csum[3]_i_5_n_0 ;
  wire \csum[3]_i_60_n_0 ;
  wire \csum[3]_i_6_n_0 ;
  wire \csum[3]_i_7_n_0 ;
  wire \csum[3]_i_8_n_0 ;
  wire \csum[3]_i_9_n_0 ;
  wire \csum[7]_i_104_n_0 ;
  wire \csum[7]_i_108_n_0 ;
  wire \csum[7]_i_109_n_0 ;
  wire \csum[7]_i_10__0_n_0 ;
  wire \csum[7]_i_11_n_0 ;
  wire \csum[7]_i_123_n_0 ;
  wire \csum[7]_i_12_n_0 ;
  wire \csum[7]_i_13_n_0 ;
  wire \csum[7]_i_15__0_n_0 ;
  wire \csum[7]_i_16_n_0 ;
  wire \csum[7]_i_17__0_n_0 ;
  wire \csum[7]_i_18_n_0 ;
  wire \csum[7]_i_19_n_0 ;
  wire \csum[7]_i_20__0_n_0 ;
  wire \csum[7]_i_22_n_0 ;
  wire \csum[7]_i_24_n_0 ;
  wire \csum[7]_i_25_n_0 ;
  wire \csum[7]_i_26_n_0 ;
  wire \csum[7]_i_28_n_0 ;
  wire \csum[7]_i_29_n_0 ;
  wire \csum[7]_i_2_n_0 ;
  wire \csum[7]_i_32_n_0 ;
  wire \csum[7]_i_33_n_0 ;
  wire \csum[7]_i_37_n_0 ;
  wire \csum[7]_i_38_n_0 ;
  wire \csum[7]_i_39_n_0 ;
  wire \csum[7]_i_3_n_0 ;
  wire \csum[7]_i_41_n_0 ;
  wire \csum[7]_i_42__0_n_0 ;
  wire \csum[7]_i_47_n_0 ;
  wire \csum[7]_i_48_n_0 ;
  wire \csum[7]_i_4_n_0 ;
  wire \csum[7]_i_52_n_0 ;
  wire \csum[7]_i_53_n_0 ;
  wire \csum[7]_i_54_n_0 ;
  wire \csum[7]_i_55_n_0 ;
  wire \csum[7]_i_5_n_0 ;
  wire \csum[7]_i_6_n_0 ;
  wire \csum[7]_i_7_n_0 ;
  wire \csum[7]_i_8_n_0 ;
  wire \csum[7]_i_9__0_n_0 ;
  wire \csum_reg[3]_0 ;
  wire \csum_reg[3]_1 ;
  wire \csum_reg[3]_10 ;
  wire \csum_reg[3]_11 ;
  wire \csum_reg[3]_12 ;
  wire \csum_reg[3]_13 ;
  wire \csum_reg[3]_14 ;
  wire \csum_reg[3]_15 ;
  wire \csum_reg[3]_16 ;
  wire \csum_reg[3]_17 ;
  wire \csum_reg[3]_18 ;
  wire \csum_reg[3]_19 ;
  wire \csum_reg[3]_2 ;
  wire \csum_reg[3]_20 ;
  wire \csum_reg[3]_21 ;
  wire \csum_reg[3]_22 ;
  wire \csum_reg[3]_3 ;
  wire \csum_reg[3]_4 ;
  wire \csum_reg[3]_5 ;
  wire \csum_reg[3]_6 ;
  wire \csum_reg[3]_7 ;
  wire \csum_reg[3]_8 ;
  wire \csum_reg[3]_9 ;
  wire \csum_reg[3]_i_1_n_0 ;
  wire \csum_reg[3]_i_1_n_1 ;
  wire \csum_reg[3]_i_1_n_2 ;
  wire \csum_reg[3]_i_1_n_3 ;
  wire \csum_reg[3]_i_1_n_4 ;
  wire \csum_reg[3]_i_1_n_5 ;
  wire \csum_reg[3]_i_1_n_6 ;
  wire \csum_reg[3]_i_1_n_7 ;
  wire \csum_reg[7]_0 ;
  wire \csum_reg[7]_1 ;
  wire \csum_reg[7]_10 ;
  wire \csum_reg[7]_11 ;
  wire \csum_reg[7]_12 ;
  wire \csum_reg[7]_13 ;
  wire \csum_reg[7]_14 ;
  wire \csum_reg[7]_15 ;
  wire \csum_reg[7]_16 ;
  wire \csum_reg[7]_17 ;
  wire \csum_reg[7]_18 ;
  wire \csum_reg[7]_19 ;
  wire \csum_reg[7]_2 ;
  wire \csum_reg[7]_20 ;
  wire \csum_reg[7]_21 ;
  wire \csum_reg[7]_22 ;
  wire \csum_reg[7]_23 ;
  wire \csum_reg[7]_24 ;
  wire \csum_reg[7]_25 ;
  wire \csum_reg[7]_26 ;
  wire \csum_reg[7]_27 ;
  wire \csum_reg[7]_28 ;
  wire \csum_reg[7]_29 ;
  wire \csum_reg[7]_3 ;
  wire \csum_reg[7]_4 ;
  wire \csum_reg[7]_5 ;
  wire \csum_reg[7]_6 ;
  wire \csum_reg[7]_7 ;
  wire \csum_reg[7]_8 ;
  wire \csum_reg[7]_9 ;
  wire \csum_reg[7]_i_1_n_0 ;
  wire \csum_reg[7]_i_1_n_2 ;
  wire \csum_reg[7]_i_1_n_3 ;
  wire \csum_reg[7]_i_1_n_5 ;
  wire \csum_reg[7]_i_1_n_6 ;
  wire \csum_reg[7]_i_1_n_7 ;
  wire \csum_reg_n_0_[0] ;
  wire \csum_reg_n_0_[1] ;
  wire \csum_reg_n_0_[2] ;
  wire \csum_reg_n_0_[3] ;
  wire \csum_reg_n_0_[4] ;
  wire \csum_reg_n_0_[5] ;
  wire \csum_reg_n_0_[6] ;
  wire \csum_reg_n_0_[7] ;
  wire g0_b0__15_n_0;
  wire g0_b0__16_n_0;
  wire g0_b0__6_n_0;
  wire g0_b0__72_n_0;
  wire g0_b0__74_n_0;
  wire g0_b0__76_n_0;
  wire g0_b0__78_n_0;
  wire g0_b0__7_n_0;
  wire g0_b0__80_n_0;
  wire g0_b0__84_n_0;
  wire g0_b1__15_n_0;
  wire g0_b1__16_n_0;
  wire g0_b1__66_n_0;
  wire g0_b1__68_n_0;
  wire g0_b1__6_n_0;
  wire g0_b1__72_n_0;
  wire g0_b1__7_n_0;
  wire g0_b1__80_n_0;
  wire g0_b1__82_n_0;
  wire g0_b1__84_n_0;
  wire g0_b2__15_n_0;
  wire g0_b2__16_n_0;
  wire g0_b2__62_n_0;
  wire g0_b2__64_n_0;
  wire g0_b2__66_n_0;
  wire g0_b2__68_n_0;
  wire g0_b2__6_n_0;
  wire g0_b2__70_n_0;
  wire g0_b2__74_n_0;
  wire g0_b2__7_n_0;
  wire [2:0]out;
  wire preamble_match;
  wire sample_slow;
  wire [61:0]shreg;
  wire \shreg_reg[0] ;
  wire \shreg_reg[0]_0 ;
  wire \shreg_reg[100] ;
  wire \shreg_reg[102] ;
  wire \shreg_reg[104] ;
  wire \shreg_reg[106] ;
  wire \shreg_reg[107]_0 ;
  wire \shreg_reg[107]_1 ;
  wire \shreg_reg[107]_2 ;
  wire \shreg_reg[108] ;
  wire \shreg_reg[10] ;
  wire \shreg_reg[110] ;
  wire \shreg_reg[111]_0 ;
  wire \shreg_reg[111]_1 ;
  wire \shreg_reg[111]_2 ;
  wire \shreg_reg[111]_3 ;
  wire \shreg_reg[112] ;
  wire \shreg_reg[114] ;
  wire \shreg_reg[116] ;
  wire \shreg_reg[118] ;
  wire \shreg_reg[120] ;
  wire \shreg_reg[122] ;
  wire \shreg_reg[124] ;
  wire \shreg_reg[126] ;
  wire \shreg_reg[12] ;
  wire \shreg_reg[14] ;
  wire \shreg_reg[16] ;
  wire \shreg_reg[179] ;
  wire \shreg_reg[18] ;
  wire \shreg_reg[20] ;
  wire \shreg_reg[22] ;
  wire \shreg_reg[233] ;
  wire \shreg_reg[25] ;
  wire \shreg_reg[27] ;
  wire \shreg_reg[29] ;
  wire \shreg_reg[2] ;
  wire \shreg_reg[31] ;
  wire \shreg_reg[33] ;
  wire \shreg_reg[35] ;
  wire \shreg_reg[37] ;
  wire \shreg_reg[39] ;
  wire \shreg_reg[41] ;
  wire \shreg_reg[41]_0 ;
  wire \shreg_reg[41]_1 ;
  wire \shreg_reg[41]_2 ;
  wire \shreg_reg[44] ;
  wire \shreg_reg[46] ;
  wire \shreg_reg[48] ;
  wire \shreg_reg[4] ;
  wire \shreg_reg[50] ;
  wire \shreg_reg[52] ;
  wire \shreg_reg[54] ;
  wire \shreg_reg[56] ;
  wire \shreg_reg[58] ;
  wire \shreg_reg[60] ;
  wire \shreg_reg[60]_0 ;
  wire \shreg_reg[60]_1 ;
  wire \shreg_reg[62] ;
  wire \shreg_reg[64] ;
  wire \shreg_reg[66] ;
  wire \shreg_reg[68] ;
  wire \shreg_reg[6] ;
  wire \shreg_reg[70] ;
  wire \shreg_reg[72] ;
  wire \shreg_reg[74] ;
  wire \shreg_reg[76] ;
  wire \shreg_reg[77]_0 ;
  wire \shreg_reg[77]_1 ;
  wire \shreg_reg[77]_2 ;
  wire \shreg_reg[77]_3 ;
  wire \shreg_reg[77]_4 ;
  wire \shreg_reg[77]_5 ;
  wire \shreg_reg[77]_6 ;
  wire \shreg_reg[77]_7 ;
  wire \shreg_reg[77]_8 ;
  wire \shreg_reg[79] ;
  wire \shreg_reg[81] ;
  wire \shreg_reg[83] ;
  wire \shreg_reg[85] ;
  wire \shreg_reg[87] ;
  wire \shreg_reg[89] ;
  wire \shreg_reg[8] ;
  wire \shreg_reg[91] ;
  wire \shreg_reg[93] ;
  wire \shreg_reg[95] ;
  wire \shreg_reg[95]_0 ;
  wire \shreg_reg[95]_1 ;
  wire \shreg_reg[95]_2 ;
  wire \shreg_reg[96] ;
  wire \shreg_reg[96]_0 ;
  wire \shreg_reg[96]_1 ;
  wire \shreg_reg[96]_2 ;
  wire \shreg_reg[98] ;
  wire \shreg_reg_n_0_[23] ;
  wire \shreg_reg_n_0_[77] ;
  wire [2:2]\NLW_csum_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_csum_reg[7]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\csum_reg_n_0_[7] ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\csum_reg_n_0_[6] ),
        .I3(\csum_reg_n_0_[5] ),
        .O(preamble_match));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    \FSM_sequential_state[1]_i_2__0 
       (.I0(\csum_reg_n_0_[5] ),
        .I1(\csum_reg_n_0_[6] ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\csum_reg_n_0_[7] ),
        .I4(\FSM_sequential_state_reg[2] ),
        .O(\FSM_sequential_state_reg[1] ));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\csum_reg_n_0_[4] ),
        .I1(\csum_reg_n_0_[3] ),
        .I2(\csum_reg_n_0_[2] ),
        .I3(\csum_reg_n_0_[0] ),
        .I4(\csum_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_10 
       (.I0(\csum[3]_i_19_n_0 ),
        .I1(\shreg_reg[111]_2 ),
        .I2(\csum[3]_i_21_n_0 ),
        .O(\csum[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_11 
       (.I0(\csum[3]_i_12_n_0 ),
        .I1(\shreg_reg[77]_0 ),
        .I2(\csum[3]_i_13_n_0 ),
        .O(\csum[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[3]_i_12 
       (.I0(\shreg_reg[96]_0 ),
        .I1(\csum_reg[3]_4 ),
        .I2(\csum_reg[3]_7 ),
        .I3(\csum[3]_i_22_n_0 ),
        .I4(\shreg_reg[0] ),
        .O(\csum[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \csum[3]_i_13 
       (.I0(g0_b0__6_n_0),
        .I1(g0_b0__7_n_0),
        .I2(g0_b0__84_n_0),
        .I3(g0_b0__78_n_0),
        .I4(g0_b0__80_n_0),
        .I5(\shreg_reg[41]_0 ),
        .O(\csum[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_16 
       (.I0(\csum[3]_i_19_n_0 ),
        .I1(\csum[3]_i_21_n_0 ),
        .I2(\shreg_reg[111]_2 ),
        .O(\csum[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_17 
       (.I0(\csum[3]_i_28__0_n_0 ),
        .I1(\shreg_reg[77]_2 ),
        .I2(g0_b0__76_n_0),
        .I3(g0_b0__72_n_0),
        .I4(g0_b0__74_n_0),
        .O(\csum[3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \csum[3]_i_19 
       (.I0(\csum[3]_i_28__0_n_0 ),
        .I1(g0_b0__74_n_0),
        .I2(g0_b0__72_n_0),
        .I3(g0_b0__76_n_0),
        .I4(\shreg_reg[77]_2 ),
        .O(\csum[3]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_2 
       (.I0(\csum[3]_i_9_n_0 ),
        .I1(\csum[3]_i_10_n_0 ),
        .I2(\csum[3]_i_11_n_0 ),
        .O(\csum[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_21 
       (.I0(\csum[3]_i_32__0_n_0 ),
        .I1(\shreg_reg[77]_3 ),
        .I2(g0_b1__84_n_0),
        .I3(g0_b1__80_n_0),
        .I4(g0_b1__82_n_0),
        .O(\csum[3]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_21__0 
       (.I0(g0_b0__16_n_0),
        .I1(g0_b0__15_n_0),
        .I2(g0_b0__84_n_0),
        .I3(\csum[3]_i_54_n_0 ),
        .I4(\csum[3]_i_28__0_n_0 ),
        .O(\csum_reg[3]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_22 
       (.I0(g0_b1__72_n_0),
        .I1(g0_b1__6_n_0),
        .I2(g0_b1__7_n_0),
        .O(\csum[3]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_24 
       (.I0(g0_b0__76_n_0),
        .I1(g0_b0__74_n_0),
        .I2(g0_b0__72_n_0),
        .O(\csum_reg[3]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \csum[3]_i_28 
       (.I0(\csum_reg[3]_17 ),
        .I1(\csum_reg[3]_18 ),
        .I2(g0_b0__84_n_0),
        .I3(g0_b0__15_n_0),
        .I4(g0_b0__16_n_0),
        .O(\csum_reg[3]_16 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_28__0 
       (.I0(\shreg_reg[41]_0 ),
        .I1(g0_b0__78_n_0),
        .I2(g0_b0__80_n_0),
        .O(\csum[3]_i_28__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_3 
       (.I0(\csum[3]_i_9_n_0 ),
        .I1(\csum[3]_i_10_n_0 ),
        .I2(\csum[3]_i_11_n_0 ),
        .O(\csum[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_32__0 
       (.I0(\shreg_reg[41]_2 ),
        .I1(g0_b1__66_n_0),
        .I2(g0_b1__68_n_0),
        .O(\csum[3]_i_32__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_34 
       (.I0(g0_b1__16_n_0),
        .I1(g0_b1__15_n_0),
        .I2(g0_b1__72_n_0),
        .I3(\csum[3]_i_60_n_0 ),
        .I4(\csum[3]_i_32__0_n_0 ),
        .O(\csum_reg[3]_14 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[3]_i_36 
       (.I0(g0_b0__16_n_0),
        .I1(g0_b0__15_n_0),
        .I2(g0_b0__84_n_0),
        .I3(\csum[3]_i_54_n_0 ),
        .I4(\csum[3]_i_28__0_n_0 ),
        .O(\csum_reg[3]_11 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_4 
       (.I0(\csum[3]_i_12_n_0 ),
        .I1(\csum[3]_i_13_n_0 ),
        .I2(\shreg_reg[77]_0 ),
        .I3(\shreg_reg[107]_0 ),
        .I4(\csum[3]_i_16_n_0 ),
        .O(\csum[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[3]_i_45 
       (.I0(g0_b0__74_n_0),
        .I1(g0_b0__72_n_0),
        .I2(g0_b0__76_n_0),
        .I3(\shreg_reg[95]_0 ),
        .I4(\shreg_reg[77]_6 ),
        .O(\csum_reg[3]_17 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_46 
       (.I0(\shreg_reg[41]_0 ),
        .I1(g0_b0__78_n_0),
        .I2(g0_b0__80_n_0),
        .O(\csum_reg[3]_18 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_47 
       (.I0(g0_b0__84_n_0),
        .I1(g0_b0__15_n_0),
        .I2(g0_b0__16_n_0),
        .O(\csum_reg[3]_19 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[3]_i_5 
       (.I0(\csum[3]_i_9_n_0 ),
        .I1(\csum[3]_i_10_n_0 ),
        .I2(\csum[3]_i_11_n_0 ),
        .I3(\csum[7]_i_8_n_0 ),
        .I4(\csum[7]_i_7_n_0 ),
        .O(\csum[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_50 
       (.I0(\csum_reg[3]_6 ),
        .I1(\shreg_reg[96]_0 ),
        .I2(\csum_reg[3]_4 ),
        .O(\csum_reg[3]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_54 
       (.I0(g0_b0__76_n_0),
        .I1(g0_b0__72_n_0),
        .I2(g0_b0__74_n_0),
        .O(\csum[3]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h00FF69966996FF00)) 
    \csum[3]_i_6 
       (.I0(\csum[3]_i_12_n_0 ),
        .I1(\csum[3]_i_13_n_0 ),
        .I2(\shreg_reg[77]_0 ),
        .I3(\csum[3]_i_3_n_0 ),
        .I4(\csum[3]_i_16_n_0 ),
        .I5(\shreg_reg[107]_0 ),
        .O(\csum[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_60 
       (.I0(g0_b1__84_n_0),
        .I1(g0_b1__80_n_0),
        .I2(g0_b1__82_n_0),
        .O(\csum[3]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_61 
       (.I0(\csum_reg[3]_5 ),
        .I1(\shreg_reg[96]_1 ),
        .I2(\csum_reg[7]_6 ),
        .O(\csum_reg[3]_15 ));
  LUT6 #(
    .INIT(64'h566565566AA6A66A)) 
    \csum[3]_i_7 
       (.I0(\csum[3]_i_4_n_0 ),
        .I1(\csum[3]_i_17_n_0 ),
        .I2(g0_b0__7_n_0),
        .I3(g0_b0__6_n_0),
        .I4(g0_b0__84_n_0),
        .I5(\shreg_reg[111]_0 ),
        .O(\csum[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_74 
       (.I0(g0_b2__74_n_0),
        .I1(g0_b2__15_n_0),
        .I2(g0_b2__16_n_0),
        .O(\csum_reg[3]_21 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \csum[3]_i_75 
       (.I0(g0_b2__70_n_0),
        .I1(g0_b2__68_n_0),
        .I2(\shreg_reg[41]_1 ),
        .I3(g0_b2__64_n_0),
        .I4(g0_b2__62_n_0),
        .I5(g0_b2__66_n_0),
        .O(\csum_reg[3]_20 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_8 
       (.I0(\shreg_reg[111]_0 ),
        .I1(g0_b0__84_n_0),
        .I2(g0_b0__6_n_0),
        .I3(g0_b0__7_n_0),
        .I4(\csum[3]_i_17_n_0 ),
        .O(\csum[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_9 
       (.I0(\shreg_reg[60]_0 ),
        .I1(\csum[7]_i_22_n_0 ),
        .I2(\shreg_reg[111]_1 ),
        .I3(\csum[7]_i_24_n_0 ),
        .I4(\csum[7]_i_25_n_0 ),
        .O(\csum[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_104 
       (.I0(g0_b2__66_n_0),
        .I1(g0_b2__62_n_0),
        .I2(g0_b2__64_n_0),
        .O(\csum[7]_i_104_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_105 
       (.I0(\csum_reg[7]_7 ),
        .I1(\shreg_reg[96]_2 ),
        .I2(\csum_reg[7]_5 ),
        .O(\csum_reg[7]_20 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_107 
       (.I0(g0_b2__66_n_0),
        .I1(g0_b2__62_n_0),
        .I2(g0_b2__64_n_0),
        .O(\csum_reg[7]_27 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_108 
       (.I0(\shreg_reg[41]_1 ),
        .I1(g0_b2__68_n_0),
        .I2(g0_b2__70_n_0),
        .O(\csum[7]_i_108_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_109 
       (.I0(g0_b2__74_n_0),
        .I1(g0_b2__15_n_0),
        .I2(g0_b2__16_n_0),
        .O(\csum[7]_i_109_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[7]_i_10__0 
       (.I0(\csum[7]_i_12_n_0 ),
        .I1(\csum[7]_i_13_n_0 ),
        .I2(\shreg_reg[96] ),
        .I3(\csum[7]_i_15__0_n_0 ),
        .I4(\csum[7]_i_11_n_0 ),
        .O(\csum[7]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \csum[7]_i_11 
       (.I0(\shreg_reg[111]_3 ),
        .I1(\csum[7]_i_32_n_0 ),
        .I2(g0_b2__6_n_0),
        .I3(g0_b2__7_n_0),
        .I4(g0_b2__74_n_0),
        .O(\csum[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_115 
       (.I0(g0_b1__84_n_0),
        .I1(g0_b1__80_n_0),
        .I2(g0_b1__82_n_0),
        .O(\csum_reg[7]_24 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_118 
       (.I0(\csum_reg[7]_7 ),
        .I1(\shreg_reg[96]_2 ),
        .I2(\csum_reg[7]_5 ),
        .O(\csum_reg[7]_29 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_12 
       (.I0(\csum[7]_i_26_n_0 ),
        .I1(\csum[7]_i_28_n_0 ),
        .I2(\shreg_reg[60]_1 ),
        .O(\csum[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[7]_i_123 
       (.I0(g0_b2__64_n_0),
        .I1(g0_b2__62_n_0),
        .I2(g0_b2__66_n_0),
        .I3(\shreg_reg[95]_2 ),
        .I4(\shreg_reg[77]_8 ),
        .O(\csum[7]_i_123_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_127 
       (.I0(g0_b1__82_n_0),
        .I1(g0_b1__80_n_0),
        .I2(g0_b1__84_n_0),
        .I3(\shreg_reg[95]_1 ),
        .I4(\shreg_reg[77]_7 ),
        .O(\csum_reg[7]_23 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \csum[7]_i_13 
       (.I0(\csum[7]_i_33_n_0 ),
        .I1(g0_b2__62_n_0),
        .I2(g0_b2__64_n_0),
        .I3(g0_b2__66_n_0),
        .I4(\shreg_reg[77]_4 ),
        .O(\csum[7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_15__0 
       (.I0(\shreg_reg[60]_0 ),
        .I1(\shreg_reg[111]_1 ),
        .I2(\csum[7]_i_22_n_0 ),
        .I3(\csum[7]_i_37_n_0 ),
        .I4(\csum[7]_i_38_n_0 ),
        .O(\csum[7]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_16 
       (.I0(\csum[7]_i_12_n_0 ),
        .I1(\shreg_reg[96] ),
        .I2(\csum[7]_i_13_n_0 ),
        .O(\csum[7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_17__0 
       (.I0(\csum[7]_i_12_n_0 ),
        .I1(\csum[7]_i_13_n_0 ),
        .I2(\shreg_reg[96] ),
        .I3(\csum[7]_i_15__0_n_0 ),
        .I4(\csum[7]_i_11_n_0 ),
        .O(\csum[7]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_18 
       (.I0(\csum[7]_i_39_n_0 ),
        .I1(\shreg_reg[77]_1 ),
        .I2(\csum[7]_i_41_n_0 ),
        .O(\csum[7]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[7]_i_19 
       (.I0(\shreg_reg[60]_0 ),
        .I1(\shreg_reg[111]_1 ),
        .I2(\csum[7]_i_22_n_0 ),
        .I3(\csum[7]_i_38_n_0 ),
        .I4(\csum[7]_i_37_n_0 ),
        .O(\csum[7]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \csum[7]_i_2 
       (.I0(\csum[7]_i_7_n_0 ),
        .I1(\csum[7]_i_8_n_0 ),
        .I2(\csum[7]_i_9__0_n_0 ),
        .I3(\csum[7]_i_10__0_n_0 ),
        .O(\csum[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[7]_i_20__0 
       (.I0(\csum[7]_i_26_n_0 ),
        .I1(\shreg_reg[60]_1 ),
        .I2(\csum[7]_i_28_n_0 ),
        .I3(\shreg_reg[107]_1 ),
        .I4(\csum[7]_i_29_n_0 ),
        .O(\csum[7]_i_20__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[7]_i_22 
       (.I0(\csum[7]_i_42__0_n_0 ),
        .I1(\shreg_reg[77]_5 ),
        .I2(g0_b2__66_n_0),
        .I3(g0_b2__62_n_0),
        .I4(g0_b2__64_n_0),
        .O(\csum[7]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_24 
       (.I0(\csum[7]_i_39_n_0 ),
        .I1(\csum[7]_i_41_n_0 ),
        .I2(\shreg_reg[77]_1 ),
        .O(\csum[7]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_25 
       (.I0(\shreg_reg[107]_2 ),
        .I1(\csum[7]_i_47_n_0 ),
        .I2(\csum[7]_i_48_n_0 ),
        .O(\csum[7]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \csum[7]_i_26 
       (.I0(\csum[7]_i_42__0_n_0 ),
        .I1(g0_b2__64_n_0),
        .I2(g0_b2__62_n_0),
        .I3(g0_b2__66_n_0),
        .I4(\shreg_reg[77]_5 ),
        .O(\csum[7]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_28 
       (.I0(\csum_reg[7]_9 ),
        .I1(\csum_reg[7]_6 ),
        .I2(\shreg_reg[96]_1 ),
        .I3(\shreg_reg[0]_0 ),
        .I4(\csum[7]_i_52_n_0 ),
        .O(\csum[7]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \csum[7]_i_29 
       (.I0(g0_b1__66_n_0),
        .I1(g0_b1__68_n_0),
        .I2(\shreg_reg[41]_2 ),
        .I3(\csum[7]_i_53_n_0 ),
        .I4(\csum[7]_i_54_n_0 ),
        .O(\csum[7]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \csum[7]_i_3 
       (.I0(\csum[7]_i_7_n_0 ),
        .I1(\csum[7]_i_8_n_0 ),
        .I2(\csum[7]_i_9__0_n_0 ),
        .I3(\csum[7]_i_10__0_n_0 ),
        .O(\csum[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \csum[7]_i_32 
       (.I0(\csum[7]_i_33_n_0 ),
        .I1(\shreg_reg[77]_4 ),
        .I2(g0_b2__66_n_0),
        .I3(g0_b2__64_n_0),
        .I4(g0_b2__62_n_0),
        .O(\csum[7]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_33 
       (.I0(\shreg_reg[41]_1 ),
        .I1(g0_b2__70_n_0),
        .I2(g0_b2__68_n_0),
        .O(\csum[7]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_37 
       (.I0(\shreg_reg[107]_2 ),
        .I1(\csum[7]_i_48_n_0 ),
        .I2(\csum[7]_i_47_n_0 ),
        .O(\csum[7]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hA995566A)) 
    \csum[7]_i_38 
       (.I0(\shreg_reg[111]_3 ),
        .I1(g0_b2__74_n_0),
        .I2(g0_b2__7_n_0),
        .I3(g0_b2__6_n_0),
        .I4(\csum[7]_i_32_n_0 ),
        .O(\csum[7]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[7]_i_39 
       (.I0(\shreg_reg[96]_1 ),
        .I1(\csum_reg[7]_6 ),
        .I2(\csum_reg[7]_9 ),
        .I3(\csum[7]_i_52_n_0 ),
        .I4(\shreg_reg[0]_0 ),
        .O(\csum[7]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hE8808000)) 
    \csum[7]_i_4 
       (.I0(\csum[7]_i_11_n_0 ),
        .I1(\csum[7]_i_12_n_0 ),
        .I2(\csum[7]_i_13_n_0 ),
        .I3(\shreg_reg[96] ),
        .I4(\csum[7]_i_15__0_n_0 ),
        .O(\csum[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h66696999)) 
    \csum[7]_i_41 
       (.I0(\csum[7]_i_53_n_0 ),
        .I1(\csum[7]_i_55_n_0 ),
        .I2(g0_b1__72_n_0),
        .I3(g0_b1__7_n_0),
        .I4(g0_b1__6_n_0),
        .O(\csum[7]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_42 
       (.I0(g0_b2__64_n_0),
        .I1(g0_b2__62_n_0),
        .I2(g0_b2__66_n_0),
        .I3(\shreg_reg[95]_2 ),
        .I4(\shreg_reg[77]_8 ),
        .O(\csum_reg[7]_28 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_42__0 
       (.I0(\shreg_reg[41]_1 ),
        .I1(g0_b2__68_n_0),
        .I2(g0_b2__70_n_0),
        .O(\csum[7]_i_42__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_46__0 
       (.I0(g0_b0__74_n_0),
        .I1(g0_b0__72_n_0),
        .I2(g0_b0__76_n_0),
        .I3(\shreg_reg[95]_0 ),
        .I4(\shreg_reg[77]_6 ),
        .O(\csum_reg[7]_17 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_47 
       (.I0(\csum_reg[3]_7 ),
        .I1(\csum_reg[3]_4 ),
        .I2(\shreg_reg[96]_0 ),
        .I3(\shreg_reg[0] ),
        .I4(\csum[3]_i_22_n_0 ),
        .O(\csum[7]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \csum[7]_i_48 
       (.I0(\csum[3]_i_32__0_n_0 ),
        .I1(g0_b1__82_n_0),
        .I2(g0_b1__80_n_0),
        .I3(g0_b1__84_n_0),
        .I4(\shreg_reg[77]_3 ),
        .O(\csum[7]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_49 
       (.I0(g0_b1__84_n_0),
        .I1(g0_b1__82_n_0),
        .I2(g0_b1__80_n_0),
        .O(\csum_reg[7]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_49__0 
       (.I0(g0_b2__16_n_0),
        .I1(g0_b2__15_n_0),
        .I2(g0_b2__74_n_0),
        .I3(\csum[7]_i_104_n_0 ),
        .I4(\csum[7]_i_42__0_n_0 ),
        .O(\csum_reg[7]_18 ));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \csum[7]_i_5 
       (.I0(\csum[7]_i_10__0_n_0 ),
        .I1(\csum[7]_i_9__0_n_0 ),
        .I2(\csum[7]_i_8_n_0 ),
        .I3(\csum[7]_i_7_n_0 ),
        .I4(\csum[7]_i_16_n_0 ),
        .I5(\csum[7]_i_17__0_n_0 ),
        .O(\csum[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_52 
       (.I0(g0_b2__74_n_0),
        .I1(g0_b2__6_n_0),
        .I2(g0_b2__7_n_0),
        .O(\csum[7]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[7]_i_52__0 
       (.I0(\shreg_reg[77]_8 ),
        .I1(\shreg_reg[95]_2 ),
        .I2(\csum_reg[7]_27 ),
        .I3(\csum[7]_i_108_n_0 ),
        .I4(\csum[7]_i_109_n_0 ),
        .O(\csum_reg[7]_26 ));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    \csum[7]_i_53 
       (.I0(g0_b0__6_n_0),
        .I1(g0_b0__7_n_0),
        .I2(g0_b0__84_n_0),
        .I3(g0_b0__78_n_0),
        .I4(g0_b0__80_n_0),
        .I5(\shreg_reg[41]_0 ),
        .O(\csum[7]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_54 
       (.I0(g0_b1__72_n_0),
        .I1(g0_b1__7_n_0),
        .I2(g0_b1__6_n_0),
        .O(\csum[7]_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_55 
       (.I0(\shreg_reg[41]_2 ),
        .I1(g0_b1__68_n_0),
        .I2(g0_b1__66_n_0),
        .O(\csum[7]_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_56 
       (.I0(g0_b1__16_n_0),
        .I1(g0_b1__15_n_0),
        .I2(g0_b1__72_n_0),
        .I3(\csum[3]_i_60_n_0 ),
        .I4(\csum[3]_i_32__0_n_0 ),
        .O(\csum_reg[7]_12 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \csum[7]_i_6 
       (.I0(\csum[7]_i_10__0_n_0 ),
        .I1(\csum[7]_i_9__0_n_0 ),
        .I2(\csum[7]_i_8_n_0 ),
        .I3(\csum[7]_i_18_n_0 ),
        .I4(\csum[7]_i_19_n_0 ),
        .I5(\csum[7]_i_20__0_n_0 ),
        .O(\csum[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[7]_i_64 
       (.I0(g0_b1__82_n_0),
        .I1(g0_b1__80_n_0),
        .I2(g0_b1__84_n_0),
        .I3(\shreg_reg[95]_1 ),
        .I4(\shreg_reg[77]_7 ),
        .O(\csum_reg[7]_16 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_65 
       (.I0(\shreg_reg[41]_2 ),
        .I1(g0_b1__66_n_0),
        .I2(g0_b1__68_n_0),
        .O(\csum_reg[7]_15 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_66 
       (.I0(g0_b1__72_n_0),
        .I1(g0_b1__15_n_0),
        .I2(g0_b1__16_n_0),
        .O(\csum_reg[7]_14 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[7]_i_68 
       (.I0(g0_b2__16_n_0),
        .I1(g0_b2__15_n_0),
        .I2(g0_b2__74_n_0),
        .I3(\csum[7]_i_104_n_0 ),
        .I4(\csum[7]_i_42__0_n_0 ),
        .O(\csum_reg[7]_19 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_7 
       (.I0(\csum[7]_i_18_n_0 ),
        .I1(\csum[7]_i_20__0_n_0 ),
        .I2(\csum[7]_i_19_n_0 ),
        .O(\csum[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \csum[7]_i_74 
       (.I0(\csum[7]_i_123_n_0 ),
        .I1(\csum[7]_i_108_n_0 ),
        .I2(g0_b2__74_n_0),
        .I3(g0_b2__15_n_0),
        .I4(g0_b2__16_n_0),
        .O(\csum_reg[7]_25 ));
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_78 
       (.I0(\csum_reg[7]_14 ),
        .I1(\csum_reg[7]_15 ),
        .I2(\csum_reg[7]_16 ),
        .I3(\shreg_reg[179] ),
        .I4(\shreg_reg[233] ),
        .O(\csum_reg[7]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \csum[7]_i_79 
       (.I0(\csum_reg[7]_16 ),
        .I1(\csum_reg[7]_15 ),
        .I2(g0_b1__72_n_0),
        .I3(g0_b1__15_n_0),
        .I4(g0_b1__16_n_0),
        .O(\csum_reg[7]_22 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_8 
       (.I0(\shreg_reg[60]_0 ),
        .I1(\csum[7]_i_22_n_0 ),
        .I2(\shreg_reg[111]_1 ),
        .I3(\csum[7]_i_24_n_0 ),
        .I4(\csum[7]_i_25_n_0 ),
        .O(\csum[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \csum[7]_i_84 
       (.I0(\csum_reg[7]_16 ),
        .I1(\csum_reg[7]_15 ),
        .I2(g0_b1__72_n_0),
        .I3(g0_b1__15_n_0),
        .I4(g0_b1__16_n_0),
        .O(\csum_reg[3]_22 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_97 
       (.I0(\csum_reg[3]_5 ),
        .I1(\shreg_reg[96]_1 ),
        .I2(\csum_reg[7]_6 ),
        .O(\csum_reg[7]_21 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_9__0 
       (.I0(\csum[7]_i_26_n_0 ),
        .I1(\shreg_reg[60]_1 ),
        .I2(\csum[7]_i_28_n_0 ),
        .I3(\csum[7]_i_29_n_0 ),
        .I4(\shreg_reg[107]_1 ),
        .O(\csum[7]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[3]_i_1_n_7 ),
        .Q(\csum_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[3]_i_1_n_6 ),
        .Q(\csum_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[3]_i_1_n_5 ),
        .Q(\csum_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[3]_i_1_n_4 ),
        .Q(\csum_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \csum_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\csum_reg[3]_i_1_n_0 ,\csum_reg[3]_i_1_n_1 ,\csum_reg[3]_i_1_n_2 ,\csum_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\csum[3]_i_2_n_0 ,\csum[3]_i_3_n_0 ,\csum[3]_i_4_n_0 ,1'b0}),
        .O({\csum_reg[3]_i_1_n_4 ,\csum_reg[3]_i_1_n_5 ,\csum_reg[3]_i_1_n_6 ,\csum_reg[3]_i_1_n_7 }),
        .S({\csum[3]_i_5_n_0 ,\csum[3]_i_6_n_0 ,\csum[3]_i_7_n_0 ,\csum[3]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[7]_i_1_n_7 ),
        .Q(\csum_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[7]_i_1_n_6 ),
        .Q(\csum_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[7]_i_1_n_5 ),
        .Q(\csum_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[7]_i_1_n_0 ),
        .Q(\csum_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 \csum_reg[7]_i_1 
       (.CI(\csum_reg[3]_i_1_n_0 ),
        .CO({\csum_reg[7]_i_1_n_0 ,\NLW_csum_reg[7]_i_1_CO_UNCONNECTED [2],\csum_reg[7]_i_1_n_2 ,\csum_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\csum[7]_i_2_n_0 ,\csum[7]_i_3_n_0 }),
        .O({\NLW_csum_reg[7]_i_1_O_UNCONNECTED [3],\csum_reg[7]_i_1_n_5 ,\csum_reg[7]_i_1_n_6 ,\csum_reg[7]_i_1_n_7 }),
        .S({1'b1,\csum[7]_i_4_n_0 ,\csum[7]_i_5_n_0 ,\csum[7]_i_6_n_0 }));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__10
       (.I0(\shreg_reg[91] ),
        .I1(shreg[44]),
        .I2(\shreg_reg[93] ),
        .I3(shreg[45]),
        .I4(\shreg_reg[95] ),
        .I5(shreg[46]),
        .O(out[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__11
       (.I0(\shreg_reg[112] ),
        .I1(shreg[54]),
        .I2(\shreg_reg[110] ),
        .I3(shreg[53]),
        .I4(\shreg_reg[114] ),
        .I5(shreg[55]),
        .O(\csum_reg[3]_7 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__12
       (.I0(\shreg_reg[120] ),
        .I1(shreg[58]),
        .I2(\shreg_reg[118] ),
        .I3(shreg[57]),
        .I4(\shreg_reg[116] ),
        .I5(shreg[56]),
        .O(\csum_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__15
       (.I0(\shreg_reg[8] ),
        .I1(shreg[3]),
        .I2(shreg[4]),
        .I3(\shreg_reg[10] ),
        .I4(shreg[5]),
        .I5(\shreg_reg[12] ),
        .O(g0_b0__15_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__16
       (.I0(\shreg_reg[18] ),
        .I1(shreg[8]),
        .I2(shreg[6]),
        .I3(\shreg_reg[14] ),
        .I4(shreg[7]),
        .I5(\shreg_reg[16] ),
        .O(g0_b0__16_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__20
       (.I0(\shreg_reg[112] ),
        .I1(shreg[54]),
        .I2(\shreg_reg[110] ),
        .I3(shreg[53]),
        .I4(shreg[55]),
        .I5(\shreg_reg[114] ),
        .O(\csum_reg[3]_6 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__22
       (.I0(\shreg_reg[126] ),
        .I1(shreg[61]),
        .I2(\shreg_reg[124] ),
        .I3(shreg[60]),
        .I4(\shreg_reg[122] ),
        .I5(shreg[59]),
        .O(\csum_reg[3]_9 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__45
       (.I0(\shreg_reg[6] ),
        .I1(shreg[2]),
        .I2(\shreg_reg[4] ),
        .I3(shreg[1]),
        .I4(\shreg_reg[2] ),
        .I5(shreg[0]),
        .O(\csum_reg[3]_2 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__6
       (.I0(\shreg_reg[12] ),
        .I1(shreg[5]),
        .I2(\shreg_reg[10] ),
        .I3(shreg[4]),
        .I4(shreg[3]),
        .I5(\shreg_reg[8] ),
        .O(g0_b0__6_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__64
       (.I0(\shreg_reg[108] ),
        .I1(shreg[52]),
        .I2(\shreg_reg[106] ),
        .I3(shreg[51]),
        .I4(shreg[50]),
        .I5(\shreg_reg[104] ),
        .O(\csum_reg[3]_4 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__7
       (.I0(\shreg_reg[18] ),
        .I1(shreg[8]),
        .I2(\shreg_reg[16] ),
        .I3(shreg[7]),
        .I4(\shreg_reg[14] ),
        .I5(shreg[6]),
        .O(g0_b0__7_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__70
       (.I0(\shreg_reg_n_0_[77] ),
        .I1(shreg[37]),
        .I2(\shreg_reg[76] ),
        .I3(shreg[36]),
        .I4(\shreg_reg[74] ),
        .I5(shreg[35]),
        .O(\csum_reg[3]_3 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__72
       (.I0(\shreg_reg[48] ),
        .I1(shreg[22]),
        .I2(\shreg_reg[46] ),
        .I3(shreg[21]),
        .I4(\shreg_reg[44] ),
        .I5(shreg[20]),
        .O(g0_b0__72_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__74
       (.I0(\shreg_reg[54] ),
        .I1(shreg[25]),
        .I2(\shreg_reg[52] ),
        .I3(shreg[24]),
        .I4(\shreg_reg[50] ),
        .I5(shreg[23]),
        .O(g0_b0__74_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__76
       (.I0(\shreg_reg[56] ),
        .I1(shreg[26]),
        .I2(shreg[27]),
        .I3(\shreg_reg[58] ),
        .I4(shreg[28]),
        .I5(\shreg_reg[60] ),
        .O(g0_b0__76_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__78
       (.I0(\shreg_reg[25] ),
        .I1(shreg[12]),
        .I2(\shreg_reg[27] ),
        .I3(shreg[13]),
        .I4(\shreg_reg[29] ),
        .I5(shreg[14]),
        .O(g0_b0__78_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__80
       (.I0(\shreg_reg[31] ),
        .I1(shreg[15]),
        .I2(\shreg_reg[33] ),
        .I3(shreg[16]),
        .I4(\shreg_reg[35] ),
        .I5(shreg[17]),
        .O(g0_b0__80_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__84
       (.I0(\shreg_reg_n_0_[23] ),
        .I1(shreg[11]),
        .I2(\shreg_reg[22] ),
        .I3(shreg[10]),
        .I4(\shreg_reg[20] ),
        .I5(shreg[9]),
        .O(g0_b0__84_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__10
       (.I0(\shreg_reg[91] ),
        .I1(shreg[44]),
        .I2(\shreg_reg[93] ),
        .I3(shreg[45]),
        .I4(\shreg_reg[95] ),
        .I5(shreg[46]),
        .O(out[1]));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__11
       (.I0(\shreg_reg[112] ),
        .I1(shreg[54]),
        .I2(\shreg_reg[110] ),
        .I3(shreg[53]),
        .I4(\shreg_reg[114] ),
        .I5(shreg[55]),
        .O(\csum_reg[7]_9 ));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__12
       (.I0(\shreg_reg[120] ),
        .I1(shreg[58]),
        .I2(\shreg_reg[118] ),
        .I3(shreg[57]),
        .I4(\shreg_reg[116] ),
        .I5(shreg[56]),
        .O(\csum_reg[7]_1 ));
  LUT6 #(
    .INIT(64'h188E8EE78EE7E771)) 
    g0_b1__15
       (.I0(\shreg_reg[8] ),
        .I1(shreg[3]),
        .I2(shreg[4]),
        .I3(\shreg_reg[10] ),
        .I4(shreg[5]),
        .I5(\shreg_reg[12] ),
        .O(g0_b1__15_n_0));
  LUT6 #(
    .INIT(64'h188E8EE78EE7E771)) 
    g0_b1__16
       (.I0(\shreg_reg[18] ),
        .I1(shreg[8]),
        .I2(shreg[6]),
        .I3(\shreg_reg[14] ),
        .I4(shreg[7]),
        .I5(\shreg_reg[16] ),
        .O(g0_b1__16_n_0));
  LUT6 #(
    .INIT(64'hE8817EE87EE8177E)) 
    g0_b1__20
       (.I0(\shreg_reg[112] ),
        .I1(shreg[54]),
        .I2(\shreg_reg[110] ),
        .I3(shreg[53]),
        .I4(shreg[55]),
        .I5(\shreg_reg[114] ),
        .O(\csum_reg[3]_5 ));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__22
       (.I0(\shreg_reg[126] ),
        .I1(shreg[61]),
        .I2(\shreg_reg[124] ),
        .I3(shreg[60]),
        .I4(\shreg_reg[122] ),
        .I5(shreg[59]),
        .O(\csum_reg[3]_8 ));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__45
       (.I0(\shreg_reg[6] ),
        .I1(shreg[2]),
        .I2(\shreg_reg[4] ),
        .I3(shreg[1]),
        .I4(\shreg_reg[2] ),
        .I5(shreg[0]),
        .O(\csum_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hE8817EE87EE8177E)) 
    g0_b1__6
       (.I0(\shreg_reg[12] ),
        .I1(shreg[5]),
        .I2(\shreg_reg[10] ),
        .I3(shreg[4]),
        .I4(shreg[3]),
        .I5(\shreg_reg[8] ),
        .O(g0_b1__6_n_0));
  LUT6 #(
    .INIT(64'hE8817EE87EE8177E)) 
    g0_b1__64
       (.I0(\shreg_reg[108] ),
        .I1(shreg[52]),
        .I2(\shreg_reg[106] ),
        .I3(shreg[51]),
        .I4(shreg[50]),
        .I5(\shreg_reg[104] ),
        .O(\csum_reg[7]_6 ));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__66
       (.I0(\shreg_reg[25] ),
        .I1(shreg[12]),
        .I2(\shreg_reg[27] ),
        .I3(shreg[13]),
        .I4(\shreg_reg[29] ),
        .I5(shreg[14]),
        .O(g0_b1__66_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__68
       (.I0(\shreg_reg[31] ),
        .I1(shreg[15]),
        .I2(\shreg_reg[33] ),
        .I3(shreg[16]),
        .I4(\shreg_reg[35] ),
        .I5(shreg[17]),
        .O(g0_b1__68_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__7
       (.I0(\shreg_reg[18] ),
        .I1(shreg[8]),
        .I2(\shreg_reg[16] ),
        .I3(shreg[7]),
        .I4(\shreg_reg[14] ),
        .I5(shreg[6]),
        .O(g0_b1__7_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__72
       (.I0(\shreg_reg_n_0_[23] ),
        .I1(shreg[11]),
        .I2(\shreg_reg[22] ),
        .I3(shreg[10]),
        .I4(\shreg_reg[20] ),
        .I5(shreg[9]),
        .O(g0_b1__72_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__78
       (.I0(\shreg_reg_n_0_[77] ),
        .I1(shreg[37]),
        .I2(\shreg_reg[76] ),
        .I3(shreg[36]),
        .I4(\shreg_reg[74] ),
        .I5(shreg[35]),
        .O(\csum_reg[7]_4 ));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__80
       (.I0(\shreg_reg[48] ),
        .I1(shreg[22]),
        .I2(\shreg_reg[46] ),
        .I3(shreg[21]),
        .I4(\shreg_reg[44] ),
        .I5(shreg[20]),
        .O(g0_b1__80_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__82
       (.I0(\shreg_reg[54] ),
        .I1(shreg[25]),
        .I2(\shreg_reg[52] ),
        .I3(shreg[24]),
        .I4(\shreg_reg[50] ),
        .I5(shreg[23]),
        .O(g0_b1__82_n_0));
  LUT6 #(
    .INIT(64'h188E8EE78EE7E771)) 
    g0_b1__84
       (.I0(\shreg_reg[56] ),
        .I1(shreg[26]),
        .I2(shreg[27]),
        .I3(\shreg_reg[58] ),
        .I4(shreg[28]),
        .I5(\shreg_reg[60] ),
        .O(g0_b1__84_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__10
       (.I0(\shreg_reg[91] ),
        .I1(shreg[44]),
        .I2(\shreg_reg[93] ),
        .I3(shreg[45]),
        .I4(\shreg_reg[95] ),
        .I5(shreg[46]),
        .O(out[2]));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__11
       (.I0(\shreg_reg[112] ),
        .I1(shreg[54]),
        .I2(\shreg_reg[110] ),
        .I3(shreg[53]),
        .I4(\shreg_reg[114] ),
        .I5(shreg[55]),
        .O(\csum_reg[7]_8 ));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__12
       (.I0(\shreg_reg[120] ),
        .I1(shreg[58]),
        .I2(\shreg_reg[118] ),
        .I3(shreg[57]),
        .I4(\shreg_reg[116] ),
        .I5(shreg[56]),
        .O(\csum_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hF771711071101000)) 
    g0_b2__15
       (.I0(\shreg_reg[8] ),
        .I1(shreg[3]),
        .I2(shreg[4]),
        .I3(\shreg_reg[10] ),
        .I4(shreg[5]),
        .I5(\shreg_reg[12] ),
        .O(g0_b2__15_n_0));
  LUT6 #(
    .INIT(64'hF771711071101000)) 
    g0_b2__16
       (.I0(\shreg_reg[18] ),
        .I1(shreg[8]),
        .I2(shreg[6]),
        .I3(\shreg_reg[14] ),
        .I4(shreg[7]),
        .I5(\shreg_reg[16] ),
        .O(g0_b2__16_n_0));
  LUT6 #(
    .INIT(64'h177F011701170001)) 
    g0_b2__20
       (.I0(\shreg_reg[112] ),
        .I1(shreg[54]),
        .I2(\shreg_reg[110] ),
        .I3(shreg[53]),
        .I4(shreg[55]),
        .I5(\shreg_reg[114] ),
        .O(\csum_reg[7]_7 ));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__22
       (.I0(\shreg_reg[126] ),
        .I1(shreg[61]),
        .I2(\shreg_reg[124] ),
        .I3(shreg[60]),
        .I4(\shreg_reg[122] ),
        .I5(shreg[59]),
        .O(\csum_reg[7]_10 ));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__45
       (.I0(\shreg_reg[6] ),
        .I1(shreg[2]),
        .I2(\shreg_reg[4] ),
        .I3(shreg[1]),
        .I4(\shreg_reg[2] ),
        .I5(shreg[0]),
        .O(\csum_reg[7]_2 ));
  LUT6 #(
    .INIT(64'h177F011701170001)) 
    g0_b2__6
       (.I0(\shreg_reg[12] ),
        .I1(shreg[5]),
        .I2(\shreg_reg[10] ),
        .I3(shreg[4]),
        .I4(shreg[3]),
        .I5(\shreg_reg[8] ),
        .O(g0_b2__6_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__62
       (.I0(\shreg_reg[48] ),
        .I1(shreg[22]),
        .I2(\shreg_reg[46] ),
        .I3(shreg[21]),
        .I4(\shreg_reg[44] ),
        .I5(shreg[20]),
        .O(g0_b2__62_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__64
       (.I0(\shreg_reg[54] ),
        .I1(shreg[25]),
        .I2(\shreg_reg[52] ),
        .I3(shreg[24]),
        .I4(\shreg_reg[50] ),
        .I5(shreg[23]),
        .O(g0_b2__64_n_0));
  LUT6 #(
    .INIT(64'hF771711071101000)) 
    g0_b2__66
       (.I0(\shreg_reg[56] ),
        .I1(shreg[26]),
        .I2(shreg[27]),
        .I3(\shreg_reg[58] ),
        .I4(shreg[28]),
        .I5(\shreg_reg[60] ),
        .O(g0_b2__66_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__68
       (.I0(\shreg_reg[25] ),
        .I1(shreg[12]),
        .I2(\shreg_reg[27] ),
        .I3(shreg[13]),
        .I4(\shreg_reg[29] ),
        .I5(shreg[14]),
        .O(g0_b2__68_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__7
       (.I0(\shreg_reg[18] ),
        .I1(shreg[8]),
        .I2(\shreg_reg[16] ),
        .I3(shreg[7]),
        .I4(\shreg_reg[14] ),
        .I5(shreg[6]),
        .O(g0_b2__7_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__70
       (.I0(\shreg_reg[31] ),
        .I1(shreg[15]),
        .I2(\shreg_reg[33] ),
        .I3(shreg[16]),
        .I4(\shreg_reg[35] ),
        .I5(shreg[17]),
        .O(g0_b2__70_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__74
       (.I0(\shreg_reg_n_0_[23] ),
        .I1(shreg[11]),
        .I2(\shreg_reg[22] ),
        .I3(shreg[10]),
        .I4(\shreg_reg[20] ),
        .I5(shreg[9]),
        .O(g0_b2__74_n_0));
  LUT6 #(
    .INIT(64'h177F011701170001)) 
    g0_b2__78
       (.I0(\shreg_reg[108] ),
        .I1(shreg[52]),
        .I2(\shreg_reg[106] ),
        .I3(shreg[51]),
        .I4(shreg[50]),
        .I5(\shreg_reg[104] ),
        .O(\csum_reg[7]_5 ));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__84
       (.I0(\shreg_reg_n_0_[77] ),
        .I1(shreg[37]),
        .I2(\shreg_reg[76] ),
        .I3(shreg[36]),
        .I4(\shreg_reg[74] ),
        .I5(shreg[35]),
        .O(\csum_reg[7]_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[101] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[49]),
        .Q(\shreg_reg[102] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[103] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[50]),
        .Q(\shreg_reg[104] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[105] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[51]),
        .Q(\shreg_reg[106] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[107] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[52]),
        .Q(\shreg_reg[108] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[109] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[53]),
        .Q(\shreg_reg[110] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[111] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[54]),
        .Q(\shreg_reg[112] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[113] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[55]),
        .Q(\shreg_reg[114] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[115] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[56]),
        .Q(\shreg_reg[116] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[117] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[57]),
        .Q(\shreg_reg[118] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[119] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[58]),
        .Q(\shreg_reg[120] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[5]),
        .Q(\shreg_reg[12] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[121] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[59]),
        .Q(\shreg_reg[122] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[123] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[60]),
        .Q(\shreg_reg[124] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[125] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[61]),
        .Q(\shreg_reg[126] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[6]),
        .Q(\shreg_reg[14] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[7]),
        .Q(\shreg_reg[16] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[8]),
        .Q(\shreg_reg[18] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[9]),
        .Q(\shreg_reg[20] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[0]),
        .Q(\shreg_reg[2] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[10]),
        .Q(\shreg_reg[22] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[11]),
        .Q(\shreg_reg_n_0_[23] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg_n_0_[23] ),
        .Q(\shreg_reg[25] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[12]),
        .Q(\shreg_reg[27] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[28] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[13]),
        .Q(\shreg_reg[29] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[30] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[14]),
        .Q(\shreg_reg[31] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[32] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[15]),
        .Q(\shreg_reg[33] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[34] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[16]),
        .Q(\shreg_reg[35] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[36] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[17]),
        .Q(\shreg_reg[37] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[38] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[18]),
        .Q(\shreg_reg[39] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[1]),
        .Q(\shreg_reg[4] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[40] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[19]),
        .Q(\shreg_reg[41] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[43] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[20]),
        .Q(\shreg_reg[44] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[45] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[21]),
        .Q(\shreg_reg[46] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[47] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[22]),
        .Q(\shreg_reg[48] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[49] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[23]),
        .Q(\shreg_reg[50] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[51] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[24]),
        .Q(\shreg_reg[52] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[53] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[25]),
        .Q(\shreg_reg[54] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[55] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[26]),
        .Q(\shreg_reg[56] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[57] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[27]),
        .Q(\shreg_reg[58] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[59] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[28]),
        .Q(\shreg_reg[60] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[2]),
        .Q(\shreg_reg[6] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[61] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[29]),
        .Q(\shreg_reg[62] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[63] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[30]),
        .Q(\shreg_reg[64] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[65] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[31]),
        .Q(\shreg_reg[66] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[67] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[32]),
        .Q(\shreg_reg[68] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[69] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[33]),
        .Q(\shreg_reg[70] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[71] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[34]),
        .Q(\shreg_reg[72] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[73] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[35]),
        .Q(\shreg_reg[74] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[75] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[36]),
        .Q(\shreg_reg[76] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[77] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[37]),
        .Q(\shreg_reg_n_0_[77] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[78] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg_n_0_[77] ),
        .Q(\shreg_reg[79] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[3]),
        .Q(\shreg_reg[8] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[80] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[38]),
        .Q(\shreg_reg[81] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[82] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[39]),
        .Q(\shreg_reg[83] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[84] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[40]),
        .Q(\shreg_reg[85] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[86] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[41]),
        .Q(\shreg_reg[87] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[88] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[42]),
        .Q(\shreg_reg[89] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[90] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[43]),
        .Q(\shreg_reg[91] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[92] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[44]),
        .Q(\shreg_reg[93] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[94] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[45]),
        .Q(\shreg_reg[95] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[97] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[47]),
        .Q(\shreg_reg[98] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[99] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[48]),
        .Q(\shreg_reg[100] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[4]),
        .Q(\shreg_reg[10] ),
        .R(BTNC_IBUF));
endmodule

(* ORIG_REF_NAME = "correlator" *) 
module correlator__parameterized0
   (\shreg_reg[125] ,
    \csum_reg[3]_0 ,
    \csum_reg[3]_1 ,
    \csum_reg[7]_0 ,
    \csum_reg[3]_2 ,
    \csum_reg[7]_1 ,
    \csum_reg[7]_2 ,
    \csum_reg[3]_3 ,
    \csum_reg[7]_3 ,
    \csum_reg[3]_4 ,
    \csum_reg[3]_5 ,
    \csum_reg[3]_6 ,
    \csum_reg[3]_7 ,
    \csum_reg[3]_8 ,
    \csum_reg[7]_4 ,
    \csum_reg[7]_5 ,
    \csum_reg[3]_9 ,
    \csum_reg[7]_6 ,
    \csum_reg[3]_10 ,
    \csum_reg[7]_7 ,
    \csum_reg[7]_8 ,
    \csum_reg[7]_9 ,
    \csum_reg[7]_10 ,
    \csum_reg[7]_11 ,
    \csum_reg[7]_12 ,
    \csum_reg[7]_13 ,
    \csum_reg[7]_14 ,
    \csum_reg[3]_11 ,
    \csum_reg[3]_12 ,
    \csum_reg[7]_15 ,
    \csum_reg[7]_16 ,
    \csum_reg[7]_17 ,
    \csum_reg[7]_18 ,
    sfd_match,
    BTNC_IBUF,
    sample_slow,
    sync_out,
    CLK100MHZ_IBUF_BUFG,
    sel,
    \shreg_reg[7] ,
    \shreg_reg[9] ,
    \shreg_reg[11] ,
    \shreg_reg[13] ,
    \shreg_reg[15] ,
    \shreg_reg[17] ,
    \shreg_reg[19] ,
    \shreg_reg[21] ,
    \shreg_reg[24] ,
    \shreg_reg[26] ,
    \shreg_reg[28] ,
    \shreg_reg[30] ,
    \shreg_reg[32] ,
    \shreg_reg[34] ,
    \shreg_reg[36] ,
    \shreg_reg[38] ,
    \shreg_reg[40] ,
    \shreg_reg[43] ,
    \shreg_reg[45] ,
    \shreg_reg[47] ,
    \shreg_reg[49] ,
    \shreg_reg[51] ,
    \shreg_reg[53] ,
    \shreg_reg[55] ,
    \shreg_reg[57] ,
    \shreg_reg[59] ,
    \shreg_reg[61] ,
    \shreg_reg[63] ,
    \shreg_reg[65] ,
    \shreg_reg[67] ,
    \shreg_reg[69] ,
    \shreg_reg[71] ,
    \shreg_reg[73] ,
    \shreg_reg[75] ,
    \shreg_reg[78] ,
    \shreg_reg[80] ,
    \shreg_reg[82] ,
    \shreg_reg[84] ,
    \shreg_reg[86] ,
    \shreg_reg[88] ,
    \shreg_reg[90] ,
    \shreg_reg[92] ,
    \shreg_reg[94] ,
    \shreg_reg[97] ,
    \shreg_reg[99] ,
    \shreg_reg[101] ,
    \shreg_reg[103] ,
    \shreg_reg[105] ,
    \shreg_reg[107] ,
    \shreg_reg[109] ,
    \shreg_reg[111] ,
    \shreg_reg[113] ,
    \shreg_reg[119] ,
    \shreg_reg[125]_0 ,
    \shreg_reg[17]_0 ,
    \shreg_reg[77] ,
    \shreg_reg[23] ,
    \shreg_reg[55]_0 ,
    \shreg_reg[77]_0 ,
    out,
    \shreg_reg[107]_0 ,
    \shreg_reg[111]_0 ,
    \shreg_reg[119]_0 ,
    \shreg_reg[55]_1 ,
    \shreg_reg[77]_1 ,
    \shreg_reg[107]_1 ,
    \shreg_reg[111]_1 ,
    \shreg_reg[119]_1 ,
    \shreg_reg[107]_2 ,
    \shreg_reg[111]_2 ,
    \shreg_reg[119]_2 ,
    \shreg_reg[125]_1 ,
    \shreg_reg[17]_1 ,
    \shreg_reg[111]_3 ,
    \shreg_reg[53]_0 ,
    \shreg_reg[41]_0 ,
    \shreg_reg[23]_0 ,
    \shreg_reg[5] ,
    \shreg_reg[17]_2 ,
    \shreg_reg[17]_3 ,
    \shreg_reg[111]_4 ,
    \shreg_reg[125]_2 ,
    \shreg_reg[23]_1 ,
    \shreg_reg[23]_2 ,
    \shreg_reg[53]_1 ,
    \shreg_reg[41]_1 ,
    \shreg_reg[23]_3 ,
    \shreg_reg[23]_4 ,
    \shreg_reg[5]_0 ,
    \shreg_reg[111]_5 ,
    \shreg_reg[53]_2 ,
    \shreg_reg[53]_3 ,
    \shreg_reg[23]_5 ,
    \shreg_reg[17]_4 ,
    \shreg_reg[77]_2 ,
    \shreg_reg[5]_1 ,
    \shreg_reg[17]_5 ,
    \shreg_reg[23]_6 ,
    \shreg_reg[30]_0 ,
    \shreg_reg[111]_6 ,
    \shreg_reg[111]_7 ,
    \shreg_reg[125]_3 ,
    \shreg_reg[53]_4 ,
    \shreg_reg[111]_8 ,
    \shreg_reg[55]_2 ,
    \shreg_reg[111]_9 ,
    \shreg_reg[111]_10 ,
    \shreg_reg[55]_3 );
  output [61:0]\shreg_reg[125] ;
  output \csum_reg[3]_0 ;
  output \csum_reg[3]_1 ;
  output \csum_reg[7]_0 ;
  output \csum_reg[3]_2 ;
  output \csum_reg[7]_1 ;
  output \csum_reg[7]_2 ;
  output \csum_reg[3]_3 ;
  output \csum_reg[7]_3 ;
  output \csum_reg[3]_4 ;
  output \csum_reg[3]_5 ;
  output \csum_reg[3]_6 ;
  output \csum_reg[3]_7 ;
  output \csum_reg[3]_8 ;
  output \csum_reg[7]_4 ;
  output \csum_reg[7]_5 ;
  output \csum_reg[3]_9 ;
  output \csum_reg[7]_6 ;
  output \csum_reg[3]_10 ;
  output \csum_reg[7]_7 ;
  output \csum_reg[7]_8 ;
  output \csum_reg[7]_9 ;
  output \csum_reg[7]_10 ;
  output \csum_reg[7]_11 ;
  output \csum_reg[7]_12 ;
  output \csum_reg[7]_13 ;
  output \csum_reg[7]_14 ;
  output \csum_reg[3]_11 ;
  output \csum_reg[3]_12 ;
  output \csum_reg[7]_15 ;
  output \csum_reg[7]_16 ;
  output \csum_reg[7]_17 ;
  output \csum_reg[7]_18 ;
  output sfd_match;
  input BTNC_IBUF;
  input sample_slow;
  input sync_out;
  input CLK100MHZ_IBUF_BUFG;
  input [2:0]sel;
  input \shreg_reg[7] ;
  input \shreg_reg[9] ;
  input \shreg_reg[11] ;
  input \shreg_reg[13] ;
  input \shreg_reg[15] ;
  input \shreg_reg[17] ;
  input \shreg_reg[19] ;
  input \shreg_reg[21] ;
  input \shreg_reg[24] ;
  input \shreg_reg[26] ;
  input \shreg_reg[28] ;
  input \shreg_reg[30] ;
  input \shreg_reg[32] ;
  input \shreg_reg[34] ;
  input \shreg_reg[36] ;
  input \shreg_reg[38] ;
  input \shreg_reg[40] ;
  input \shreg_reg[43] ;
  input \shreg_reg[45] ;
  input \shreg_reg[47] ;
  input \shreg_reg[49] ;
  input \shreg_reg[51] ;
  input \shreg_reg[53] ;
  input \shreg_reg[55] ;
  input \shreg_reg[57] ;
  input \shreg_reg[59] ;
  input \shreg_reg[61] ;
  input \shreg_reg[63] ;
  input \shreg_reg[65] ;
  input \shreg_reg[67] ;
  input \shreg_reg[69] ;
  input \shreg_reg[71] ;
  input \shreg_reg[73] ;
  input \shreg_reg[75] ;
  input \shreg_reg[78] ;
  input \shreg_reg[80] ;
  input \shreg_reg[82] ;
  input \shreg_reg[84] ;
  input \shreg_reg[86] ;
  input \shreg_reg[88] ;
  input \shreg_reg[90] ;
  input \shreg_reg[92] ;
  input \shreg_reg[94] ;
  input \shreg_reg[97] ;
  input \shreg_reg[99] ;
  input \shreg_reg[101] ;
  input \shreg_reg[103] ;
  input \shreg_reg[105] ;
  input \shreg_reg[107] ;
  input \shreg_reg[109] ;
  input \shreg_reg[111] ;
  input \shreg_reg[113] ;
  input [2:0]\shreg_reg[119] ;
  input [2:0]\shreg_reg[125]_0 ;
  input \shreg_reg[17]_0 ;
  input \shreg_reg[77] ;
  input \shreg_reg[23] ;
  input \shreg_reg[55]_0 ;
  input \shreg_reg[77]_0 ;
  input [2:0]out;
  input \shreg_reg[107]_0 ;
  input \shreg_reg[111]_0 ;
  input \shreg_reg[119]_0 ;
  input \shreg_reg[55]_1 ;
  input \shreg_reg[77]_1 ;
  input \shreg_reg[107]_1 ;
  input \shreg_reg[111]_1 ;
  input \shreg_reg[119]_1 ;
  input \shreg_reg[107]_2 ;
  input \shreg_reg[111]_2 ;
  input \shreg_reg[119]_2 ;
  input \shreg_reg[125]_1 ;
  input \shreg_reg[17]_1 ;
  input \shreg_reg[111]_3 ;
  input \shreg_reg[53]_0 ;
  input \shreg_reg[41]_0 ;
  input \shreg_reg[23]_0 ;
  input \shreg_reg[5] ;
  input \shreg_reg[17]_2 ;
  input \shreg_reg[17]_3 ;
  input \shreg_reg[111]_4 ;
  input \shreg_reg[125]_2 ;
  input \shreg_reg[23]_1 ;
  input \shreg_reg[23]_2 ;
  input \shreg_reg[53]_1 ;
  input \shreg_reg[41]_1 ;
  input \shreg_reg[23]_3 ;
  input \shreg_reg[23]_4 ;
  input \shreg_reg[5]_0 ;
  input \shreg_reg[111]_5 ;
  input \shreg_reg[53]_2 ;
  input \shreg_reg[53]_3 ;
  input \shreg_reg[23]_5 ;
  input \shreg_reg[17]_4 ;
  input \shreg_reg[77]_2 ;
  input \shreg_reg[5]_1 ;
  input \shreg_reg[17]_5 ;
  input \shreg_reg[23]_6 ;
  input \shreg_reg[30]_0 ;
  input \shreg_reg[111]_6 ;
  input \shreg_reg[111]_7 ;
  input \shreg_reg[125]_3 ;
  input \shreg_reg[53]_4 ;
  input \shreg_reg[111]_8 ;
  input \shreg_reg[55]_2 ;
  input \shreg_reg[111]_9 ;
  input \shreg_reg[111]_10 ;
  input \shreg_reg[55]_3 ;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \csum[3]_i_10__0_n_0 ;
  wire \csum[3]_i_11__0_n_0 ;
  wire \csum[3]_i_12__0_n_0 ;
  wire \csum[3]_i_13__0_n_0 ;
  wire \csum[3]_i_14__0_n_0 ;
  wire \csum[3]_i_15__0_n_0 ;
  wire \csum[3]_i_16__0_n_0 ;
  wire \csum[3]_i_17__0_n_0 ;
  wire \csum[3]_i_18__0_n_0 ;
  wire \csum[3]_i_19__0_n_0 ;
  wire \csum[3]_i_20__0_n_0 ;
  wire \csum[3]_i_22__0_n_0 ;
  wire \csum[3]_i_23__0_n_0 ;
  wire \csum[3]_i_24__0_n_0 ;
  wire \csum[3]_i_25__0_n_0 ;
  wire \csum[3]_i_25_n_0 ;
  wire \csum[3]_i_26__0_n_0 ;
  wire \csum[3]_i_26_n_0 ;
  wire \csum[3]_i_27__0_n_0 ;
  wire \csum[3]_i_27_n_0 ;
  wire \csum[3]_i_29__0_n_0 ;
  wire \csum[3]_i_2_n_0 ;
  wire \csum[3]_i_30__0_n_0 ;
  wire \csum[3]_i_30_n_0 ;
  wire \csum[3]_i_31__0_n_0 ;
  wire \csum[3]_i_31_n_0 ;
  wire \csum[3]_i_32_n_0 ;
  wire \csum[3]_i_33__0_n_0 ;
  wire \csum[3]_i_35_n_0 ;
  wire \csum[3]_i_37_n_0 ;
  wire \csum[3]_i_38_n_0 ;
  wire \csum[3]_i_39_n_0 ;
  wire \csum[3]_i_3_n_0 ;
  wire \csum[3]_i_40_n_0 ;
  wire \csum[3]_i_41_n_0 ;
  wire \csum[3]_i_42_n_0 ;
  wire \csum[3]_i_43_n_0 ;
  wire \csum[3]_i_44_n_0 ;
  wire \csum[3]_i_48_n_0 ;
  wire \csum[3]_i_49_n_0 ;
  wire \csum[3]_i_4__0_n_0 ;
  wire \csum[3]_i_51_n_0 ;
  wire \csum[3]_i_52_n_0 ;
  wire \csum[3]_i_53_n_0 ;
  wire \csum[3]_i_55_n_0 ;
  wire \csum[3]_i_56_n_0 ;
  wire \csum[3]_i_57_n_0 ;
  wire \csum[3]_i_58_n_0 ;
  wire \csum[3]_i_59_n_0 ;
  wire \csum[3]_i_5_n_0 ;
  wire \csum[3]_i_62_n_0 ;
  wire \csum[3]_i_63_n_0 ;
  wire \csum[3]_i_64_n_0 ;
  wire \csum[3]_i_65_n_0 ;
  wire \csum[3]_i_66_n_0 ;
  wire \csum[3]_i_67_n_0 ;
  wire \csum[3]_i_68_n_0 ;
  wire \csum[3]_i_69_n_0 ;
  wire \csum[3]_i_6_n_0 ;
  wire \csum[3]_i_70_n_0 ;
  wire \csum[3]_i_71_n_0 ;
  wire \csum[3]_i_72_n_0 ;
  wire \csum[3]_i_73_n_0 ;
  wire \csum[3]_i_76_n_0 ;
  wire \csum[3]_i_79_n_0 ;
  wire \csum[3]_i_7_n_0 ;
  wire \csum[3]_i_80_n_0 ;
  wire \csum[3]_i_81_n_0 ;
  wire \csum[3]_i_82_n_0 ;
  wire \csum[3]_i_83_n_0 ;
  wire \csum[3]_i_8_n_0 ;
  wire \csum[3]_i_9_n_0 ;
  wire \csum[7]_i_100_n_0 ;
  wire \csum[7]_i_101_n_0 ;
  wire \csum[7]_i_102_n_0 ;
  wire \csum[7]_i_103_n_0 ;
  wire \csum[7]_i_106_n_0 ;
  wire \csum[7]_i_10_n_0 ;
  wire \csum[7]_i_110_n_0 ;
  wire \csum[7]_i_111_n_0 ;
  wire \csum[7]_i_112_n_0 ;
  wire \csum[7]_i_116_n_0 ;
  wire \csum[7]_i_117_n_0 ;
  wire \csum[7]_i_119_n_0 ;
  wire \csum[7]_i_11__0_n_0 ;
  wire \csum[7]_i_120_n_0 ;
  wire \csum[7]_i_121_n_0 ;
  wire \csum[7]_i_122_n_0 ;
  wire \csum[7]_i_124_n_0 ;
  wire \csum[7]_i_125_n_0 ;
  wire \csum[7]_i_126_n_0 ;
  wire \csum[7]_i_128_n_0 ;
  wire \csum[7]_i_12__0_n_0 ;
  wire \csum[7]_i_13__0_n_0 ;
  wire \csum[7]_i_14__0_n_0 ;
  wire \csum[7]_i_15_n_0 ;
  wire \csum[7]_i_16__0_n_0 ;
  wire \csum[7]_i_17_n_0 ;
  wire \csum[7]_i_18__0_n_0 ;
  wire \csum[7]_i_19__0_n_0 ;
  wire \csum[7]_i_20_n_0 ;
  wire \csum[7]_i_21__0_n_0 ;
  wire \csum[7]_i_22__0_n_0 ;
  wire \csum[7]_i_23__0_n_0 ;
  wire \csum[7]_i_24__0_n_0 ;
  wire \csum[7]_i_25__0_n_0 ;
  wire \csum[7]_i_26__0_n_0 ;
  wire \csum[7]_i_27__0_n_0 ;
  wire \csum[7]_i_28__0_n_0 ;
  wire \csum[7]_i_29__0_n_0 ;
  wire \csum[7]_i_2__0_n_0 ;
  wire \csum[7]_i_30__0_n_0 ;
  wire \csum[7]_i_31__0_n_0 ;
  wire \csum[7]_i_32__0_n_0 ;
  wire \csum[7]_i_33__0_n_0 ;
  wire \csum[7]_i_34__0_n_0 ;
  wire \csum[7]_i_35__0_n_0 ;
  wire \csum[7]_i_35_n_0 ;
  wire \csum[7]_i_36__0_n_0 ;
  wire \csum[7]_i_36_n_0 ;
  wire \csum[7]_i_37__0_n_0 ;
  wire \csum[7]_i_38__0_n_0 ;
  wire \csum[7]_i_39__0_n_0 ;
  wire \csum[7]_i_3_n_0 ;
  wire \csum[7]_i_40__0_n_0 ;
  wire \csum[7]_i_41__0_n_0 ;
  wire \csum[7]_i_43_n_0 ;
  wire \csum[7]_i_44__0_n_0 ;
  wire \csum[7]_i_44_n_0 ;
  wire \csum[7]_i_45__0_n_0 ;
  wire \csum[7]_i_45_n_0 ;
  wire \csum[7]_i_47__0_n_0 ;
  wire \csum[7]_i_48__0_n_0 ;
  wire \csum[7]_i_4_n_0 ;
  wire \csum[7]_i_50__0_n_0 ;
  wire \csum[7]_i_50_n_0 ;
  wire \csum[7]_i_51__0_n_0 ;
  wire \csum[7]_i_53__0_n_0 ;
  wire \csum[7]_i_54__0_n_0 ;
  wire \csum[7]_i_55__0_n_0 ;
  wire \csum[7]_i_57_n_0 ;
  wire \csum[7]_i_58_n_0 ;
  wire \csum[7]_i_59_n_0 ;
  wire \csum[7]_i_5_n_0 ;
  wire \csum[7]_i_60_n_0 ;
  wire \csum[7]_i_63_n_0 ;
  wire \csum[7]_i_67_n_0 ;
  wire \csum[7]_i_69_n_0 ;
  wire \csum[7]_i_6_n_0 ;
  wire \csum[7]_i_70_n_0 ;
  wire \csum[7]_i_71_n_0 ;
  wire \csum[7]_i_72_n_0 ;
  wire \csum[7]_i_73_n_0 ;
  wire \csum[7]_i_75_n_0 ;
  wire \csum[7]_i_76_n_0 ;
  wire \csum[7]_i_77_n_0 ;
  wire \csum[7]_i_7__0_n_0 ;
  wire \csum[7]_i_80_n_0 ;
  wire \csum[7]_i_81_n_0 ;
  wire \csum[7]_i_82_n_0 ;
  wire \csum[7]_i_83_n_0 ;
  wire \csum[7]_i_85_n_0 ;
  wire \csum[7]_i_86_n_0 ;
  wire \csum[7]_i_87_n_0 ;
  wire \csum[7]_i_88_n_0 ;
  wire \csum[7]_i_89_n_0 ;
  wire \csum[7]_i_8_n_0 ;
  wire \csum[7]_i_90_n_0 ;
  wire \csum[7]_i_93_n_0 ;
  wire \csum[7]_i_94_n_0 ;
  wire \csum[7]_i_95_n_0 ;
  wire \csum[7]_i_96_n_0 ;
  wire \csum[7]_i_98_n_0 ;
  wire \csum[7]_i_99_n_0 ;
  wire \csum[7]_i_9_n_0 ;
  wire \csum_reg[3]_0 ;
  wire \csum_reg[3]_1 ;
  wire \csum_reg[3]_10 ;
  wire \csum_reg[3]_11 ;
  wire \csum_reg[3]_12 ;
  wire \csum_reg[3]_2 ;
  wire \csum_reg[3]_3 ;
  wire \csum_reg[3]_4 ;
  wire \csum_reg[3]_5 ;
  wire \csum_reg[3]_6 ;
  wire \csum_reg[3]_7 ;
  wire \csum_reg[3]_8 ;
  wire \csum_reg[3]_9 ;
  wire \csum_reg[3]_i_1_n_0 ;
  wire \csum_reg[3]_i_1_n_1 ;
  wire \csum_reg[3]_i_1_n_2 ;
  wire \csum_reg[3]_i_1_n_3 ;
  wire \csum_reg[3]_i_1_n_4 ;
  wire \csum_reg[3]_i_1_n_5 ;
  wire \csum_reg[7]_0 ;
  wire \csum_reg[7]_1 ;
  wire \csum_reg[7]_10 ;
  wire \csum_reg[7]_11 ;
  wire \csum_reg[7]_12 ;
  wire \csum_reg[7]_13 ;
  wire \csum_reg[7]_14 ;
  wire \csum_reg[7]_15 ;
  wire \csum_reg[7]_16 ;
  wire \csum_reg[7]_17 ;
  wire \csum_reg[7]_18 ;
  wire \csum_reg[7]_2 ;
  wire \csum_reg[7]_3 ;
  wire \csum_reg[7]_4 ;
  wire \csum_reg[7]_5 ;
  wire \csum_reg[7]_6 ;
  wire \csum_reg[7]_7 ;
  wire \csum_reg[7]_8 ;
  wire \csum_reg[7]_9 ;
  wire \csum_reg[7]_i_1_n_0 ;
  wire \csum_reg[7]_i_1_n_1 ;
  wire \csum_reg[7]_i_1_n_2 ;
  wire \csum_reg[7]_i_1_n_3 ;
  wire \csum_reg[7]_i_1_n_4 ;
  wire \csum_reg[7]_i_1_n_5 ;
  wire \csum_reg[7]_i_1_n_6 ;
  wire \csum_reg[7]_i_1_n_7 ;
  wire \csum_reg[8]_i_1_n_3 ;
  wire \csum_reg_n_0_[2] ;
  wire \csum_reg_n_0_[3] ;
  wire \csum_reg_n_0_[4] ;
  wire \csum_reg_n_0_[5] ;
  wire \csum_reg_n_0_[6] ;
  wire \csum_reg_n_0_[7] ;
  wire \csum_reg_n_0_[8] ;
  wire g0_b0__13_n_0;
  wire g0_b0__14_n_0;
  wire g0_b0__17_n_0;
  wire g0_b0__18_n_0;
  wire g0_b0__19_n_0;
  wire g0_b0__21_n_0;
  wire g0_b0__23_n_0;
  wire g0_b0__24_n_0;
  wire g0_b0__25_n_0;
  wire g0_b0__26_n_0;
  wire g0_b0__27_n_0;
  wire g0_b0__28_n_0;
  wire g0_b0__29_n_0;
  wire g0_b0__30_n_0;
  wire g0_b0__31_n_0;
  wire g0_b0__32_n_0;
  wire g0_b0__33_n_0;
  wire g0_b0__34_n_0;
  wire g0_b0__35_n_0;
  wire g0_b0__36_n_0;
  wire g0_b0__37_n_0;
  wire g0_b0__38_n_0;
  wire g0_b0__39_n_0;
  wire g0_b0__40_n_0;
  wire g0_b0__41_n_0;
  wire g0_b0__42_n_0;
  wire g0_b0__43_n_0;
  wire g0_b0__44__0_n_0;
  wire g0_b0__44_n_0;
  wire g0_b0__66_n_0;
  wire g0_b0__68_n_0;
  wire g0_b0__8_n_0;
  wire g0_b0__9_n_0;
  wire g0_b1__13_n_0;
  wire g0_b1__14_n_0;
  wire g0_b1__17_n_0;
  wire g0_b1__18_n_0;
  wire g0_b1__19_n_0;
  wire g0_b1__21_n_0;
  wire g0_b1__23_n_0;
  wire g0_b1__24_n_0;
  wire g0_b1__25_n_0;
  wire g0_b1__26_n_0;
  wire g0_b1__27_n_0;
  wire g0_b1__28_n_0;
  wire g0_b1__29_n_0;
  wire g0_b1__30_n_0;
  wire g0_b1__31_n_0;
  wire g0_b1__32_n_0;
  wire g0_b1__33_n_0;
  wire g0_b1__34_n_0;
  wire g0_b1__35_n_0;
  wire g0_b1__36_n_0;
  wire g0_b1__37_n_0;
  wire g0_b1__38_n_0;
  wire g0_b1__39_n_0;
  wire g0_b1__40_n_0;
  wire g0_b1__41_n_0;
  wire g0_b1__42_n_0;
  wire g0_b1__43_n_0;
  wire g0_b1__44_n_0;
  wire g0_b1__74_n_0;
  wire g0_b1__76_n_0;
  wire g0_b1__8_n_0;
  wire g0_b1__9_n_0;
  wire g0_b2__13_n_0;
  wire g0_b2__14_n_0;
  wire g0_b2__17_n_0;
  wire g0_b2__18_n_0;
  wire g0_b2__19_n_0;
  wire g0_b2__21_n_0;
  wire g0_b2__23_n_0;
  wire g0_b2__24_n_0;
  wire g0_b2__25_n_0;
  wire g0_b2__26_n_0;
  wire g0_b2__27_n_0;
  wire g0_b2__28_n_0;
  wire g0_b2__29_n_0;
  wire g0_b2__30_n_0;
  wire g0_b2__31_n_0;
  wire g0_b2__32_n_0;
  wire g0_b2__33_n_0;
  wire g0_b2__34_n_0;
  wire g0_b2__35_n_0;
  wire g0_b2__36_n_0;
  wire g0_b2__37_n_0;
  wire g0_b2__38_n_0;
  wire g0_b2__39_n_0;
  wire g0_b2__40_n_0;
  wire g0_b2__41_n_0;
  wire g0_b2__42_n_0;
  wire g0_b2__43_n_0;
  wire g0_b2__44_n_0;
  wire g0_b2__80_n_0;
  wire g0_b2__82_n_0;
  wire g0_b2__8_n_0;
  wire g0_b2__9_n_0;
  wire [2:0]out;
  wire sample_slow;
  wire [2:0]sel;
  wire sfd_match;
  wire [255:41]shreg;
  wire \shreg_reg[101] ;
  wire \shreg_reg[103] ;
  wire \shreg_reg[105] ;
  wire \shreg_reg[107] ;
  wire \shreg_reg[107]_0 ;
  wire \shreg_reg[107]_1 ;
  wire \shreg_reg[107]_2 ;
  wire \shreg_reg[109] ;
  wire \shreg_reg[111] ;
  wire \shreg_reg[111]_0 ;
  wire \shreg_reg[111]_1 ;
  wire \shreg_reg[111]_10 ;
  wire \shreg_reg[111]_2 ;
  wire \shreg_reg[111]_3 ;
  wire \shreg_reg[111]_4 ;
  wire \shreg_reg[111]_5 ;
  wire \shreg_reg[111]_6 ;
  wire \shreg_reg[111]_7 ;
  wire \shreg_reg[111]_8 ;
  wire \shreg_reg[111]_9 ;
  wire \shreg_reg[113] ;
  wire [2:0]\shreg_reg[119] ;
  wire \shreg_reg[119]_0 ;
  wire \shreg_reg[119]_1 ;
  wire \shreg_reg[119]_2 ;
  wire \shreg_reg[11] ;
  wire [61:0]\shreg_reg[125] ;
  wire [2:0]\shreg_reg[125]_0 ;
  wire \shreg_reg[125]_1 ;
  wire \shreg_reg[125]_2 ;
  wire \shreg_reg[125]_3 ;
  wire \shreg_reg[13] ;
  wire \shreg_reg[15] ;
  wire \shreg_reg[17] ;
  wire \shreg_reg[17]_0 ;
  wire \shreg_reg[17]_1 ;
  wire \shreg_reg[17]_2 ;
  wire \shreg_reg[17]_3 ;
  wire \shreg_reg[17]_4 ;
  wire \shreg_reg[17]_5 ;
  wire \shreg_reg[19] ;
  wire \shreg_reg[21] ;
  wire \shreg_reg[23] ;
  wire \shreg_reg[23]_0 ;
  wire \shreg_reg[23]_1 ;
  wire \shreg_reg[23]_2 ;
  wire \shreg_reg[23]_3 ;
  wire \shreg_reg[23]_4 ;
  wire \shreg_reg[23]_5 ;
  wire \shreg_reg[23]_6 ;
  wire \shreg_reg[24] ;
  wire \shreg_reg[26] ;
  wire \shreg_reg[28] ;
  wire \shreg_reg[30] ;
  wire \shreg_reg[30]_0 ;
  wire \shreg_reg[32] ;
  wire \shreg_reg[34] ;
  wire \shreg_reg[36] ;
  wire \shreg_reg[38] ;
  wire \shreg_reg[40] ;
  wire \shreg_reg[41]_0 ;
  wire \shreg_reg[41]_1 ;
  wire \shreg_reg[43] ;
  wire \shreg_reg[45] ;
  wire \shreg_reg[47] ;
  wire \shreg_reg[49] ;
  wire \shreg_reg[51] ;
  wire \shreg_reg[53] ;
  wire \shreg_reg[53]_0 ;
  wire \shreg_reg[53]_1 ;
  wire \shreg_reg[53]_2 ;
  wire \shreg_reg[53]_3 ;
  wire \shreg_reg[53]_4 ;
  wire \shreg_reg[55] ;
  wire \shreg_reg[55]_0 ;
  wire \shreg_reg[55]_1 ;
  wire \shreg_reg[55]_2 ;
  wire \shreg_reg[55]_3 ;
  wire \shreg_reg[57] ;
  wire \shreg_reg[59] ;
  wire \shreg_reg[5] ;
  wire \shreg_reg[5]_0 ;
  wire \shreg_reg[5]_1 ;
  wire \shreg_reg[61] ;
  wire \shreg_reg[63] ;
  wire \shreg_reg[65] ;
  wire \shreg_reg[67] ;
  wire \shreg_reg[69] ;
  wire \shreg_reg[71] ;
  wire \shreg_reg[73] ;
  wire \shreg_reg[75] ;
  wire \shreg_reg[77] ;
  wire \shreg_reg[77]_0 ;
  wire \shreg_reg[77]_1 ;
  wire \shreg_reg[77]_2 ;
  wire \shreg_reg[78] ;
  wire \shreg_reg[7] ;
  wire \shreg_reg[80] ;
  wire \shreg_reg[82] ;
  wire \shreg_reg[84] ;
  wire \shreg_reg[86] ;
  wire \shreg_reg[88] ;
  wire \shreg_reg[90] ;
  wire \shreg_reg[92] ;
  wire \shreg_reg[94] ;
  wire \shreg_reg[97] ;
  wire \shreg_reg[99] ;
  wire \shreg_reg[9] ;
  wire sync_out;
  wire [1:0]\NLW_csum_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_csum_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_csum_reg[8]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\csum_reg_n_0_[8] ),
        .I1(\FSM_sequential_state[2]_i_5_n_0 ),
        .O(sfd_match));
  LUT6 #(
    .INIT(64'h777777777FFFFFFF)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\csum_reg_n_0_[6] ),
        .I1(\csum_reg_n_0_[7] ),
        .I2(\csum_reg_n_0_[4] ),
        .I3(\csum_reg_n_0_[2] ),
        .I4(\csum_reg_n_0_[3] ),
        .I5(\csum_reg_n_0_[5] ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_10__0 
       (.I0(\csum[3]_i_33__0_n_0 ),
        .I1(\shreg_reg[17]_3 ),
        .I2(\csum[3]_i_35_n_0 ),
        .O(\csum[3]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_11__0 
       (.I0(\csum[3]_i_15__0_n_0 ),
        .I1(\csum[3]_i_16__0_n_0 ),
        .I2(\csum[3]_i_17__0_n_0 ),
        .O(\csum[3]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_12__0 
       (.I0(\shreg_reg[17]_1 ),
        .I1(\csum[3]_i_37_n_0 ),
        .I2(\csum[3]_i_38_n_0 ),
        .O(\csum[3]_i_12__0_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_13__0 
       (.I0(\csum[3]_i_39_n_0 ),
        .I1(\csum[3]_i_40_n_0 ),
        .I2(\csum[3]_i_41_n_0 ),
        .I3(\csum[3]_i_42_n_0 ),
        .I4(\csum[3]_i_43_n_0 ),
        .O(\csum[3]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \csum[3]_i_14 
       (.I0(\shreg_reg[55]_0 ),
        .I1(\csum[3]_i_25_n_0 ),
        .I2(\shreg_reg[77]_0 ),
        .I3(g0_b0__68_n_0),
        .I4(g0_b0__66_n_0),
        .O(\csum_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \csum[3]_i_14__0 
       (.I0(\csum[3]_i_27__0_n_0 ),
        .I1(\csum[3]_i_26__0_n_0 ),
        .I2(\csum[3]_i_44_n_0 ),
        .I3(\shreg_reg[53]_0 ),
        .I4(\shreg_reg[41]_0 ),
        .I5(\shreg_reg[23]_0 ),
        .O(\csum[3]_i_14__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \csum[3]_i_15 
       (.I0(\csum[3]_i_26_n_0 ),
        .I1(\shreg_reg[107]_0 ),
        .I2(\csum_reg[3]_1 ),
        .I3(\shreg_reg[111]_0 ),
        .I4(\csum[3]_i_27_n_0 ),
        .O(\csum_reg[3]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[3]_i_15__0 
       (.I0(g0_b0__31_n_0),
        .I1(g0_b0__30_n_0),
        .I2(g0_b0__32_n_0),
        .I3(\csum[3]_i_48_n_0 ),
        .I4(\csum[3]_i_49_n_0 ),
        .O(\csum[3]_i_15__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[3]_i_16__0 
       (.I0(g0_b0__68_n_0),
        .I1(g0_b0__66_n_0),
        .I2(\shreg_reg[77]_0 ),
        .I3(\shreg_reg[111]_3 ),
        .I4(\csum[3]_i_51_n_0 ),
        .O(\csum[3]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[3]_i_17__0 
       (.I0(\shreg_reg[125]_1 ),
        .I1(g0_b0__21_n_0),
        .I2(g0_b0__23_n_0),
        .I3(\csum[3]_i_52_n_0 ),
        .I4(\csum[3]_i_53_n_0 ),
        .O(\csum[3]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_18 
       (.I0(\csum[3]_i_26_n_0 ),
        .I1(\csum[3]_i_27_n_0 ),
        .I2(\shreg_reg[111]_0 ),
        .I3(\csum_reg[3]_1 ),
        .I4(\shreg_reg[107]_0 ),
        .O(\csum_reg[3]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_18__0 
       (.I0(\csum[3]_i_33__0_n_0 ),
        .I1(\shreg_reg[17]_3 ),
        .I2(\csum[3]_i_35_n_0 ),
        .O(\csum[3]_i_18__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_19__0 
       (.I0(\shreg_reg[17]_1 ),
        .I1(\csum[3]_i_37_n_0 ),
        .I2(\csum[3]_i_38_n_0 ),
        .O(\csum[3]_i_19__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_2 
       (.I0(\csum[7]_i_20_n_0 ),
        .I1(\csum[7]_i_19__0_n_0 ),
        .I2(\csum[7]_i_18__0_n_0 ),
        .O(\csum[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_20 
       (.I0(\csum[3]_i_30_n_0 ),
        .I1(\csum[3]_i_31_n_0 ),
        .I2(\shreg_reg[111]_1 ),
        .I3(\csum_reg[3]_0 ),
        .I4(\shreg_reg[107]_1 ),
        .O(\csum_reg[3]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_20__0 
       (.I0(\shreg_reg[125]_1 ),
        .I1(g0_b0__21_n_0),
        .I2(g0_b0__23_n_0),
        .I3(\csum[3]_i_52_n_0 ),
        .I4(\csum[3]_i_53_n_0 ),
        .O(\csum[3]_i_20__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_22__0 
       (.I0(g0_b0__68_n_0),
        .I1(g0_b0__66_n_0),
        .I2(\shreg_reg[77]_0 ),
        .I3(\shreg_reg[111]_3 ),
        .I4(\csum[3]_i_51_n_0 ),
        .O(\csum[3]_i_22__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_23 
       (.I0(g0_b0__14_n_0),
        .I1(g0_b0__13_n_0),
        .I2(\shreg_reg[119]_0 ),
        .O(\csum_reg[3]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[3]_i_23__0 
       (.I0(\csum[3]_i_15__0_n_0 ),
        .I1(\csum[3]_i_16__0_n_0 ),
        .I2(\csum[3]_i_17__0_n_0 ),
        .I3(\csum[3]_i_18__0_n_0 ),
        .I4(\csum[3]_i_19__0_n_0 ),
        .O(\csum[3]_i_23__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_24__0 
       (.I0(\csum[7]_i_35__0_n_0 ),
        .I1(\csum[7]_i_36__0_n_0 ),
        .I2(\csum[7]_i_37__0_n_0 ),
        .O(\csum[3]_i_24__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_25 
       (.I0(out[0]),
        .I1(g0_b0__9_n_0),
        .I2(g0_b0__8_n_0),
        .O(\csum[3]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[3]_i_25__0 
       (.I0(\shreg_reg[23] ),
        .I1(\csum[3]_i_27__0_n_0 ),
        .I2(\csum[3]_i_26__0_n_0 ),
        .I3(\csum[3]_i_30__0_n_0 ),
        .I4(\csum[3]_i_29__0_n_0 ),
        .O(\csum[3]_i_25__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_26 
       (.I0(out[0]),
        .I1(g0_b0__8_n_0),
        .I2(g0_b0__9_n_0),
        .O(\csum[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h8228288228828228)) 
    \csum[3]_i_26__0 
       (.I0(\csum[3]_i_31__0_n_0 ),
        .I1(g0_b0__44__0_n_0),
        .I2(\shreg_reg[5] ),
        .I3(g0_b0__41_n_0),
        .I4(g0_b0__39_n_0),
        .I5(g0_b0__40_n_0),
        .O(\csum[3]_i_26__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_27 
       (.I0(g0_b0__14_n_0),
        .I1(\shreg_reg[119]_0 ),
        .I2(g0_b0__13_n_0),
        .O(\csum[3]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[3]_i_27__0 
       (.I0(g0_b0__40_n_0),
        .I1(g0_b0__39_n_0),
        .I2(g0_b0__41_n_0),
        .I3(\shreg_reg[5] ),
        .I4(g0_b0__44__0_n_0),
        .O(\csum[3]_i_27__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_29 
       (.I0(\shreg_reg[77]_0 ),
        .I1(g0_b0__66_n_0),
        .I2(g0_b0__68_n_0),
        .O(\csum_reg[3]_8 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_29__0 
       (.I0(\csum[3]_i_20__0_n_0 ),
        .I1(\shreg_reg[17]_0 ),
        .I2(\csum[3]_i_22__0_n_0 ),
        .O(\csum[3]_i_29__0_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_3 
       (.I0(\csum[3]_i_10__0_n_0 ),
        .I1(\csum[3]_i_11__0_n_0 ),
        .I2(\csum[3]_i_12__0_n_0 ),
        .I3(\csum[3]_i_13__0_n_0 ),
        .I4(\csum[3]_i_14__0_n_0 ),
        .O(\csum[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_30 
       (.I0(out[1]),
        .I1(g0_b1__8_n_0),
        .I2(g0_b1__9_n_0),
        .O(\csum[3]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_30__0 
       (.I0(\csum[3]_i_55_n_0 ),
        .I1(\csum[3]_i_56_n_0 ),
        .I2(\csum[3]_i_57_n_0 ),
        .O(\csum[3]_i_30__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_31 
       (.I0(g0_b1__14_n_0),
        .I1(\shreg_reg[119]_1 ),
        .I2(g0_b1__13_n_0),
        .O(\csum[3]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_31__0 
       (.I0(g0_b0__31_n_0),
        .I1(g0_b0__30_n_0),
        .I2(g0_b0__32_n_0),
        .I3(\csum[3]_i_48_n_0 ),
        .I4(\csum[3]_i_49_n_0 ),
        .O(\csum[3]_i_31__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_32 
       (.I0(g0_b0__40_n_0),
        .I1(g0_b0__39_n_0),
        .I2(g0_b0__41_n_0),
        .I3(\shreg_reg[5] ),
        .I4(g0_b0__44__0_n_0),
        .O(\csum[3]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_33 
       (.I0(\shreg_reg[77]_1 ),
        .I1(g0_b1__74_n_0),
        .I2(g0_b1__76_n_0),
        .O(\csum_reg[3]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_33__0 
       (.I0(\shreg_reg[125]_2 ),
        .I1(g0_b1__21_n_0),
        .I2(g0_b1__23_n_0),
        .I3(\csum[3]_i_58_n_0 ),
        .I4(\csum[3]_i_59_n_0 ),
        .O(\csum[3]_i_33__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_35 
       (.I0(g0_b1__76_n_0),
        .I1(g0_b1__74_n_0),
        .I2(\shreg_reg[77]_1 ),
        .I3(\shreg_reg[111]_4 ),
        .I4(\csum[3]_i_62_n_0 ),
        .O(\csum[3]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_37 
       (.I0(g0_b1__31_n_0),
        .I1(g0_b1__30_n_0),
        .I2(g0_b1__32_n_0),
        .I3(\csum[3]_i_63_n_0 ),
        .I4(\csum[3]_i_64_n_0 ),
        .O(\csum[3]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_38 
       (.I0(g0_b1__40_n_0),
        .I1(g0_b1__39_n_0),
        .I2(g0_b1__41_n_0),
        .I3(\shreg_reg[5]_0 ),
        .I4(\csum[3]_i_65_n_0 ),
        .O(\csum[3]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[3]_i_39 
       (.I0(g0_b1__28_n_0),
        .I1(g0_b1__27_n_0),
        .I2(g0_b1__29_n_0),
        .I3(\csum[3]_i_66_n_0 ),
        .I4(\csum[3]_i_67_n_0 ),
        .O(\csum[3]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[3]_i_40 
       (.I0(\shreg_reg[107]_1 ),
        .I1(\csum_reg[3]_0 ),
        .I2(\shreg_reg[111]_9 ),
        .I3(\csum[3]_i_68_n_0 ),
        .I4(\csum[3]_i_69_n_0 ),
        .O(\csum[3]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[3]_i_41 
       (.I0(g0_b1__37_n_0),
        .I1(g0_b1__36_n_0),
        .I2(g0_b1__38_n_0),
        .I3(\csum[3]_i_70_n_0 ),
        .I4(\csum[3]_i_71_n_0 ),
        .O(\csum[3]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_42 
       (.I0(\shreg_reg[53]_2 ),
        .I1(\csum[7]_i_47__0_n_0 ),
        .I2(\csum[7]_i_48__0_n_0 ),
        .O(\csum[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \csum[3]_i_43 
       (.I0(\csum[3]_i_72_n_0 ),
        .I1(\csum[3]_i_73_n_0 ),
        .I2(\shreg_reg[23]_6 ),
        .I3(\shreg_reg[30]_0 ),
        .I4(\csum_reg[3]_2 ),
        .I5(\csum[3]_i_76_n_0 ),
        .O(\csum[3]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_44 
       (.I0(\csum[3]_i_55_n_0 ),
        .I1(\csum[3]_i_56_n_0 ),
        .I2(\csum[3]_i_57_n_0 ),
        .O(\csum[3]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_48 
       (.I0(g0_b0__38_n_0),
        .I1(g0_b0__36_n_0),
        .I2(g0_b0__37_n_0),
        .O(\csum[3]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_49 
       (.I0(g0_b0__35_n_0),
        .I1(g0_b0__33_n_0),
        .I2(g0_b0__34_n_0),
        .O(\csum[3]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[3]_i_4__0 
       (.I0(\csum[3]_i_15__0_n_0 ),
        .I1(\csum[3]_i_16__0_n_0 ),
        .I2(\csum[3]_i_17__0_n_0 ),
        .I3(\csum[3]_i_18__0_n_0 ),
        .I4(\csum[3]_i_19__0_n_0 ),
        .O(\csum[3]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_5 
       (.I0(\csum[3]_i_20__0_n_0 ),
        .I1(\shreg_reg[17]_0 ),
        .I2(\csum[3]_i_22__0_n_0 ),
        .O(\csum[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_51 
       (.I0(g0_b0__19_n_0),
        .I1(g0_b0__17_n_0),
        .I2(g0_b0__18_n_0),
        .O(\csum[3]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_52 
       (.I0(g0_b0__29_n_0),
        .I1(g0_b0__27_n_0),
        .I2(g0_b0__28_n_0),
        .O(\csum[3]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_53 
       (.I0(g0_b0__26_n_0),
        .I1(g0_b0__24_n_0),
        .I2(g0_b0__25_n_0),
        .O(\csum[3]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[3]_i_55 
       (.I0(g0_b0__37_n_0),
        .I1(g0_b0__36_n_0),
        .I2(g0_b0__38_n_0),
        .I3(g0_b0__44_n_0),
        .I4(\csum[3]_i_79_n_0 ),
        .O(\csum[3]_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[3]_i_56 
       (.I0(\shreg_reg[107]_0 ),
        .I1(\csum_reg[3]_1 ),
        .I2(\shreg_reg[111]_5 ),
        .I3(\csum[3]_i_80_n_0 ),
        .I4(\csum[3]_i_81_n_0 ),
        .O(\csum[3]_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[3]_i_57 
       (.I0(g0_b0__28_n_0),
        .I1(g0_b0__27_n_0),
        .I2(g0_b0__29_n_0),
        .I3(\csum[3]_i_82_n_0 ),
        .I4(\csum[3]_i_83_n_0 ),
        .O(\csum[3]_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_58 
       (.I0(g0_b1__29_n_0),
        .I1(g0_b1__27_n_0),
        .I2(g0_b1__28_n_0),
        .O(\csum[3]_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_59 
       (.I0(g0_b1__26_n_0),
        .I1(g0_b1__24_n_0),
        .I2(g0_b1__25_n_0),
        .O(\csum[3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \csum[3]_i_6 
       (.I0(\csum[7]_i_18__0_n_0 ),
        .I1(\csum[7]_i_19__0_n_0 ),
        .I2(\csum[7]_i_20_n_0 ),
        .I3(\csum[3]_i_23__0_n_0 ),
        .I4(\csum[3]_i_24__0_n_0 ),
        .I5(\csum[3]_i_25__0_n_0 ),
        .O(\csum[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_62 
       (.I0(g0_b1__19_n_0),
        .I1(g0_b1__17_n_0),
        .I2(g0_b1__18_n_0),
        .O(\csum[3]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_63 
       (.I0(g0_b1__38_n_0),
        .I1(g0_b1__36_n_0),
        .I2(g0_b1__37_n_0),
        .O(\csum[3]_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_64 
       (.I0(g0_b1__35_n_0),
        .I1(g0_b1__33_n_0),
        .I2(g0_b1__34_n_0),
        .O(\csum[3]_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_65 
       (.I0(g0_b1__44_n_0),
        .I1(g0_b1__42_n_0),
        .I2(g0_b1__43_n_0),
        .O(\csum[3]_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_66 
       (.I0(g0_b1__35_n_0),
        .I1(g0_b1__33_n_0),
        .I2(g0_b1__34_n_0),
        .O(\csum[3]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_67 
       (.I0(g0_b1__32_n_0),
        .I1(g0_b1__30_n_0),
        .I2(g0_b1__31_n_0),
        .O(\csum[3]_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_68 
       (.I0(g0_b1__26_n_0),
        .I1(g0_b1__24_n_0),
        .I2(g0_b1__25_n_0),
        .O(\csum[3]_i_68_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_69 
       (.I0(g0_b1__23_n_0),
        .I1(g0_b1__21_n_0),
        .I2(\shreg_reg[125]_2 ),
        .O(\csum[3]_i_69_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \csum[3]_i_7 
       (.I0(\csum[3]_i_3_n_0 ),
        .I1(\csum[3]_i_23__0_n_0 ),
        .I2(\csum[3]_i_24__0_n_0 ),
        .I3(\csum[3]_i_25__0_n_0 ),
        .O(\csum[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_70 
       (.I0(g0_b1__44_n_0),
        .I1(g0_b1__42_n_0),
        .I2(g0_b1__43_n_0),
        .O(\csum[3]_i_70_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_71 
       (.I0(g0_b1__41_n_0),
        .I1(g0_b1__39_n_0),
        .I2(g0_b1__40_n_0),
        .O(\csum[3]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \csum[3]_i_72 
       (.I0(g0_b2__25_n_0),
        .I1(g0_b2__24_n_0),
        .I2(g0_b2__26_n_0),
        .I3(g0_b2__28_n_0),
        .I4(g0_b2__27_n_0),
        .I5(g0_b2__29_n_0),
        .O(\csum[3]_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_73 
       (.I0(g0_b2__23_n_0),
        .I1(g0_b2__21_n_0),
        .I2(\shreg_reg[125]_3 ),
        .O(\csum[3]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \csum[3]_i_76 
       (.I0(g0_b2__18_n_0),
        .I1(g0_b2__17_n_0),
        .I2(g0_b2__19_n_0),
        .I3(\shreg_reg[107]_2 ),
        .I4(\csum_reg[7]_0 ),
        .I5(\shreg_reg[111]_7 ),
        .O(\csum[3]_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_77 
       (.I0(g0_b0__19_n_0),
        .I1(g0_b0__17_n_0),
        .I2(g0_b0__18_n_0),
        .O(\csum_reg[3]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_78 
       (.I0(\shreg_reg[77]_0 ),
        .I1(g0_b0__66_n_0),
        .I2(g0_b0__68_n_0),
        .O(\csum_reg[3]_12 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_79 
       (.I0(g0_b0__41_n_0),
        .I1(g0_b0__39_n_0),
        .I2(g0_b0__40_n_0),
        .O(\csum[3]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \csum[3]_i_8 
       (.I0(\csum[3]_i_26__0_n_0 ),
        .I1(\csum[3]_i_27__0_n_0 ),
        .I2(\shreg_reg[23] ),
        .I3(\csum[3]_i_4__0_n_0 ),
        .I4(\csum[3]_i_29__0_n_0 ),
        .I5(\csum[3]_i_30__0_n_0 ),
        .O(\csum[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_80 
       (.I0(g0_b0__26_n_0),
        .I1(g0_b0__24_n_0),
        .I2(g0_b0__25_n_0),
        .O(\csum[3]_i_80_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_81 
       (.I0(g0_b0__23_n_0),
        .I1(g0_b0__21_n_0),
        .I2(\shreg_reg[125]_1 ),
        .O(\csum[3]_i_81_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_82 
       (.I0(g0_b0__35_n_0),
        .I1(g0_b0__33_n_0),
        .I2(g0_b0__34_n_0),
        .O(\csum[3]_i_82_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[3]_i_83 
       (.I0(g0_b0__32_n_0),
        .I1(g0_b0__30_n_0),
        .I2(g0_b0__31_n_0),
        .O(\csum[3]_i_83_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_9 
       (.I0(\csum[3]_i_5_n_0 ),
        .I1(\csum[3]_i_31__0_n_0 ),
        .I2(\csum[3]_i_32_n_0 ),
        .O(\csum[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \csum[7]_i_10 
       (.I0(\csum[7]_i_23__0_n_0 ),
        .I1(\csum[7]_i_24__0_n_0 ),
        .I2(\csum[7]_i_25__0_n_0 ),
        .I3(\csum[7]_i_26__0_n_0 ),
        .I4(\csum[7]_i_27__0_n_0 ),
        .O(\csum[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \csum[7]_i_100 
       (.I0(g0_b1__31_n_0),
        .I1(g0_b1__30_n_0),
        .I2(g0_b1__32_n_0),
        .I3(g0_b1__34_n_0),
        .I4(g0_b1__33_n_0),
        .I5(g0_b1__35_n_0),
        .O(\csum[7]_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_101 
       (.I0(g0_b2__38_n_0),
        .I1(g0_b2__36_n_0),
        .I2(g0_b2__37_n_0),
        .O(\csum[7]_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_102 
       (.I0(g0_b2__35_n_0),
        .I1(g0_b2__33_n_0),
        .I2(g0_b2__34_n_0),
        .O(\csum[7]_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_103 
       (.I0(g0_b2__44_n_0),
        .I1(g0_b2__42_n_0),
        .I2(g0_b2__43_n_0),
        .O(\csum[7]_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_106 
       (.I0(g0_b2__19_n_0),
        .I1(g0_b2__17_n_0),
        .I2(g0_b2__18_n_0),
        .O(\csum[7]_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_110 
       (.I0(g0_b2__32_n_0),
        .I1(g0_b2__30_n_0),
        .I2(g0_b2__31_n_0),
        .O(\csum[7]_i_110_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_111 
       (.I0(g0_b2__26_n_0),
        .I1(g0_b2__24_n_0),
        .I2(g0_b2__25_n_0),
        .O(\csum[7]_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_112 
       (.I0(g0_b2__29_n_0),
        .I1(g0_b2__27_n_0),
        .I2(g0_b2__28_n_0),
        .O(\csum[7]_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_113 
       (.I0(\shreg_reg[77]_1 ),
        .I1(g0_b1__74_n_0),
        .I2(g0_b1__76_n_0),
        .O(\csum_reg[7]_15 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_114 
       (.I0(g0_b1__19_n_0),
        .I1(g0_b1__17_n_0),
        .I2(g0_b1__18_n_0),
        .O(\csum_reg[7]_16 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \csum[7]_i_116 
       (.I0(g0_b2__40_n_0),
        .I1(g0_b2__39_n_0),
        .I2(g0_b2__41_n_0),
        .I3(g0_b2__43_n_0),
        .I4(g0_b2__42_n_0),
        .I5(g0_b2__44_n_0),
        .O(\csum[7]_i_116_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_117 
       (.I0(g0_b2__38_n_0),
        .I1(g0_b2__36_n_0),
        .I2(g0_b2__37_n_0),
        .O(\csum[7]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \csum[7]_i_119 
       (.I0(\shreg_reg[125]_3 ),
        .I1(g0_b2__21_n_0),
        .I2(g0_b2__23_n_0),
        .I3(g0_b2__25_n_0),
        .I4(g0_b2__24_n_0),
        .I5(g0_b2__26_n_0),
        .O(\csum[7]_i_119_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_11__0 
       (.I0(\csum[7]_i_28__0_n_0 ),
        .I1(\csum[7]_i_29__0_n_0 ),
        .I2(\csum[7]_i_30__0_n_0 ),
        .O(\csum[7]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_120 
       (.I0(g0_b2__29_n_0),
        .I1(g0_b2__27_n_0),
        .I2(g0_b2__28_n_0),
        .O(\csum[7]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \csum[7]_i_121 
       (.I0(g0_b2__31_n_0),
        .I1(g0_b2__30_n_0),
        .I2(g0_b2__32_n_0),
        .I3(g0_b2__34_n_0),
        .I4(g0_b2__33_n_0),
        .I5(g0_b2__35_n_0),
        .O(\csum[7]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \csum[7]_i_122 
       (.I0(\csum[7]_i_94_n_0 ),
        .I1(\csum[7]_i_93_n_0 ),
        .I2(\shreg_reg[111]_10 ),
        .I3(\csum_reg[7]_17 ),
        .I4(\csum_reg[7]_18 ),
        .I5(\shreg_reg[55]_3 ),
        .O(\csum[7]_i_122_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[7]_i_124 
       (.I0(g0_b2__37_n_0),
        .I1(g0_b2__36_n_0),
        .I2(g0_b2__38_n_0),
        .I3(\csum[7]_i_85_n_0 ),
        .I4(\csum[7]_i_86_n_0 ),
        .O(\csum[7]_i_124_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[7]_i_125 
       (.I0(\shreg_reg[107]_2 ),
        .I1(\csum_reg[7]_0 ),
        .I2(\shreg_reg[111]_7 ),
        .I3(\csum[7]_i_93_n_0 ),
        .I4(\csum[7]_i_94_n_0 ),
        .O(\csum[7]_i_125_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[7]_i_126 
       (.I0(g0_b2__28_n_0),
        .I1(g0_b2__27_n_0),
        .I2(g0_b2__29_n_0),
        .I3(\csum[7]_i_89_n_0 ),
        .I4(\csum[7]_i_90_n_0 ),
        .O(\csum[7]_i_126_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_128 
       (.I0(\shreg_reg[107]_1 ),
        .I1(\csum_reg[3]_0 ),
        .I2(\shreg_reg[111]_9 ),
        .I3(\csum[3]_i_68_n_0 ),
        .I4(\csum[3]_i_69_n_0 ),
        .O(\csum[7]_i_128_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_12__0 
       (.I0(\csum[7]_i_31__0_n_0 ),
        .I1(\csum[7]_i_32__0_n_0 ),
        .I2(\csum[7]_i_33__0_n_0 ),
        .O(\csum[7]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \csum[7]_i_13__0 
       (.I0(\csum[7]_i_34__0_n_0 ),
        .I1(\csum[7]_i_35__0_n_0 ),
        .I2(\csum[7]_i_36__0_n_0 ),
        .I3(\csum[7]_i_37__0_n_0 ),
        .I4(\csum[7]_i_38__0_n_0 ),
        .O(\csum[7]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \csum[7]_i_14 
       (.I0(\csum[7]_i_35_n_0 ),
        .I1(\csum_reg[7]_0 ),
        .I2(\shreg_reg[107]_2 ),
        .I3(\shreg_reg[111]_2 ),
        .I4(\csum[7]_i_36_n_0 ),
        .O(\csum_reg[7]_9 ));
  LUT2 #(
    .INIT(4'h6)) 
    \csum[7]_i_14__0 
       (.I0(\csum[7]_i_10_n_0 ),
        .I1(\csum[7]_i_9_n_0 ),
        .O(\csum[7]_i_14__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_15 
       (.I0(\csum[7]_i_28__0_n_0 ),
        .I1(\csum[7]_i_29__0_n_0 ),
        .I2(\csum[7]_i_30__0_n_0 ),
        .O(\csum[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEE8E8808000)) 
    \csum[7]_i_16__0 
       (.I0(\csum[7]_i_39__0_n_0 ),
        .I1(\csum[7]_i_40__0_n_0 ),
        .I2(\csum[7]_i_41__0_n_0 ),
        .I3(\shreg_reg[53]_3 ),
        .I4(\csum[7]_i_43_n_0 ),
        .I5(\csum[7]_i_44__0_n_0 ),
        .O(\csum[7]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_17 
       (.I0(\csum[7]_i_31__0_n_0 ),
        .I1(\csum[7]_i_32__0_n_0 ),
        .I2(\csum[7]_i_33__0_n_0 ),
        .O(\csum[7]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_18__0 
       (.I0(\csum[3]_i_10__0_n_0 ),
        .I1(\csum[3]_i_11__0_n_0 ),
        .I2(\csum[3]_i_12__0_n_0 ),
        .I3(\csum[3]_i_13__0_n_0 ),
        .I4(\csum[3]_i_14__0_n_0 ),
        .O(\csum[7]_i_18__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[7]_i_19__0 
       (.I0(\csum[7]_i_25__0_n_0 ),
        .I1(\csum[7]_i_26__0_n_0 ),
        .I2(\csum[7]_i_27__0_n_0 ),
        .I3(\csum[7]_i_23__0_n_0 ),
        .I4(\csum[7]_i_24__0_n_0 ),
        .O(\csum[7]_i_19__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hA995566A)) 
    \csum[7]_i_20 
       (.I0(\csum[7]_i_34__0_n_0 ),
        .I1(\csum[7]_i_35__0_n_0 ),
        .I2(\csum[7]_i_36__0_n_0 ),
        .I3(\csum[7]_i_37__0_n_0 ),
        .I4(\csum[7]_i_38__0_n_0 ),
        .O(\csum[7]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \csum[7]_i_21 
       (.I0(\shreg_reg[55]_0 ),
        .I1(g0_b0__66_n_0),
        .I2(g0_b0__68_n_0),
        .I3(\shreg_reg[77]_0 ),
        .I4(\csum[3]_i_25_n_0 ),
        .O(\csum_reg[7]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \csum[7]_i_21__0 
       (.I0(\csum[7]_i_45__0_n_0 ),
        .I1(\shreg_reg[53]_2 ),
        .I2(\csum[7]_i_47__0_n_0 ),
        .I3(\csum[7]_i_48__0_n_0 ),
        .I4(\csum[3]_i_43_n_0 ),
        .O(\csum[7]_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \csum[7]_i_22__0 
       (.I0(\shreg_reg[17]_4 ),
        .I1(\csum[7]_i_50__0_n_0 ),
        .I2(\csum[7]_i_51__0_n_0 ),
        .I3(\shreg_reg[77]_2 ),
        .I4(\csum[7]_i_53__0_n_0 ),
        .I5(\csum[7]_i_54__0_n_0 ),
        .O(\csum[7]_i_22__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[7]_i_23 
       (.I0(\csum[7]_i_44_n_0 ),
        .I1(\csum[7]_i_45_n_0 ),
        .I2(\shreg_reg[111]_2 ),
        .I3(\csum_reg[7]_0 ),
        .I4(\shreg_reg[107]_2 ),
        .O(\csum_reg[7]_12 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \csum[7]_i_23__0 
       (.I0(\csum[7]_i_55__0_n_0 ),
        .I1(\shreg_reg[17]_2 ),
        .I2(\csum[7]_i_57_n_0 ),
        .I3(\csum[7]_i_58_n_0 ),
        .I4(\csum[7]_i_59_n_0 ),
        .I5(\csum[7]_i_60_n_0 ),
        .O(\csum[7]_i_23__0_n_0 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \csum[7]_i_24__0 
       (.I0(\csum_reg[7]_13 ),
        .I1(\csum_reg[7]_14 ),
        .I2(\csum[7]_i_63_n_0 ),
        .I3(\shreg_reg[53]_1 ),
        .I4(\shreg_reg[41]_1 ),
        .I5(\shreg_reg[23]_3 ),
        .O(\csum[7]_i_24__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_25__0 
       (.I0(\csum[7]_i_67_n_0 ),
        .I1(\shreg_reg[17]_5 ),
        .I2(\csum[7]_i_69_n_0 ),
        .O(\csum[7]_i_25__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_26__0 
       (.I0(\csum[7]_i_70_n_0 ),
        .I1(\csum[7]_i_71_n_0 ),
        .I2(\csum[7]_i_72_n_0 ),
        .O(\csum[7]_i_26__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \csum[7]_i_27 
       (.I0(\shreg_reg[55]_1 ),
        .I1(g0_b1__74_n_0),
        .I2(g0_b1__76_n_0),
        .I3(\shreg_reg[77]_1 ),
        .I4(\csum[7]_i_50_n_0 ),
        .O(\csum_reg[7]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_27__0 
       (.I0(\shreg_reg[53]_2 ),
        .I1(\csum[7]_i_47__0_n_0 ),
        .I2(\csum[7]_i_48__0_n_0 ),
        .O(\csum[7]_i_27__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[7]_i_28__0 
       (.I0(\csum[7]_i_73_n_0 ),
        .I1(\shreg_reg[23]_5 ),
        .I2(\csum[7]_i_75_n_0 ),
        .I3(\csum[7]_i_76_n_0 ),
        .I4(\csum[7]_i_77_n_0 ),
        .O(\csum[7]_i_28__0_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \csum[7]_i_29__0 
       (.I0(\shreg_reg[23]_1 ),
        .I1(\csum[3]_i_41_n_0 ),
        .I2(\csum[3]_i_40_n_0 ),
        .I3(\csum[3]_i_39_n_0 ),
        .I4(\shreg_reg[23]_2 ),
        .O(\csum[7]_i_29__0_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \csum[7]_i_2__0 
       (.I0(\csum[7]_i_9_n_0 ),
        .I1(\csum[7]_i_10_n_0 ),
        .I2(\csum[7]_i_11__0_n_0 ),
        .I3(\csum[7]_i_12__0_n_0 ),
        .O(\csum[7]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_3 
       (.I0(\csum[7]_i_13__0_n_0 ),
        .I1(\csum[7]_i_14__0_n_0 ),
        .I2(\csum[7]_i_15_n_0 ),
        .O(\csum[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \csum[7]_i_30 
       (.I0(\csum[7]_i_44_n_0 ),
        .I1(\shreg_reg[107]_2 ),
        .I2(\csum_reg[7]_0 ),
        .I3(\shreg_reg[111]_2 ),
        .I4(\csum[7]_i_45_n_0 ),
        .O(\csum_reg[7]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hA995566A)) 
    \csum[7]_i_30__0 
       (.I0(\csum[7]_i_80_n_0 ),
        .I1(\csum[7]_i_25__0_n_0 ),
        .I2(\csum[7]_i_26__0_n_0 ),
        .I3(\csum[7]_i_27__0_n_0 ),
        .I4(\csum[7]_i_81_n_0 ),
        .O(\csum[7]_i_30__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \csum[7]_i_31 
       (.I0(\csum[7]_i_35_n_0 ),
        .I1(\csum[7]_i_36_n_0 ),
        .I2(\shreg_reg[111]_2 ),
        .I3(\shreg_reg[107]_2 ),
        .I4(\csum_reg[7]_0 ),
        .O(\csum_reg[7]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \csum[7]_i_31__0 
       (.I0(\csum[7]_i_73_n_0 ),
        .I1(\shreg_reg[23]_5 ),
        .I2(\csum[7]_i_75_n_0 ),
        .I3(\csum[7]_i_76_n_0 ),
        .I4(\csum[7]_i_77_n_0 ),
        .O(\csum[7]_i_31__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \csum[7]_i_32__0 
       (.I0(\csum[7]_i_82_n_0 ),
        .I1(\csum[7]_i_83_n_0 ),
        .I2(\csum[7]_i_75_n_0 ),
        .I3(\csum[7]_i_76_n_0 ),
        .I4(\csum[7]_i_77_n_0 ),
        .O(\csum[7]_i_32__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \csum[7]_i_33__0 
       (.I0(\csum[7]_i_80_n_0 ),
        .I1(\csum[7]_i_25__0_n_0 ),
        .I2(\csum[7]_i_26__0_n_0 ),
        .I3(\csum[7]_i_27__0_n_0 ),
        .I4(\csum[7]_i_81_n_0 ),
        .O(\csum[7]_i_33__0_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_34 
       (.I0(\shreg_reg[77] ),
        .I1(g0_b2__82_n_0),
        .I2(g0_b2__80_n_0),
        .O(\csum_reg[7]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \csum[7]_i_34__0 
       (.I0(\csum[7]_i_21__0_n_0 ),
        .I1(\csum[7]_i_22__0_n_0 ),
        .I2(\csum[3]_i_10__0_n_0 ),
        .I3(\csum[3]_i_11__0_n_0 ),
        .I4(\csum[3]_i_12__0_n_0 ),
        .O(\csum[7]_i_34__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_35 
       (.I0(out[2]),
        .I1(g0_b2__9_n_0),
        .I2(g0_b2__8_n_0),
        .O(\csum[7]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_35__0 
       (.I0(\csum[7]_i_70_n_0 ),
        .I1(\csum[7]_i_71_n_0 ),
        .I2(\csum[7]_i_72_n_0 ),
        .O(\csum[7]_i_35__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_36 
       (.I0(g0_b2__14_n_0),
        .I1(g0_b2__13_n_0),
        .I2(\shreg_reg[119]_2 ),
        .O(\csum[7]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_36__0 
       (.I0(\shreg_reg[23]_4 ),
        .I1(\csum_reg[7]_14 ),
        .I2(\csum_reg[7]_13 ),
        .O(\csum[7]_i_36__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_37__0 
       (.I0(\csum[7]_i_57_n_0 ),
        .I1(\shreg_reg[17]_2 ),
        .I2(\csum[7]_i_55__0_n_0 ),
        .O(\csum[7]_i_37__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEF8F8E0F8E0E080)) 
    \csum[7]_i_38__0 
       (.I0(\csum[3]_i_27__0_n_0 ),
        .I1(\csum[3]_i_26__0_n_0 ),
        .I2(\csum[3]_i_44_n_0 ),
        .I3(\shreg_reg[53]_0 ),
        .I4(\shreg_reg[41]_0 ),
        .I5(\shreg_reg[23]_0 ),
        .O(\csum[7]_i_38__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_39__0 
       (.I0(g0_b2__37_n_0),
        .I1(g0_b2__36_n_0),
        .I2(g0_b2__38_n_0),
        .I3(\csum[7]_i_85_n_0 ),
        .I4(\csum[7]_i_86_n_0 ),
        .O(\csum[7]_i_39__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_4 
       (.I0(\csum[7]_i_13__0_n_0 ),
        .I1(\csum[7]_i_14__0_n_0 ),
        .I2(\csum[7]_i_15_n_0 ),
        .O(\csum[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \csum[7]_i_40 
       (.I0(\shreg_reg[55]_1 ),
        .I1(\csum[7]_i_50_n_0 ),
        .I2(\shreg_reg[77]_1 ),
        .I3(g0_b1__76_n_0),
        .I4(g0_b1__74_n_0),
        .O(\csum_reg[7]_5 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_40__0 
       (.I0(\csum[7]_i_53__0_n_0 ),
        .I1(\csum[7]_i_87_n_0 ),
        .I2(\csum[7]_i_88_n_0 ),
        .O(\csum[7]_i_40__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_41__0 
       (.I0(g0_b2__28_n_0),
        .I1(g0_b2__27_n_0),
        .I2(g0_b2__29_n_0),
        .I3(\csum[7]_i_89_n_0 ),
        .I4(\csum[7]_i_90_n_0 ),
        .O(\csum[7]_i_41__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_43 
       (.I0(\shreg_reg[107]_2 ),
        .I1(\csum_reg[7]_0 ),
        .I2(\shreg_reg[111]_7 ),
        .I3(\csum[7]_i_93_n_0 ),
        .I4(\csum[7]_i_94_n_0 ),
        .O(\csum[7]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_43__0 
       (.I0(\shreg_reg[77] ),
        .I1(g0_b2__80_n_0),
        .I2(g0_b2__82_n_0),
        .O(\csum_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_44 
       (.I0(out[2]),
        .I1(g0_b2__8_n_0),
        .I2(g0_b2__9_n_0),
        .O(\csum[7]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_44__0 
       (.I0(\csum[7]_i_75_n_0 ),
        .I1(\csum[7]_i_76_n_0 ),
        .I2(\csum[7]_i_77_n_0 ),
        .O(\csum[7]_i_44__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[7]_i_45 
       (.I0(g0_b2__14_n_0),
        .I1(\shreg_reg[119]_2 ),
        .I2(g0_b2__13_n_0),
        .O(\csum[7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \csum[7]_i_45__0 
       (.I0(\csum[7]_i_95_n_0 ),
        .I1(\csum[7]_i_96_n_0 ),
        .I2(\shreg_reg[111]_8 ),
        .I3(\csum[7]_i_98_n_0 ),
        .I4(\csum[7]_i_99_n_0 ),
        .I5(\csum[7]_i_100_n_0 ),
        .O(\csum[7]_i_45__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \csum[7]_i_46 
       (.I0(\csum[3]_i_30_n_0 ),
        .I1(\shreg_reg[107]_1 ),
        .I2(\csum_reg[3]_0 ),
        .I3(\shreg_reg[111]_1 ),
        .I4(\csum[3]_i_31_n_0 ),
        .O(\csum_reg[7]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[7]_i_47__0 
       (.I0(g0_b2__31_n_0),
        .I1(g0_b2__30_n_0),
        .I2(g0_b2__32_n_0),
        .I3(\csum[7]_i_101_n_0 ),
        .I4(\csum[7]_i_102_n_0 ),
        .O(\csum[7]_i_47__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[7]_i_48__0 
       (.I0(g0_b2__40_n_0),
        .I1(g0_b2__39_n_0),
        .I2(g0_b2__41_n_0),
        .I3(\shreg_reg[5]_1 ),
        .I4(\csum[7]_i_103_n_0 ),
        .O(\csum[7]_i_48__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \csum[7]_i_5 
       (.I0(\csum[7]_i_16__0_n_0 ),
        .I1(\csum[7]_i_17_n_0 ),
        .O(\csum[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_50 
       (.I0(out[1]),
        .I1(g0_b1__9_n_0),
        .I2(g0_b1__8_n_0),
        .O(\csum[7]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_50__0 
       (.I0(g0_b1__37_n_0),
        .I1(g0_b1__36_n_0),
        .I2(g0_b1__38_n_0),
        .I3(\csum[3]_i_70_n_0 ),
        .I4(\csum[3]_i_71_n_0 ),
        .O(\csum[7]_i_50__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_51 
       (.I0(g0_b1__14_n_0),
        .I1(g0_b1__13_n_0),
        .I2(\shreg_reg[119]_1 ),
        .O(\csum_reg[7]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_51__0 
       (.I0(g0_b2__82_n_0),
        .I1(g0_b2__80_n_0),
        .I2(\shreg_reg[77] ),
        .I3(\shreg_reg[111]_6 ),
        .I4(\csum[7]_i_106_n_0 ),
        .O(\csum[7]_i_51__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_53__0 
       (.I0(g0_b2__40_n_0),
        .I1(g0_b2__39_n_0),
        .I2(g0_b2__41_n_0),
        .I3(\shreg_reg[5]_1 ),
        .I4(\csum[7]_i_103_n_0 ),
        .O(\csum[7]_i_53__0_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \csum[7]_i_54__0 
       (.I0(\csum[7]_i_102_n_0 ),
        .I1(\csum[7]_i_101_n_0 ),
        .I2(\csum[7]_i_110_n_0 ),
        .I3(\csum[7]_i_111_n_0 ),
        .I4(\csum[7]_i_112_n_0 ),
        .I5(\csum[3]_i_73_n_0 ),
        .O(\csum[7]_i_54__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_55__0 
       (.I0(g0_b1__76_n_0),
        .I1(g0_b1__74_n_0),
        .I2(\shreg_reg[77]_1 ),
        .I3(\shreg_reg[111]_4 ),
        .I4(\csum[3]_i_62_n_0 ),
        .O(\csum[7]_i_55__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_57 
       (.I0(\shreg_reg[125]_2 ),
        .I1(g0_b1__21_n_0),
        .I2(g0_b1__23_n_0),
        .I3(\csum[3]_i_58_n_0 ),
        .I4(\csum[3]_i_59_n_0 ),
        .O(\csum[7]_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_58 
       (.I0(g0_b1__28_n_0),
        .I1(g0_b1__27_n_0),
        .I2(g0_b1__29_n_0),
        .I3(\csum[3]_i_66_n_0 ),
        .I4(\csum[3]_i_67_n_0 ),
        .O(\csum[7]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \csum[7]_i_59 
       (.I0(\csum[3]_i_69_n_0 ),
        .I1(\csum[3]_i_68_n_0 ),
        .I2(\shreg_reg[111]_8 ),
        .I3(\csum_reg[7]_15 ),
        .I4(\csum_reg[7]_16 ),
        .I5(\shreg_reg[55]_2 ),
        .O(\csum[7]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \csum[7]_i_6 
       (.I0(\csum[7]_i_9_n_0 ),
        .I1(\csum[7]_i_10_n_0 ),
        .I2(\csum[7]_i_12__0_n_0 ),
        .I3(\csum[7]_i_11__0_n_0 ),
        .I4(\csum[7]_i_16__0_n_0 ),
        .I5(\csum[7]_i_17_n_0 ),
        .O(\csum[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \csum[7]_i_60 
       (.I0(\csum[7]_i_116_n_0 ),
        .I1(\csum[7]_i_117_n_0 ),
        .I2(\shreg_reg[111]_10 ),
        .I3(\csum[7]_i_119_n_0 ),
        .I4(\csum[7]_i_120_n_0 ),
        .I5(\csum[7]_i_121_n_0 ),
        .O(\csum[7]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_61 
       (.I0(g0_b1__40_n_0),
        .I1(g0_b1__39_n_0),
        .I2(g0_b1__41_n_0),
        .I3(\shreg_reg[5]_0 ),
        .I4(\csum[3]_i_65_n_0 ),
        .O(\csum_reg[7]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_62 
       (.I0(g0_b1__31_n_0),
        .I1(g0_b1__30_n_0),
        .I2(g0_b1__32_n_0),
        .I3(\csum[3]_i_63_n_0 ),
        .I4(\csum[3]_i_64_n_0 ),
        .O(\csum_reg[7]_14 ));
  LUT6 #(
    .INIT(64'h06606FF66FF60660)) 
    \csum[7]_i_63 
       (.I0(\csum[7]_i_95_n_0 ),
        .I1(\csum[7]_i_96_n_0 ),
        .I2(\shreg_reg[111]_8 ),
        .I3(\csum[7]_i_98_n_0 ),
        .I4(\csum[7]_i_99_n_0 ),
        .I5(\csum[7]_i_100_n_0 ),
        .O(\csum[7]_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[7]_i_67 
       (.I0(\shreg_reg[125]_3 ),
        .I1(g0_b2__21_n_0),
        .I2(g0_b2__23_n_0),
        .I3(\csum[7]_i_112_n_0 ),
        .I4(\csum[7]_i_111_n_0 ),
        .O(\csum[7]_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[7]_i_69 
       (.I0(g0_b2__82_n_0),
        .I1(g0_b2__80_n_0),
        .I2(\shreg_reg[77] ),
        .I3(\shreg_reg[111]_6 ),
        .I4(\csum[7]_i_106_n_0 ),
        .O(\csum[7]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_70 
       (.I0(g0_b0__37_n_0),
        .I1(g0_b0__36_n_0),
        .I2(g0_b0__38_n_0),
        .I3(g0_b0__44_n_0),
        .I4(\csum[3]_i_79_n_0 ),
        .O(\csum[7]_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_71 
       (.I0(\shreg_reg[107]_0 ),
        .I1(\csum_reg[3]_1 ),
        .I2(\shreg_reg[111]_5 ),
        .I3(\csum[3]_i_80_n_0 ),
        .I4(\csum[3]_i_81_n_0 ),
        .O(\csum[7]_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[7]_i_72 
       (.I0(g0_b0__28_n_0),
        .I1(g0_b0__27_n_0),
        .I2(g0_b0__29_n_0),
        .I3(\csum[3]_i_82_n_0 ),
        .I4(\csum[3]_i_83_n_0 ),
        .O(\csum[7]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \csum[7]_i_73 
       (.I0(\csum[7]_i_88_n_0 ),
        .I1(\csum[7]_i_87_n_0 ),
        .I2(\csum[7]_i_53__0_n_0 ),
        .I3(\csum[7]_i_39__0_n_0 ),
        .I4(\csum[7]_i_41__0_n_0 ),
        .I5(\csum[7]_i_122_n_0 ),
        .O(\csum[7]_i_73_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_75 
       (.I0(\csum[7]_i_124_n_0 ),
        .I1(\csum[7]_i_125_n_0 ),
        .I2(\csum[7]_i_126_n_0 ),
        .O(\csum[7]_i_75_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_76 
       (.I0(\csum[7]_i_51__0_n_0 ),
        .I1(\csum[7]_i_50__0_n_0 ),
        .I2(\shreg_reg[17]_4 ),
        .O(\csum[7]_i_76_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_77 
       (.I0(\csum[7]_i_58_n_0 ),
        .I1(\shreg_reg[53]_4 ),
        .I2(\csum[7]_i_128_n_0 ),
        .O(\csum[7]_i_77_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \csum[7]_i_7__0 
       (.I0(\csum[7]_i_9_n_0 ),
        .I1(\csum[7]_i_10_n_0 ),
        .I2(\csum[7]_i_3_n_0 ),
        .I3(\csum[7]_i_12__0_n_0 ),
        .I4(\csum[7]_i_11__0_n_0 ),
        .O(\csum[7]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \csum[7]_i_8 
       (.I0(\csum[7]_i_15_n_0 ),
        .I1(\csum[7]_i_14__0_n_0 ),
        .I2(\csum[7]_i_13__0_n_0 ),
        .I3(\csum[7]_i_18__0_n_0 ),
        .I4(\csum[7]_i_19__0_n_0 ),
        .I5(\csum[7]_i_20_n_0 ),
        .O(\csum[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9600FF96FF969600)) 
    \csum[7]_i_80 
       (.I0(\shreg_reg[17]_4 ),
        .I1(\csum[7]_i_50__0_n_0 ),
        .I2(\csum[7]_i_51__0_n_0 ),
        .I3(\shreg_reg[77]_2 ),
        .I4(\csum[7]_i_53__0_n_0 ),
        .I5(\csum[7]_i_54__0_n_0 ),
        .O(\csum[7]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hE8FFFFE800E8E800)) 
    \csum[7]_i_81 
       (.I0(\csum[7]_i_55__0_n_0 ),
        .I1(\shreg_reg[17]_2 ),
        .I2(\csum[7]_i_57_n_0 ),
        .I3(\csum[7]_i_58_n_0 ),
        .I4(\csum[7]_i_59_n_0 ),
        .I5(\csum[7]_i_60_n_0 ),
        .O(\csum[7]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hE800FFE8FFE8E800)) 
    \csum[7]_i_82 
       (.I0(\csum[7]_i_88_n_0 ),
        .I1(\csum[7]_i_87_n_0 ),
        .I2(\csum[7]_i_53__0_n_0 ),
        .I3(\csum[7]_i_39__0_n_0 ),
        .I4(\csum[7]_i_41__0_n_0 ),
        .I5(\csum[7]_i_122_n_0 ),
        .O(\csum[7]_i_82_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_83 
       (.I0(\csum[7]_i_41__0_n_0 ),
        .I1(\shreg_reg[53]_3 ),
        .I2(\csum[7]_i_43_n_0 ),
        .O(\csum[7]_i_83_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_85 
       (.I0(g0_b2__44_n_0),
        .I1(g0_b2__42_n_0),
        .I2(g0_b2__43_n_0),
        .O(\csum[7]_i_85_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_86 
       (.I0(g0_b2__41_n_0),
        .I1(g0_b2__39_n_0),
        .I2(g0_b2__40_n_0),
        .O(\csum[7]_i_86_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_87 
       (.I0(\shreg_reg[125]_3 ),
        .I1(g0_b2__21_n_0),
        .I2(g0_b2__23_n_0),
        .I3(\csum[7]_i_112_n_0 ),
        .I4(\csum[7]_i_111_n_0 ),
        .O(\csum[7]_i_87_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[7]_i_88 
       (.I0(g0_b2__31_n_0),
        .I1(g0_b2__30_n_0),
        .I2(g0_b2__32_n_0),
        .I3(\csum[7]_i_101_n_0 ),
        .I4(\csum[7]_i_102_n_0 ),
        .O(\csum[7]_i_88_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_89 
       (.I0(g0_b2__35_n_0),
        .I1(g0_b2__33_n_0),
        .I2(g0_b2__34_n_0),
        .O(\csum[7]_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \csum[7]_i_9 
       (.I0(\csum[7]_i_21__0_n_0 ),
        .I1(\csum[7]_i_22__0_n_0 ),
        .I2(\csum[3]_i_10__0_n_0 ),
        .I3(\csum[3]_i_11__0_n_0 ),
        .I4(\csum[3]_i_12__0_n_0 ),
        .O(\csum[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_90 
       (.I0(g0_b2__32_n_0),
        .I1(g0_b2__30_n_0),
        .I2(g0_b2__31_n_0),
        .O(\csum[7]_i_90_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_91 
       (.I0(g0_b2__19_n_0),
        .I1(g0_b2__17_n_0),
        .I2(g0_b2__18_n_0),
        .O(\csum_reg[7]_18 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_92 
       (.I0(\shreg_reg[77] ),
        .I1(g0_b2__80_n_0),
        .I2(g0_b2__82_n_0),
        .O(\csum_reg[7]_17 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_93 
       (.I0(g0_b2__26_n_0),
        .I1(g0_b2__24_n_0),
        .I2(g0_b2__25_n_0),
        .O(\csum[7]_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_94 
       (.I0(g0_b2__23_n_0),
        .I1(g0_b2__21_n_0),
        .I2(\shreg_reg[125]_3 ),
        .O(\csum[7]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \csum[7]_i_95 
       (.I0(g0_b1__40_n_0),
        .I1(g0_b1__39_n_0),
        .I2(g0_b1__41_n_0),
        .I3(g0_b1__43_n_0),
        .I4(g0_b1__42_n_0),
        .I5(g0_b1__44_n_0),
        .O(\csum[7]_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_96 
       (.I0(g0_b1__38_n_0),
        .I1(g0_b1__36_n_0),
        .I2(g0_b1__37_n_0),
        .O(\csum[7]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \csum[7]_i_98 
       (.I0(\shreg_reg[125]_2 ),
        .I1(g0_b1__21_n_0),
        .I2(g0_b1__23_n_0),
        .I3(g0_b1__25_n_0),
        .I4(g0_b1__24_n_0),
        .I5(g0_b1__26_n_0),
        .O(\csum[7]_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[7]_i_99 
       (.I0(g0_b1__29_n_0),
        .I1(g0_b1__27_n_0),
        .I2(g0_b1__28_n_0),
        .O(\csum[7]_i_99_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[3]_i_1_n_5 ),
        .Q(\csum_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[3]_i_1_n_4 ),
        .Q(\csum_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \csum_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\csum_reg[3]_i_1_n_0 ,\csum_reg[3]_i_1_n_1 ,\csum_reg[3]_i_1_n_2 ,\csum_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\csum[3]_i_2_n_0 ,\csum[3]_i_3_n_0 ,\csum[3]_i_4__0_n_0 ,\csum[3]_i_5_n_0 }),
        .O({\csum_reg[3]_i_1_n_4 ,\csum_reg[3]_i_1_n_5 ,\NLW_csum_reg[3]_i_1_O_UNCONNECTED [1:0]}),
        .S({\csum[3]_i_6_n_0 ,\csum[3]_i_7_n_0 ,\csum[3]_i_8_n_0 ,\csum[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[7]_i_1_n_7 ),
        .Q(\csum_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[7]_i_1_n_6 ),
        .Q(\csum_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[7]_i_1_n_5 ),
        .Q(\csum_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[7]_i_1_n_4 ),
        .Q(\csum_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 \csum_reg[7]_i_1 
       (.CI(\csum_reg[3]_i_1_n_0 ),
        .CO({\csum_reg[7]_i_1_n_0 ,\csum_reg[7]_i_1_n_1 ,\csum_reg[7]_i_1_n_2 ,\csum_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\csum[7]_i_2__0_n_0 ,\csum[7]_i_3_n_0 ,\csum[7]_i_4_n_0 }),
        .O({\csum_reg[7]_i_1_n_4 ,\csum_reg[7]_i_1_n_5 ,\csum_reg[7]_i_1_n_6 ,\csum_reg[7]_i_1_n_7 }),
        .S({\csum[7]_i_5_n_0 ,\csum[7]_i_6_n_0 ,\csum[7]_i_7__0_n_0 ,\csum[7]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\csum_reg[8]_i_1_n_3 ),
        .Q(\csum_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \csum_reg[8]_i_1 
       (.CI(\csum_reg[7]_i_1_n_0 ),
        .CO({\NLW_csum_reg[8]_i_1_CO_UNCONNECTED [3:1],\csum_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_csum_reg[8]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__13
       (.I0(\shreg_reg[125] [59]),
        .I1(\shreg_reg[125]_0 [0]),
        .I2(\shreg_reg[125] [60]),
        .I3(\shreg_reg[125]_0 [1]),
        .I4(\shreg_reg[125] [61]),
        .I5(\shreg_reg[125]_0 [2]),
        .O(g0_b0__13_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__14
       (.I0(\shreg_reg[125] [0]),
        .I1(sel[0]),
        .I2(\shreg_reg[125] [1]),
        .I3(sel[1]),
        .I4(\shreg_reg[125] [2]),
        .I5(sel[2]),
        .O(g0_b0__14_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__17
       (.I0(\shreg_reg[125] [38]),
        .I1(\shreg_reg[78] ),
        .I2(\shreg_reg[80] ),
        .I3(\shreg_reg[125] [39]),
        .I4(\shreg_reg[82] ),
        .I5(\shreg_reg[125] [40]),
        .O(g0_b0__17_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__18
       (.I0(\shreg_reg[125] [43]),
        .I1(\shreg_reg[88] ),
        .I2(\shreg_reg[84] ),
        .I3(\shreg_reg[125] [41]),
        .I4(\shreg_reg[86] ),
        .I5(\shreg_reg[125] [42]),
        .O(g0_b0__18_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__19
       (.I0(\shreg_reg[125] [46]),
        .I1(\shreg_reg[94] ),
        .I2(\shreg_reg[125] [45]),
        .I3(\shreg_reg[92] ),
        .I4(\shreg_reg[125] [44]),
        .I5(\shreg_reg[90] ),
        .O(g0_b0__19_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__21
       (.I0(\shreg_reg[125] [56]),
        .I1(\shreg_reg[119] [0]),
        .I2(\shreg_reg[125] [57]),
        .I3(\shreg_reg[119] [1]),
        .I4(\shreg_reg[125] [58]),
        .I5(\shreg_reg[119] [2]),
        .O(g0_b0__21_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__23
       (.I0(shreg[127]),
        .I1(shreg[126]),
        .I2(shreg[128]),
        .I3(shreg[129]),
        .I4(shreg[130]),
        .I5(shreg[131]),
        .O(g0_b0__23_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__24
       (.I0(shreg[137]),
        .I1(shreg[136]),
        .I2(shreg[132]),
        .I3(shreg[133]),
        .I4(shreg[134]),
        .I5(shreg[135]),
        .O(g0_b0__24_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__25
       (.I0(shreg[143]),
        .I1(shreg[142]),
        .I2(shreg[141]),
        .I3(shreg[140]),
        .I4(shreg[139]),
        .I5(shreg[138]),
        .O(g0_b0__25_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__26
       (.I0(shreg[149]),
        .I1(shreg[148]),
        .I2(shreg[147]),
        .I3(shreg[146]),
        .I4(shreg[145]),
        .I5(shreg[144]),
        .O(g0_b0__26_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__27
       (.I0(shreg[151]),
        .I1(shreg[150]),
        .I2(shreg[152]),
        .I3(shreg[153]),
        .I4(shreg[154]),
        .I5(shreg[155]),
        .O(g0_b0__27_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__28
       (.I0(shreg[156]),
        .I1(shreg[157]),
        .I2(shreg[158]),
        .I3(shreg[159]),
        .I4(shreg[160]),
        .I5(shreg[161]),
        .O(g0_b0__28_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__29
       (.I0(shreg[162]),
        .I1(shreg[163]),
        .I2(shreg[164]),
        .I3(shreg[165]),
        .I4(shreg[166]),
        .I5(shreg[167]),
        .O(g0_b0__29_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__30
       (.I0(shreg[173]),
        .I1(shreg[172]),
        .I2(shreg[171]),
        .I3(shreg[170]),
        .I4(shreg[169]),
        .I5(shreg[168]),
        .O(g0_b0__30_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__31
       (.I0(shreg[179]),
        .I1(shreg[178]),
        .I2(shreg[177]),
        .I3(shreg[176]),
        .I4(shreg[175]),
        .I5(shreg[174]),
        .O(g0_b0__31_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__32
       (.I0(shreg[183]),
        .I1(shreg[182]),
        .I2(shreg[181]),
        .I3(shreg[180]),
        .I4(shreg[184]),
        .I5(shreg[185]),
        .O(g0_b0__32_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__33
       (.I0(shreg[186]),
        .I1(shreg[187]),
        .I2(shreg[188]),
        .I3(shreg[189]),
        .I4(shreg[190]),
        .I5(shreg[191]),
        .O(g0_b0__33_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__34
       (.I0(shreg[192]),
        .I1(shreg[193]),
        .I2(shreg[194]),
        .I3(shreg[195]),
        .I4(shreg[196]),
        .I5(shreg[197]),
        .O(g0_b0__34_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__35
       (.I0(shreg[203]),
        .I1(shreg[202]),
        .I2(shreg[201]),
        .I3(shreg[200]),
        .I4(shreg[198]),
        .I5(shreg[199]),
        .O(g0_b0__35_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__36
       (.I0(shreg[209]),
        .I1(shreg[208]),
        .I2(shreg[207]),
        .I3(shreg[206]),
        .I4(shreg[205]),
        .I5(shreg[204]),
        .O(g0_b0__36_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__37
       (.I0(shreg[215]),
        .I1(shreg[214]),
        .I2(shreg[213]),
        .I3(shreg[212]),
        .I4(shreg[211]),
        .I5(shreg[210]),
        .O(g0_b0__37_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__38
       (.I0(shreg[216]),
        .I1(shreg[217]),
        .I2(shreg[218]),
        .I3(shreg[219]),
        .I4(shreg[220]),
        .I5(shreg[221]),
        .O(g0_b0__38_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__39
       (.I0(shreg[222]),
        .I1(shreg[223]),
        .I2(shreg[224]),
        .I3(shreg[225]),
        .I4(shreg[226]),
        .I5(shreg[227]),
        .O(g0_b0__39_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__40
       (.I0(shreg[233]),
        .I1(shreg[232]),
        .I2(shreg[228]),
        .I3(shreg[229]),
        .I4(shreg[230]),
        .I5(shreg[231]),
        .O(g0_b0__40_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__41
       (.I0(shreg[239]),
        .I1(shreg[238]),
        .I2(shreg[237]),
        .I3(shreg[236]),
        .I4(shreg[235]),
        .I5(shreg[234]),
        .O(g0_b0__41_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__42
       (.I0(shreg[245]),
        .I1(shreg[244]),
        .I2(shreg[243]),
        .I3(shreg[242]),
        .I4(shreg[241]),
        .I5(shreg[240]),
        .O(g0_b0__42_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__43
       (.I0(shreg[247]),
        .I1(shreg[246]),
        .I2(shreg[248]),
        .I3(shreg[249]),
        .I4(shreg[250]),
        .I5(shreg[251]),
        .O(g0_b0__43_n_0));
  LUT6 #(
    .INIT(64'hFFFF699669960000)) 
    g0_b0__44
       (.I0(shreg[252]),
        .I1(shreg[253]),
        .I2(shreg[254]),
        .I3(shreg[255]),
        .I4(g0_b0__42_n_0),
        .I5(g0_b0__43_n_0),
        .O(g0_b0__44_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__44__0
       (.I0(shreg[252]),
        .I1(shreg[253]),
        .I2(shreg[254]),
        .I3(shreg[255]),
        .I4(g0_b0__42_n_0),
        .I5(g0_b0__43_n_0),
        .O(g0_b0__44__0_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__62
       (.I0(\shreg_reg[125] [47]),
        .I1(\shreg_reg[97] ),
        .I2(\shreg_reg[125] [48]),
        .I3(\shreg_reg[99] ),
        .I4(\shreg_reg[125] [49]),
        .I5(\shreg_reg[101] ),
        .O(\csum_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__66
       (.I0(\shreg_reg[125] [29]),
        .I1(\shreg_reg[61] ),
        .I2(\shreg_reg[125] [30]),
        .I3(\shreg_reg[63] ),
        .I4(\shreg_reg[125] [31]),
        .I5(\shreg_reg[65] ),
        .O(g0_b0__66_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__68
       (.I0(\shreg_reg[125] [32]),
        .I1(\shreg_reg[67] ),
        .I2(\shreg_reg[125] [33]),
        .I3(\shreg_reg[69] ),
        .I4(\shreg_reg[125] [34]),
        .I5(\shreg_reg[71] ),
        .O(g0_b0__68_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__8
       (.I0(\shreg_reg[125] [38]),
        .I1(\shreg_reg[78] ),
        .I2(\shreg_reg[125] [40]),
        .I3(\shreg_reg[82] ),
        .I4(\shreg_reg[125] [39]),
        .I5(\shreg_reg[80] ),
        .O(g0_b0__8_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__82
       (.I0(shreg[41]),
        .I1(\shreg_reg[40] ),
        .I2(\shreg_reg[36] ),
        .I3(\shreg_reg[125] [18]),
        .I4(\shreg_reg[38] ),
        .I5(\shreg_reg[125] [19]),
        .O(\csum_reg[3]_3 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__9
       (.I0(\shreg_reg[125] [42]),
        .I1(\shreg_reg[86] ),
        .I2(\shreg_reg[125] [41]),
        .I3(\shreg_reg[84] ),
        .I4(\shreg_reg[88] ),
        .I5(\shreg_reg[125] [43]),
        .O(g0_b0__9_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__13
       (.I0(\shreg_reg[125] [59]),
        .I1(\shreg_reg[125]_0 [0]),
        .I2(\shreg_reg[125] [60]),
        .I3(\shreg_reg[125]_0 [1]),
        .I4(\shreg_reg[125] [61]),
        .I5(\shreg_reg[125]_0 [2]),
        .O(g0_b1__13_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__14
       (.I0(\shreg_reg[125] [0]),
        .I1(sel[0]),
        .I2(\shreg_reg[125] [1]),
        .I3(sel[1]),
        .I4(\shreg_reg[125] [2]),
        .I5(sel[2]),
        .O(g0_b1__14_n_0));
  LUT6 #(
    .INIT(64'h188E8EE78EE7E771)) 
    g0_b1__17
       (.I0(\shreg_reg[125] [38]),
        .I1(\shreg_reg[78] ),
        .I2(\shreg_reg[80] ),
        .I3(\shreg_reg[125] [39]),
        .I4(\shreg_reg[82] ),
        .I5(\shreg_reg[125] [40]),
        .O(g0_b1__17_n_0));
  LUT6 #(
    .INIT(64'h188E8EE78EE7E771)) 
    g0_b1__18
       (.I0(\shreg_reg[125] [43]),
        .I1(\shreg_reg[88] ),
        .I2(\shreg_reg[84] ),
        .I3(\shreg_reg[125] [41]),
        .I4(\shreg_reg[86] ),
        .I5(\shreg_reg[125] [42]),
        .O(g0_b1__18_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__19
       (.I0(\shreg_reg[125] [46]),
        .I1(\shreg_reg[94] ),
        .I2(\shreg_reg[125] [45]),
        .I3(\shreg_reg[92] ),
        .I4(\shreg_reg[125] [44]),
        .I5(\shreg_reg[90] ),
        .O(g0_b1__19_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__21
       (.I0(\shreg_reg[125] [56]),
        .I1(\shreg_reg[119] [0]),
        .I2(\shreg_reg[125] [57]),
        .I3(\shreg_reg[119] [1]),
        .I4(\shreg_reg[125] [58]),
        .I5(\shreg_reg[119] [2]),
        .O(g0_b1__21_n_0));
  LUT6 #(
    .INIT(64'h188E8EE78EE7E771)) 
    g0_b1__23
       (.I0(shreg[127]),
        .I1(shreg[126]),
        .I2(shreg[128]),
        .I3(shreg[129]),
        .I4(shreg[130]),
        .I5(shreg[131]),
        .O(g0_b1__23_n_0));
  LUT6 #(
    .INIT(64'h188E8EE78EE7E771)) 
    g0_b1__24
       (.I0(shreg[137]),
        .I1(shreg[136]),
        .I2(shreg[132]),
        .I3(shreg[133]),
        .I4(shreg[134]),
        .I5(shreg[135]),
        .O(g0_b1__24_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__25
       (.I0(shreg[143]),
        .I1(shreg[142]),
        .I2(shreg[141]),
        .I3(shreg[140]),
        .I4(shreg[139]),
        .I5(shreg[138]),
        .O(g0_b1__25_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__26
       (.I0(shreg[149]),
        .I1(shreg[148]),
        .I2(shreg[147]),
        .I3(shreg[146]),
        .I4(shreg[145]),
        .I5(shreg[144]),
        .O(g0_b1__26_n_0));
  LUT6 #(
    .INIT(64'h188E8EE78EE7E771)) 
    g0_b1__27
       (.I0(shreg[151]),
        .I1(shreg[150]),
        .I2(shreg[152]),
        .I3(shreg[153]),
        .I4(shreg[154]),
        .I5(shreg[155]),
        .O(g0_b1__27_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__28
       (.I0(shreg[156]),
        .I1(shreg[157]),
        .I2(shreg[158]),
        .I3(shreg[159]),
        .I4(shreg[160]),
        .I5(shreg[161]),
        .O(g0_b1__28_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__29
       (.I0(shreg[162]),
        .I1(shreg[163]),
        .I2(shreg[164]),
        .I3(shreg[165]),
        .I4(shreg[166]),
        .I5(shreg[167]),
        .O(g0_b1__29_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__30
       (.I0(shreg[173]),
        .I1(shreg[172]),
        .I2(shreg[171]),
        .I3(shreg[170]),
        .I4(shreg[169]),
        .I5(shreg[168]),
        .O(g0_b1__30_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__31
       (.I0(shreg[179]),
        .I1(shreg[178]),
        .I2(shreg[177]),
        .I3(shreg[176]),
        .I4(shreg[175]),
        .I5(shreg[174]),
        .O(g0_b1__31_n_0));
  LUT6 #(
    .INIT(64'hE8817EE87EE8177E)) 
    g0_b1__32
       (.I0(shreg[183]),
        .I1(shreg[182]),
        .I2(shreg[181]),
        .I3(shreg[180]),
        .I4(shreg[184]),
        .I5(shreg[185]),
        .O(g0_b1__32_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__33
       (.I0(shreg[186]),
        .I1(shreg[187]),
        .I2(shreg[188]),
        .I3(shreg[189]),
        .I4(shreg[190]),
        .I5(shreg[191]),
        .O(g0_b1__33_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__34
       (.I0(shreg[192]),
        .I1(shreg[193]),
        .I2(shreg[194]),
        .I3(shreg[195]),
        .I4(shreg[196]),
        .I5(shreg[197]),
        .O(g0_b1__34_n_0));
  LUT6 #(
    .INIT(64'hE8817EE87EE8177E)) 
    g0_b1__35
       (.I0(shreg[203]),
        .I1(shreg[202]),
        .I2(shreg[201]),
        .I3(shreg[200]),
        .I4(shreg[198]),
        .I5(shreg[199]),
        .O(g0_b1__35_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__36
       (.I0(shreg[209]),
        .I1(shreg[208]),
        .I2(shreg[207]),
        .I3(shreg[206]),
        .I4(shreg[205]),
        .I5(shreg[204]),
        .O(g0_b1__36_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__37
       (.I0(shreg[215]),
        .I1(shreg[214]),
        .I2(shreg[213]),
        .I3(shreg[212]),
        .I4(shreg[211]),
        .I5(shreg[210]),
        .O(g0_b1__37_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__38
       (.I0(shreg[216]),
        .I1(shreg[217]),
        .I2(shreg[218]),
        .I3(shreg[219]),
        .I4(shreg[220]),
        .I5(shreg[221]),
        .O(g0_b1__38_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__39
       (.I0(shreg[222]),
        .I1(shreg[223]),
        .I2(shreg[224]),
        .I3(shreg[225]),
        .I4(shreg[226]),
        .I5(shreg[227]),
        .O(g0_b1__39_n_0));
  LUT6 #(
    .INIT(64'h188E8EE78EE7E771)) 
    g0_b1__40
       (.I0(shreg[233]),
        .I1(shreg[232]),
        .I2(shreg[228]),
        .I3(shreg[229]),
        .I4(shreg[230]),
        .I5(shreg[231]),
        .O(g0_b1__40_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__41
       (.I0(shreg[239]),
        .I1(shreg[238]),
        .I2(shreg[237]),
        .I3(shreg[236]),
        .I4(shreg[235]),
        .I5(shreg[234]),
        .O(g0_b1__41_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__42
       (.I0(shreg[245]),
        .I1(shreg[244]),
        .I2(shreg[243]),
        .I3(shreg[242]),
        .I4(shreg[241]),
        .I5(shreg[240]),
        .O(g0_b1__42_n_0));
  LUT6 #(
    .INIT(64'h188E8EE78EE7E771)) 
    g0_b1__43
       (.I0(shreg[247]),
        .I1(shreg[246]),
        .I2(shreg[248]),
        .I3(shreg[249]),
        .I4(shreg[250]),
        .I5(shreg[251]),
        .O(g0_b1__43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h7EE8)) 
    g0_b1__44
       (.I0(shreg[252]),
        .I1(shreg[253]),
        .I2(shreg[254]),
        .I3(shreg[255]),
        .O(g0_b1__44_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__62
       (.I0(\shreg_reg[125] [47]),
        .I1(\shreg_reg[97] ),
        .I2(\shreg_reg[125] [48]),
        .I3(\shreg_reg[99] ),
        .I4(\shreg_reg[125] [49]),
        .I5(\shreg_reg[101] ),
        .O(\csum_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h188E8EE78EE7E771)) 
    g0_b1__70
       (.I0(shreg[41]),
        .I1(\shreg_reg[40] ),
        .I2(\shreg_reg[36] ),
        .I3(\shreg_reg[125] [18]),
        .I4(\shreg_reg[38] ),
        .I5(\shreg_reg[125] [19]),
        .O(\csum_reg[7]_2 ));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__74
       (.I0(\shreg_reg[125] [29]),
        .I1(\shreg_reg[61] ),
        .I2(\shreg_reg[125] [30]),
        .I3(\shreg_reg[63] ),
        .I4(\shreg_reg[125] [31]),
        .I5(\shreg_reg[65] ),
        .O(g0_b1__74_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__76
       (.I0(\shreg_reg[125] [32]),
        .I1(\shreg_reg[67] ),
        .I2(\shreg_reg[125] [33]),
        .I3(\shreg_reg[69] ),
        .I4(\shreg_reg[125] [34]),
        .I5(\shreg_reg[71] ),
        .O(g0_b1__76_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__8
       (.I0(\shreg_reg[125] [38]),
        .I1(\shreg_reg[78] ),
        .I2(\shreg_reg[125] [40]),
        .I3(\shreg_reg[82] ),
        .I4(\shreg_reg[125] [39]),
        .I5(\shreg_reg[80] ),
        .O(g0_b1__8_n_0));
  LUT6 #(
    .INIT(64'hE8817EE87EE8177E)) 
    g0_b1__9
       (.I0(\shreg_reg[125] [42]),
        .I1(\shreg_reg[86] ),
        .I2(\shreg_reg[125] [41]),
        .I3(\shreg_reg[84] ),
        .I4(\shreg_reg[88] ),
        .I5(\shreg_reg[125] [43]),
        .O(g0_b1__9_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__13
       (.I0(\shreg_reg[125] [59]),
        .I1(\shreg_reg[125]_0 [0]),
        .I2(\shreg_reg[125] [60]),
        .I3(\shreg_reg[125]_0 [1]),
        .I4(\shreg_reg[125] [61]),
        .I5(\shreg_reg[125]_0 [2]),
        .O(g0_b2__13_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__14
       (.I0(\shreg_reg[125] [0]),
        .I1(sel[0]),
        .I2(\shreg_reg[125] [1]),
        .I3(sel[1]),
        .I4(\shreg_reg[125] [2]),
        .I5(sel[2]),
        .O(g0_b2__14_n_0));
  LUT6 #(
    .INIT(64'hF771711071101000)) 
    g0_b2__17
       (.I0(\shreg_reg[125] [38]),
        .I1(\shreg_reg[78] ),
        .I2(\shreg_reg[80] ),
        .I3(\shreg_reg[125] [39]),
        .I4(\shreg_reg[82] ),
        .I5(\shreg_reg[125] [40]),
        .O(g0_b2__17_n_0));
  LUT6 #(
    .INIT(64'hF771711071101000)) 
    g0_b2__18
       (.I0(\shreg_reg[125] [43]),
        .I1(\shreg_reg[88] ),
        .I2(\shreg_reg[84] ),
        .I3(\shreg_reg[125] [41]),
        .I4(\shreg_reg[86] ),
        .I5(\shreg_reg[125] [42]),
        .O(g0_b2__18_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__19
       (.I0(\shreg_reg[125] [46]),
        .I1(\shreg_reg[94] ),
        .I2(\shreg_reg[125] [45]),
        .I3(\shreg_reg[92] ),
        .I4(\shreg_reg[125] [44]),
        .I5(\shreg_reg[90] ),
        .O(g0_b2__19_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__21
       (.I0(\shreg_reg[125] [56]),
        .I1(\shreg_reg[119] [0]),
        .I2(\shreg_reg[125] [57]),
        .I3(\shreg_reg[119] [1]),
        .I4(\shreg_reg[125] [58]),
        .I5(\shreg_reg[119] [2]),
        .O(g0_b2__21_n_0));
  LUT6 #(
    .INIT(64'hF771711071101000)) 
    g0_b2__23
       (.I0(shreg[127]),
        .I1(shreg[126]),
        .I2(shreg[128]),
        .I3(shreg[129]),
        .I4(shreg[130]),
        .I5(shreg[131]),
        .O(g0_b2__23_n_0));
  LUT6 #(
    .INIT(64'hF771711071101000)) 
    g0_b2__24
       (.I0(shreg[137]),
        .I1(shreg[136]),
        .I2(shreg[132]),
        .I3(shreg[133]),
        .I4(shreg[134]),
        .I5(shreg[135]),
        .O(g0_b2__24_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__25
       (.I0(shreg[143]),
        .I1(shreg[142]),
        .I2(shreg[141]),
        .I3(shreg[140]),
        .I4(shreg[139]),
        .I5(shreg[138]),
        .O(g0_b2__25_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__26
       (.I0(shreg[149]),
        .I1(shreg[148]),
        .I2(shreg[147]),
        .I3(shreg[146]),
        .I4(shreg[145]),
        .I5(shreg[144]),
        .O(g0_b2__26_n_0));
  LUT6 #(
    .INIT(64'hF771711071101000)) 
    g0_b2__27
       (.I0(shreg[151]),
        .I1(shreg[150]),
        .I2(shreg[152]),
        .I3(shreg[153]),
        .I4(shreg[154]),
        .I5(shreg[155]),
        .O(g0_b2__27_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__28
       (.I0(shreg[156]),
        .I1(shreg[157]),
        .I2(shreg[158]),
        .I3(shreg[159]),
        .I4(shreg[160]),
        .I5(shreg[161]),
        .O(g0_b2__28_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__29
       (.I0(shreg[162]),
        .I1(shreg[163]),
        .I2(shreg[164]),
        .I3(shreg[165]),
        .I4(shreg[166]),
        .I5(shreg[167]),
        .O(g0_b2__29_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__30
       (.I0(shreg[173]),
        .I1(shreg[172]),
        .I2(shreg[171]),
        .I3(shreg[170]),
        .I4(shreg[169]),
        .I5(shreg[168]),
        .O(g0_b2__30_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__31
       (.I0(shreg[179]),
        .I1(shreg[178]),
        .I2(shreg[177]),
        .I3(shreg[176]),
        .I4(shreg[175]),
        .I5(shreg[174]),
        .O(g0_b2__31_n_0));
  LUT6 #(
    .INIT(64'h177F011701170001)) 
    g0_b2__32
       (.I0(shreg[183]),
        .I1(shreg[182]),
        .I2(shreg[181]),
        .I3(shreg[180]),
        .I4(shreg[184]),
        .I5(shreg[185]),
        .O(g0_b2__32_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__33
       (.I0(shreg[186]),
        .I1(shreg[187]),
        .I2(shreg[188]),
        .I3(shreg[189]),
        .I4(shreg[190]),
        .I5(shreg[191]),
        .O(g0_b2__33_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__34
       (.I0(shreg[192]),
        .I1(shreg[193]),
        .I2(shreg[194]),
        .I3(shreg[195]),
        .I4(shreg[196]),
        .I5(shreg[197]),
        .O(g0_b2__34_n_0));
  LUT6 #(
    .INIT(64'h177F011701170001)) 
    g0_b2__35
       (.I0(shreg[203]),
        .I1(shreg[202]),
        .I2(shreg[201]),
        .I3(shreg[200]),
        .I4(shreg[198]),
        .I5(shreg[199]),
        .O(g0_b2__35_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__36
       (.I0(shreg[209]),
        .I1(shreg[208]),
        .I2(shreg[207]),
        .I3(shreg[206]),
        .I4(shreg[205]),
        .I5(shreg[204]),
        .O(g0_b2__36_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__37
       (.I0(shreg[215]),
        .I1(shreg[214]),
        .I2(shreg[213]),
        .I3(shreg[212]),
        .I4(shreg[211]),
        .I5(shreg[210]),
        .O(g0_b2__37_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__38
       (.I0(shreg[216]),
        .I1(shreg[217]),
        .I2(shreg[218]),
        .I3(shreg[219]),
        .I4(shreg[220]),
        .I5(shreg[221]),
        .O(g0_b2__38_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__39
       (.I0(shreg[222]),
        .I1(shreg[223]),
        .I2(shreg[224]),
        .I3(shreg[225]),
        .I4(shreg[226]),
        .I5(shreg[227]),
        .O(g0_b2__39_n_0));
  LUT6 #(
    .INIT(64'hF771711071101000)) 
    g0_b2__40
       (.I0(shreg[233]),
        .I1(shreg[232]),
        .I2(shreg[228]),
        .I3(shreg[229]),
        .I4(shreg[230]),
        .I5(shreg[231]),
        .O(g0_b2__40_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__41
       (.I0(shreg[239]),
        .I1(shreg[238]),
        .I2(shreg[237]),
        .I3(shreg[236]),
        .I4(shreg[235]),
        .I5(shreg[234]),
        .O(g0_b2__41_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__42
       (.I0(shreg[245]),
        .I1(shreg[244]),
        .I2(shreg[243]),
        .I3(shreg[242]),
        .I4(shreg[241]),
        .I5(shreg[240]),
        .O(g0_b2__42_n_0));
  LUT6 #(
    .INIT(64'hF771711071101000)) 
    g0_b2__43
       (.I0(shreg[247]),
        .I1(shreg[246]),
        .I2(shreg[248]),
        .I3(shreg[249]),
        .I4(shreg[250]),
        .I5(shreg[251]),
        .O(g0_b2__43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    g0_b2__44
       (.I0(shreg[252]),
        .I1(shreg[253]),
        .I2(shreg[254]),
        .I3(shreg[255]),
        .O(g0_b2__44_n_0));
  LUT6 #(
    .INIT(64'hF771711071101000)) 
    g0_b2__72
       (.I0(shreg[41]),
        .I1(\shreg_reg[40] ),
        .I2(\shreg_reg[36] ),
        .I3(\shreg_reg[125] [18]),
        .I4(\shreg_reg[38] ),
        .I5(\shreg_reg[125] [19]),
        .O(\csum_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__76
       (.I0(\shreg_reg[125] [47]),
        .I1(\shreg_reg[97] ),
        .I2(\shreg_reg[125] [48]),
        .I3(\shreg_reg[99] ),
        .I4(\shreg_reg[125] [49]),
        .I5(\shreg_reg[101] ),
        .O(\csum_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__8
       (.I0(\shreg_reg[125] [38]),
        .I1(\shreg_reg[78] ),
        .I2(\shreg_reg[125] [40]),
        .I3(\shreg_reg[82] ),
        .I4(\shreg_reg[125] [39]),
        .I5(\shreg_reg[80] ),
        .O(g0_b2__8_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__80
       (.I0(\shreg_reg[125] [29]),
        .I1(\shreg_reg[61] ),
        .I2(\shreg_reg[125] [30]),
        .I3(\shreg_reg[63] ),
        .I4(\shreg_reg[125] [31]),
        .I5(\shreg_reg[65] ),
        .O(g0_b2__80_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__82
       (.I0(\shreg_reg[125] [32]),
        .I1(\shreg_reg[67] ),
        .I2(\shreg_reg[125] [33]),
        .I3(\shreg_reg[69] ),
        .I4(\shreg_reg[125] [34]),
        .I5(\shreg_reg[71] ),
        .O(g0_b2__82_n_0));
  LUT6 #(
    .INIT(64'h177F011701170001)) 
    g0_b2__9
       (.I0(\shreg_reg[125] [42]),
        .I1(\shreg_reg[86] ),
        .I2(\shreg_reg[125] [41]),
        .I3(\shreg_reg[84] ),
        .I4(\shreg_reg[88] ),
        .I5(\shreg_reg[125] [43]),
        .O(g0_b2__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(sync_out),
        .Q(\shreg_reg[125] [0]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[100] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[99] ),
        .Q(\shreg_reg[125] [49]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[102] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[101] ),
        .Q(\shreg_reg[125] [50]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[104] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[103] ),
        .Q(\shreg_reg[125] [51]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[106] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[105] ),
        .Q(\shreg_reg[125] [52]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[108] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[107] ),
        .Q(\shreg_reg[125] [53]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[9] ),
        .Q(\shreg_reg[125] [5]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[110] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[109] ),
        .Q(\shreg_reg[125] [54]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[112] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[111] ),
        .Q(\shreg_reg[125] [55]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[114] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[113] ),
        .Q(\shreg_reg[125] [56]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[116] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[119] [0]),
        .Q(\shreg_reg[125] [57]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[118] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[119] [1]),
        .Q(\shreg_reg[125] [58]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[120] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[119] [2]),
        .Q(\shreg_reg[125] [59]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[122] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[125]_0 [0]),
        .Q(\shreg_reg[125] [60]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[124] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[125]_0 [1]),
        .Q(\shreg_reg[125] [61]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[126] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[125]_0 [2]),
        .Q(shreg[126]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[127] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[126]),
        .Q(shreg[127]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[128] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[127]),
        .Q(shreg[128]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[129] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[128]),
        .Q(shreg[129]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[11] ),
        .Q(\shreg_reg[125] [6]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[130] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[129]),
        .Q(shreg[130]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[131] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[130]),
        .Q(shreg[131]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[132] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[131]),
        .Q(shreg[132]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[133] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[132]),
        .Q(shreg[133]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[134] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[133]),
        .Q(shreg[134]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[135] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[134]),
        .Q(shreg[135]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[136] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[135]),
        .Q(shreg[136]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[137] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[136]),
        .Q(shreg[137]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[138] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[137]),
        .Q(shreg[138]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[139] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[138]),
        .Q(shreg[139]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[140] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[139]),
        .Q(shreg[140]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[141] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[140]),
        .Q(shreg[141]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[142] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[141]),
        .Q(shreg[142]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[143] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[142]),
        .Q(shreg[143]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[144] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[143]),
        .Q(shreg[144]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[145] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[144]),
        .Q(shreg[145]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[146] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[145]),
        .Q(shreg[146]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[147] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[146]),
        .Q(shreg[147]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[148] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[147]),
        .Q(shreg[148]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[149] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[148]),
        .Q(shreg[149]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[13] ),
        .Q(\shreg_reg[125] [7]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[150] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[149]),
        .Q(shreg[150]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[151] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[150]),
        .Q(shreg[151]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[152] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[151]),
        .Q(shreg[152]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[153] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[152]),
        .Q(shreg[153]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[154] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[153]),
        .Q(shreg[154]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[155] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[154]),
        .Q(shreg[155]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[156] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[155]),
        .Q(shreg[156]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[157] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[156]),
        .Q(shreg[157]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[158] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[157]),
        .Q(shreg[158]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[159] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[158]),
        .Q(shreg[159]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[160] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[159]),
        .Q(shreg[160]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[161] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[160]),
        .Q(shreg[161]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[162] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[161]),
        .Q(shreg[162]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[163] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[162]),
        .Q(shreg[163]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[164] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[163]),
        .Q(shreg[164]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[165] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[164]),
        .Q(shreg[165]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[166] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[165]),
        .Q(shreg[166]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[167] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[166]),
        .Q(shreg[167]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[168] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[167]),
        .Q(shreg[168]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[169] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[168]),
        .Q(shreg[169]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[15] ),
        .Q(\shreg_reg[125] [8]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[170] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[169]),
        .Q(shreg[170]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[171] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[170]),
        .Q(shreg[171]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[172] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[171]),
        .Q(shreg[172]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[173] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[172]),
        .Q(shreg[173]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[174] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[173]),
        .Q(shreg[174]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[175] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[174]),
        .Q(shreg[175]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[176] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[175]),
        .Q(shreg[176]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[177] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[176]),
        .Q(shreg[177]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[178] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[177]),
        .Q(shreg[178]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[179] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[178]),
        .Q(shreg[179]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[180] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[179]),
        .Q(shreg[180]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[181] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[180]),
        .Q(shreg[181]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[182] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[181]),
        .Q(shreg[182]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[183] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[182]),
        .Q(shreg[183]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[184] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[183]),
        .Q(shreg[184]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[185] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[184]),
        .Q(shreg[185]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[186] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[185]),
        .Q(shreg[186]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[187] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[186]),
        .Q(shreg[187]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[188] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[187]),
        .Q(shreg[188]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[189] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[188]),
        .Q(shreg[189]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[17] ),
        .Q(\shreg_reg[125] [9]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[190] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[189]),
        .Q(shreg[190]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[191] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[190]),
        .Q(shreg[191]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[192] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[191]),
        .Q(shreg[192]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[193] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[192]),
        .Q(shreg[193]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[194] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[193]),
        .Q(shreg[194]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[195] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[194]),
        .Q(shreg[195]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[196] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[195]),
        .Q(shreg[196]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[197] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[196]),
        .Q(shreg[197]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[198] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[197]),
        .Q(shreg[198]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[199] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[198]),
        .Q(shreg[199]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[200] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[199]),
        .Q(shreg[200]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[201] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[200]),
        .Q(shreg[201]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[202] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[201]),
        .Q(shreg[202]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[203] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[202]),
        .Q(shreg[203]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[204] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[203]),
        .Q(shreg[204]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[205] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[204]),
        .Q(shreg[205]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[206] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[205]),
        .Q(shreg[206]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[207] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[206]),
        .Q(shreg[207]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[208] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[207]),
        .Q(shreg[208]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[209] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[208]),
        .Q(shreg[209]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[19] ),
        .Q(\shreg_reg[125] [10]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[210] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[209]),
        .Q(shreg[210]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[211] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[210]),
        .Q(shreg[211]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[212] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[211]),
        .Q(shreg[212]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[213] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[212]),
        .Q(shreg[213]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[214] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[213]),
        .Q(shreg[214]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[215] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[214]),
        .Q(shreg[215]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[216] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[215]),
        .Q(shreg[216]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[217] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[216]),
        .Q(shreg[217]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[218] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[217]),
        .Q(shreg[218]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[219] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[218]),
        .Q(shreg[219]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[220] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[219]),
        .Q(shreg[220]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[221] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[220]),
        .Q(shreg[221]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[222] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[221]),
        .Q(shreg[222]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[223] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[222]),
        .Q(shreg[223]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[224] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[223]),
        .Q(shreg[224]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[225] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[224]),
        .Q(shreg[225]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[226] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[225]),
        .Q(shreg[226]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[227] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[226]),
        .Q(shreg[227]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[228] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[227]),
        .Q(shreg[228]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[229] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[228]),
        .Q(shreg[229]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[21] ),
        .Q(\shreg_reg[125] [11]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[230] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[229]),
        .Q(shreg[230]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[231] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[230]),
        .Q(shreg[231]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[232] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[231]),
        .Q(shreg[232]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[233] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[232]),
        .Q(shreg[233]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[234] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[233]),
        .Q(shreg[234]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[235] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[234]),
        .Q(shreg[235]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[236] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[235]),
        .Q(shreg[236]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[237] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[236]),
        .Q(shreg[237]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[238] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[237]),
        .Q(shreg[238]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[239] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[238]),
        .Q(shreg[239]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[240] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[239]),
        .Q(shreg[240]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[241] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[240]),
        .Q(shreg[241]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[242] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[241]),
        .Q(shreg[242]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[243] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[242]),
        .Q(shreg[243]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[244] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[243]),
        .Q(shreg[244]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[245] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[244]),
        .Q(shreg[245]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[246] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[245]),
        .Q(shreg[246]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[247] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[246]),
        .Q(shreg[247]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[248] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[247]),
        .Q(shreg[248]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[249] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[248]),
        .Q(shreg[249]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[250] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[249]),
        .Q(shreg[250]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[251] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[250]),
        .Q(shreg[251]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[252] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[251]),
        .Q(shreg[252]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[253] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[252]),
        .Q(shreg[253]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[254] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[253]),
        .Q(shreg[254]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[255] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[254]),
        .Q(shreg[255]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[24] ),
        .Q(\shreg_reg[125] [12]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[27] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[26] ),
        .Q(\shreg_reg[125] [13]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[29] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[28] ),
        .Q(\shreg_reg[125] [14]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(sel[0]),
        .Q(\shreg_reg[125] [1]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[31] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[30] ),
        .Q(\shreg_reg[125] [15]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[33] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[32] ),
        .Q(\shreg_reg[125] [16]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[35] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[34] ),
        .Q(\shreg_reg[125] [17]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[37] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[36] ),
        .Q(\shreg_reg[125] [18]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[39] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[38] ),
        .Q(\shreg_reg[125] [19]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[41] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[40] ),
        .Q(shreg[41]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[42] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(shreg[41]),
        .Q(\shreg_reg[125] [20]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[44] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[43] ),
        .Q(\shreg_reg[125] [21]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[46] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[45] ),
        .Q(\shreg_reg[125] [22]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[48] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[47] ),
        .Q(\shreg_reg[125] [23]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(sel[1]),
        .Q(\shreg_reg[125] [2]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[50] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[49] ),
        .Q(\shreg_reg[125] [24]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[52] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[51] ),
        .Q(\shreg_reg[125] [25]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[54] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[53] ),
        .Q(\shreg_reg[125] [26]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[56] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[55] ),
        .Q(\shreg_reg[125] [27]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[58] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[57] ),
        .Q(\shreg_reg[125] [28]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[60] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[59] ),
        .Q(\shreg_reg[125] [29]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[62] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[61] ),
        .Q(\shreg_reg[125] [30]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[64] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[63] ),
        .Q(\shreg_reg[125] [31]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[66] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[65] ),
        .Q(\shreg_reg[125] [32]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[68] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[67] ),
        .Q(\shreg_reg[125] [33]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(sel[2]),
        .Q(\shreg_reg[125] [3]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[70] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[69] ),
        .Q(\shreg_reg[125] [34]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[72] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[71] ),
        .Q(\shreg_reg[125] [35]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[74] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[73] ),
        .Q(\shreg_reg[125] [36]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[76] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[75] ),
        .Q(\shreg_reg[125] [37]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[79] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[78] ),
        .Q(\shreg_reg[125] [38]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[81] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[80] ),
        .Q(\shreg_reg[125] [39]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[83] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[82] ),
        .Q(\shreg_reg[125] [40]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[85] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[84] ),
        .Q(\shreg_reg[125] [41]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[87] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[86] ),
        .Q(\shreg_reg[125] [42]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[89] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[88] ),
        .Q(\shreg_reg[125] [43]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[7] ),
        .Q(\shreg_reg[125] [4]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[91] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[90] ),
        .Q(\shreg_reg[125] [44]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[93] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[92] ),
        .Q(\shreg_reg[125] [45]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[95] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[94] ),
        .Q(\shreg_reg[125] [46]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[96] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[125] [46]),
        .Q(\shreg_reg[125] [47]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[98] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(\shreg_reg[97] ),
        .Q(\shreg_reg[125] [48]),
        .R(BTNC_IBUF));
endmodule

(* ORIG_REF_NAME = "correlator" *) 
module correlator__parameterized1
   (\shreg_reg[2] ,
    \shreg_reg[4] ,
    \shreg_reg[6]_0 ,
    sel,
    \shreg_reg[14] ,
    \shreg_reg[16] ,
    \shreg_reg[18] ,
    \shreg_reg[20] ,
    \shreg_reg[22] ,
    \shreg_reg[24]_0 ,
    \shreg_reg[29] ,
    \shreg_reg[32] ,
    \shreg_reg[34] ,
    \shreg_reg[36] ,
    \shreg_reg[38] ,
    \shreg_reg[40] ,
    \shreg_reg[42]_0 ,
    \shreg_reg[43] ,
    \shreg_reg[45] ,
    \shreg_reg[47] ,
    \shreg_reg[50] ,
    \shreg_reg[52] ,
    \shreg_reg[54] ,
    \shreg_reg[56] ,
    \shreg_reg[58] ,
    \shreg_reg[60] ,
    \shreg_reg[62] ,
    \csum_reg[5]_0 ,
    \csum_reg[4]_0 ,
    \csum_reg[4]_1 ,
    \csum_reg[2]_0 ,
    DI,
    Q,
    D,
    \FSM_onehot_state_reg[2] ,
    S,
    \FSM_sequential_state_reg[3] ,
    \csum_reg[1]_0 ,
    \csum_reg[1]_1 ,
    \csum_reg[1]_2 ,
    \csum_reg[2]_1 ,
    \csum_reg[2]_2 ,
    \csum_reg[4]_2 ,
    \csum_reg[4]_3 ,
    BTNC_IBUF,
    E,
    \shreg_reg[0] ,
    CLK100MHZ_IBUF_BUFG,
    \shreg_reg[2]_0 ,
    \shreg_reg[4]_0 ,
    \shreg_reg[11] ,
    \shreg_reg[12] ,
    \shreg_reg[14]_0 ,
    \shreg_reg[16]_0 ,
    \shreg_reg[18]_0 ,
    \shreg_reg[20]_0 ,
    \shreg_reg[22]_0 ,
    \shreg_reg[29]_0 ,
    \shreg_reg[30] ,
    \shreg_reg[32]_0 ,
    \shreg_reg[34]_0 ,
    \shreg_reg[36]_0 ,
    \shreg_reg[38]_0 ,
    \shreg_reg[40]_0 ,
    \shreg_reg[43]_0 ,
    \shreg_reg[45]_0 ,
    \shreg_reg[48] ,
    \shreg_reg[50]_0 ,
    \shreg_reg[52]_0 ,
    \shreg_reg[54]_0 ,
    \shreg_reg[56]_0 ,
    \shreg_reg[58]_0 ,
    \shreg_reg[60]_0 ,
    \shreg_reg[62]_0 ,
    \shreg_reg[47]_0 ,
    \max_corr_reg[6] ,
    \FSM_onehot_state_reg[0] ,
    out,
    \FSM_onehot_state_reg[2]_0 ,
    \min_corr_reg[6] ,
    \shreg_reg[60]_1 ,
    \shreg_reg[11]_0 ,
    \shreg_reg[60]_2 ,
    \shreg_reg[54]_1 ,
    \shreg_reg[29]_1 ,
    \shreg_reg[36]_1 ,
    \shreg_reg[11]_1 ,
    \shreg_reg[42]_1 ,
    \shreg_reg[60]_3 ,
    \shreg_reg[54]_2 ,
    \shreg_reg[29]_2 ,
    \shreg_reg[36]_2 ,
    \shreg_reg[11]_2 ,
    \shreg_reg[42]_2 ,
    \shreg_reg[54]_3 ,
    \shreg_reg[60]_4 ,
    \shreg_reg[29]_3 ,
    \shreg_reg[36]_3 ,
    \shreg_reg[42]_3 ,
    \shreg_reg[48]_0 ,
    \shreg_reg[54]_4 ,
    \shreg_reg[60]_5 );
  output \shreg_reg[2] ;
  output \shreg_reg[4] ;
  output \shreg_reg[6]_0 ;
  output [2:0]sel;
  output \shreg_reg[14] ;
  output \shreg_reg[16] ;
  output \shreg_reg[18] ;
  output \shreg_reg[20] ;
  output \shreg_reg[22] ;
  output \shreg_reg[24]_0 ;
  output [2:0]\shreg_reg[29] ;
  output \shreg_reg[32] ;
  output \shreg_reg[34] ;
  output \shreg_reg[36] ;
  output \shreg_reg[38] ;
  output \shreg_reg[40] ;
  output \shreg_reg[42]_0 ;
  output \shreg_reg[43] ;
  output \shreg_reg[45] ;
  output \shreg_reg[47] ;
  output \shreg_reg[50] ;
  output \shreg_reg[52] ;
  output \shreg_reg[54] ;
  output \shreg_reg[56] ;
  output \shreg_reg[58] ;
  output \shreg_reg[60] ;
  output \shreg_reg[62] ;
  output \csum_reg[5]_0 ;
  output \csum_reg[4]_0 ;
  output \csum_reg[4]_1 ;
  output \csum_reg[2]_0 ;
  output [3:0]DI;
  output [6:0]Q;
  output [1:0]D;
  output \FSM_onehot_state_reg[2] ;
  output [2:0]S;
  output [0:0]\FSM_sequential_state_reg[3] ;
  output \csum_reg[1]_0 ;
  output \csum_reg[1]_1 ;
  output \csum_reg[1]_2 ;
  output \csum_reg[2]_1 ;
  output \csum_reg[2]_2 ;
  output [2:0]\csum_reg[4]_2 ;
  output [2:0]\csum_reg[4]_3 ;
  input BTNC_IBUF;
  input [0:0]E;
  input \shreg_reg[0] ;
  input CLK100MHZ_IBUF_BUFG;
  input \shreg_reg[2]_0 ;
  input \shreg_reg[4]_0 ;
  input [2:0]\shreg_reg[11] ;
  input \shreg_reg[12] ;
  input \shreg_reg[14]_0 ;
  input \shreg_reg[16]_0 ;
  input \shreg_reg[18]_0 ;
  input \shreg_reg[20]_0 ;
  input \shreg_reg[22]_0 ;
  input [2:0]\shreg_reg[29]_0 ;
  input \shreg_reg[30] ;
  input \shreg_reg[32]_0 ;
  input \shreg_reg[34]_0 ;
  input \shreg_reg[36]_0 ;
  input \shreg_reg[38]_0 ;
  input \shreg_reg[40]_0 ;
  input \shreg_reg[43]_0 ;
  input \shreg_reg[45]_0 ;
  input \shreg_reg[48] ;
  input \shreg_reg[50]_0 ;
  input \shreg_reg[52]_0 ;
  input \shreg_reg[54]_0 ;
  input \shreg_reg[56]_0 ;
  input \shreg_reg[58]_0 ;
  input \shreg_reg[60]_0 ;
  input \shreg_reg[62]_0 ;
  input \shreg_reg[47]_0 ;
  input [6:0]\max_corr_reg[6] ;
  input \FSM_onehot_state_reg[0] ;
  input [0:0]out;
  input \FSM_onehot_state_reg[2]_0 ;
  input [0:0]\min_corr_reg[6] ;
  input \shreg_reg[60]_1 ;
  input \shreg_reg[11]_0 ;
  input \shreg_reg[60]_2 ;
  input \shreg_reg[54]_1 ;
  input \shreg_reg[29]_1 ;
  input \shreg_reg[36]_1 ;
  input \shreg_reg[11]_1 ;
  input \shreg_reg[42]_1 ;
  input \shreg_reg[60]_3 ;
  input \shreg_reg[54]_2 ;
  input \shreg_reg[29]_2 ;
  input \shreg_reg[36]_2 ;
  input \shreg_reg[11]_2 ;
  input \shreg_reg[42]_2 ;
  input \shreg_reg[54]_3 ;
  input \shreg_reg[60]_4 ;
  input \shreg_reg[29]_3 ;
  input \shreg_reg[36]_3 ;
  input \shreg_reg[42]_3 ;
  input \shreg_reg[48]_0 ;
  input \shreg_reg[54]_4 ;
  input [0:0]\shreg_reg[60]_5 ;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [1:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_state_reg[3] ;
  wire [6:0]Q;
  wire [2:0]S;
  wire \csum[0]_i_1_n_0 ;
  wire \csum[0]_i_2_n_0 ;
  wire \csum[1]_i_1_n_0 ;
  wire \csum[2]_i_10_n_0 ;
  wire \csum[2]_i_8_n_0 ;
  wire \csum[2]_i_9_n_0 ;
  wire \csum[3]_i_1_n_0 ;
  wire \csum[4]_i_10_n_0 ;
  wire \csum[4]_i_11_n_0 ;
  wire \csum[4]_i_1_n_0 ;
  wire \csum[4]_i_2_n_0 ;
  wire \csum[4]_i_3_n_0 ;
  wire \csum[4]_i_4_n_0 ;
  wire \csum[4]_i_5_n_0 ;
  wire \csum[4]_i_6_n_0 ;
  wire \csum[4]_i_7_n_0 ;
  wire \csum[4]_i_8_n_0 ;
  wire \csum[4]_i_9_n_0 ;
  wire \csum[5]_i_1_n_0 ;
  wire \csum[6]_i_10_n_0 ;
  wire \csum[6]_i_11_n_0 ;
  wire \csum[6]_i_12_n_0 ;
  wire \csum[6]_i_15_n_0 ;
  wire \csum[6]_i_17_n_0 ;
  wire \csum[6]_i_18_n_0 ;
  wire \csum[6]_i_1_n_0 ;
  wire \csum[6]_i_20_n_0 ;
  wire \csum[6]_i_2_n_0 ;
  wire \csum[6]_i_3_n_0 ;
  wire \csum[6]_i_5_n_0 ;
  wire \csum[6]_i_6_n_0 ;
  wire \csum[6]_i_7_n_0 ;
  wire \csum[6]_i_8_n_0 ;
  wire \csum[6]_i_9_n_0 ;
  wire \csum_reg[1]_0 ;
  wire \csum_reg[1]_1 ;
  wire \csum_reg[1]_2 ;
  wire \csum_reg[2]_0 ;
  wire \csum_reg[2]_1 ;
  wire \csum_reg[2]_2 ;
  wire \csum_reg[4]_0 ;
  wire \csum_reg[4]_1 ;
  wire [2:0]\csum_reg[4]_2 ;
  wire [2:0]\csum_reg[4]_3 ;
  wire \csum_reg[5]_0 ;
  wire g0_b0__1_n_0;
  wire g0_b0__2_n_0;
  wire g0_b0__4_n_0;
  wire g0_b0__5_n_0;
  wire g0_b1__1_n_0;
  wire g0_b1__2_n_0;
  wire g0_b1__4_n_0;
  wire g0_b1__5_n_0;
  wire g0_b2__1_n_0;
  wire g0_b2__2_n_0;
  wire g0_b2__4_n_0;
  wire g0_b2__5_n_0;
  wire [6:0]\max_corr_reg[6] ;
  wire [0:0]\min_corr_reg[6] ;
  wire [0:0]out;
  wire [2:0]sel;
  wire \shreg_reg[0] ;
  wire [2:0]\shreg_reg[11] ;
  wire \shreg_reg[11]_0 ;
  wire \shreg_reg[11]_1 ;
  wire \shreg_reg[11]_2 ;
  wire \shreg_reg[12] ;
  wire \shreg_reg[14] ;
  wire \shreg_reg[14]_0 ;
  wire \shreg_reg[16] ;
  wire \shreg_reg[16]_0 ;
  wire \shreg_reg[18] ;
  wire \shreg_reg[18]_0 ;
  wire \shreg_reg[20] ;
  wire \shreg_reg[20]_0 ;
  wire \shreg_reg[22] ;
  wire \shreg_reg[22]_0 ;
  wire \shreg_reg[24]_0 ;
  wire [2:0]\shreg_reg[29] ;
  wire [2:0]\shreg_reg[29]_0 ;
  wire \shreg_reg[29]_1 ;
  wire \shreg_reg[29]_2 ;
  wire \shreg_reg[29]_3 ;
  wire \shreg_reg[2] ;
  wire \shreg_reg[2]_0 ;
  wire \shreg_reg[30] ;
  wire \shreg_reg[32] ;
  wire \shreg_reg[32]_0 ;
  wire \shreg_reg[34] ;
  wire \shreg_reg[34]_0 ;
  wire \shreg_reg[36] ;
  wire \shreg_reg[36]_0 ;
  wire \shreg_reg[36]_1 ;
  wire \shreg_reg[36]_2 ;
  wire \shreg_reg[36]_3 ;
  wire \shreg_reg[38] ;
  wire \shreg_reg[38]_0 ;
  wire \shreg_reg[40] ;
  wire \shreg_reg[40]_0 ;
  wire \shreg_reg[42]_0 ;
  wire \shreg_reg[42]_1 ;
  wire \shreg_reg[42]_2 ;
  wire \shreg_reg[42]_3 ;
  wire \shreg_reg[43] ;
  wire \shreg_reg[43]_0 ;
  wire \shreg_reg[45] ;
  wire \shreg_reg[45]_0 ;
  wire \shreg_reg[47] ;
  wire \shreg_reg[47]_0 ;
  wire \shreg_reg[48] ;
  wire \shreg_reg[48]_0 ;
  wire \shreg_reg[4] ;
  wire \shreg_reg[4]_0 ;
  wire \shreg_reg[50] ;
  wire \shreg_reg[50]_0 ;
  wire \shreg_reg[52] ;
  wire \shreg_reg[52]_0 ;
  wire \shreg_reg[54] ;
  wire \shreg_reg[54]_0 ;
  wire \shreg_reg[54]_1 ;
  wire \shreg_reg[54]_2 ;
  wire \shreg_reg[54]_3 ;
  wire \shreg_reg[54]_4 ;
  wire \shreg_reg[56] ;
  wire \shreg_reg[56]_0 ;
  wire \shreg_reg[58] ;
  wire \shreg_reg[58]_0 ;
  wire \shreg_reg[60] ;
  wire \shreg_reg[60]_0 ;
  wire \shreg_reg[60]_1 ;
  wire \shreg_reg[60]_2 ;
  wire \shreg_reg[60]_3 ;
  wire \shreg_reg[60]_4 ;
  wire [0:0]\shreg_reg[60]_5 ;
  wire \shreg_reg[62] ;
  wire \shreg_reg[62]_0 ;
  wire \shreg_reg[6]_0 ;

  LUT6 #(
    .INIT(64'h4444444440000000)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(out),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(\FSM_onehot_state[4]_i_3_n_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h5557)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h004C00C0004C00CC)) 
    \FSM_onehot_state[9]_i_4 
       (.I0(Q[3]),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[4]),
        .I5(\FSM_onehot_state[4]_i_3_n_0 ),
        .O(\FSM_onehot_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \csum[0]_i_1 
       (.I0(\csum[0]_i_2_n_0 ),
        .I1(g0_b0__1_n_0),
        .I2(\shreg_reg[11]_0 ),
        .I3(g0_b0__2_n_0),
        .O(\csum[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \csum[0]_i_2 
       (.I0(g0_b0__4_n_0),
        .I1(\shreg_reg[29]_1 ),
        .I2(\shreg_reg[36]_1 ),
        .I3(g0_b0__5_n_0),
        .I4(\shreg_reg[60]_2 ),
        .I5(\shreg_reg[54]_1 ),
        .O(\csum[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[1]_i_1 
       (.I0(\csum_reg[1]_0 ),
        .I1(\csum_reg[1]_1 ),
        .I2(\csum_reg[1]_2 ),
        .O(\csum[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[2]_i_10 
       (.I0(g0_b1__2_n_0),
        .I1(\shreg_reg[11]_1 ),
        .I2(g0_b1__1_n_0),
        .O(\csum[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF66060F660F6F660)) 
    \csum[2]_i_2 
       (.I0(\shreg_reg[60]_2 ),
        .I1(g0_b0__5_n_0),
        .I2(\shreg_reg[54]_1 ),
        .I3(g0_b0__4_n_0),
        .I4(\shreg_reg[29]_1 ),
        .I5(\shreg_reg[36]_1 ),
        .O(\csum_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hA995566A)) 
    \csum[2]_i_3 
       (.I0(\csum[2]_i_8_n_0 ),
        .I1(\shreg_reg[11]_0 ),
        .I2(g0_b0__1_n_0),
        .I3(g0_b0__2_n_0),
        .I4(\csum[2]_i_9_n_0 ),
        .O(\csum_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h9600)) 
    \csum[2]_i_4 
       (.I0(g0_b0__1_n_0),
        .I1(\shreg_reg[11]_0 ),
        .I2(g0_b0__2_n_0),
        .I3(\csum[0]_i_2_n_0 ),
        .O(\csum_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[2]_i_5 
       (.I0(g0_b0__2_n_0),
        .I1(g0_b0__1_n_0),
        .I2(\shreg_reg[11]_0 ),
        .I3(\csum[2]_i_9_n_0 ),
        .I4(\csum[2]_i_8_n_0 ),
        .O(\csum_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[2]_i_6 
       (.I0(\csum[6]_i_10_n_0 ),
        .I1(\csum[6]_i_8_n_0 ),
        .I2(\csum[6]_i_9_n_0 ),
        .O(\csum_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[2]_i_8 
       (.I0(g0_b1__4_n_0),
        .I1(\shreg_reg[29]_2 ),
        .I2(\shreg_reg[36]_2 ),
        .I3(\csum[6]_i_18_n_0 ),
        .I4(\shreg_reg[54]_2 ),
        .O(\csum[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[2]_i_9 
       (.I0(\shreg_reg[36]_1 ),
        .I1(g0_b0__4_n_0),
        .I2(\shreg_reg[29]_1 ),
        .I3(\csum[2]_i_10_n_0 ),
        .I4(\shreg_reg[42]_1 ),
        .O(\csum[2]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_1 
       (.I0(\shreg_reg[60]_1 ),
        .I1(\csum[6]_i_2_n_0 ),
        .I2(\csum[6]_i_3_n_0 ),
        .O(\csum[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \csum[4]_i_1 
       (.I0(\shreg_reg[60]_1 ),
        .I1(\csum[6]_i_3_n_0 ),
        .I2(\csum[4]_i_2_n_0 ),
        .I3(\csum[4]_i_3_n_0 ),
        .I4(\csum[4]_i_4_n_0 ),
        .I5(\csum[4]_i_5_n_0 ),
        .O(\csum[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[4]_i_10 
       (.I0(\shreg_reg[29]_2 ),
        .I1(g0_b1__4_n_0),
        .I2(\shreg_reg[36]_2 ),
        .O(\csum[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[4]_i_11 
       (.I0(\shreg_reg[36]_3 ),
        .I1(\shreg_reg[29]_3 ),
        .I2(g0_b2__4_n_0),
        .O(\csum[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5555566A566AAAAA)) 
    \csum[4]_i_2 
       (.I0(\csum[6]_i_6_n_0 ),
        .I1(\shreg_reg[11]_2 ),
        .I2(g0_b2__1_n_0),
        .I3(g0_b2__2_n_0),
        .I4(\csum[6]_i_15_n_0 ),
        .I5(\shreg_reg[42]_2 ),
        .O(\csum[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[4]_i_3 
       (.I0(\shreg_reg[36]_2 ),
        .I1(g0_b1__4_n_0),
        .I2(\shreg_reg[29]_2 ),
        .I3(\csum[4]_i_6_n_0 ),
        .I4(\csum[4]_i_7_n_0 ),
        .O(\csum[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[4]_i_4 
       (.I0(\shreg_reg[54]_3 ),
        .I1(g0_b2__5_n_0),
        .I2(\shreg_reg[60]_4 ),
        .I3(\csum[6]_i_11_n_0 ),
        .I4(\csum[6]_i_12_n_0 ),
        .O(\csum[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \csum[4]_i_5 
       (.I0(\shreg_reg[60]_2 ),
        .I1(g0_b0__5_n_0),
        .I2(g0_b1__5_n_0),
        .I3(\shreg_reg[60]_3 ),
        .I4(\csum[4]_i_8_n_0 ),
        .I5(\csum[4]_i_9_n_0 ),
        .O(\csum[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[4]_i_6 
       (.I0(\shreg_reg[11]_1 ),
        .I1(g0_b1__1_n_0),
        .I2(g0_b1__2_n_0),
        .O(\csum[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[4]_i_7 
       (.I0(\shreg_reg[48]_0 ),
        .I1(\csum_reg[4]_0 ),
        .I2(\shreg_reg[54]_4 ),
        .I3(\shreg_reg[60]_4 ),
        .I4(g0_b2__5_n_0),
        .O(\csum[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \csum[4]_i_8 
       (.I0(\csum[4]_i_7_n_0 ),
        .I1(\csum[4]_i_10_n_0 ),
        .I2(\shreg_reg[11]_1 ),
        .I3(g0_b1__1_n_0),
        .I4(g0_b1__2_n_0),
        .O(\csum[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[4]_i_9 
       (.I0(\shreg_reg[42]_3 ),
        .I1(\csum[4]_i_11_n_0 ),
        .I2(g0_b2__2_n_0),
        .I3(\shreg_reg[11]_2 ),
        .I4(g0_b2__1_n_0),
        .O(\csum[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h17FFFFE8FFE8E800)) 
    \csum[5]_i_1 
       (.I0(\csum[6]_i_2_n_0 ),
        .I1(\csum[6]_i_3_n_0 ),
        .I2(\shreg_reg[60]_1 ),
        .I3(\csum[6]_i_5_n_0 ),
        .I4(\csum[6]_i_6_n_0 ),
        .I5(\csum[6]_i_7_n_0 ),
        .O(\csum[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE800000000000000)) 
    \csum[6]_i_1 
       (.I0(\csum[6]_i_2_n_0 ),
        .I1(\csum[6]_i_3_n_0 ),
        .I2(\shreg_reg[60]_1 ),
        .I3(\csum[6]_i_5_n_0 ),
        .I4(\csum[6]_i_6_n_0 ),
        .I5(\csum[6]_i_7_n_0 ),
        .O(\csum[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9959595566A6A6A)) 
    \csum[6]_i_10 
       (.I0(\csum[4]_i_9_n_0 ),
        .I1(\shreg_reg[60]_3 ),
        .I2(g0_b1__5_n_0),
        .I3(g0_b0__5_n_0),
        .I4(\shreg_reg[60]_2 ),
        .I5(\csum[4]_i_8_n_0 ),
        .O(\csum[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[6]_i_11 
       (.I0(g0_b2__2_n_0),
        .I1(g0_b2__1_n_0),
        .I2(\shreg_reg[11]_2 ),
        .I3(\shreg_reg[42]_2 ),
        .I4(\csum[6]_i_15_n_0 ),
        .O(\csum[6]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[6]_i_12 
       (.I0(g0_b2__4_n_0),
        .I1(\shreg_reg[29]_3 ),
        .I2(\shreg_reg[36]_3 ),
        .I3(\csum[6]_i_20_n_0 ),
        .I4(\shreg_reg[42]_3 ),
        .O(\csum[6]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[6]_i_15 
       (.I0(\shreg_reg[29]_3 ),
        .I1(g0_b2__4_n_0),
        .I2(\shreg_reg[36]_3 ),
        .O(\csum[6]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[6]_i_17 
       (.I0(\shreg_reg[29]_1 ),
        .I1(g0_b0__4_n_0),
        .I2(\shreg_reg[36]_1 ),
        .O(\csum[6]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \csum[6]_i_18 
       (.I0(g0_b0__5_n_0),
        .I1(\shreg_reg[60]_2 ),
        .I2(\shreg_reg[60]_3 ),
        .I3(g0_b1__5_n_0),
        .O(\csum[6]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[6]_i_2 
       (.I0(\csum[4]_i_5_n_0 ),
        .I1(\csum[4]_i_3_n_0 ),
        .I2(\csum[4]_i_4_n_0 ),
        .O(\csum[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[6]_i_20 
       (.I0(g0_b2__2_n_0),
        .I1(\shreg_reg[11]_2 ),
        .I2(g0_b2__1_n_0),
        .O(\csum[6]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[6]_i_3 
       (.I0(\csum[6]_i_8_n_0 ),
        .I1(\csum[6]_i_9_n_0 ),
        .I2(\csum[6]_i_10_n_0 ),
        .O(\csum[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[6]_i_5 
       (.I0(\csum[4]_i_3_n_0 ),
        .I1(\csum[4]_i_4_n_0 ),
        .I2(\csum[4]_i_5_n_0 ),
        .O(\csum[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \csum[6]_i_6 
       (.I0(\csum[6]_i_11_n_0 ),
        .I1(\csum[6]_i_12_n_0 ),
        .I2(\shreg_reg[54]_3 ),
        .I3(g0_b2__5_n_0),
        .I4(\shreg_reg[60]_4 ),
        .O(\csum[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \csum[6]_i_7 
       (.I0(\shreg_reg[42]_2 ),
        .I1(\csum[6]_i_15_n_0 ),
        .I2(g0_b2__2_n_0),
        .I3(g0_b2__1_n_0),
        .I4(\shreg_reg[11]_2 ),
        .O(\csum[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[6]_i_8 
       (.I0(g0_b1__1_n_0),
        .I1(\shreg_reg[11]_1 ),
        .I2(g0_b1__2_n_0),
        .I3(\shreg_reg[42]_1 ),
        .I4(\csum[6]_i_17_n_0 ),
        .O(\csum[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \csum[6]_i_9 
       (.I0(\csum[6]_i_18_n_0 ),
        .I1(\shreg_reg[54]_2 ),
        .I2(g0_b1__4_n_0),
        .I3(\shreg_reg[29]_2 ),
        .I4(\shreg_reg[36]_2 ),
        .O(\csum[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[60]_5 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__1
       (.I0(\shreg_reg[18] ),
        .I1(\shreg_reg[16]_0 ),
        .I2(\shreg_reg[16] ),
        .I3(\shreg_reg[14]_0 ),
        .I4(\shreg_reg[14] ),
        .I5(\shreg_reg[12] ),
        .O(g0_b0__1_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__2
       (.I0(\shreg_reg[24]_0 ),
        .I1(\shreg_reg[22]_0 ),
        .I2(\shreg_reg[22] ),
        .I3(\shreg_reg[20]_0 ),
        .I4(\shreg_reg[20] ),
        .I5(\shreg_reg[18]_0 ),
        .O(g0_b0__2_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__4
       (.I0(\shreg_reg[32] ),
        .I1(\shreg_reg[30] ),
        .I2(\shreg_reg[32]_0 ),
        .I3(\shreg_reg[34] ),
        .I4(\shreg_reg[34]_0 ),
        .I5(\shreg_reg[36] ),
        .O(g0_b0__4_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__46
       (.I0(sel[0]),
        .I1(\shreg_reg[11] [0]),
        .I2(sel[1]),
        .I3(\shreg_reg[11] [1]),
        .I4(sel[2]),
        .I5(\shreg_reg[11] [2]),
        .O(\csum_reg[4]_2 [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__49
       (.I0(\shreg_reg[29] [0]),
        .I1(\shreg_reg[29]_0 [0]),
        .I2(\shreg_reg[29] [1]),
        .I3(\shreg_reg[29]_0 [1]),
        .I4(\shreg_reg[29] [2]),
        .I5(\shreg_reg[29]_0 [2]),
        .O(\csum_reg[4]_3 [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__5
       (.I0(\shreg_reg[6]_0 ),
        .I1(\shreg_reg[4]_0 ),
        .I2(\shreg_reg[4] ),
        .I3(\shreg_reg[2]_0 ),
        .I4(\shreg_reg[2] ),
        .I5(\shreg_reg[0] ),
        .O(g0_b0__5_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__56
       (.I0(\shreg_reg[43] ),
        .I1(\shreg_reg[43]_0 ),
        .I2(\shreg_reg[45] ),
        .I3(\shreg_reg[45]_0 ),
        .I4(\shreg_reg[47] ),
        .I5(\shreg_reg[47]_0 ),
        .O(\csum_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__1
       (.I0(\shreg_reg[18] ),
        .I1(\shreg_reg[16]_0 ),
        .I2(\shreg_reg[16] ),
        .I3(\shreg_reg[14]_0 ),
        .I4(\shreg_reg[14] ),
        .I5(\shreg_reg[12] ),
        .O(g0_b1__1_n_0));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__2
       (.I0(\shreg_reg[24]_0 ),
        .I1(\shreg_reg[22]_0 ),
        .I2(\shreg_reg[22] ),
        .I3(\shreg_reg[20]_0 ),
        .I4(\shreg_reg[20] ),
        .I5(\shreg_reg[18]_0 ),
        .O(g0_b1__2_n_0));
  LUT6 #(
    .INIT(64'h188E8EE78EE7E771)) 
    g0_b1__4
       (.I0(\shreg_reg[32] ),
        .I1(\shreg_reg[30] ),
        .I2(\shreg_reg[32]_0 ),
        .I3(\shreg_reg[34] ),
        .I4(\shreg_reg[34]_0 ),
        .I5(\shreg_reg[36] ),
        .O(g0_b1__4_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__46
       (.I0(sel[0]),
        .I1(\shreg_reg[11] [0]),
        .I2(sel[1]),
        .I3(\shreg_reg[11] [1]),
        .I4(sel[2]),
        .I5(\shreg_reg[11] [2]),
        .O(\csum_reg[4]_2 [1]));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__49
       (.I0(\shreg_reg[29] [0]),
        .I1(\shreg_reg[29]_0 [0]),
        .I2(\shreg_reg[29] [1]),
        .I3(\shreg_reg[29]_0 [1]),
        .I4(\shreg_reg[29] [2]),
        .I5(\shreg_reg[29]_0 [2]),
        .O(\csum_reg[4]_3 [1]));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__5
       (.I0(\shreg_reg[6]_0 ),
        .I1(\shreg_reg[4]_0 ),
        .I2(\shreg_reg[4] ),
        .I3(\shreg_reg[2]_0 ),
        .I4(\shreg_reg[2] ),
        .I5(\shreg_reg[0] ),
        .O(g0_b1__5_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__54
       (.I0(\shreg_reg[43] ),
        .I1(\shreg_reg[43]_0 ),
        .I2(\shreg_reg[45] ),
        .I3(\shreg_reg[45]_0 ),
        .I4(\shreg_reg[47] ),
        .I5(\shreg_reg[47]_0 ),
        .O(\csum_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__1
       (.I0(\shreg_reg[18] ),
        .I1(\shreg_reg[16]_0 ),
        .I2(\shreg_reg[16] ),
        .I3(\shreg_reg[14]_0 ),
        .I4(\shreg_reg[14] ),
        .I5(\shreg_reg[12] ),
        .O(g0_b2__1_n_0));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__2
       (.I0(\shreg_reg[24]_0 ),
        .I1(\shreg_reg[22]_0 ),
        .I2(\shreg_reg[22] ),
        .I3(\shreg_reg[20]_0 ),
        .I4(\shreg_reg[20] ),
        .I5(\shreg_reg[18]_0 ),
        .O(g0_b2__2_n_0));
  LUT6 #(
    .INIT(64'hF771711071101000)) 
    g0_b2__4
       (.I0(\shreg_reg[32] ),
        .I1(\shreg_reg[30] ),
        .I2(\shreg_reg[32]_0 ),
        .I3(\shreg_reg[34] ),
        .I4(\shreg_reg[34]_0 ),
        .I5(\shreg_reg[36] ),
        .O(g0_b2__4_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__46
       (.I0(sel[0]),
        .I1(\shreg_reg[11] [0]),
        .I2(sel[1]),
        .I3(\shreg_reg[11] [1]),
        .I4(sel[2]),
        .I5(\shreg_reg[11] [2]),
        .O(\csum_reg[4]_2 [2]));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__49
       (.I0(\shreg_reg[29] [0]),
        .I1(\shreg_reg[29]_0 [0]),
        .I2(\shreg_reg[29] [1]),
        .I3(\shreg_reg[29]_0 [1]),
        .I4(\shreg_reg[29] [2]),
        .I5(\shreg_reg[29]_0 [2]),
        .O(\csum_reg[4]_3 [2]));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__5
       (.I0(\shreg_reg[6]_0 ),
        .I1(\shreg_reg[4]_0 ),
        .I2(\shreg_reg[4] ),
        .I3(\shreg_reg[2]_0 ),
        .I4(\shreg_reg[2] ),
        .I5(\shreg_reg[0] ),
        .O(g0_b2__5_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__54
       (.I0(\shreg_reg[43] ),
        .I1(\shreg_reg[43]_0 ),
        .I2(\shreg_reg[45] ),
        .I3(\shreg_reg[45]_0 ),
        .I4(\shreg_reg[47] ),
        .I5(\shreg_reg[47]_0 ),
        .O(\csum_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    next1_inferred__0_carry_i_1
       (.I0(Q[6]),
        .I1(\max_corr_reg[6] [6]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    next1_inferred__0_carry_i_2
       (.I0(Q[4]),
        .I1(\max_corr_reg[6] [4]),
        .I2(\max_corr_reg[6] [5]),
        .I3(Q[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    next1_inferred__0_carry_i_3
       (.I0(Q[2]),
        .I1(\max_corr_reg[6] [2]),
        .I2(\max_corr_reg[6] [3]),
        .I3(Q[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    next1_inferred__0_carry_i_4
       (.I0(Q[0]),
        .I1(\max_corr_reg[6] [0]),
        .I2(\max_corr_reg[6] [1]),
        .I3(Q[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    next1_inferred__0_carry_i_6
       (.I0(Q[4]),
        .I1(\max_corr_reg[6] [4]),
        .I2(Q[5]),
        .I3(\max_corr_reg[6] [5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    next1_inferred__0_carry_i_7
       (.I0(Q[2]),
        .I1(\max_corr_reg[6] [2]),
        .I2(Q[3]),
        .I3(\max_corr_reg[6] [3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    next1_inferred__0_carry_i_8
       (.I0(Q[0]),
        .I1(\max_corr_reg[6] [0]),
        .I2(Q[1]),
        .I3(\max_corr_reg[6] [1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    next1_inferred__2_carry_i_5
       (.I0(Q[6]),
        .I1(\min_corr_reg[6] ),
        .O(\FSM_sequential_state_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[11] [1]),
        .Q(sel[2]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[12] ),
        .Q(\shreg_reg[14] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[14]_0 ),
        .Q(\shreg_reg[16] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[16]_0 ),
        .Q(\shreg_reg[18] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[18]_0 ),
        .Q(\shreg_reg[20] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[0] ),
        .Q(\shreg_reg[2] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[20]_0 ),
        .Q(\shreg_reg[22] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[22]_0 ),
        .Q(\shreg_reg[24]_0 ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[24]_0 ),
        .Q(\shreg_reg[29] [0]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[29]_0 [0]),
        .Q(\shreg_reg[29] [1]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[28] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[29]_0 [1]),
        .Q(\shreg_reg[29] [2]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[31] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[30] ),
        .Q(\shreg_reg[32] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[33] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[32]_0 ),
        .Q(\shreg_reg[34] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[35] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[34]_0 ),
        .Q(\shreg_reg[36] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[37] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[36]_0 ),
        .Q(\shreg_reg[38] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[39] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[38]_0 ),
        .Q(\shreg_reg[40] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[2]_0 ),
        .Q(\shreg_reg[4] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[41] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[40]_0 ),
        .Q(\shreg_reg[42]_0 ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[42] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[42]_0 ),
        .Q(\shreg_reg[43] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[44] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[43]_0 ),
        .Q(\shreg_reg[45] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[46] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[45]_0 ),
        .Q(\shreg_reg[47] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[49] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[48] ),
        .Q(\shreg_reg[50] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[51] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[50]_0 ),
        .Q(\shreg_reg[52] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[53] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[52]_0 ),
        .Q(\shreg_reg[54] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[55] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[54]_0 ),
        .Q(\shreg_reg[56] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[57] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[56]_0 ),
        .Q(\shreg_reg[58] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[59] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[58]_0 ),
        .Q(\shreg_reg[60] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[4]_0 ),
        .Q(\shreg_reg[6]_0 ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[61] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[60]_0 ),
        .Q(\shreg_reg[62] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[63] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[62]_0 ),
        .Q(\csum_reg[5]_0 ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[6]_0 ),
        .Q(sel[0]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[11] [0]),
        .Q(sel[1]),
        .R(BTNC_IBUF));
endmodule

(* ORIG_REF_NAME = "correlator" *) 
module correlator__parameterized2
   (\shreg_reg[1] ,
    \shreg_reg[3] ,
    \shreg_reg[5] ,
    \shreg_reg[8] ,
    \shreg_reg[10] ,
    \shreg_reg[12]_0 ,
    \shreg_reg[13] ,
    \shreg_reg[15] ,
    \shreg_reg[17] ,
    \shreg_reg[19] ,
    \shreg_reg[21] ,
    \shreg_reg[23] ,
    \shreg_reg[26] ,
    \shreg_reg[28] ,
    \shreg_reg[30]_0 ,
    \shreg_reg[31] ,
    \shreg_reg[33] ,
    \shreg_reg[35] ,
    \shreg_reg[37] ,
    \shreg_reg[39] ,
    \shreg_reg[41] ,
    \shreg_reg[44] ,
    \shreg_reg[46] ,
    \shreg_reg[48]_0 ,
    \shreg_reg[49] ,
    \shreg_reg[51] ,
    \shreg_reg[53] ,
    \shreg_reg[55] ,
    \shreg_reg[57] ,
    \shreg_reg[59] ,
    \shreg_reg[61] ,
    \shreg_reg[63] ,
    \csum_reg[4]_0 ,
    \csum_reg[4]_1 ,
    \csum_reg[4]_2 ,
    \csum_reg[5]_0 ,
    \csum_reg[4]_3 ,
    \csum_reg[4]_4 ,
    \csum_reg[2]_0 ,
    \csum_reg[2]_1 ,
    \csum_reg[4]_5 ,
    \csum_reg[4]_6 ,
    \csum_reg[5]_1 ,
    \csum_reg[2]_2 ,
    \csum_reg[2]_3 ,
    \csum_reg[2]_4 ,
    \csum_reg[4]_7 ,
    \csum_reg[2]_5 ,
    \csum_reg[0]_0 ,
    \csum_reg[4]_8 ,
    \csum_reg[4]_9 ,
    \csum_reg[1]_0 ,
    D,
    \csum_reg[6]_0 ,
    \FSM_onehot_state_reg[2] ,
    match_idle,
    match_error,
    BTNC_IBUF,
    E,
    sync_out,
    CLK100MHZ_IBUF_BUFG,
    \shreg_reg[1]_0 ,
    \shreg_reg[3]_0 ,
    \shreg_reg[6] ,
    \shreg_reg[8]_0 ,
    \shreg_reg[10]_0 ,
    \shreg_reg[13]_0 ,
    \shreg_reg[15]_0 ,
    \shreg_reg[17]_0 ,
    \shreg_reg[19]_0 ,
    \shreg_reg[21]_0 ,
    \shreg_reg[24] ,
    \shreg_reg[26]_0 ,
    \shreg_reg[28]_0 ,
    \shreg_reg[31]_0 ,
    \shreg_reg[33]_0 ,
    \shreg_reg[35]_0 ,
    \shreg_reg[37]_0 ,
    \shreg_reg[39]_0 ,
    \shreg_reg[42] ,
    \shreg_reg[44]_0 ,
    \shreg_reg[46]_0 ,
    \shreg_reg[49]_0 ,
    \shreg_reg[51]_0 ,
    \shreg_reg[53]_0 ,
    \shreg_reg[55]_0 ,
    \shreg_reg[57]_0 ,
    \shreg_reg[59]_0 ,
    \shreg_reg[61]_0 ,
    \shreg_reg[41]_0 ,
    \shreg_reg[63]_0 ,
    \shreg_reg[42]_0 ,
    \shreg_reg[42]_1 ,
    \shreg_reg[42]_2 ,
    \shreg_reg[60]_0 ,
    \shreg_reg[11]_0 ,
    \shreg_reg[17]_1 ,
    \shreg_reg[23]_0 ,
    \shreg_reg[60]_1 ,
    out,
    \shreg_reg[24]_0 ,
    \shreg_reg[23]_1 ,
    \shreg_reg[5]_0 );
  output \shreg_reg[1] ;
  output \shreg_reg[3] ;
  output \shreg_reg[5] ;
  output \shreg_reg[8] ;
  output \shreg_reg[10] ;
  output \shreg_reg[12]_0 ;
  output \shreg_reg[13] ;
  output \shreg_reg[15] ;
  output \shreg_reg[17] ;
  output \shreg_reg[19] ;
  output \shreg_reg[21] ;
  output \shreg_reg[23] ;
  output \shreg_reg[26] ;
  output \shreg_reg[28] ;
  output \shreg_reg[30]_0 ;
  output \shreg_reg[31] ;
  output \shreg_reg[33] ;
  output \shreg_reg[35] ;
  output \shreg_reg[37] ;
  output \shreg_reg[39] ;
  output \shreg_reg[41] ;
  output \shreg_reg[44] ;
  output \shreg_reg[46] ;
  output \shreg_reg[48]_0 ;
  output \shreg_reg[49] ;
  output \shreg_reg[51] ;
  output \shreg_reg[53] ;
  output \shreg_reg[55] ;
  output \shreg_reg[57] ;
  output \shreg_reg[59] ;
  output \shreg_reg[61] ;
  output \shreg_reg[63] ;
  output \csum_reg[4]_0 ;
  output \csum_reg[4]_1 ;
  output \csum_reg[4]_2 ;
  output \csum_reg[5]_0 ;
  output \csum_reg[4]_3 ;
  output \csum_reg[4]_4 ;
  output \csum_reg[2]_0 ;
  output \csum_reg[2]_1 ;
  output \csum_reg[4]_5 ;
  output \csum_reg[4]_6 ;
  output \csum_reg[5]_1 ;
  output \csum_reg[2]_2 ;
  output \csum_reg[2]_3 ;
  output \csum_reg[2]_4 ;
  output \csum_reg[4]_7 ;
  output \csum_reg[2]_5 ;
  output \csum_reg[0]_0 ;
  output \csum_reg[4]_8 ;
  output \csum_reg[4]_9 ;
  output \csum_reg[1]_0 ;
  output [0:0]D;
  output \csum_reg[6]_0 ;
  output \FSM_onehot_state_reg[2] ;
  output match_idle;
  output match_error;
  input BTNC_IBUF;
  input [0:0]E;
  input sync_out;
  input CLK100MHZ_IBUF_BUFG;
  input \shreg_reg[1]_0 ;
  input \shreg_reg[3]_0 ;
  input \shreg_reg[6] ;
  input \shreg_reg[8]_0 ;
  input \shreg_reg[10]_0 ;
  input \shreg_reg[13]_0 ;
  input \shreg_reg[15]_0 ;
  input \shreg_reg[17]_0 ;
  input \shreg_reg[19]_0 ;
  input \shreg_reg[21]_0 ;
  input \shreg_reg[24] ;
  input \shreg_reg[26]_0 ;
  input \shreg_reg[28]_0 ;
  input \shreg_reg[31]_0 ;
  input \shreg_reg[33]_0 ;
  input \shreg_reg[35]_0 ;
  input \shreg_reg[37]_0 ;
  input \shreg_reg[39]_0 ;
  input \shreg_reg[42] ;
  input \shreg_reg[44]_0 ;
  input \shreg_reg[46]_0 ;
  input \shreg_reg[49]_0 ;
  input \shreg_reg[51]_0 ;
  input \shreg_reg[53]_0 ;
  input \shreg_reg[55]_0 ;
  input \shreg_reg[57]_0 ;
  input \shreg_reg[59]_0 ;
  input \shreg_reg[61]_0 ;
  input \shreg_reg[41]_0 ;
  input \shreg_reg[63]_0 ;
  input \shreg_reg[42]_0 ;
  input \shreg_reg[42]_1 ;
  input \shreg_reg[42]_2 ;
  input \shreg_reg[60]_0 ;
  input \shreg_reg[11]_0 ;
  input \shreg_reg[17]_1 ;
  input \shreg_reg[23]_0 ;
  input \shreg_reg[60]_1 ;
  input [2:0]out;
  input [2:0]\shreg_reg[24]_0 ;
  input \shreg_reg[23]_1 ;
  input \shreg_reg[5]_0 ;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[9]_i_5_n_0 ;
  wire \FSM_onehot_state_reg[2] ;
  wire \csum[0]_i_1_n_0 ;
  wire \csum[0]_i_2_n_0 ;
  wire \csum[1]_i_1_n_0 ;
  wire \csum[2]_i_1__0_n_0 ;
  wire \csum[2]_i_2_n_0 ;
  wire \csum[2]_i_3_n_0 ;
  wire \csum[2]_i_4_n_0 ;
  wire \csum[2]_i_5_n_0 ;
  wire \csum[2]_i_6_n_0 ;
  wire \csum[2]_i_7__0_n_0 ;
  wire \csum[2]_i_8_n_0 ;
  wire \csum[2]_i_9_n_0 ;
  wire \csum[3]_i_1_n_0 ;
  wire \csum[4]_i_10_n_0 ;
  wire \csum[4]_i_11_n_0 ;
  wire \csum[4]_i_1_n_0 ;
  wire \csum[4]_i_2_n_0 ;
  wire \csum[4]_i_3_n_0 ;
  wire \csum[4]_i_4_n_0 ;
  wire \csum[4]_i_5_n_0 ;
  wire \csum[4]_i_6_n_0 ;
  wire \csum[4]_i_7_n_0 ;
  wire \csum[4]_i_8_n_0 ;
  wire \csum[4]_i_9_n_0 ;
  wire \csum[5]_i_1_n_0 ;
  wire \csum[6]_i_10_n_0 ;
  wire \csum[6]_i_11_n_0 ;
  wire \csum[6]_i_12_n_0 ;
  wire \csum[6]_i_13__0_n_0 ;
  wire \csum[6]_i_14__0_n_0 ;
  wire \csum[6]_i_15_n_0 ;
  wire \csum[6]_i_16__0_n_0 ;
  wire \csum[6]_i_1_n_0 ;
  wire \csum[6]_i_2_n_0 ;
  wire \csum[6]_i_3_n_0 ;
  wire \csum[6]_i_4__0_n_0 ;
  wire \csum[6]_i_5_n_0 ;
  wire \csum[6]_i_6_n_0 ;
  wire \csum[6]_i_7_n_0 ;
  wire \csum[6]_i_8_n_0 ;
  wire \csum[6]_i_9_n_0 ;
  wire \csum_reg[0]_0 ;
  wire \csum_reg[1]_0 ;
  wire \csum_reg[2]_0 ;
  wire \csum_reg[2]_1 ;
  wire \csum_reg[2]_2 ;
  wire \csum_reg[2]_3 ;
  wire \csum_reg[2]_4 ;
  wire \csum_reg[2]_5 ;
  wire \csum_reg[4]_0 ;
  wire \csum_reg[4]_1 ;
  wire \csum_reg[4]_2 ;
  wire \csum_reg[4]_3 ;
  wire \csum_reg[4]_4 ;
  wire \csum_reg[4]_5 ;
  wire \csum_reg[4]_6 ;
  wire \csum_reg[4]_7 ;
  wire \csum_reg[4]_8 ;
  wire \csum_reg[4]_9 ;
  wire \csum_reg[5]_0 ;
  wire \csum_reg[5]_1 ;
  wire \csum_reg[6]_0 ;
  wire \csum_reg_n_0_[0] ;
  wire \csum_reg_n_0_[1] ;
  wire \csum_reg_n_0_[2] ;
  wire \csum_reg_n_0_[3] ;
  wire \csum_reg_n_0_[4] ;
  wire \csum_reg_n_0_[5] ;
  wire \csum_reg_n_0_[6] ;
  wire g0_b0__47_n_0;
  wire g0_b0__48_n_0;
  wire g0_b0__50_n_0;
  wire g0_b0__51_n_0;
  wire g0_b0__54_n_0;
  wire g0_b0__58_n_0;
  wire g0_b1__47_n_0;
  wire g0_b1__48_n_0;
  wire g0_b1__50_n_0;
  wire g0_b1__51_n_0;
  wire g0_b1__52_n_0;
  wire g0_b1__56_n_0;
  wire g0_b2__47_n_0;
  wire g0_b2__48_n_0;
  wire g0_b2__50_n_0;
  wire g0_b2__51_n_0;
  wire match_error;
  wire match_idle;
  wire [2:0]out;
  wire \shreg_reg[10] ;
  wire \shreg_reg[10]_0 ;
  wire \shreg_reg[11]_0 ;
  wire \shreg_reg[12]_0 ;
  wire \shreg_reg[13] ;
  wire \shreg_reg[13]_0 ;
  wire \shreg_reg[15] ;
  wire \shreg_reg[15]_0 ;
  wire \shreg_reg[17] ;
  wire \shreg_reg[17]_0 ;
  wire \shreg_reg[17]_1 ;
  wire \shreg_reg[19] ;
  wire \shreg_reg[19]_0 ;
  wire \shreg_reg[1] ;
  wire \shreg_reg[1]_0 ;
  wire \shreg_reg[21] ;
  wire \shreg_reg[21]_0 ;
  wire \shreg_reg[23] ;
  wire \shreg_reg[23]_0 ;
  wire \shreg_reg[23]_1 ;
  wire \shreg_reg[24] ;
  wire [2:0]\shreg_reg[24]_0 ;
  wire \shreg_reg[26] ;
  wire \shreg_reg[26]_0 ;
  wire \shreg_reg[28] ;
  wire \shreg_reg[28]_0 ;
  wire \shreg_reg[30]_0 ;
  wire \shreg_reg[31] ;
  wire \shreg_reg[31]_0 ;
  wire \shreg_reg[33] ;
  wire \shreg_reg[33]_0 ;
  wire \shreg_reg[35] ;
  wire \shreg_reg[35]_0 ;
  wire \shreg_reg[37] ;
  wire \shreg_reg[37]_0 ;
  wire \shreg_reg[39] ;
  wire \shreg_reg[39]_0 ;
  wire \shreg_reg[3] ;
  wire \shreg_reg[3]_0 ;
  wire \shreg_reg[41] ;
  wire \shreg_reg[41]_0 ;
  wire \shreg_reg[42] ;
  wire \shreg_reg[42]_0 ;
  wire \shreg_reg[42]_1 ;
  wire \shreg_reg[42]_2 ;
  wire \shreg_reg[44] ;
  wire \shreg_reg[44]_0 ;
  wire \shreg_reg[46] ;
  wire \shreg_reg[46]_0 ;
  wire \shreg_reg[48]_0 ;
  wire \shreg_reg[49] ;
  wire \shreg_reg[49]_0 ;
  wire \shreg_reg[51] ;
  wire \shreg_reg[51]_0 ;
  wire \shreg_reg[53] ;
  wire \shreg_reg[53]_0 ;
  wire \shreg_reg[55] ;
  wire \shreg_reg[55]_0 ;
  wire \shreg_reg[57] ;
  wire \shreg_reg[57]_0 ;
  wire \shreg_reg[59] ;
  wire \shreg_reg[59]_0 ;
  wire \shreg_reg[5] ;
  wire \shreg_reg[5]_0 ;
  wire \shreg_reg[60]_0 ;
  wire \shreg_reg[60]_1 ;
  wire \shreg_reg[61] ;
  wire \shreg_reg[61]_0 ;
  wire \shreg_reg[63] ;
  wire \shreg_reg[63]_0 ;
  wire \shreg_reg[6] ;
  wire \shreg_reg[8] ;
  wire \shreg_reg[8]_0 ;
  wire sync_out;

  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(\FSM_onehot_state[9]_i_5_n_0 ),
        .I1(\csum_reg_n_0_[4] ),
        .I2(\csum_reg_n_0_[6] ),
        .I3(\csum_reg_n_0_[5] ),
        .O(match_error));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_onehot_state[8]_i_3 
       (.I0(\csum_reg_n_0_[6] ),
        .I1(\csum_reg_n_0_[4] ),
        .I2(\csum_reg_n_0_[3] ),
        .I3(\csum_reg_n_0_[5] ),
        .O(match_idle));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00003FDD)) 
    \FSM_onehot_state[9]_i_3 
       (.I0(\FSM_onehot_state[9]_i_5_n_0 ),
        .I1(\csum_reg_n_0_[5] ),
        .I2(\csum_reg_n_0_[3] ),
        .I3(\csum_reg_n_0_[4] ),
        .I4(\csum_reg_n_0_[6] ),
        .O(\FSM_onehot_state_reg[2] ));
  LUT4 #(
    .INIT(16'h5557)) 
    \FSM_onehot_state[9]_i_5 
       (.I0(\csum_reg_n_0_[3] ),
        .I1(\csum_reg_n_0_[0] ),
        .I2(\csum_reg_n_0_[2] ),
        .I3(\csum_reg_n_0_[1] ),
        .O(\FSM_onehot_state[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \csum[0]_i_1 
       (.I0(\csum[0]_i_2_n_0 ),
        .I1(g0_b0__47_n_0),
        .I2(out[0]),
        .I3(g0_b0__48_n_0),
        .O(\csum[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \csum[0]_i_2 
       (.I0(g0_b0__50_n_0),
        .I1(\shreg_reg[24]_0 [0]),
        .I2(\csum_reg[2]_1 ),
        .I3(g0_b0__51_n_0),
        .I4(\csum_reg[2]_0 ),
        .I5(\csum_reg[2]_4 ),
        .O(\csum[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[1]_i_1 
       (.I0(\csum[2]_i_4_n_0 ),
        .I1(\csum[2]_i_2_n_0 ),
        .I2(\csum[2]_i_3_n_0 ),
        .O(\csum[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[2]_i_1 
       (.I0(\shreg_reg[60]_0 ),
        .I1(\shreg_reg[11]_0 ),
        .I2(\shreg_reg[17]_1 ),
        .I3(\shreg_reg[23]_0 ),
        .I4(\shreg_reg[60]_1 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[2]_i_1__0 
       (.I0(\csum[2]_i_2_n_0 ),
        .I1(\csum[2]_i_3_n_0 ),
        .I2(\csum[2]_i_4_n_0 ),
        .I3(\csum[2]_i_5_n_0 ),
        .I4(\csum[2]_i_6_n_0 ),
        .O(\csum[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF66060F660F6F660)) 
    \csum[2]_i_2 
       (.I0(\csum_reg[2]_0 ),
        .I1(g0_b0__51_n_0),
        .I2(\csum_reg[2]_4 ),
        .I3(g0_b0__50_n_0),
        .I4(\shreg_reg[24]_0 [0]),
        .I5(\csum_reg[2]_1 ),
        .O(\csum[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hA995566A)) 
    \csum[2]_i_3 
       (.I0(\csum[2]_i_7__0_n_0 ),
        .I1(out[0]),
        .I2(g0_b0__47_n_0),
        .I3(g0_b0__48_n_0),
        .I4(\csum[2]_i_8_n_0 ),
        .O(\csum[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h9600)) 
    \csum[2]_i_4 
       (.I0(g0_b0__47_n_0),
        .I1(out[0]),
        .I2(g0_b0__48_n_0),
        .I3(\csum[0]_i_2_n_0 ),
        .O(\csum[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[2]_i_5 
       (.I0(g0_b0__48_n_0),
        .I1(g0_b0__47_n_0),
        .I2(out[0]),
        .I3(\csum[2]_i_8_n_0 ),
        .I4(\csum[2]_i_7__0_n_0 ),
        .O(\csum[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[2]_i_6 
       (.I0(\csum[6]_i_10_n_0 ),
        .I1(\csum[6]_i_8_n_0 ),
        .I2(\csum[6]_i_9_n_0 ),
        .O(\csum[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[2]_i_7 
       (.I0(g0_b0__58_n_0),
        .I1(\shreg_reg[42]_2 ),
        .I2(g0_b0__54_n_0),
        .O(\csum_reg[2]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[2]_i_7__0 
       (.I0(g0_b1__50_n_0),
        .I1(\shreg_reg[24]_0 [1]),
        .I2(\csum_reg[4]_3 ),
        .I3(\csum[6]_i_15_n_0 ),
        .I4(\csum_reg[2]_2 ),
        .O(\csum[2]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[2]_i_8 
       (.I0(\csum_reg[2]_1 ),
        .I1(g0_b0__50_n_0),
        .I2(\shreg_reg[24]_0 [0]),
        .I3(\csum[2]_i_9_n_0 ),
        .I4(\csum_reg[2]_3 ),
        .O(\csum[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[2]_i_9 
       (.I0(g0_b1__48_n_0),
        .I1(out[1]),
        .I2(g0_b1__47_n_0),
        .O(\csum[2]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[3]_i_1 
       (.I0(\csum[6]_i_4__0_n_0 ),
        .I1(\csum[6]_i_2_n_0 ),
        .I2(\csum[6]_i_3_n_0 ),
        .O(\csum[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \csum[4]_i_1 
       (.I0(\csum[6]_i_4__0_n_0 ),
        .I1(\csum[6]_i_3_n_0 ),
        .I2(\csum[4]_i_2_n_0 ),
        .I3(\csum[4]_i_3_n_0 ),
        .I4(\csum[4]_i_4_n_0 ),
        .I5(\csum[4]_i_5_n_0 ),
        .O(\csum[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[4]_i_10 
       (.I0(\shreg_reg[24]_0 [1]),
        .I1(g0_b1__50_n_0),
        .I2(\csum_reg[4]_3 ),
        .O(\csum[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[4]_i_11 
       (.I0(\csum_reg[4]_2 ),
        .I1(\shreg_reg[24]_0 [2]),
        .I2(g0_b2__50_n_0),
        .O(\csum[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5555566A566AAAAA)) 
    \csum[4]_i_2 
       (.I0(\csum[6]_i_6_n_0 ),
        .I1(out[2]),
        .I2(g0_b2__47_n_0),
        .I3(g0_b2__48_n_0),
        .I4(\csum[6]_i_13__0_n_0 ),
        .I5(\csum_reg[4]_5 ),
        .O(\csum[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[4]_i_3 
       (.I0(\csum_reg[4]_3 ),
        .I1(g0_b1__50_n_0),
        .I2(\shreg_reg[24]_0 [1]),
        .I3(\csum[4]_i_6_n_0 ),
        .I4(\csum[4]_i_7_n_0 ),
        .O(\csum[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[4]_i_4 
       (.I0(\csum_reg[5]_1 ),
        .I1(g0_b2__51_n_0),
        .I2(\csum_reg[5]_0 ),
        .I3(\csum[6]_i_11_n_0 ),
        .I4(\csum[6]_i_12_n_0 ),
        .O(\csum[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \csum[4]_i_5 
       (.I0(\csum_reg[2]_0 ),
        .I1(g0_b0__51_n_0),
        .I2(g0_b1__51_n_0),
        .I3(\csum_reg[4]_4 ),
        .I4(\csum[4]_i_8_n_0 ),
        .I5(\csum[4]_i_9_n_0 ),
        .O(\csum[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[4]_i_6 
       (.I0(out[1]),
        .I1(g0_b1__47_n_0),
        .I2(g0_b1__48_n_0),
        .O(\csum[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[4]_i_7 
       (.I0(\csum_reg[4]_0 ),
        .I1(\shreg_reg[42]_0 ),
        .I2(\csum_reg[4]_1 ),
        .I3(\csum_reg[5]_0 ),
        .I4(g0_b2__51_n_0),
        .O(\csum[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \csum[4]_i_8 
       (.I0(\csum[4]_i_7_n_0 ),
        .I1(\csum[4]_i_10_n_0 ),
        .I2(out[1]),
        .I3(g0_b1__47_n_0),
        .I4(g0_b1__48_n_0),
        .O(\csum[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \csum[4]_i_9 
       (.I0(\csum_reg[4]_6 ),
        .I1(\csum[4]_i_11_n_0 ),
        .I2(g0_b2__48_n_0),
        .I3(out[2]),
        .I4(g0_b2__47_n_0),
        .O(\csum[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h17FFFFE8FFE8E800)) 
    \csum[5]_i_1 
       (.I0(\csum[6]_i_2_n_0 ),
        .I1(\csum[6]_i_3_n_0 ),
        .I2(\csum[6]_i_4__0_n_0 ),
        .I3(\csum[6]_i_5_n_0 ),
        .I4(\csum[6]_i_6_n_0 ),
        .I5(\csum[6]_i_7_n_0 ),
        .O(\csum[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE800000000000000)) 
    \csum[6]_i_1 
       (.I0(\csum[6]_i_2_n_0 ),
        .I1(\csum[6]_i_3_n_0 ),
        .I2(\csum[6]_i_4__0_n_0 ),
        .I3(\csum[6]_i_5_n_0 ),
        .I4(\csum[6]_i_6_n_0 ),
        .I5(\csum[6]_i_7_n_0 ),
        .O(\csum[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9959595566A6A6A)) 
    \csum[6]_i_10 
       (.I0(\csum[4]_i_9_n_0 ),
        .I1(\csum_reg[4]_4 ),
        .I2(g0_b1__51_n_0),
        .I3(g0_b0__51_n_0),
        .I4(\csum_reg[2]_0 ),
        .I5(\csum[4]_i_8_n_0 ),
        .O(\csum[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \csum[6]_i_11 
       (.I0(g0_b2__48_n_0),
        .I1(g0_b2__47_n_0),
        .I2(out[2]),
        .I3(\csum_reg[4]_5 ),
        .I4(\csum[6]_i_13__0_n_0 ),
        .O(\csum[6]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[6]_i_12 
       (.I0(g0_b2__50_n_0),
        .I1(\shreg_reg[24]_0 [2]),
        .I2(\csum_reg[4]_2 ),
        .I3(\csum[6]_i_16__0_n_0 ),
        .I4(\csum_reg[4]_6 ),
        .O(\csum[6]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \csum[6]_i_13 
       (.I0(\csum_reg[4]_1 ),
        .I1(\shreg_reg[42]_0 ),
        .I2(\csum_reg[4]_0 ),
        .O(\csum_reg[5]_1 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[6]_i_13__0 
       (.I0(\shreg_reg[24]_0 [2]),
        .I1(g0_b2__50_n_0),
        .I2(\csum_reg[4]_2 ),
        .O(\csum[6]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[6]_i_14 
       (.I0(\shreg_reg[42]_0 ),
        .I1(\csum_reg[4]_0 ),
        .I2(\csum_reg[4]_1 ),
        .O(\csum_reg[4]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[6]_i_14__0 
       (.I0(\shreg_reg[24]_0 [0]),
        .I1(g0_b0__50_n_0),
        .I2(\csum_reg[2]_1 ),
        .O(\csum[6]_i_14__0_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \csum[6]_i_15 
       (.I0(g0_b0__51_n_0),
        .I1(\csum_reg[2]_0 ),
        .I2(\csum_reg[4]_4 ),
        .I3(g0_b1__51_n_0),
        .O(\csum[6]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[6]_i_16 
       (.I0(\shreg_reg[42]_2 ),
        .I1(g0_b0__54_n_0),
        .I2(g0_b0__58_n_0),
        .O(\csum_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[6]_i_16__0 
       (.I0(g0_b2__48_n_0),
        .I1(out[2]),
        .I2(g0_b2__47_n_0),
        .O(\csum[6]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[6]_i_19 
       (.I0(g0_b1__56_n_0),
        .I1(\shreg_reg[42]_1 ),
        .I2(g0_b1__52_n_0),
        .O(\csum_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \csum[6]_i_2 
       (.I0(\csum[4]_i_5_n_0 ),
        .I1(\csum[4]_i_3_n_0 ),
        .I2(\csum[4]_i_4_n_0 ),
        .O(\csum[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[6]_i_21 
       (.I0(\shreg_reg[42]_1 ),
        .I1(g0_b1__52_n_0),
        .I2(g0_b1__56_n_0),
        .O(\csum_reg[4]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[6]_i_3 
       (.I0(\csum[6]_i_8_n_0 ),
        .I1(\csum[6]_i_9_n_0 ),
        .I2(\csum[6]_i_10_n_0 ),
        .O(\csum[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[6]_i_4 
       (.I0(\shreg_reg[60]_0 ),
        .I1(\shreg_reg[11]_0 ),
        .I2(\shreg_reg[17]_1 ),
        .I3(\shreg_reg[23]_0 ),
        .I4(\shreg_reg[60]_1 ),
        .O(\csum_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \csum[6]_i_4__0 
       (.I0(\csum[2]_i_2_n_0 ),
        .I1(\csum[2]_i_3_n_0 ),
        .I2(\csum[2]_i_4_n_0 ),
        .I3(\csum[2]_i_5_n_0 ),
        .I4(\csum[2]_i_6_n_0 ),
        .O(\csum[6]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \csum[6]_i_5 
       (.I0(\csum[4]_i_3_n_0 ),
        .I1(\csum[4]_i_4_n_0 ),
        .I2(\csum[4]_i_5_n_0 ),
        .O(\csum[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \csum[6]_i_6 
       (.I0(\csum[6]_i_11_n_0 ),
        .I1(\csum[6]_i_12_n_0 ),
        .I2(\csum_reg[5]_1 ),
        .I3(g0_b2__51_n_0),
        .I4(\csum_reg[5]_0 ),
        .O(\csum[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \csum[6]_i_7 
       (.I0(\csum_reg[4]_5 ),
        .I1(\csum[6]_i_13__0_n_0 ),
        .I2(g0_b2__48_n_0),
        .I3(g0_b2__47_n_0),
        .I4(out[2]),
        .O(\csum[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \csum[6]_i_8 
       (.I0(g0_b1__47_n_0),
        .I1(out[1]),
        .I2(g0_b1__48_n_0),
        .I3(\csum_reg[2]_3 ),
        .I4(\csum[6]_i_14__0_n_0 ),
        .O(\csum[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \csum[6]_i_9 
       (.I0(\csum[6]_i_15_n_0 ),
        .I1(\csum_reg[2]_2 ),
        .I2(g0_b1__50_n_0),
        .I3(\shreg_reg[24]_0 [1]),
        .I4(\csum_reg[4]_3 ),
        .O(\csum[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[0]_i_1_n_0 ),
        .Q(\csum_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[1]_i_1_n_0 ),
        .Q(\csum_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[2]_i_1__0_n_0 ),
        .Q(\csum_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[3]_i_1_n_0 ),
        .Q(\csum_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[4]_i_1_n_0 ),
        .Q(\csum_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[5]_i_1_n_0 ),
        .Q(\csum_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \csum_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\csum[6]_i_1_n_0 ),
        .Q(\csum_reg_n_0_[6] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__0
       (.I0(\shreg_reg[12]_0 ),
        .I1(\shreg_reg[10]_0 ),
        .I2(\shreg_reg[10] ),
        .I3(\shreg_reg[8]_0 ),
        .I4(\shreg_reg[8] ),
        .I5(\shreg_reg[6] ),
        .O(\csum_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__3
       (.I0(\shreg_reg[30]_0 ),
        .I1(\shreg_reg[28]_0 ),
        .I2(\shreg_reg[28] ),
        .I3(\shreg_reg[26]_0 ),
        .I4(\shreg_reg[26] ),
        .I5(\shreg_reg[24] ),
        .O(\csum_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__47
       (.I0(\shreg_reg[13] ),
        .I1(\shreg_reg[13]_0 ),
        .I2(\shreg_reg[15] ),
        .I3(\shreg_reg[15]_0 ),
        .I4(\shreg_reg[17] ),
        .I5(\shreg_reg[17]_0 ),
        .O(g0_b0__47_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__48
       (.I0(\shreg_reg[19] ),
        .I1(\shreg_reg[19]_0 ),
        .I2(\shreg_reg[21] ),
        .I3(\shreg_reg[21]_0 ),
        .I4(\shreg_reg[23] ),
        .I5(\shreg_reg[23]_1 ),
        .O(g0_b0__48_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__50
       (.I0(\shreg_reg[31] ),
        .I1(\shreg_reg[31]_0 ),
        .I2(\shreg_reg[33] ),
        .I3(\shreg_reg[33]_0 ),
        .I4(\shreg_reg[35] ),
        .I5(\shreg_reg[35]_0 ),
        .O(g0_b0__50_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__51
       (.I0(\shreg_reg[1] ),
        .I1(\shreg_reg[1]_0 ),
        .I2(\shreg_reg[3] ),
        .I3(\shreg_reg[3]_0 ),
        .I4(\shreg_reg[5] ),
        .I5(\shreg_reg[5]_0 ),
        .O(g0_b0__51_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    g0_b0__52
       (.I0(\shreg_reg[61] ),
        .I1(\shreg_reg[61]_0 ),
        .I2(\shreg_reg[63] ),
        .I3(\shreg_reg[63]_0 ),
        .O(\csum_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__54
       (.I0(\shreg_reg[49] ),
        .I1(\shreg_reg[49]_0 ),
        .I2(\shreg_reg[51] ),
        .I3(\shreg_reg[51]_0 ),
        .I4(\shreg_reg[53] ),
        .I5(\shreg_reg[53]_0 ),
        .O(g0_b0__54_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__58
       (.I0(\shreg_reg[55] ),
        .I1(\shreg_reg[55]_0 ),
        .I2(\shreg_reg[57] ),
        .I3(\shreg_reg[57]_0 ),
        .I4(\shreg_reg[59] ),
        .I5(\shreg_reg[59]_0 ),
        .O(g0_b0__58_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    g0_b0__60
       (.I0(\shreg_reg[37] ),
        .I1(\shreg_reg[37]_0 ),
        .I2(\shreg_reg[39] ),
        .I3(\shreg_reg[39]_0 ),
        .I4(\shreg_reg[41] ),
        .I5(\shreg_reg[41]_0 ),
        .O(\csum_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__0
       (.I0(\shreg_reg[12]_0 ),
        .I1(\shreg_reg[10]_0 ),
        .I2(\shreg_reg[10] ),
        .I3(\shreg_reg[8]_0 ),
        .I4(\shreg_reg[8] ),
        .I5(\shreg_reg[6] ),
        .O(\csum_reg[2]_5 ));
  LUT6 #(
    .INIT(64'h177E7EE87EE8E881)) 
    g0_b1__3
       (.I0(\shreg_reg[30]_0 ),
        .I1(\shreg_reg[28]_0 ),
        .I2(\shreg_reg[28] ),
        .I3(\shreg_reg[26]_0 ),
        .I4(\shreg_reg[26] ),
        .I5(\shreg_reg[24] ),
        .O(\csum_reg[4]_9 ));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__47
       (.I0(\shreg_reg[13] ),
        .I1(\shreg_reg[13]_0 ),
        .I2(\shreg_reg[15] ),
        .I3(\shreg_reg[15]_0 ),
        .I4(\shreg_reg[17] ),
        .I5(\shreg_reg[17]_0 ),
        .O(g0_b1__47_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__48
       (.I0(\shreg_reg[19] ),
        .I1(\shreg_reg[19]_0 ),
        .I2(\shreg_reg[21] ),
        .I3(\shreg_reg[21]_0 ),
        .I4(\shreg_reg[23] ),
        .I5(\shreg_reg[23]_1 ),
        .O(g0_b1__48_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__50
       (.I0(\shreg_reg[31] ),
        .I1(\shreg_reg[31]_0 ),
        .I2(\shreg_reg[33] ),
        .I3(\shreg_reg[33]_0 ),
        .I4(\shreg_reg[35] ),
        .I5(\shreg_reg[35]_0 ),
        .O(g0_b1__50_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__51
       (.I0(\shreg_reg[1] ),
        .I1(\shreg_reg[1]_0 ),
        .I2(\shreg_reg[3] ),
        .I3(\shreg_reg[3]_0 ),
        .I4(\shreg_reg[5] ),
        .I5(\shreg_reg[5]_0 ),
        .O(g0_b1__51_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__52
       (.I0(\shreg_reg[49] ),
        .I1(\shreg_reg[49]_0 ),
        .I2(\shreg_reg[51] ),
        .I3(\shreg_reg[51]_0 ),
        .I4(\shreg_reg[53] ),
        .I5(\shreg_reg[53]_0 ),
        .O(g0_b1__52_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__56
       (.I0(\shreg_reg[55] ),
        .I1(\shreg_reg[55]_0 ),
        .I2(\shreg_reg[57] ),
        .I3(\shreg_reg[57]_0 ),
        .I4(\shreg_reg[59] ),
        .I5(\shreg_reg[59]_0 ),
        .O(g0_b1__56_n_0));
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    g0_b1__58
       (.I0(\shreg_reg[37] ),
        .I1(\shreg_reg[37]_0 ),
        .I2(\shreg_reg[39] ),
        .I3(\shreg_reg[39]_0 ),
        .I4(\shreg_reg[41] ),
        .I5(\shreg_reg[41]_0 ),
        .O(\csum_reg[4]_3 ));
  LUT4 #(
    .INIT(16'h7EE8)) 
    g0_b1__60
       (.I0(\shreg_reg[61] ),
        .I1(\shreg_reg[61]_0 ),
        .I2(\shreg_reg[63] ),
        .I3(\shreg_reg[63]_0 ),
        .O(\csum_reg[4]_4 ));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__0
       (.I0(\shreg_reg[12]_0 ),
        .I1(\shreg_reg[10]_0 ),
        .I2(\shreg_reg[10] ),
        .I3(\shreg_reg[8]_0 ),
        .I4(\shreg_reg[8] ),
        .I5(\shreg_reg[6] ),
        .O(\csum_reg[4]_7 ));
  LUT6 #(
    .INIT(64'h000101170117177F)) 
    g0_b2__3
       (.I0(\shreg_reg[30]_0 ),
        .I1(\shreg_reg[28]_0 ),
        .I2(\shreg_reg[28] ),
        .I3(\shreg_reg[26]_0 ),
        .I4(\shreg_reg[26] ),
        .I5(\shreg_reg[24] ),
        .O(\csum_reg[4]_8 ));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__47
       (.I0(\shreg_reg[13] ),
        .I1(\shreg_reg[13]_0 ),
        .I2(\shreg_reg[15] ),
        .I3(\shreg_reg[15]_0 ),
        .I4(\shreg_reg[17] ),
        .I5(\shreg_reg[17]_0 ),
        .O(g0_b2__47_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__48
       (.I0(\shreg_reg[19] ),
        .I1(\shreg_reg[19]_0 ),
        .I2(\shreg_reg[21] ),
        .I3(\shreg_reg[21]_0 ),
        .I4(\shreg_reg[23] ),
        .I5(\shreg_reg[23]_1 ),
        .O(g0_b2__48_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__50
       (.I0(\shreg_reg[31] ),
        .I1(\shreg_reg[31]_0 ),
        .I2(\shreg_reg[33] ),
        .I3(\shreg_reg[33]_0 ),
        .I4(\shreg_reg[35] ),
        .I5(\shreg_reg[35]_0 ),
        .O(g0_b2__50_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__51
       (.I0(\shreg_reg[1] ),
        .I1(\shreg_reg[1]_0 ),
        .I2(\shreg_reg[3] ),
        .I3(\shreg_reg[3]_0 ),
        .I4(\shreg_reg[5] ),
        .I5(\shreg_reg[5]_0 ),
        .O(g0_b2__51_n_0));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__52
       (.I0(\shreg_reg[49] ),
        .I1(\shreg_reg[49]_0 ),
        .I2(\shreg_reg[51] ),
        .I3(\shreg_reg[51]_0 ),
        .I4(\shreg_reg[53] ),
        .I5(\shreg_reg[53]_0 ),
        .O(\csum_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__56
       (.I0(\shreg_reg[55] ),
        .I1(\shreg_reg[55]_0 ),
        .I2(\shreg_reg[57] ),
        .I3(\shreg_reg[57]_0 ),
        .I4(\shreg_reg[59] ),
        .I5(\shreg_reg[59]_0 ),
        .O(\csum_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    g0_b2__58
       (.I0(\shreg_reg[37] ),
        .I1(\shreg_reg[37]_0 ),
        .I2(\shreg_reg[39] ),
        .I3(\shreg_reg[39]_0 ),
        .I4(\shreg_reg[41] ),
        .I5(\shreg_reg[41]_0 ),
        .O(\csum_reg[4]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    g0_b2__60
       (.I0(\shreg_reg[61] ),
        .I1(\shreg_reg[61]_0 ),
        .I2(\shreg_reg[63] ),
        .I3(\shreg_reg[63]_0 ),
        .O(\csum_reg[5]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(sync_out),
        .Q(\shreg_reg[1] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[10]_0 ),
        .Q(\shreg_reg[12]_0 ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[12]_0 ),
        .Q(\shreg_reg[13] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[13]_0 ),
        .Q(\shreg_reg[15] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[15]_0 ),
        .Q(\shreg_reg[17] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[17]_0 ),
        .Q(\shreg_reg[19] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[19]_0 ),
        .Q(\shreg_reg[21] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[21]_0 ),
        .Q(\shreg_reg[23] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[24] ),
        .Q(\shreg_reg[26] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[27] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[26]_0 ),
        .Q(\shreg_reg[28] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[29] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[28]_0 ),
        .Q(\shreg_reg[30]_0 ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[1]_0 ),
        .Q(\shreg_reg[3] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[30] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[30]_0 ),
        .Q(\shreg_reg[31] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[32] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[31]_0 ),
        .Q(\shreg_reg[33] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[34] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[33]_0 ),
        .Q(\shreg_reg[35] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[36] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[35]_0 ),
        .Q(\shreg_reg[37] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[38] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[37]_0 ),
        .Q(\shreg_reg[39] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[40] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[39]_0 ),
        .Q(\shreg_reg[41] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[43] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[42] ),
        .Q(\shreg_reg[44] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[45] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[44]_0 ),
        .Q(\shreg_reg[46] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[47] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[46]_0 ),
        .Q(\shreg_reg[48]_0 ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[48] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[48]_0 ),
        .Q(\shreg_reg[49] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[3]_0 ),
        .Q(\shreg_reg[5] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[50] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[49]_0 ),
        .Q(\shreg_reg[51] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[52] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[51]_0 ),
        .Q(\shreg_reg[53] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[54] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[53]_0 ),
        .Q(\shreg_reg[55] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[56] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[55]_0 ),
        .Q(\shreg_reg[57] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[58] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[57]_0 ),
        .Q(\shreg_reg[59] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[60] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[59]_0 ),
        .Q(\shreg_reg[61] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[62] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[61]_0 ),
        .Q(\shreg_reg[63] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[6] ),
        .Q(\shreg_reg[8] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shreg_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\shreg_reg[8]_0 ),
        .Q(\shreg_reg[10] ),
        .R(BTNC_IBUF));
endmodule

module counter
   (D,
    \FSM_onehot_state_reg[7] ,
    \csum_reg[3] ,
    match_error,
    match_idle,
    out,
    \FSM_sequential_state_reg[2] ,
    store_bit,
    CLK100MHZ_IBUF_BUFG);
  output [0:0]D;
  output \FSM_onehot_state_reg[7] ;
  input \csum_reg[3] ;
  input match_error;
  input match_idle;
  input [1:0]out;
  input [1:0]\FSM_sequential_state_reg[2] ;
  input store_bit;
  input CLK100MHZ_IBUF_BUFG;

  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]D;
  wire \FSM_onehot_state_reg[7] ;
  wire [1:0]\FSM_sequential_state_reg[2] ;
  wire [2:0]bit_count;
  wire \csum_reg[3] ;
  wire match_error;
  wire match_idle;
  wire [1:0]out;
  wire \q[0]_i_1_n_0 ;
  wire \q[1]_i_1_n_0 ;
  wire \q[2]_i_1_n_0 ;
  wire store_bit;

  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[7]_i_4 
       (.I0(bit_count[2]),
        .I1(bit_count[1]),
        .I2(bit_count[0]),
        .O(\FSM_onehot_state_reg[7] ));
  LUT6 #(
    .INIT(64'hFE00FE00FF000000)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(bit_count[0]),
        .I1(bit_count[1]),
        .I2(bit_count[2]),
        .I3(\csum_reg[3] ),
        .I4(match_error),
        .I5(match_idle),
        .O(D));
  LUT5 #(
    .INIT(32'h56565654)) 
    \q[0]_i_1 
       (.I0(bit_count[0]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\FSM_sequential_state_reg[2] [0]),
        .I4(\FSM_sequential_state_reg[2] [1]),
        .O(\q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h666A666A666A6660)) 
    \q[1]_i_1 
       (.I0(bit_count[1]),
        .I1(bit_count[0]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\FSM_sequential_state_reg[2] [0]),
        .I5(\FSM_sequential_state_reg[2] [1]),
        .O(\q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA6AAA6A00)) 
    \q[2]_i_1 
       (.I0(bit_count[2]),
        .I1(bit_count[0]),
        .I2(bit_count[1]),
        .I3(store_bit),
        .I4(\FSM_sequential_state_reg[2] [0]),
        .I5(\FSM_sequential_state_reg[2] [1]),
        .O(\q[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[0]_i_1_n_0 ),
        .Q(bit_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[1]_i_1_n_0 ),
        .Q(bit_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[2]_i_1_n_0 ),
        .Q(bit_count[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module counter__parameterized0
   (\FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[0]_0 ,
    sample_slow,
    preamble_match,
    SR,
    CLK100MHZ_IBUF_BUFG);
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[0] ;
  output \FSM_sequential_state_reg[0]_0 ;
  input sample_slow;
  input preamble_match;
  input [0:0]SR;
  input CLK100MHZ_IBUF_BUFG;

  wire CLK100MHZ_IBUF_BUFG;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[2] ;
  wire [0:0]SR;
  wire preamble_match;
  wire q0_carry__0_i_1_n_0;
  wire q0_carry__0_i_2__0_n_0;
  wire q0_carry__0_i_3_n_0;
  wire q0_carry__0_n_2;
  wire q0_carry__0_n_3;
  wire q0_carry_i_3__0_n_0;
  wire q0_carry_i_4_n_0;
  wire q0_carry_n_0;
  wire q0_carry_n_1;
  wire q0_carry_n_2;
  wire q0_carry_n_3;
  wire [6:0]q__1;
  wire sample_slow;
  wire [6:0]slow_sample_count;
  wire [3:2]NLW_q0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_q0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_state[0]_i_3__0 
       (.I0(slow_sample_count[2]),
        .I1(slow_sample_count[3]),
        .I2(slow_sample_count[0]),
        .I3(slow_sample_count[1]),
        .I4(slow_sample_count[4]),
        .I5(preamble_match),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(slow_sample_count[2]),
        .I1(slow_sample_count[3]),
        .I2(\FSM_sequential_state[2]_i_6_n_0 ),
        .I3(slow_sample_count[1]),
        .I4(slow_sample_count[4]),
        .I5(slow_sample_count[5]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \FSM_sequential_state[2]_i_4__0 
       (.I0(slow_sample_count[2]),
        .I1(slow_sample_count[3]),
        .I2(\FSM_sequential_state[2]_i_6_n_0 ),
        .I3(slow_sample_count[1]),
        .I4(slow_sample_count[4]),
        .I5(slow_sample_count[5]),
        .O(\FSM_sequential_state_reg[2] ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(slow_sample_count[6]),
        .I1(slow_sample_count[0]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  CARRY4 q0_carry
       (.CI(1'b0),
        .CO({q0_carry_n_0,q0_carry_n_1,q0_carry_n_2,q0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,slow_sample_count[1:0]}),
        .O(q__1[3:0]),
        .S({slow_sample_count[3:2],q0_carry_i_3__0_n_0,q0_carry_i_4_n_0}));
  CARRY4 q0_carry__0
       (.CI(q0_carry_n_0),
        .CO({NLW_q0_carry__0_CO_UNCONNECTED[3:2],q0_carry__0_n_2,q0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,slow_sample_count[4:3]}),
        .O({NLW_q0_carry__0_O_UNCONNECTED[3],q__1[6:4]}),
        .S({1'b0,q0_carry__0_i_1_n_0,q0_carry__0_i_2__0_n_0,q0_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q0_carry__0_i_1
       (.I0(slow_sample_count[5]),
        .I1(slow_sample_count[6]),
        .O(q0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q0_carry__0_i_2__0
       (.I0(slow_sample_count[4]),
        .I1(slow_sample_count[5]),
        .O(q0_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q0_carry__0_i_3
       (.I0(slow_sample_count[3]),
        .I1(slow_sample_count[4]),
        .O(q0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q0_carry_i_3__0
       (.I0(slow_sample_count[1]),
        .I1(sample_slow),
        .O(q0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_carry_i_4
       (.I0(slow_sample_count[0]),
        .I1(sample_slow),
        .O(q0_carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(q__1[0]),
        .Q(slow_sample_count[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(q__1[1]),
        .Q(slow_sample_count[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(q__1[2]),
        .Q(slow_sample_count[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(q__1[3]),
        .Q(slow_sample_count[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(q__1[4]),
        .Q(slow_sample_count[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(q__1[5]),
        .Q(slow_sample_count[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(sample_slow),
        .D(q__1[6]),
        .Q(slow_sample_count[6]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module counter__parameterized1
   (Q,
    \FSM_onehot_state_reg[7] ,
    \FSM_sequential_state_reg[3] ,
    \FSM_sequential_state_reg[1] ,
    D,
    \FSM_onehot_state_reg[1] ,
    DI,
    S,
    \FSM_onehot_state_reg[0] ,
    \csum_reg[3] ,
    \csum_reg[5] ,
    SR,
    E,
    CLK100MHZ_IBUF_BUFG);
  output [5:0]Q;
  output \FSM_onehot_state_reg[7] ;
  output \FSM_sequential_state_reg[3] ;
  output \FSM_sequential_state_reg[1] ;
  output [1:0]D;
  output \FSM_onehot_state_reg[1] ;
  input [0:0]DI;
  input [3:0]S;
  input \FSM_onehot_state_reg[0] ;
  input \csum_reg[3] ;
  input \csum_reg[5] ;
  input [0:0]SR;
  input [0:0]E;
  input CLK100MHZ_IBUF_BUFG;

  wire CLK100MHZ_IBUF_BUFG;
  wire [1:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[9]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[7] ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[3] ;
  wire [5:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \csum_reg[3] ;
  wire \csum_reg[5] ;
  wire q0_carry__0_i_1__0_n_0;
  wire q0_carry__0_i_2_n_0;
  wire q0_carry__0_n_3;
  wire q0_carry_n_0;
  wire q0_carry_n_1;
  wire q0_carry_n_2;
  wire q0_carry_n_3;
  wire [5:0]q__0;
  wire [3:1]NLW_q0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_q0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_onehot_state_reg[1] ));
  LUT6 #(
    .INIT(64'hC0EAC0C0C0C0C000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(\csum_reg[3] ),
        .I2(\csum_reg[5] ),
        .I3(\FSM_onehot_state[2]_i_3_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(Q[2]),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3FFCFF003FF8FF00)) 
    \FSM_onehot_state[7]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[0]),
        .O(\FSM_onehot_state_reg[7] ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state[9]_i_2_n_0 ),
        .I1(\csum_reg[5] ),
        .I2(\csum_reg[3] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \FSM_onehot_state[9]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_onehot_state[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\FSM_sequential_state_reg[3] ));
  CARRY4 q0_carry
       (.CI(1'b0),
        .CO({q0_carry_n_0,q0_carry_n_1,q0_carry_n_2,q0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,Q[2:0]}),
        .O(q__0[3:0]),
        .S(S));
  CARRY4 q0_carry__0
       (.CI(q0_carry_n_0),
        .CO({NLW_q0_carry__0_CO_UNCONNECTED[3:1],q0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[3]}),
        .O({NLW_q0_carry__0_O_UNCONNECTED[3:2],q__0[5:4]}),
        .S({1'b0,1'b0,q0_carry__0_i_1__0_n_0,q0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    q0_carry__0_i_1__0
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(q0_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    q0_carry__0_i_2
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(q0_carry__0_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(q__0[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(q__0[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(q__0[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(q__0[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(q__0[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(q__0[5]),
        .Q(Q[5]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "counter_parm" *) 
module counter_parm__parameterized0
   (D,
    \FSM_sequential_state_reg[0] ,
    \FSM_sequential_state_reg[3] ,
    out,
    enb,
    \FSM_sequential_state_reg[0]_0 ,
    CLK100MHZ_IBUF_BUFG);
  output [0:0]D;
  output \FSM_sequential_state_reg[0] ;
  output \FSM_sequential_state_reg[3] ;
  input [3:0]out;
  input enb;
  input \FSM_sequential_state_reg[0]_0 ;
  input CLK100MHZ_IBUF_BUFG;

  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]D;
  wire \FSM_sequential_state[1]_i_2__2_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[3] ;
  wire enb;
  wire [1:0]eof_count;
  wire eof_reset;
  wire [3:0]out;
  wire \q[0]_i_1_n_0 ;
  wire \q[1]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'h808CBFBCBFBF8380)) 
    \FSM_sequential_state[0]_i_2__0 
       (.I0(\FSM_sequential_state_reg[3] ),
        .I1(out[3]),
        .I2(out[1]),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(out[0]),
        .I5(enb),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'h405F4F005F005F00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(out[2]),
        .I1(\FSM_sequential_state[1]_i_2__2_n_0 ),
        .I2(out[3]),
        .I3(out[1]),
        .I4(enb),
        .I5(out[0]),
        .O(D));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[1]_i_2__2 
       (.I0(eof_count[0]),
        .I1(eof_count[1]),
        .O(\FSM_sequential_state[1]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(eof_count[1]),
        .I1(eof_count[0]),
        .I2(out[0]),
        .O(\FSM_sequential_state_reg[3] ));
  LUT6 #(
    .INIT(64'h6060606060000000)) 
    \q[0]_i_1 
       (.I0(eof_count[0]),
        .I1(enb),
        .I2(out[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(\q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \q[1]_i_1 
       (.I0(eof_count[1]),
        .I1(enb),
        .I2(eof_count[0]),
        .I3(eof_reset),
        .O(\q[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h15FF)) 
    \q[1]_i_2 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[3]),
        .O(eof_reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[0]_i_1_n_0 ),
        .Q(eof_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[1]_i_1_n_0 ),
        .Q(eof_count[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "counter_parm" *) 
module counter_parm__parameterized1
   (AN_OBUF,
    SEGS_OBUF,
    Q,
    enb,
    BTNC_IBUF,
    CLK100MHZ_IBUF_BUFG);
  output [7:0]AN_OBUF;
  output [6:0]SEGS_OBUF;
  input [7:0]Q;
  input enb;
  input BTNC_IBUF;
  input CLK100MHZ_IBUF_BUFG;

  wire [7:0]AN_OBUF;
  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [7:0]Q;
  wire [6:0]SEGS_OBUF;
  wire \SEGS_OBUF[6]_inst_i_2_n_0 ;
  wire \SEGS_OBUF[6]_inst_i_3_n_0 ;
  wire \SEGS_OBUF[6]_inst_i_4_n_0 ;
  wire \SEGS_OBUF[6]_inst_i_5_n_0 ;
  wire enb;
  wire \q[0]_i_1_n_0 ;
  wire \q[1]_i_1_n_0 ;
  wire \q[2]_i_1_n_0 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[1] ;
  wire \q_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \AN_OBUF[0]_inst_i_1 
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q_reg_n_0_[2] ),
        .I2(\q_reg_n_0_[0] ),
        .O(AN_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AN_OBUF[1]_inst_i_1 
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q_reg_n_0_[2] ),
        .I2(\q_reg_n_0_[0] ),
        .O(AN_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AN_OBUF[2]_inst_i_1 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[1] ),
        .O(AN_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \AN_OBUF[3]_inst_i_1 
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .O(AN_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AN_OBUF[4]_inst_i_1 
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .O(AN_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \AN_OBUF[5]_inst_i_1 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[1] ),
        .O(AN_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \AN_OBUF[6]_inst_i_1 
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q_reg_n_0_[2] ),
        .I2(\q_reg_n_0_[0] ),
        .O(AN_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \AN_OBUF[7]_inst_i_1 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[1] ),
        .O(AN_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h2086)) 
    \SEGS_OBUF[0]_inst_i_1 
       (.I0(\SEGS_OBUF[6]_inst_i_2_n_0 ),
        .I1(\SEGS_OBUF[6]_inst_i_3_n_0 ),
        .I2(\SEGS_OBUF[6]_inst_i_5_n_0 ),
        .I3(\SEGS_OBUF[6]_inst_i_4_n_0 ),
        .O(SEGS_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'hE448)) 
    \SEGS_OBUF[1]_inst_i_1 
       (.I0(\SEGS_OBUF[6]_inst_i_2_n_0 ),
        .I1(\SEGS_OBUF[6]_inst_i_3_n_0 ),
        .I2(\SEGS_OBUF[6]_inst_i_5_n_0 ),
        .I3(\SEGS_OBUF[6]_inst_i_4_n_0 ),
        .O(SEGS_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h80A4)) 
    \SEGS_OBUF[2]_inst_i_1 
       (.I0(\SEGS_OBUF[6]_inst_i_3_n_0 ),
        .I1(\SEGS_OBUF[6]_inst_i_4_n_0 ),
        .I2(\SEGS_OBUF[6]_inst_i_5_n_0 ),
        .I3(\SEGS_OBUF[6]_inst_i_2_n_0 ),
        .O(SEGS_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h8492)) 
    \SEGS_OBUF[3]_inst_i_1 
       (.I0(\SEGS_OBUF[6]_inst_i_2_n_0 ),
        .I1(\SEGS_OBUF[6]_inst_i_4_n_0 ),
        .I2(\SEGS_OBUF[6]_inst_i_3_n_0 ),
        .I3(\SEGS_OBUF[6]_inst_i_5_n_0 ),
        .O(SEGS_OBUF[3]));
  LUT4 #(
    .INIT(16'h5074)) 
    \SEGS_OBUF[4]_inst_i_1 
       (.I0(\SEGS_OBUF[6]_inst_i_5_n_0 ),
        .I1(\SEGS_OBUF[6]_inst_i_3_n_0 ),
        .I2(\SEGS_OBUF[6]_inst_i_2_n_0 ),
        .I3(\SEGS_OBUF[6]_inst_i_4_n_0 ),
        .O(SEGS_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h480E)) 
    \SEGS_OBUF[5]_inst_i_1 
       (.I0(\SEGS_OBUF[6]_inst_i_4_n_0 ),
        .I1(\SEGS_OBUF[6]_inst_i_2_n_0 ),
        .I2(\SEGS_OBUF[6]_inst_i_5_n_0 ),
        .I3(\SEGS_OBUF[6]_inst_i_3_n_0 ),
        .O(SEGS_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h0483)) 
    \SEGS_OBUF[6]_inst_i_1 
       (.I0(\SEGS_OBUF[6]_inst_i_2_n_0 ),
        .I1(\SEGS_OBUF[6]_inst_i_3_n_0 ),
        .I2(\SEGS_OBUF[6]_inst_i_4_n_0 ),
        .I3(\SEGS_OBUF[6]_inst_i_5_n_0 ),
        .O(SEGS_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \SEGS_OBUF[6]_inst_i_2 
       (.I0(\q_reg_n_0_[1] ),
        .I1(Q[4]),
        .I2(\q_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\q_reg_n_0_[2] ),
        .O(\SEGS_OBUF[6]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \SEGS_OBUF[6]_inst_i_3 
       (.I0(\q_reg_n_0_[1] ),
        .I1(Q[6]),
        .I2(\q_reg_n_0_[0] ),
        .I3(Q[2]),
        .I4(\q_reg_n_0_[2] ),
        .O(\SEGS_OBUF[6]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \SEGS_OBUF[6]_inst_i_4 
       (.I0(\q_reg_n_0_[1] ),
        .I1(Q[5]),
        .I2(\q_reg_n_0_[0] ),
        .I3(Q[1]),
        .I4(\q_reg_n_0_[2] ),
        .O(\SEGS_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \SEGS_OBUF[6]_inst_i_5 
       (.I0(\q_reg_n_0_[1] ),
        .I1(Q[7]),
        .I2(\q_reg_n_0_[0] ),
        .I3(Q[3]),
        .I4(\q_reg_n_0_[2] ),
        .O(\SEGS_OBUF[6]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[0]_i_1 
       (.I0(enb),
        .I1(\q_reg_n_0_[0] ),
        .O(\q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q[1]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(enb),
        .I2(\q_reg_n_0_[1] ),
        .O(\q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q[2]_i_1 
       (.I0(\q_reg_n_0_[1] ),
        .I1(\q_reg_n_0_[0] ),
        .I2(enb),
        .I3(\q_reg_n_0_[2] ),
        .O(\q[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[0]_i_1_n_0 ),
        .Q(\q_reg_n_0_[0] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[1]_i_1_n_0 ),
        .Q(\q_reg_n_0_[1] ),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[2]_i_1_n_0 ),
        .Q(\q_reg_n_0_[2] ),
        .R(BTNC_IBUF));
endmodule

(* ORIG_REF_NAME = "counter_parm" *) 
module counter_parm__parameterized2
   (Q,
    mux_out,
    carry,
    data7,
    data6,
    data3,
    data2,
    data5,
    data4,
    data1,
    \q_reg[0]_0 ,
    out,
    E,
    CLK100MHZ_IBUF_BUFG);
  output [3:0]Q;
  output mux_out;
  output carry;
  input data7;
  input data6;
  input data3;
  input data2;
  input data5;
  input data4;
  input data1;
  input \q_reg[0]_0 ;
  input [1:0]out;
  input [0:0]E;
  input CLK100MHZ_IBUF_BUFG;

  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]E;
  wire [3:0]Q;
  wire __2_i_2_n_0;
  wire __2_i_3_n_0;
  wire __2_i_4_n_0;
  wire __2_i_5_n_0;
  wire carry;
  wire counter_rst;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire mux_out;
  wire [1:0]out;
  wire [3:2]p_0_in;
  wire \q[1]_i_1__1_n_0 ;
  wire \q_reg[0]_0 ;
  wire [0:0]sel0;

  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_sequential_state[2]_i_2__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(carry));
  LUT4 #(
    .INIT(16'hFFFE)) 
    __2_i_1
       (.I0(__2_i_2_n_0),
        .I1(__2_i_3_n_0),
        .I2(__2_i_4_n_0),
        .I3(__2_i_5_n_0),
        .O(mux_out));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT5 #(
    .INIT(32'h44800080)) 
    __2_i_2
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(data5),
        .I3(Q[0]),
        .I4(data4),
        .O(__2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT5 #(
    .INIT(32'h11200020)) 
    __2_i_3
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(data1),
        .I3(Q[0]),
        .I4(\q_reg[0]_0 ),
        .O(__2_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT5 #(
    .INIT(32'h88100010)) 
    __2_i_4
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(data7),
        .I3(Q[0]),
        .I4(data6),
        .O(__2_i_4_n_0));
  LUT5 #(
    .INIT(32'h22400040)) 
    __2_i_5
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(data3),
        .I3(Q[0]),
        .I4(data2),
        .O(__2_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1__1 
       (.I0(Q[0]),
        .O(sel0));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\q[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q[2]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \q[3]_i_1__1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(counter_rst));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q[3]_i_2__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(sel0),
        .Q(Q[0]),
        .R(counter_rst));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\q[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(counter_rst));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(counter_rst));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(counter_rst));
endmodule

module data_buffer
   (Q,
    \FSM_onehot_state_reg[4] ,
    \FSM_onehot_state_reg[4]_0 ,
    out,
    CLK100MHZ_IBUF_BUFG,
    SR);
  output [7:0]Q;
  input \FSM_onehot_state_reg[4] ;
  input \FSM_onehot_state_reg[4]_0 ;
  input [1:0]out;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]SR;

  wire CLK100MHZ_IBUF_BUFG;
  wire \FSM_onehot_state_reg[4] ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [7:0]buffer;
  wire [1:0]out;

  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[4]_0 ),
        .D(buffer[1]),
        .Q(buffer[0]),
        .R(\FSM_onehot_state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[4]_0 ),
        .D(buffer[2]),
        .Q(buffer[1]),
        .R(\FSM_onehot_state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[4]_0 ),
        .D(buffer[3]),
        .Q(buffer[2]),
        .R(\FSM_onehot_state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[4]_0 ),
        .D(buffer[4]),
        .Q(buffer[3]),
        .R(\FSM_onehot_state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[4]_0 ),
        .D(buffer[5]),
        .Q(buffer[4]),
        .R(\FSM_onehot_state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[4]_0 ),
        .D(buffer[6]),
        .Q(buffer[5]),
        .R(\FSM_onehot_state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[4]_0 ),
        .D(buffer[7]),
        .Q(buffer[6]),
        .R(\FSM_onehot_state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[4]_0 ),
        .D(out[0]),
        .Q(buffer[7]),
        .R(\FSM_onehot_state_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(out[1]),
        .D(buffer[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(out[1]),
        .D(buffer[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(out[1]),
        .D(buffer[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(out[1]),
        .D(buffer[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(out[1]),
        .D(buffer[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(out[1]),
        .D(buffer[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(out[1]),
        .D(buffer[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(out[1]),
        .D(buffer[7]),
        .Q(Q[7]),
        .R(SR));
endmodule

module dispctl
   (AN_OBUF,
    SEGS_OBUF,
    Q,
    BTNC_IBUF,
    CLK100MHZ_IBUF_BUFG);
  output [7:0]AN_OBUF;
  output [6:0]SEGS_OBUF;
  input [7:0]Q;
  input BTNC_IBUF;
  input CLK100MHZ_IBUF_BUFG;

  wire [7:0]AN_OBUF;
  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [7:0]Q;
  wire [6:0]SEGS_OBUF;
  wire enb;

  clkenb__parameterized2 U_CLKENB
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .enb(enb));
  counter_parm__parameterized1 U_COUNTER
       (.AN_OBUF(AN_OBUF),
        .BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .Q(Q),
        .SEGS_OBUF(SEGS_OBUF),
        .enb(enb));
endmodule

module f_error
   (\LED[0] ,
    BTNC_IBUF,
    \FSM_onehot_state_reg[9] ,
    set_ferr,
    CLK100MHZ_IBUF_BUFG);
  output [0:0]\LED[0] ;
  input BTNC_IBUF;
  input \FSM_onehot_state_reg[9] ;
  input set_ferr;
  input CLK100MHZ_IBUF_BUFG;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire \FSM_onehot_state_reg[9] ;
  wire [0:0]\LED[0] ;
  wire set_ferr;

  FDRE #(
    .INIT(1'b0)) 
    ferr_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg[9] ),
        .D(set_ferr),
        .Q(\LED[0] ),
        .R(BTNC_IBUF));
endmodule

module fifo_fsm
   (rp0,
    Q,
    gb_reg,
    \q_reg[7] ,
    \wp_reg[2] ,
    D,
    gb0,
    gb,
    BTNC_IBUF,
    CLK100MHZ_IBUF_BUFG,
    \data_reg[7] );
  output rp0;
  output [1:0]Q;
  output gb_reg;
  output [7:0]\q_reg[7] ;
  input \wp_reg[2] ;
  input [0:0]D;
  input gb0;
  input gb;
  input BTNC_IBUF;
  input CLK100MHZ_IBUF_BUFG;
  input [7:0]\data_reg[7] ;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]D;
  wire [1:0]Q;
  wire \data_fsm[7]_i_1_n_0 ;
  wire [7:0]\data_reg[7] ;
  wire gb;
  wire gb0;
  wire gb_reg;
  wire [1:1]next_state;
  wire [7:0]\q_reg[7] ;
  wire rp0;
  wire \wp_reg[2] ;

  LUT2 #(
    .INIT(4'h2)) 
    \data_fsm[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\data_fsm[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_fsm_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\data_fsm[7]_i_1_n_0 ),
        .D(\data_reg[7] [0]),
        .Q(\q_reg[7] [0]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_fsm_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\data_fsm[7]_i_1_n_0 ),
        .D(\data_reg[7] [1]),
        .Q(\q_reg[7] [1]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_fsm_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\data_fsm[7]_i_1_n_0 ),
        .D(\data_reg[7] [2]),
        .Q(\q_reg[7] [2]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_fsm_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\data_fsm[7]_i_1_n_0 ),
        .D(\data_reg[7] [3]),
        .Q(\q_reg[7] [3]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_fsm_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\data_fsm[7]_i_1_n_0 ),
        .D(\data_reg[7] [4]),
        .Q(\q_reg[7] [4]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_fsm_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\data_fsm[7]_i_1_n_0 ),
        .D(\data_reg[7] [5]),
        .Q(\q_reg[7] [5]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_fsm_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\data_fsm[7]_i_1_n_0 ),
        .D(\data_reg[7] [6]),
        .Q(\q_reg[7] [6]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \data_fsm_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\data_fsm[7]_i_1_n_0 ),
        .D(\data_reg[7] [7]),
        .Q(\q_reg[7] [7]),
        .R(BTNC_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF7F0)) 
    gb_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(gb0),
        .I3(gb),
        .O(gb_reg));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rp[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\wp_reg[2] ),
        .O(rp0));
  LUT2 #(
    .INIT(4'h6)) 
    \state[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(next_state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .R(BTNC_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state),
        .Q(Q[1]),
        .R(BTNC_IBUF));
endmodule

module fsm_data
   (out,
    \buffer_reg[7] ,
    \FSM_sequential_state_reg[2] ,
    Q_reg,
    \buffer_reg[0] ,
    \data_reg[0] ,
    store_bit,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[4]_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    set_ferr,
    BTNC_IBUF,
    data_bit_last,
    \q_reg[5] ,
    enable_data,
    \q_reg[2] ,
    \q_reg[1] ,
    \csum_reg[3] ,
    match_idle,
    D,
    CLK100MHZ_IBUF_BUFG);
  output [7:0]out;
  output \buffer_reg[7] ;
  output \FSM_sequential_state_reg[2] ;
  output Q_reg;
  output \buffer_reg[0] ;
  output [0:0]\data_reg[0] ;
  output store_bit;
  output \FSM_onehot_state_reg[0]_0 ;
  output \FSM_onehot_state_reg[4]_0 ;
  output \FSM_onehot_state_reg[3]_0 ;
  output set_ferr;
  input BTNC_IBUF;
  input data_bit_last;
  input \q_reg[5] ;
  input enable_data;
  input \q_reg[2] ;
  input \q_reg[1] ;
  input \csum_reg[3] ;
  input match_idle;
  input [5:0]D;
  input CLK100MHZ_IBUF_BUFG;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [5:0]D;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[1]_i_5_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_sequential_state_reg[2] ;
  wire Q_reg;
  wire \buffer_reg[0] ;
  wire \buffer_reg[7] ;
  wire \csum_reg[3] ;
  wire data_bit_last;
  wire [0:0]\data_reg[0] ;
  wire enable_data;
  wire match_idle;
  (* RTL_KEEP = "yes" *) wire [7:0]out;
  wire \q_reg[1] ;
  wire \q_reg[2] ;
  wire \q_reg[5] ;
  wire set_ferr;
  wire store_bit;

  LUT6 #(
    .INIT(64'h080808080808FF08)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\csum_reg[3] ),
        .I1(match_idle),
        .I2(\q_reg[2] ),
        .I3(\FSM_onehot_state[1]_i_5_n_0 ),
        .I4(out[5]),
        .I5(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\FSM_onehot_state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFF0F8F0)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\q_reg[5] ),
        .I1(out[1]),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(enable_data),
        .I4(out[0]),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(\q_reg[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(out[5]),
        .I3(\FSM_onehot_state[1]_i_5_n_0 ),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[1]_i_5 
       (.I0(out[3]),
        .I1(out[4]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\FSM_onehot_state_reg[3]_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .O(\FSM_onehot_state_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h01010100)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[4]),
        .I4(out[3]),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\q_reg[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(store_bit),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(out[3]),
        .I1(out[4]),
        .O(store_bit));
  LUT6 #(
    .INIT(64'hFFBA000000BA0000)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(out[5]),
        .I1(\q_reg[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state[7]_i_3_n_0 ),
        .I5(\q_reg[2] ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state[7]_i_3 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[4]),
        .I4(out[3]),
        .O(\FSM_onehot_state[7]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(out[0]),
        .S(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(out[1]),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(out[2]),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(out[3]),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(out[4]),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(out[5]),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(out[6]),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(out[7]),
        .R(BTNC_IBUF));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[2]_i_2__1 
       (.I0(out[7]),
        .I1(out[6]),
        .I2(out[0]),
        .O(\FSM_sequential_state_reg[2] ));
  LUT3 #(
    .INIT(8'hBA)) 
    Q_i_1
       (.I0(out[3]),
        .I1(out[4]),
        .I2(data_bit_last),
        .O(Q_reg));
  LUT3 #(
    .INIT(8'h02)) 
    \buffer[7]_i_1 
       (.I0(BTNC_IBUF),
        .I1(out[4]),
        .I2(out[3]),
        .O(\buffer_reg[0] ));
  LUT3 #(
    .INIT(8'hFE)) 
    \buffer[7]_i_2 
       (.I0(BTNC_IBUF),
        .I1(out[4]),
        .I2(out[3]),
        .O(\buffer_reg[7] ));
  LUT2 #(
    .INIT(4'h2)) 
    \data[7]_i_1 
       (.I0(BTNC_IBUF),
        .I1(out[5]),
        .O(\data_reg[0] ));
  LUT2 #(
    .INIT(4'hE)) 
    ferr_i_2
       (.I0(out[6]),
        .I1(out[7]),
        .O(set_ferr));
endmodule

module fsm_pll
   (out,
    \q_reg[3] ,
    E,
    \q_reg[3]_0 ,
    \FSM_sequential_state_reg[3]_0 ,
    \FSM_sequential_state_reg[3]_1 ,
    \FSM_sequential_state_reg[3]_2 ,
    DI,
    S,
    \csum_reg[6] ,
    sample,
    Q,
    \csum_reg[6]_0 ,
    \q_reg[0] ,
    data_bit_last,
    \q_reg[0]_0 ,
    enable_data,
    SR,
    CLK100MHZ_IBUF_BUFG);
  output [0:0]out;
  output [0:0]\q_reg[3] ;
  output [0:0]E;
  output [3:0]\q_reg[3]_0 ;
  output [0:0]\FSM_sequential_state_reg[3]_0 ;
  output \FSM_sequential_state_reg[3]_1 ;
  output [6:0]\FSM_sequential_state_reg[3]_2 ;
  input [3:0]DI;
  input [2:0]S;
  input [0:0]\csum_reg[6] ;
  input sample;
  input [5:0]Q;
  input [6:0]\csum_reg[6]_0 ;
  input \q_reg[0] ;
  input data_bit_last;
  input \q_reg[0]_0 ;
  input enable_data;
  input [0:0]SR;
  input CLK100MHZ_IBUF_BUFG;

  wire CLK100MHZ_IBUF_BUFG;
  wire [3:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[0]_i_2__1_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_3__0_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_1__0_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_2__0_n_0 ;
  wire [0:0]\FSM_sequential_state_reg[3]_0 ;
  wire \FSM_sequential_state_reg[3]_1 ;
  wire [6:0]\FSM_sequential_state_reg[3]_2 ;
  wire [5:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire [0:0]\csum_reg[6] ;
  wire [6:0]\csum_reg[6]_0 ;
  wire data_bit_last;
  wire enable_data;
  wire [5:0]final_time;
  wire [5:0]max_time;
  wire [5:0]min_corr;
  wire [5:0]min_time;
  wire next13_out;
  wire next1_inferred__0_carry_i_5_n_0;
  wire next1_inferred__0_carry_n_0;
  wire next1_inferred__0_carry_n_1;
  wire next1_inferred__0_carry_n_2;
  wire next1_inferred__0_carry_n_3;
  wire next1_inferred__2_carry_i_1_n_0;
  wire next1_inferred__2_carry_i_2_n_0;
  wire next1_inferred__2_carry_i_3_n_0;
  wire next1_inferred__2_carry_i_4_n_0;
  wire next1_inferred__2_carry_i_6_n_0;
  wire next1_inferred__2_carry_i_7_n_0;
  wire next1_inferred__2_carry_i_8_n_0;
  wire next1_inferred__2_carry_n_0;
  wire next1_inferred__2_carry_n_1;
  wire next1_inferred__2_carry_n_2;
  wire next1_inferred__2_carry_n_3;
  wire [5:0]next_final_time;
  wire [6:0]next_max_corr;
  wire [5:0]next_max_time;
  wire [6:0]next_min_corr;
  wire [5:0]next_min_time;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire [0:0]\q_reg[3] ;
  wire [3:0]\q_reg[3]_0 ;
  wire sample;
  (* RTL_KEEP = "yes" *) wire [3:0]state;
  wire update_final_time;
  wire update_max_corr;
  wire update_max_time;
  wire update_min_corr;
  wire update_min_time;
  wire [3:0]NLW_next1_inferred__0_carry_O_UNCONNECTED;
  wire [3:0]NLW_next1_inferred__2_carry_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFFFAABA)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(\FSM_sequential_state[0]_i_2__1_n_0 ),
        .I1(state[3]),
        .I2(out),
        .I3(next13_out),
        .I4(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002F200000)) 
    \FSM_sequential_state[0]_i_2__1 
       (.I0(next1_inferred__2_carry_n_0),
        .I1(next1_inferred__0_carry_n_0),
        .I2(\q_reg[0] ),
        .I3(data_bit_last),
        .I4(\FSM_sequential_state_reg[3]_1 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h050505050A0E0004)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(state[0]),
        .I1(enable_data),
        .I2(state[3]),
        .I3(state[1]),
        .I4(\q_reg[0]_0 ),
        .I5(out),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(\q_reg[0]_0 ),
        .I1(out),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000F00A0000F0C00)) 
    \FSM_sequential_state[1]_i_3__0 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(out),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[0]),
        .O(\FSM_sequential_state[1]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h1F10)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(next1_inferred__2_carry_n_0),
        .I1(next1_inferred__0_carry_n_0),
        .I2(\q_reg[0] ),
        .I3(data_bit_last),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCFFFFCCCC0404)) 
    \FSM_sequential_state[2]_i_1__0 
       (.I0(data_bit_last),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(\q_reg[0] ),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state[0]),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(out),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02AAFFFFABFF5500)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(final_time[5]),
        .I1(final_time[0]),
        .I2(final_time[1]),
        .I3(final_time[2]),
        .I4(final_time[4]),
        .I5(final_time[3]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state[3]),
        .I1(out),
        .I2(state[1]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000222000000000)) 
    \FSM_sequential_state[3]_i_2__0 
       (.I0(\FSM_sequential_state_reg[3]_1 ),
        .I1(out),
        .I2(next1_inferred__2_carry_n_0),
        .I3(next1_inferred__0_carry_n_0),
        .I4(state[0]),
        .I5(\q_reg[0] ),
        .O(\FSM_sequential_state[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(state[1]),
        .I1(state[3]),
        .O(\FSM_sequential_state_reg[3]_1 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1__0_n_0 ),
        .Q(out),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[3]_i_2__0_n_0 ),
        .Q(state[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000C00000000A0)) 
    \final_time[0]_i_1 
       (.I0(min_time[0]),
        .I1(max_time[0]),
        .I2(out),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[0]),
        .O(next_final_time[0]));
  LUT6 #(
    .INIT(64'h00000C00000000A0)) 
    \final_time[1]_i_1 
       (.I0(min_time[1]),
        .I1(max_time[1]),
        .I2(out),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[0]),
        .O(next_final_time[1]));
  LUT6 #(
    .INIT(64'h00000C00000000A0)) 
    \final_time[2]_i_1 
       (.I0(min_time[2]),
        .I1(max_time[2]),
        .I2(out),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[0]),
        .O(next_final_time[2]));
  LUT6 #(
    .INIT(64'h00000C00000000A0)) 
    \final_time[3]_i_1 
       (.I0(min_time[3]),
        .I1(max_time[3]),
        .I2(out),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[0]),
        .O(next_final_time[3]));
  LUT6 #(
    .INIT(64'h00000C00000000A0)) 
    \final_time[4]_i_1 
       (.I0(min_time[4]),
        .I1(max_time[4]),
        .I2(out),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[0]),
        .O(next_final_time[4]));
  LUT4 #(
    .INIT(16'h0212)) 
    \final_time[5]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(out),
        .I3(state[1]),
        .O(update_final_time));
  LUT6 #(
    .INIT(64'h00000C00000000A0)) 
    \final_time[5]_i_2 
       (.I0(min_time[5]),
        .I1(max_time[5]),
        .I2(out),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[0]),
        .O(next_final_time[5]));
  FDRE #(
    .INIT(1'b0)) 
    \final_time_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_final_time),
        .D(next_final_time[0]),
        .Q(final_time[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \final_time_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_final_time),
        .D(next_final_time[1]),
        .Q(final_time[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \final_time_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_final_time),
        .D(next_final_time[2]),
        .Q(final_time[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \final_time_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_final_time),
        .D(next_final_time[3]),
        .Q(final_time[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \final_time_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_final_time),
        .D(next_final_time[4]),
        .Q(final_time[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \final_time_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_final_time),
        .D(next_final_time[5]),
        .Q(final_time[5]),
        .R(SR));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_corr[0]_i_1 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(\csum_reg[6]_0 [0]),
        .O(next_max_corr[0]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_corr[1]_i_1 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(\csum_reg[6]_0 [1]),
        .O(next_max_corr[1]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_corr[2]_i_1 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(\csum_reg[6]_0 [2]),
        .O(next_max_corr[2]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_corr[3]_i_1 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(\csum_reg[6]_0 [3]),
        .O(next_max_corr[3]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_corr[4]_i_1 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(\csum_reg[6]_0 [4]),
        .O(next_max_corr[4]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_corr[5]_i_1 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(\csum_reg[6]_0 [5]),
        .O(next_max_corr[5]));
  LUT4 #(
    .INIT(16'h0102)) 
    \max_corr[6]_i_1 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .O(update_max_corr));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_corr[6]_i_2 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(\csum_reg[6]_0 [6]),
        .O(next_max_corr[6]));
  FDRE #(
    .INIT(1'b0)) 
    \max_corr_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_corr),
        .D(next_max_corr[0]),
        .Q(\FSM_sequential_state_reg[3]_2 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \max_corr_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_corr),
        .D(next_max_corr[1]),
        .Q(\FSM_sequential_state_reg[3]_2 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \max_corr_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_corr),
        .D(next_max_corr[2]),
        .Q(\FSM_sequential_state_reg[3]_2 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \max_corr_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_corr),
        .D(next_max_corr[3]),
        .Q(\FSM_sequential_state_reg[3]_2 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \max_corr_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_corr),
        .D(next_max_corr[4]),
        .Q(\FSM_sequential_state_reg[3]_2 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \max_corr_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_corr),
        .D(next_max_corr[5]),
        .Q(\FSM_sequential_state_reg[3]_2 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \max_corr_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_corr),
        .D(next_max_corr[6]),
        .Q(\FSM_sequential_state_reg[3]_2 [6]),
        .R(SR));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_time[0]_i_1 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(Q[0]),
        .O(next_max_time[0]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_time[1]_i_1 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(Q[1]),
        .O(next_max_time[1]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_time[2]_i_1 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(Q[2]),
        .O(next_max_time[2]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_time[3]_i_1 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(Q[3]),
        .O(next_max_time[3]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_time[4]_i_1 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(Q[4]),
        .O(next_max_time[4]));
  LUT4 #(
    .INIT(16'h0002)) 
    \max_time[5]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(out),
        .I3(state[0]),
        .O(update_max_time));
  LUT5 #(
    .INIT(32'h01000000)) 
    \max_time[5]_i_2 
       (.I0(state[0]),
        .I1(out),
        .I2(state[1]),
        .I3(state[3]),
        .I4(Q[5]),
        .O(next_max_time[5]));
  FDRE #(
    .INIT(1'b0)) 
    \max_time_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_time),
        .D(next_max_time[0]),
        .Q(max_time[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \max_time_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_time),
        .D(next_max_time[1]),
        .Q(max_time[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \max_time_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_time),
        .D(next_max_time[2]),
        .Q(max_time[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \max_time_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_time),
        .D(next_max_time[3]),
        .Q(max_time[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \max_time_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_time),
        .D(next_max_time[4]),
        .Q(max_time[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \max_time_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_max_time),
        .D(next_max_time[5]),
        .Q(max_time[5]),
        .R(SR));
  LUT5 #(
    .INIT(32'h000B0000)) 
    \min_corr[0]_i_1 
       (.I0(\csum_reg[6]_0 [0]),
        .I1(state[3]),
        .I2(out),
        .I3(state[1]),
        .I4(state[0]),
        .O(next_min_corr[0]));
  LUT5 #(
    .INIT(32'h000B0000)) 
    \min_corr[1]_i_1 
       (.I0(\csum_reg[6]_0 [1]),
        .I1(state[3]),
        .I2(out),
        .I3(state[1]),
        .I4(state[0]),
        .O(next_min_corr[1]));
  LUT5 #(
    .INIT(32'h000B0000)) 
    \min_corr[2]_i_1 
       (.I0(\csum_reg[6]_0 [2]),
        .I1(state[3]),
        .I2(out),
        .I3(state[1]),
        .I4(state[0]),
        .O(next_min_corr[2]));
  LUT5 #(
    .INIT(32'h000B0000)) 
    \min_corr[3]_i_1 
       (.I0(\csum_reg[6]_0 [3]),
        .I1(state[3]),
        .I2(out),
        .I3(state[1]),
        .I4(state[0]),
        .O(next_min_corr[3]));
  LUT5 #(
    .INIT(32'h000B0000)) 
    \min_corr[4]_i_1 
       (.I0(\csum_reg[6]_0 [4]),
        .I1(state[3]),
        .I2(out),
        .I3(state[1]),
        .I4(state[0]),
        .O(next_min_corr[4]));
  LUT5 #(
    .INIT(32'h000B0000)) 
    \min_corr[5]_i_1 
       (.I0(\csum_reg[6]_0 [5]),
        .I1(state[3]),
        .I2(out),
        .I3(state[1]),
        .I4(state[0]),
        .O(next_min_corr[5]));
  LUT3 #(
    .INIT(8'h10)) 
    \min_corr[6]_i_1 
       (.I0(out),
        .I1(state[1]),
        .I2(state[0]),
        .O(update_min_corr));
  LUT5 #(
    .INIT(32'h000B0000)) 
    \min_corr[6]_i_2 
       (.I0(\csum_reg[6]_0 [6]),
        .I1(state[3]),
        .I2(out),
        .I3(state[1]),
        .I4(state[0]),
        .O(next_min_corr[6]));
  FDRE #(
    .INIT(1'b0)) 
    \min_corr_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_corr),
        .D(next_min_corr[0]),
        .Q(min_corr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_corr_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_corr),
        .D(next_min_corr[1]),
        .Q(min_corr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_corr_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_corr),
        .D(next_min_corr[2]),
        .Q(min_corr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_corr_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_corr),
        .D(next_min_corr[3]),
        .Q(min_corr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_corr_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_corr),
        .D(next_min_corr[4]),
        .Q(min_corr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_corr_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_corr),
        .D(next_min_corr[5]),
        .Q(min_corr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_corr_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_corr),
        .D(next_min_corr[6]),
        .Q(\FSM_sequential_state_reg[3]_0 ),
        .R(SR));
  LUT5 #(
    .INIT(32'h02000000)) 
    \min_time[0]_i_1 
       (.I0(state[3]),
        .I1(out),
        .I2(state[1]),
        .I3(state[0]),
        .I4(Q[0]),
        .O(next_min_time[0]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \min_time[1]_i_1 
       (.I0(state[3]),
        .I1(out),
        .I2(state[1]),
        .I3(state[0]),
        .I4(Q[1]),
        .O(next_min_time[1]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \min_time[2]_i_1 
       (.I0(state[3]),
        .I1(out),
        .I2(state[1]),
        .I3(state[0]),
        .I4(Q[2]),
        .O(next_min_time[2]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \min_time[3]_i_1 
       (.I0(state[3]),
        .I1(out),
        .I2(state[1]),
        .I3(state[0]),
        .I4(Q[3]),
        .O(next_min_time[3]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \min_time[4]_i_1 
       (.I0(state[3]),
        .I1(out),
        .I2(state[1]),
        .I3(state[0]),
        .I4(Q[4]),
        .O(next_min_time[4]));
  LUT4 #(
    .INIT(16'h0200)) 
    \min_time[5]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(out),
        .I3(state[3]),
        .O(update_min_time));
  LUT5 #(
    .INIT(32'h02000000)) 
    \min_time[5]_i_2 
       (.I0(state[3]),
        .I1(out),
        .I2(state[1]),
        .I3(state[0]),
        .I4(Q[5]),
        .O(next_min_time[5]));
  FDRE #(
    .INIT(1'b0)) 
    \min_time_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_time),
        .D(next_min_time[0]),
        .Q(min_time[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_time_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_time),
        .D(next_min_time[1]),
        .Q(min_time[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_time_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_time),
        .D(next_min_time[2]),
        .Q(min_time[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_time_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_time),
        .D(next_min_time[3]),
        .Q(min_time[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_time_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_time),
        .D(next_min_time[4]),
        .Q(min_time[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \min_time_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(update_min_time),
        .D(next_min_time[5]),
        .Q(min_time[5]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000036363676)) 
    next1
       (.I0(final_time[3]),
        .I1(final_time[4]),
        .I2(final_time[2]),
        .I3(final_time[1]),
        .I4(final_time[0]),
        .I5(final_time[5]),
        .O(next13_out));
  CARRY4 next1_inferred__0_carry
       (.CI(1'b0),
        .CO({next1_inferred__0_carry_n_0,next1_inferred__0_carry_n_1,next1_inferred__0_carry_n_2,next1_inferred__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_next1_inferred__0_carry_O_UNCONNECTED[3:0]),
        .S({next1_inferred__0_carry_i_5_n_0,S}));
  LUT2 #(
    .INIT(4'h9)) 
    next1_inferred__0_carry_i_5
       (.I0(\FSM_sequential_state_reg[3]_2 [6]),
        .I1(\csum_reg[6]_0 [6]),
        .O(next1_inferred__0_carry_i_5_n_0));
  CARRY4 next1_inferred__2_carry
       (.CI(1'b0),
        .CO({next1_inferred__2_carry_n_0,next1_inferred__2_carry_n_1,next1_inferred__2_carry_n_2,next1_inferred__2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({next1_inferred__2_carry_i_1_n_0,next1_inferred__2_carry_i_2_n_0,next1_inferred__2_carry_i_3_n_0,next1_inferred__2_carry_i_4_n_0}),
        .O(NLW_next1_inferred__2_carry_O_UNCONNECTED[3:0]),
        .S({\csum_reg[6] ,next1_inferred__2_carry_i_6_n_0,next1_inferred__2_carry_i_7_n_0,next1_inferred__2_carry_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    next1_inferred__2_carry_i_1
       (.I0(\FSM_sequential_state_reg[3]_0 ),
        .I1(\csum_reg[6]_0 [6]),
        .O(next1_inferred__2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next1_inferred__2_carry_i_2
       (.I0(min_corr[4]),
        .I1(\csum_reg[6]_0 [4]),
        .I2(\csum_reg[6]_0 [5]),
        .I3(min_corr[5]),
        .O(next1_inferred__2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next1_inferred__2_carry_i_3
       (.I0(min_corr[2]),
        .I1(\csum_reg[6]_0 [2]),
        .I2(\csum_reg[6]_0 [3]),
        .I3(min_corr[3]),
        .O(next1_inferred__2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    next1_inferred__2_carry_i_4
       (.I0(min_corr[0]),
        .I1(\csum_reg[6]_0 [0]),
        .I2(\csum_reg[6]_0 [1]),
        .I3(min_corr[1]),
        .O(next1_inferred__2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next1_inferred__2_carry_i_6
       (.I0(min_corr[4]),
        .I1(\csum_reg[6]_0 [4]),
        .I2(min_corr[5]),
        .I3(\csum_reg[6]_0 [5]),
        .O(next1_inferred__2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next1_inferred__2_carry_i_7
       (.I0(min_corr[2]),
        .I1(\csum_reg[6]_0 [2]),
        .I2(min_corr[3]),
        .I3(\csum_reg[6]_0 [3]),
        .O(next1_inferred__2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next1_inferred__2_carry_i_8
       (.I0(min_corr[0]),
        .I1(\csum_reg[6]_0 [0]),
        .I2(min_corr[1]),
        .I3(\csum_reg[6]_0 [1]),
        .O(next1_inferred__2_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    q0_carry_i_1
       (.I0(sample),
        .I1(state[1]),
        .I2(state[3]),
        .I3(out),
        .I4(state[0]),
        .O(\q_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000400)) 
    q0_carry_i_2
       (.I0(state[0]),
        .I1(out),
        .I2(state[3]),
        .I3(state[1]),
        .I4(sample),
        .I5(Q[3]),
        .O(\q_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000400)) 
    q0_carry_i_3
       (.I0(sample),
        .I1(state[1]),
        .I2(state[3]),
        .I3(out),
        .I4(state[0]),
        .I5(Q[2]),
        .O(\q_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h99999A9999999999)) 
    q0_carry_i_4__0
       (.I0(Q[1]),
        .I1(sample),
        .I2(state[0]),
        .I3(out),
        .I4(state[3]),
        .I5(state[1]),
        .O(\q_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'h6666656666666666)) 
    q0_carry_i_5
       (.I0(Q[0]),
        .I1(sample),
        .I2(state[0]),
        .I3(out),
        .I4(state[3]),
        .I5(state[1]),
        .O(\q_reg[3]_0 [0]));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \q[5]_i_2__0 
       (.I0(sample),
        .I1(state[1]),
        .I2(state[3]),
        .I3(out),
        .O(E));
endmodule

module fsm_psfd
   (out,
    SR,
    \q_reg[0] ,
    ferr_reg,
    \FSM_sequential_state_reg[0]_0 ,
    enable_data,
    \LED[1] ,
    \FSM_onehot_state_reg[2] ,
    D,
    sample,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[1]_0 ,
    sample_slow,
    \FSM_onehot_state_reg[9] ,
    BTNC_IBUF,
    \FSM_onehot_state_reg[9]_0 ,
    sfd_match,
    \q_reg[2] ,
    \csum_reg[5] ,
    \q_reg[2]_0 ,
    \q_reg[2]_1 ,
    \FSM_onehot_state_reg[6] ,
    CLK100MHZ_IBUF_BUFG);
  output [1:0]out;
  output [0:0]SR;
  output [0:0]\q_reg[0] ;
  output ferr_reg;
  output [0:0]\FSM_sequential_state_reg[0]_0 ;
  output enable_data;
  output [0:0]\LED[1] ;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]D;
  input sample;
  input [0:0]\FSM_sequential_state_reg[2]_0 ;
  input \FSM_sequential_state_reg[1]_0 ;
  input sample_slow;
  input [3:0]\FSM_onehot_state_reg[9] ;
  input BTNC_IBUF;
  input \FSM_onehot_state_reg[9]_0 ;
  input sfd_match;
  input \q_reg[2] ;
  input \csum_reg[5] ;
  input \q_reg[2]_0 ;
  input \q_reg[2]_1 ;
  input \FSM_onehot_state_reg[6] ;
  input CLK100MHZ_IBUF_BUFG;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]D;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[6] ;
  wire [3:0]\FSM_onehot_state_reg[9] ;
  wire \FSM_onehot_state_reg[9]_0 ;
  wire \FSM_sequential_state[0]_i_1__1_n_0 ;
  wire \FSM_sequential_state[0]_i_2__2_n_0 ;
  wire \FSM_sequential_state[1]_i_1__1_n_0 ;
  wire \FSM_sequential_state[2]_i_1__1_n_0 ;
  wire [0:0]\FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_state_reg[2]_0 ;
  wire [0:0]\LED[1] ;
  wire [0:0]SR;
  wire \csum_reg[5] ;
  wire enable_data;
  wire ferr_reg;
  (* RTL_KEEP = "yes" *) wire [1:0]out;
  wire [0:0]\q_reg[0] ;
  wire \q_reg[2] ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire sample;
  wire sample_slow;
  wire sfd_match;
  (* RTL_KEEP = "yes" *) wire [0:0]state;

  LUT6 #(
    .INIT(64'hFFFFFFFFB7B7B700)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(state),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\FSM_onehot_state_reg[9] [0]),
        .I4(\FSM_onehot_state_reg[9] [1]),
        .I5(\FSM_onehot_state_reg[6] ),
        .O(D));
  LUT3 #(
    .INIT(8'h48)) 
    \FSM_onehot_state[1]_i_4 
       (.I0(state),
        .I1(out[1]),
        .I2(out[0]),
        .O(enable_data));
  LUT5 #(
    .INIT(32'h04004000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg[9] [0]),
        .I1(\FSM_onehot_state_reg[9] [1]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(state),
        .O(\FSM_onehot_state_reg[2] ));
  LUT4 #(
    .INIT(16'h1F10)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(\csum_reg[5] ),
        .I1(out[0]),
        .I2(state),
        .I3(\FSM_sequential_state[0]_i_2__2_n_0 ),
        .O(\FSM_sequential_state[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F5F50CFCFCFCF)) 
    \FSM_sequential_state[0]_i_2__2 
       (.I0(\FSM_onehot_state_reg[9]_0 ),
        .I1(\q_reg[2]_0 ),
        .I2(out[0]),
        .I3(sfd_match),
        .I4(\q_reg[2]_1 ),
        .I5(out[1]),
        .O(\FSM_sequential_state[0]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h33038888)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(\csum_reg[5] ),
        .I1(state),
        .I2(out[1]),
        .I3(\FSM_onehot_state_reg[9]_0 ),
        .I4(out[0]),
        .O(\FSM_sequential_state[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4AA0A0A0A0)) 
    \FSM_sequential_state[2]_i_1__1 
       (.I0(state),
        .I1(\FSM_onehot_state_reg[9]_0 ),
        .I2(out[0]),
        .I3(sfd_match),
        .I4(\q_reg[2] ),
        .I5(out[1]),
        .O(\FSM_sequential_state[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hEFBF)) 
    \FSM_sequential_state[3]_i_1__0 
       (.I0(BTNC_IBUF),
        .I1(out[0]),
        .I2(out[1]),
        .I3(state),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__1_n_0 ),
        .Q(state),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__1_n_0 ),
        .Q(out[0]),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1__1_n_0 ),
        .Q(out[1]),
        .R(BTNC_IBUF));
  LUT3 #(
    .INIT(8'h7C)) 
    \LED_OBUF[1]_inst_i_1 
       (.I0(state),
        .I1(out[1]),
        .I2(out[0]),
        .O(\LED[1] ));
  LUT5 #(
    .INIT(32'hEEEEFEEE)) 
    ferr_i_1
       (.I0(\FSM_onehot_state_reg[9] [3]),
        .I1(\FSM_onehot_state_reg[9] [2]),
        .I2(state),
        .I3(out[1]),
        .I4(out[0]),
        .O(ferr_reg));
  LUT5 #(
    .INIT(32'h00010101)) 
    \q[5]_i_1__1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(sample),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .O(SR));
  LUT4 #(
    .INIT(16'h0051)) 
    \q[6]_i_1__4 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(state),
        .I3(sample_slow),
        .O(\q_reg[0] ));
endmodule

module manchester_tx
   (E,
    JA_OBUF,
    rdy,
    CLK100MHZ_IBUF_BUFG,
    out,
    \byte_addr_reg[0] ,
    SW_IBUF,
    BTNC_IBUF,
    \FSM_sequential_state_reg[0] );
  output [0:0]E;
  output [0:0]JA_OBUF;
  output rdy;
  input CLK100MHZ_IBUF_BUFG;
  input [1:0]out;
  input [7:0]\byte_addr_reg[0] ;
  input [1:0]SW_IBUF;
  input BTNC_IBUF;
  input \FSM_sequential_state_reg[0] ;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire [0:0]JA_OBUF;
  wire [1:0]SW_IBUF;
  wire [7:0]\byte_addr_reg[0] ;
  wire [1:0]out;
  wire rdy;

  transmitter_for_mx U_TX
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .E(E),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .JA_OBUF(JA_OBUF),
        .SW_IBUF(SW_IBUF),
        .\byte_addr_reg[0] (\byte_addr_reg[0] ),
        .out(out),
        .rdy(rdy));
endmodule

module mx_rcvr
   (write,
    \LED[1] ,
    p_0_in1_out,
    Q,
    BTNC_IBUF,
    CLK100MHZ_IBUF_BUFG,
    JA_OBUF,
    \wp_reg[2] );
  output write;
  output [1:0]\LED[1] ;
  output p_0_in1_out;
  output [7:0]Q;
  input BTNC_IBUF;
  input CLK100MHZ_IBUF_BUFG;
  input [0:0]JA_OBUF;
  input \wp_reg[2] ;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]JA_OBUF;
  wire [1:0]\LED[1] ;
  wire [7:0]Q;
  wire U_BIT_COUNT_n_0;
  wire U_BIT_COUNT_n_1;
  wire U_FAST_COUNT_n_10;
  wire U_FAST_COUNT_n_11;
  wire U_FAST_COUNT_n_6;
  wire U_FAST_COUNT_n_7;
  wire U_FAST_COUNT_n_8;
  wire U_FAST_COUNT_n_9;
  wire U_FSM_n_10;
  wire U_FSM_n_11;
  wire U_FSM_n_12;
  wire U_FSM_n_13;
  wire U_FSM_n_14;
  wire U_FSM_n_15;
  wire U_FSM_n_16;
  wire U_FSM_n_17;
  wire U_FSM_n_19;
  wire U_FSM_n_2;
  wire U_FSM_n_22;
  wire U_FSM_n_24;
  wire U_FSM_n_25;
  wire U_FSM_n_4;
  wire U_FSM_n_5;
  wire U_FSM_n_6;
  wire U_FSM_n_7;
  wire U_FSM_n_8;
  wire U_FSM_n_9;
  wire U_IDLE_N_ERROR_CORR_n_0;
  wire U_IDLE_N_ERROR_CORR_n_1;
  wire U_IDLE_N_ERROR_CORR_n_10;
  wire U_IDLE_N_ERROR_CORR_n_11;
  wire U_IDLE_N_ERROR_CORR_n_12;
  wire U_IDLE_N_ERROR_CORR_n_13;
  wire U_IDLE_N_ERROR_CORR_n_14;
  wire U_IDLE_N_ERROR_CORR_n_15;
  wire U_IDLE_N_ERROR_CORR_n_16;
  wire U_IDLE_N_ERROR_CORR_n_17;
  wire U_IDLE_N_ERROR_CORR_n_18;
  wire U_IDLE_N_ERROR_CORR_n_19;
  wire U_IDLE_N_ERROR_CORR_n_2;
  wire U_IDLE_N_ERROR_CORR_n_20;
  wire U_IDLE_N_ERROR_CORR_n_21;
  wire U_IDLE_N_ERROR_CORR_n_22;
  wire U_IDLE_N_ERROR_CORR_n_23;
  wire U_IDLE_N_ERROR_CORR_n_24;
  wire U_IDLE_N_ERROR_CORR_n_25;
  wire U_IDLE_N_ERROR_CORR_n_26;
  wire U_IDLE_N_ERROR_CORR_n_27;
  wire U_IDLE_N_ERROR_CORR_n_28;
  wire U_IDLE_N_ERROR_CORR_n_29;
  wire U_IDLE_N_ERROR_CORR_n_3;
  wire U_IDLE_N_ERROR_CORR_n_30;
  wire U_IDLE_N_ERROR_CORR_n_31;
  wire U_IDLE_N_ERROR_CORR_n_32;
  wire U_IDLE_N_ERROR_CORR_n_33;
  wire U_IDLE_N_ERROR_CORR_n_34;
  wire U_IDLE_N_ERROR_CORR_n_35;
  wire U_IDLE_N_ERROR_CORR_n_36;
  wire U_IDLE_N_ERROR_CORR_n_37;
  wire U_IDLE_N_ERROR_CORR_n_38;
  wire U_IDLE_N_ERROR_CORR_n_39;
  wire U_IDLE_N_ERROR_CORR_n_4;
  wire U_IDLE_N_ERROR_CORR_n_40;
  wire U_IDLE_N_ERROR_CORR_n_41;
  wire U_IDLE_N_ERROR_CORR_n_42;
  wire U_IDLE_N_ERROR_CORR_n_43;
  wire U_IDLE_N_ERROR_CORR_n_44;
  wire U_IDLE_N_ERROR_CORR_n_45;
  wire U_IDLE_N_ERROR_CORR_n_46;
  wire U_IDLE_N_ERROR_CORR_n_47;
  wire U_IDLE_N_ERROR_CORR_n_48;
  wire U_IDLE_N_ERROR_CORR_n_49;
  wire U_IDLE_N_ERROR_CORR_n_5;
  wire U_IDLE_N_ERROR_CORR_n_50;
  wire U_IDLE_N_ERROR_CORR_n_51;
  wire U_IDLE_N_ERROR_CORR_n_52;
  wire U_IDLE_N_ERROR_CORR_n_53;
  wire U_IDLE_N_ERROR_CORR_n_54;
  wire U_IDLE_N_ERROR_CORR_n_6;
  wire U_IDLE_N_ERROR_CORR_n_7;
  wire U_IDLE_N_ERROR_CORR_n_8;
  wire U_IDLE_N_ERROR_CORR_n_9;
  wire U_ONE_N_ZERO_CORR_n_0;
  wire U_ONE_N_ZERO_CORR_n_1;
  wire U_ONE_N_ZERO_CORR_n_10;
  wire U_ONE_N_ZERO_CORR_n_11;
  wire U_ONE_N_ZERO_CORR_n_12;
  wire U_ONE_N_ZERO_CORR_n_13;
  wire U_ONE_N_ZERO_CORR_n_14;
  wire U_ONE_N_ZERO_CORR_n_15;
  wire U_ONE_N_ZERO_CORR_n_16;
  wire U_ONE_N_ZERO_CORR_n_17;
  wire U_ONE_N_ZERO_CORR_n_18;
  wire U_ONE_N_ZERO_CORR_n_19;
  wire U_ONE_N_ZERO_CORR_n_2;
  wire U_ONE_N_ZERO_CORR_n_20;
  wire U_ONE_N_ZERO_CORR_n_21;
  wire U_ONE_N_ZERO_CORR_n_22;
  wire U_ONE_N_ZERO_CORR_n_23;
  wire U_ONE_N_ZERO_CORR_n_24;
  wire U_ONE_N_ZERO_CORR_n_25;
  wire U_ONE_N_ZERO_CORR_n_26;
  wire U_ONE_N_ZERO_CORR_n_27;
  wire U_ONE_N_ZERO_CORR_n_28;
  wire U_ONE_N_ZERO_CORR_n_29;
  wire U_ONE_N_ZERO_CORR_n_3;
  wire U_ONE_N_ZERO_CORR_n_30;
  wire U_ONE_N_ZERO_CORR_n_31;
  wire U_ONE_N_ZERO_CORR_n_32;
  wire U_ONE_N_ZERO_CORR_n_33;
  wire U_ONE_N_ZERO_CORR_n_34;
  wire U_ONE_N_ZERO_CORR_n_35;
  wire U_ONE_N_ZERO_CORR_n_36;
  wire U_ONE_N_ZERO_CORR_n_37;
  wire U_ONE_N_ZERO_CORR_n_38;
  wire U_ONE_N_ZERO_CORR_n_4;
  wire U_ONE_N_ZERO_CORR_n_46;
  wire U_ONE_N_ZERO_CORR_n_47;
  wire U_ONE_N_ZERO_CORR_n_48;
  wire U_ONE_N_ZERO_CORR_n_49;
  wire U_ONE_N_ZERO_CORR_n_5;
  wire U_ONE_N_ZERO_CORR_n_50;
  wire U_ONE_N_ZERO_CORR_n_51;
  wire U_ONE_N_ZERO_CORR_n_52;
  wire U_ONE_N_ZERO_CORR_n_53;
  wire U_ONE_N_ZERO_CORR_n_54;
  wire U_ONE_N_ZERO_CORR_n_55;
  wire U_ONE_N_ZERO_CORR_n_56;
  wire U_ONE_N_ZERO_CORR_n_57;
  wire U_ONE_N_ZERO_CORR_n_58;
  wire U_ONE_N_ZERO_CORR_n_59;
  wire U_ONE_N_ZERO_CORR_n_6;
  wire U_ONE_N_ZERO_CORR_n_60;
  wire U_ONE_N_ZERO_CORR_n_61;
  wire U_ONE_N_ZERO_CORR_n_62;
  wire U_ONE_N_ZERO_CORR_n_63;
  wire U_ONE_N_ZERO_CORR_n_7;
  wire U_ONE_N_ZERO_CORR_n_8;
  wire U_ONE_N_ZERO_CORR_n_9;
  wire U_PREAMBLE_CORR_n_0;
  wire U_PREAMBLE_CORR_n_1;
  wire U_PREAMBLE_CORR_n_10;
  wire U_PREAMBLE_CORR_n_100;
  wire U_PREAMBLE_CORR_n_101;
  wire U_PREAMBLE_CORR_n_102;
  wire U_PREAMBLE_CORR_n_103;
  wire U_PREAMBLE_CORR_n_104;
  wire U_PREAMBLE_CORR_n_105;
  wire U_PREAMBLE_CORR_n_106;
  wire U_PREAMBLE_CORR_n_107;
  wire U_PREAMBLE_CORR_n_108;
  wire U_PREAMBLE_CORR_n_109;
  wire U_PREAMBLE_CORR_n_11;
  wire U_PREAMBLE_CORR_n_110;
  wire U_PREAMBLE_CORR_n_111;
  wire U_PREAMBLE_CORR_n_112;
  wire U_PREAMBLE_CORR_n_113;
  wire U_PREAMBLE_CORR_n_114;
  wire U_PREAMBLE_CORR_n_116;
  wire U_PREAMBLE_CORR_n_117;
  wire U_PREAMBLE_CORR_n_118;
  wire U_PREAMBLE_CORR_n_12;
  wire U_PREAMBLE_CORR_n_13;
  wire U_PREAMBLE_CORR_n_14;
  wire U_PREAMBLE_CORR_n_15;
  wire U_PREAMBLE_CORR_n_16;
  wire U_PREAMBLE_CORR_n_17;
  wire U_PREAMBLE_CORR_n_18;
  wire U_PREAMBLE_CORR_n_19;
  wire U_PREAMBLE_CORR_n_2;
  wire U_PREAMBLE_CORR_n_20;
  wire U_PREAMBLE_CORR_n_21;
  wire U_PREAMBLE_CORR_n_22;
  wire U_PREAMBLE_CORR_n_23;
  wire U_PREAMBLE_CORR_n_24;
  wire U_PREAMBLE_CORR_n_25;
  wire U_PREAMBLE_CORR_n_26;
  wire U_PREAMBLE_CORR_n_27;
  wire U_PREAMBLE_CORR_n_28;
  wire U_PREAMBLE_CORR_n_29;
  wire U_PREAMBLE_CORR_n_3;
  wire U_PREAMBLE_CORR_n_30;
  wire U_PREAMBLE_CORR_n_31;
  wire U_PREAMBLE_CORR_n_32;
  wire U_PREAMBLE_CORR_n_33;
  wire U_PREAMBLE_CORR_n_34;
  wire U_PREAMBLE_CORR_n_35;
  wire U_PREAMBLE_CORR_n_36;
  wire U_PREAMBLE_CORR_n_37;
  wire U_PREAMBLE_CORR_n_38;
  wire U_PREAMBLE_CORR_n_39;
  wire U_PREAMBLE_CORR_n_4;
  wire U_PREAMBLE_CORR_n_40;
  wire U_PREAMBLE_CORR_n_41;
  wire U_PREAMBLE_CORR_n_42;
  wire U_PREAMBLE_CORR_n_43;
  wire U_PREAMBLE_CORR_n_44;
  wire U_PREAMBLE_CORR_n_45;
  wire U_PREAMBLE_CORR_n_46;
  wire U_PREAMBLE_CORR_n_47;
  wire U_PREAMBLE_CORR_n_48;
  wire U_PREAMBLE_CORR_n_49;
  wire U_PREAMBLE_CORR_n_5;
  wire U_PREAMBLE_CORR_n_50;
  wire U_PREAMBLE_CORR_n_51;
  wire U_PREAMBLE_CORR_n_52;
  wire U_PREAMBLE_CORR_n_53;
  wire U_PREAMBLE_CORR_n_54;
  wire U_PREAMBLE_CORR_n_55;
  wire U_PREAMBLE_CORR_n_56;
  wire U_PREAMBLE_CORR_n_57;
  wire U_PREAMBLE_CORR_n_58;
  wire U_PREAMBLE_CORR_n_59;
  wire U_PREAMBLE_CORR_n_6;
  wire U_PREAMBLE_CORR_n_60;
  wire U_PREAMBLE_CORR_n_61;
  wire U_PREAMBLE_CORR_n_62;
  wire U_PREAMBLE_CORR_n_63;
  wire U_PREAMBLE_CORR_n_64;
  wire U_PREAMBLE_CORR_n_65;
  wire U_PREAMBLE_CORR_n_66;
  wire U_PREAMBLE_CORR_n_67;
  wire U_PREAMBLE_CORR_n_68;
  wire U_PREAMBLE_CORR_n_69;
  wire U_PREAMBLE_CORR_n_7;
  wire U_PREAMBLE_CORR_n_70;
  wire U_PREAMBLE_CORR_n_71;
  wire U_PREAMBLE_CORR_n_72;
  wire U_PREAMBLE_CORR_n_73;
  wire U_PREAMBLE_CORR_n_74;
  wire U_PREAMBLE_CORR_n_75;
  wire U_PREAMBLE_CORR_n_76;
  wire U_PREAMBLE_CORR_n_77;
  wire U_PREAMBLE_CORR_n_78;
  wire U_PREAMBLE_CORR_n_79;
  wire U_PREAMBLE_CORR_n_8;
  wire U_PREAMBLE_CORR_n_80;
  wire U_PREAMBLE_CORR_n_81;
  wire U_PREAMBLE_CORR_n_82;
  wire U_PREAMBLE_CORR_n_83;
  wire U_PREAMBLE_CORR_n_84;
  wire U_PREAMBLE_CORR_n_85;
  wire U_PREAMBLE_CORR_n_86;
  wire U_PREAMBLE_CORR_n_87;
  wire U_PREAMBLE_CORR_n_88;
  wire U_PREAMBLE_CORR_n_89;
  wire U_PREAMBLE_CORR_n_9;
  wire U_PREAMBLE_CORR_n_90;
  wire U_PREAMBLE_CORR_n_91;
  wire U_PREAMBLE_CORR_n_92;
  wire U_PREAMBLE_CORR_n_93;
  wire U_PREAMBLE_CORR_n_94;
  wire U_PREAMBLE_CORR_n_95;
  wire U_PREAMBLE_CORR_n_96;
  wire U_PREAMBLE_CORR_n_97;
  wire U_PREAMBLE_CORR_n_98;
  wire U_PREAMBLE_CORR_n_99;
  wire U_SFD_CORR_n_62;
  wire U_SFD_CORR_n_63;
  wire U_SFD_CORR_n_64;
  wire U_SFD_CORR_n_65;
  wire U_SFD_CORR_n_66;
  wire U_SFD_CORR_n_67;
  wire U_SFD_CORR_n_68;
  wire U_SFD_CORR_n_69;
  wire U_SFD_CORR_n_70;
  wire U_SFD_CORR_n_71;
  wire U_SFD_CORR_n_72;
  wire U_SFD_CORR_n_73;
  wire U_SFD_CORR_n_74;
  wire U_SFD_CORR_n_75;
  wire U_SFD_CORR_n_76;
  wire U_SFD_CORR_n_77;
  wire U_SFD_CORR_n_78;
  wire U_SFD_CORR_n_79;
  wire U_SFD_CORR_n_80;
  wire U_SFD_CORR_n_81;
  wire U_SFD_CORR_n_82;
  wire U_SFD_CORR_n_83;
  wire U_SFD_CORR_n_84;
  wire U_SFD_CORR_n_85;
  wire U_SFD_CORR_n_86;
  wire U_SFD_CORR_n_87;
  wire U_SFD_CORR_n_88;
  wire U_SFD_CORR_n_89;
  wire U_SFD_CORR_n_90;
  wire U_SFD_CORR_n_91;
  wire U_SFD_CORR_n_92;
  wire U_SFD_CORR_n_93;
  wire U_SLOW_COUNT_n_0;
  wire U_SLOW_COUNT_n_1;
  wire U_SLOW_COUNT_n_2;
  wire data_bit;
  wire match_error;
  wire match_idle;
  wire [6:0]max_corr;
  wire [6:6]min_corr;
  wire p_0_in1_out;
  wire preamble_match;
  wire sample;
  wire [5:0]sample_count;
  wire sample_slow;
  wire set_ferr;
  wire sfd_match;
  wire [124:0]shreg;
  wire store_bit;
  wire store_byte;
  wire sync_out;
  wire \wp_reg[2] ;
  wire write;
  wire [6:0]zero_one_strength;

  counter U_BIT_COUNT
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D(U_BIT_COUNT_n_0),
        .\FSM_onehot_state_reg[7] (U_BIT_COUNT_n_1),
        .\FSM_sequential_state_reg[2] ({U_FSM_n_5,U_FSM_n_6}),
        .\csum_reg[3] (U_ONE_N_ZERO_CORR_n_48),
        .match_error(match_error),
        .match_idle(match_idle),
        .out({U_FSM_n_2,data_bit}),
        .store_bit(store_bit));
  data_buffer U_DATA
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .\FSM_onehot_state_reg[4] (U_FSM_n_17),
        .\FSM_onehot_state_reg[4]_0 (U_FSM_n_8),
        .Q(Q),
        .SR(U_FSM_n_19),
        .out({store_byte,data_bit}));
  f_error U_ERROR
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .\FSM_onehot_state_reg[9] (U_FSM_n_16),
        .\LED[0] (\LED[1] [0]),
        .set_ferr(set_ferr));
  counter__parameterized1 U_FAST_COUNT
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D({U_FAST_COUNT_n_9,U_FAST_COUNT_n_10}),
        .DI(U_FSM_n_7),
        .E(U_FSM_n_9),
        .\FSM_onehot_state_reg[0] (U_FSM_n_22),
        .\FSM_onehot_state_reg[1] (U_FAST_COUNT_n_11),
        .\FSM_onehot_state_reg[7] (U_FAST_COUNT_n_6),
        .\FSM_sequential_state_reg[1] (U_FAST_COUNT_n_8),
        .\FSM_sequential_state_reg[3] (U_FAST_COUNT_n_7),
        .Q(sample_count),
        .S({U_FSM_n_11,U_FSM_n_12,U_FSM_n_13,U_FSM_n_14}),
        .SR(U_FSM_n_10),
        .\csum_reg[3] (U_ONE_N_ZERO_CORR_n_48),
        .\csum_reg[5] (U_IDLE_N_ERROR_CORR_n_54));
  FSMs U_FSM
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D({U_FAST_COUNT_n_9,U_BIT_COUNT_n_0,U_ONE_N_ZERO_CORR_n_46,U_ONE_N_ZERO_CORR_n_47,U_FAST_COUNT_n_10}),
        .DI({U_ONE_N_ZERO_CORR_n_35,U_ONE_N_ZERO_CORR_n_36,U_ONE_N_ZERO_CORR_n_37,U_ONE_N_ZERO_CORR_n_38}),
        .E(U_FSM_n_9),
        .\FSM_onehot_state_reg[2] (U_FSM_n_22),
        .\FSM_onehot_state_reg[3] (U_FSM_n_25),
        .\FSM_onehot_state_reg[4] (U_FSM_n_24),
        .\FSM_sequential_state_reg[3] (min_corr),
        .\FSM_sequential_state_reg[3]_0 (max_corr),
        .\LED[1] (\LED[1] [1]),
        .Q(sample_count),
        .S({U_ONE_N_ZERO_CORR_n_49,U_ONE_N_ZERO_CORR_n_50,U_ONE_N_ZERO_CORR_n_51}),
        .SR(U_FSM_n_10),
        .\buffer_reg[0] (U_FSM_n_17),
        .\buffer_reg[7] (U_FSM_n_8),
        .\csum_reg[3] (U_ONE_N_ZERO_CORR_n_48),
        .\csum_reg[5] (U_PREAMBLE_CORR_n_82),
        .\csum_reg[6] (U_ONE_N_ZERO_CORR_n_52),
        .\csum_reg[6]_0 (zero_one_strength),
        .\data_reg[0] (U_FSM_n_19),
        .ferr_reg(U_FSM_n_16),
        .match_idle(match_idle),
        .out({store_byte,U_FSM_n_2,data_bit,U_FSM_n_4}),
        .p_0_in1_out(p_0_in1_out),
        .\q_reg[0] (U_FSM_n_15),
        .\q_reg[0]_0 (U_FAST_COUNT_n_7),
        .\q_reg[0]_1 (U_FAST_COUNT_n_8),
        .\q_reg[1] (U_FAST_COUNT_n_6),
        .\q_reg[2] (U_SLOW_COUNT_n_0),
        .\q_reg[2]_0 (U_SLOW_COUNT_n_1),
        .\q_reg[2]_1 (U_SLOW_COUNT_n_2),
        .\q_reg[2]_2 (U_BIT_COUNT_n_1),
        .\q_reg[3] (U_FSM_n_7),
        .\q_reg[3]_0 ({U_FSM_n_11,U_FSM_n_12,U_FSM_n_13,U_FSM_n_14}),
        .\q_reg[5] ({U_FSM_n_5,U_FSM_n_6}),
        .\q_reg[5]_0 (U_FAST_COUNT_n_11),
        .sample(sample),
        .sample_slow(sample_slow),
        .set_ferr(set_ferr),
        .sfd_match(sfd_match),
        .store_bit(store_bit),
        .\wp_reg[2] (\wp_reg[2] ),
        .write(write));
  correlator__parameterized2 U_IDLE_N_ERROR_CORR
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D(U_IDLE_N_ERROR_CORR_n_52),
        .E(sample),
        .\FSM_onehot_state_reg[2] (U_IDLE_N_ERROR_CORR_n_54),
        .\csum_reg[0]_0 (U_IDLE_N_ERROR_CORR_n_48),
        .\csum_reg[1]_0 (U_IDLE_N_ERROR_CORR_n_51),
        .\csum_reg[2]_0 (U_IDLE_N_ERROR_CORR_n_38),
        .\csum_reg[2]_1 (U_IDLE_N_ERROR_CORR_n_39),
        .\csum_reg[2]_2 (U_IDLE_N_ERROR_CORR_n_43),
        .\csum_reg[2]_3 (U_IDLE_N_ERROR_CORR_n_44),
        .\csum_reg[2]_4 (U_IDLE_N_ERROR_CORR_n_45),
        .\csum_reg[2]_5 (U_IDLE_N_ERROR_CORR_n_47),
        .\csum_reg[4]_0 (U_IDLE_N_ERROR_CORR_n_32),
        .\csum_reg[4]_1 (U_IDLE_N_ERROR_CORR_n_33),
        .\csum_reg[4]_2 (U_IDLE_N_ERROR_CORR_n_34),
        .\csum_reg[4]_3 (U_IDLE_N_ERROR_CORR_n_36),
        .\csum_reg[4]_4 (U_IDLE_N_ERROR_CORR_n_37),
        .\csum_reg[4]_5 (U_IDLE_N_ERROR_CORR_n_40),
        .\csum_reg[4]_6 (U_IDLE_N_ERROR_CORR_n_41),
        .\csum_reg[4]_7 (U_IDLE_N_ERROR_CORR_n_46),
        .\csum_reg[4]_8 (U_IDLE_N_ERROR_CORR_n_49),
        .\csum_reg[4]_9 (U_IDLE_N_ERROR_CORR_n_50),
        .\csum_reg[5]_0 (U_IDLE_N_ERROR_CORR_n_35),
        .\csum_reg[5]_1 (U_IDLE_N_ERROR_CORR_n_42),
        .\csum_reg[6]_0 (U_IDLE_N_ERROR_CORR_n_53),
        .match_error(match_error),
        .match_idle(match_idle),
        .out({U_ONE_N_ZERO_CORR_n_58,U_ONE_N_ZERO_CORR_n_59,U_ONE_N_ZERO_CORR_n_60}),
        .\shreg_reg[10] (U_IDLE_N_ERROR_CORR_n_4),
        .\shreg_reg[10]_0 (U_ONE_N_ZERO_CORR_n_3),
        .\shreg_reg[11]_0 (U_ONE_N_ZERO_CORR_n_55),
        .\shreg_reg[12]_0 (U_IDLE_N_ERROR_CORR_n_5),
        .\shreg_reg[13] (U_IDLE_N_ERROR_CORR_n_6),
        .\shreg_reg[13]_0 (U_ONE_N_ZERO_CORR_n_6),
        .\shreg_reg[15] (U_IDLE_N_ERROR_CORR_n_7),
        .\shreg_reg[15]_0 (U_ONE_N_ZERO_CORR_n_7),
        .\shreg_reg[17] (U_IDLE_N_ERROR_CORR_n_8),
        .\shreg_reg[17]_0 (U_ONE_N_ZERO_CORR_n_8),
        .\shreg_reg[17]_1 (U_ONE_N_ZERO_CORR_n_53),
        .\shreg_reg[19] (U_IDLE_N_ERROR_CORR_n_9),
        .\shreg_reg[19]_0 (U_ONE_N_ZERO_CORR_n_9),
        .\shreg_reg[1] (U_IDLE_N_ERROR_CORR_n_0),
        .\shreg_reg[1]_0 (U_ONE_N_ZERO_CORR_n_0),
        .\shreg_reg[21] (U_IDLE_N_ERROR_CORR_n_10),
        .\shreg_reg[21]_0 (U_ONE_N_ZERO_CORR_n_10),
        .\shreg_reg[23] (U_IDLE_N_ERROR_CORR_n_11),
        .\shreg_reg[23]_0 (U_ONE_N_ZERO_CORR_n_56),
        .\shreg_reg[23]_1 (U_ONE_N_ZERO_CORR_n_11),
        .\shreg_reg[24] (U_ONE_N_ZERO_CORR_n_14),
        .\shreg_reg[24]_0 ({U_ONE_N_ZERO_CORR_n_61,U_ONE_N_ZERO_CORR_n_62,U_ONE_N_ZERO_CORR_n_63}),
        .\shreg_reg[26] (U_IDLE_N_ERROR_CORR_n_12),
        .\shreg_reg[26]_0 (U_ONE_N_ZERO_CORR_n_13),
        .\shreg_reg[28] (U_IDLE_N_ERROR_CORR_n_13),
        .\shreg_reg[28]_0 (U_ONE_N_ZERO_CORR_n_12),
        .\shreg_reg[30]_0 (U_IDLE_N_ERROR_CORR_n_14),
        .\shreg_reg[31] (U_IDLE_N_ERROR_CORR_n_15),
        .\shreg_reg[31]_0 (U_ONE_N_ZERO_CORR_n_15),
        .\shreg_reg[33] (U_IDLE_N_ERROR_CORR_n_16),
        .\shreg_reg[33]_0 (U_ONE_N_ZERO_CORR_n_16),
        .\shreg_reg[35] (U_IDLE_N_ERROR_CORR_n_17),
        .\shreg_reg[35]_0 (U_ONE_N_ZERO_CORR_n_17),
        .\shreg_reg[37] (U_IDLE_N_ERROR_CORR_n_18),
        .\shreg_reg[37]_0 (U_ONE_N_ZERO_CORR_n_18),
        .\shreg_reg[39] (U_IDLE_N_ERROR_CORR_n_19),
        .\shreg_reg[39]_0 (U_ONE_N_ZERO_CORR_n_19),
        .\shreg_reg[3] (U_IDLE_N_ERROR_CORR_n_1),
        .\shreg_reg[3]_0 (U_ONE_N_ZERO_CORR_n_1),
        .\shreg_reg[41] (U_IDLE_N_ERROR_CORR_n_20),
        .\shreg_reg[41]_0 (U_ONE_N_ZERO_CORR_n_20),
        .\shreg_reg[42] (U_ONE_N_ZERO_CORR_n_21),
        .\shreg_reg[42]_0 (U_ONE_N_ZERO_CORR_n_32),
        .\shreg_reg[42]_1 (U_ONE_N_ZERO_CORR_n_33),
        .\shreg_reg[42]_2 (U_ONE_N_ZERO_CORR_n_34),
        .\shreg_reg[44] (U_IDLE_N_ERROR_CORR_n_21),
        .\shreg_reg[44]_0 (U_ONE_N_ZERO_CORR_n_22),
        .\shreg_reg[46] (U_IDLE_N_ERROR_CORR_n_22),
        .\shreg_reg[46]_0 (U_ONE_N_ZERO_CORR_n_23),
        .\shreg_reg[48]_0 (U_IDLE_N_ERROR_CORR_n_23),
        .\shreg_reg[49] (U_IDLE_N_ERROR_CORR_n_24),
        .\shreg_reg[49]_0 (U_ONE_N_ZERO_CORR_n_24),
        .\shreg_reg[51] (U_IDLE_N_ERROR_CORR_n_25),
        .\shreg_reg[51]_0 (U_ONE_N_ZERO_CORR_n_25),
        .\shreg_reg[53] (U_IDLE_N_ERROR_CORR_n_26),
        .\shreg_reg[53]_0 (U_ONE_N_ZERO_CORR_n_26),
        .\shreg_reg[55] (U_IDLE_N_ERROR_CORR_n_27),
        .\shreg_reg[55]_0 (U_ONE_N_ZERO_CORR_n_27),
        .\shreg_reg[57] (U_IDLE_N_ERROR_CORR_n_28),
        .\shreg_reg[57]_0 (U_ONE_N_ZERO_CORR_n_28),
        .\shreg_reg[59] (U_IDLE_N_ERROR_CORR_n_29),
        .\shreg_reg[59]_0 (U_ONE_N_ZERO_CORR_n_29),
        .\shreg_reg[5] (U_IDLE_N_ERROR_CORR_n_2),
        .\shreg_reg[5]_0 (U_ONE_N_ZERO_CORR_n_2),
        .\shreg_reg[60]_0 (U_ONE_N_ZERO_CORR_n_54),
        .\shreg_reg[60]_1 (U_ONE_N_ZERO_CORR_n_57),
        .\shreg_reg[61] (U_IDLE_N_ERROR_CORR_n_30),
        .\shreg_reg[61]_0 (U_ONE_N_ZERO_CORR_n_30),
        .\shreg_reg[63] (U_IDLE_N_ERROR_CORR_n_31),
        .\shreg_reg[63]_0 (U_ONE_N_ZERO_CORR_n_31),
        .\shreg_reg[6] (U_ONE_N_ZERO_CORR_n_5),
        .\shreg_reg[8] (U_IDLE_N_ERROR_CORR_n_3),
        .\shreg_reg[8]_0 (U_ONE_N_ZERO_CORR_n_4),
        .sync_out(sync_out));
  correlator__parameterized1 U_ONE_N_ZERO_CORR
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D({U_ONE_N_ZERO_CORR_n_46,U_ONE_N_ZERO_CORR_n_47}),
        .DI({U_ONE_N_ZERO_CORR_n_35,U_ONE_N_ZERO_CORR_n_36,U_ONE_N_ZERO_CORR_n_37,U_ONE_N_ZERO_CORR_n_38}),
        .E(sample),
        .\FSM_onehot_state_reg[0] (U_FSM_n_25),
        .\FSM_onehot_state_reg[2] (U_ONE_N_ZERO_CORR_n_48),
        .\FSM_onehot_state_reg[2]_0 (U_FSM_n_24),
        .\FSM_sequential_state_reg[3] (U_ONE_N_ZERO_CORR_n_52),
        .Q(zero_one_strength),
        .S({U_ONE_N_ZERO_CORR_n_49,U_ONE_N_ZERO_CORR_n_50,U_ONE_N_ZERO_CORR_n_51}),
        .\csum_reg[1]_0 (U_ONE_N_ZERO_CORR_n_53),
        .\csum_reg[1]_1 (U_ONE_N_ZERO_CORR_n_54),
        .\csum_reg[1]_2 (U_ONE_N_ZERO_CORR_n_55),
        .\csum_reg[2]_0 (U_ONE_N_ZERO_CORR_n_34),
        .\csum_reg[2]_1 (U_ONE_N_ZERO_CORR_n_56),
        .\csum_reg[2]_2 (U_ONE_N_ZERO_CORR_n_57),
        .\csum_reg[4]_0 (U_ONE_N_ZERO_CORR_n_32),
        .\csum_reg[4]_1 (U_ONE_N_ZERO_CORR_n_33),
        .\csum_reg[4]_2 ({U_ONE_N_ZERO_CORR_n_58,U_ONE_N_ZERO_CORR_n_59,U_ONE_N_ZERO_CORR_n_60}),
        .\csum_reg[4]_3 ({U_ONE_N_ZERO_CORR_n_61,U_ONE_N_ZERO_CORR_n_62,U_ONE_N_ZERO_CORR_n_63}),
        .\csum_reg[5]_0 (U_ONE_N_ZERO_CORR_n_31),
        .\max_corr_reg[6] (max_corr),
        .\min_corr_reg[6] (min_corr),
        .out(U_FSM_n_4),
        .sel({U_ONE_N_ZERO_CORR_n_3,U_ONE_N_ZERO_CORR_n_4,U_ONE_N_ZERO_CORR_n_5}),
        .\shreg_reg[0] (U_IDLE_N_ERROR_CORR_n_0),
        .\shreg_reg[11] ({U_IDLE_N_ERROR_CORR_n_5,U_IDLE_N_ERROR_CORR_n_4,U_IDLE_N_ERROR_CORR_n_3}),
        .\shreg_reg[11]_0 (U_IDLE_N_ERROR_CORR_n_48),
        .\shreg_reg[11]_1 (U_IDLE_N_ERROR_CORR_n_47),
        .\shreg_reg[11]_2 (U_IDLE_N_ERROR_CORR_n_46),
        .\shreg_reg[12] (U_IDLE_N_ERROR_CORR_n_6),
        .\shreg_reg[14] (U_ONE_N_ZERO_CORR_n_6),
        .\shreg_reg[14]_0 (U_IDLE_N_ERROR_CORR_n_7),
        .\shreg_reg[16] (U_ONE_N_ZERO_CORR_n_7),
        .\shreg_reg[16]_0 (U_IDLE_N_ERROR_CORR_n_8),
        .\shreg_reg[18] (U_ONE_N_ZERO_CORR_n_8),
        .\shreg_reg[18]_0 (U_IDLE_N_ERROR_CORR_n_9),
        .\shreg_reg[20] (U_ONE_N_ZERO_CORR_n_9),
        .\shreg_reg[20]_0 (U_IDLE_N_ERROR_CORR_n_10),
        .\shreg_reg[22] (U_ONE_N_ZERO_CORR_n_10),
        .\shreg_reg[22]_0 (U_IDLE_N_ERROR_CORR_n_11),
        .\shreg_reg[24]_0 (U_ONE_N_ZERO_CORR_n_11),
        .\shreg_reg[29] ({U_ONE_N_ZERO_CORR_n_12,U_ONE_N_ZERO_CORR_n_13,U_ONE_N_ZERO_CORR_n_14}),
        .\shreg_reg[29]_0 ({U_IDLE_N_ERROR_CORR_n_14,U_IDLE_N_ERROR_CORR_n_13,U_IDLE_N_ERROR_CORR_n_12}),
        .\shreg_reg[29]_1 (U_IDLE_N_ERROR_CORR_n_51),
        .\shreg_reg[29]_2 (U_IDLE_N_ERROR_CORR_n_50),
        .\shreg_reg[29]_3 (U_IDLE_N_ERROR_CORR_n_49),
        .\shreg_reg[2] (U_ONE_N_ZERO_CORR_n_0),
        .\shreg_reg[2]_0 (U_IDLE_N_ERROR_CORR_n_1),
        .\shreg_reg[30] (U_IDLE_N_ERROR_CORR_n_15),
        .\shreg_reg[32] (U_ONE_N_ZERO_CORR_n_15),
        .\shreg_reg[32]_0 (U_IDLE_N_ERROR_CORR_n_16),
        .\shreg_reg[34] (U_ONE_N_ZERO_CORR_n_16),
        .\shreg_reg[34]_0 (U_IDLE_N_ERROR_CORR_n_17),
        .\shreg_reg[36] (U_ONE_N_ZERO_CORR_n_17),
        .\shreg_reg[36]_0 (U_IDLE_N_ERROR_CORR_n_18),
        .\shreg_reg[36]_1 (U_IDLE_N_ERROR_CORR_n_39),
        .\shreg_reg[36]_2 (U_IDLE_N_ERROR_CORR_n_36),
        .\shreg_reg[36]_3 (U_IDLE_N_ERROR_CORR_n_34),
        .\shreg_reg[38] (U_ONE_N_ZERO_CORR_n_18),
        .\shreg_reg[38]_0 (U_IDLE_N_ERROR_CORR_n_19),
        .\shreg_reg[40] (U_ONE_N_ZERO_CORR_n_19),
        .\shreg_reg[40]_0 (U_IDLE_N_ERROR_CORR_n_20),
        .\shreg_reg[42]_0 (U_ONE_N_ZERO_CORR_n_20),
        .\shreg_reg[42]_1 (U_IDLE_N_ERROR_CORR_n_44),
        .\shreg_reg[42]_2 (U_IDLE_N_ERROR_CORR_n_40),
        .\shreg_reg[42]_3 (U_IDLE_N_ERROR_CORR_n_41),
        .\shreg_reg[43] (U_ONE_N_ZERO_CORR_n_21),
        .\shreg_reg[43]_0 (U_IDLE_N_ERROR_CORR_n_21),
        .\shreg_reg[45] (U_ONE_N_ZERO_CORR_n_22),
        .\shreg_reg[45]_0 (U_IDLE_N_ERROR_CORR_n_22),
        .\shreg_reg[47] (U_ONE_N_ZERO_CORR_n_23),
        .\shreg_reg[47]_0 (U_IDLE_N_ERROR_CORR_n_23),
        .\shreg_reg[48] (U_IDLE_N_ERROR_CORR_n_24),
        .\shreg_reg[48]_0 (U_IDLE_N_ERROR_CORR_n_32),
        .\shreg_reg[4] (U_ONE_N_ZERO_CORR_n_1),
        .\shreg_reg[4]_0 (U_IDLE_N_ERROR_CORR_n_2),
        .\shreg_reg[50] (U_ONE_N_ZERO_CORR_n_24),
        .\shreg_reg[50]_0 (U_IDLE_N_ERROR_CORR_n_25),
        .\shreg_reg[52] (U_ONE_N_ZERO_CORR_n_25),
        .\shreg_reg[52]_0 (U_IDLE_N_ERROR_CORR_n_26),
        .\shreg_reg[54] (U_ONE_N_ZERO_CORR_n_26),
        .\shreg_reg[54]_0 (U_IDLE_N_ERROR_CORR_n_27),
        .\shreg_reg[54]_1 (U_IDLE_N_ERROR_CORR_n_45),
        .\shreg_reg[54]_2 (U_IDLE_N_ERROR_CORR_n_43),
        .\shreg_reg[54]_3 (U_IDLE_N_ERROR_CORR_n_42),
        .\shreg_reg[54]_4 (U_IDLE_N_ERROR_CORR_n_33),
        .\shreg_reg[56] (U_ONE_N_ZERO_CORR_n_27),
        .\shreg_reg[56]_0 (U_IDLE_N_ERROR_CORR_n_28),
        .\shreg_reg[58] (U_ONE_N_ZERO_CORR_n_28),
        .\shreg_reg[58]_0 (U_IDLE_N_ERROR_CORR_n_29),
        .\shreg_reg[60] (U_ONE_N_ZERO_CORR_n_29),
        .\shreg_reg[60]_0 (U_IDLE_N_ERROR_CORR_n_30),
        .\shreg_reg[60]_1 (U_IDLE_N_ERROR_CORR_n_53),
        .\shreg_reg[60]_2 (U_IDLE_N_ERROR_CORR_n_38),
        .\shreg_reg[60]_3 (U_IDLE_N_ERROR_CORR_n_37),
        .\shreg_reg[60]_4 (U_IDLE_N_ERROR_CORR_n_35),
        .\shreg_reg[60]_5 (U_IDLE_N_ERROR_CORR_n_52),
        .\shreg_reg[62] (U_ONE_N_ZERO_CORR_n_30),
        .\shreg_reg[62]_0 (U_IDLE_N_ERROR_CORR_n_31),
        .\shreg_reg[6]_0 (U_ONE_N_ZERO_CORR_n_2));
  correlator U_PREAMBLE_CORR
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .\FSM_sequential_state_reg[1] (U_PREAMBLE_CORR_n_82),
        .\FSM_sequential_state_reg[2] (U_FSM_n_5),
        .\csum_reg[3]_0 (U_PREAMBLE_CORR_n_63),
        .\csum_reg[3]_1 (U_PREAMBLE_CORR_n_65),
        .\csum_reg[3]_10 (U_PREAMBLE_CORR_n_83),
        .\csum_reg[3]_11 (U_PREAMBLE_CORR_n_85),
        .\csum_reg[3]_12 (U_PREAMBLE_CORR_n_86),
        .\csum_reg[3]_13 (U_PREAMBLE_CORR_n_87),
        .\csum_reg[3]_14 (U_PREAMBLE_CORR_n_89),
        .\csum_reg[3]_15 (U_PREAMBLE_CORR_n_90),
        .\csum_reg[3]_16 (U_PREAMBLE_CORR_n_95),
        .\csum_reg[3]_17 (U_PREAMBLE_CORR_n_96),
        .\csum_reg[3]_18 (U_PREAMBLE_CORR_n_97),
        .\csum_reg[3]_19 (U_PREAMBLE_CORR_n_98),
        .\csum_reg[3]_2 (U_PREAMBLE_CORR_n_66),
        .\csum_reg[3]_20 (U_PREAMBLE_CORR_n_102),
        .\csum_reg[3]_21 (U_PREAMBLE_CORR_n_103),
        .\csum_reg[3]_22 (U_PREAMBLE_CORR_n_107),
        .\csum_reg[3]_3 (U_PREAMBLE_CORR_n_69),
        .\csum_reg[3]_4 (U_PREAMBLE_CORR_n_72),
        .\csum_reg[3]_5 (U_PREAMBLE_CORR_n_74),
        .\csum_reg[3]_6 (U_PREAMBLE_CORR_n_75),
        .\csum_reg[3]_7 (U_PREAMBLE_CORR_n_78),
        .\csum_reg[3]_8 (U_PREAMBLE_CORR_n_80),
        .\csum_reg[3]_9 (U_PREAMBLE_CORR_n_81),
        .\csum_reg[7]_0 (U_PREAMBLE_CORR_n_61),
        .\csum_reg[7]_1 (U_PREAMBLE_CORR_n_62),
        .\csum_reg[7]_10 (U_PREAMBLE_CORR_n_79),
        .\csum_reg[7]_11 (U_PREAMBLE_CORR_n_84),
        .\csum_reg[7]_12 (U_PREAMBLE_CORR_n_88),
        .\csum_reg[7]_13 (U_PREAMBLE_CORR_n_91),
        .\csum_reg[7]_14 (U_PREAMBLE_CORR_n_92),
        .\csum_reg[7]_15 (U_PREAMBLE_CORR_n_93),
        .\csum_reg[7]_16 (U_PREAMBLE_CORR_n_94),
        .\csum_reg[7]_17 (U_PREAMBLE_CORR_n_99),
        .\csum_reg[7]_18 (U_PREAMBLE_CORR_n_100),
        .\csum_reg[7]_19 (U_PREAMBLE_CORR_n_101),
        .\csum_reg[7]_2 (U_PREAMBLE_CORR_n_64),
        .\csum_reg[7]_20 (U_PREAMBLE_CORR_n_104),
        .\csum_reg[7]_21 (U_PREAMBLE_CORR_n_105),
        .\csum_reg[7]_22 (U_PREAMBLE_CORR_n_106),
        .\csum_reg[7]_23 (U_PREAMBLE_CORR_n_108),
        .\csum_reg[7]_24 (U_PREAMBLE_CORR_n_109),
        .\csum_reg[7]_25 (U_PREAMBLE_CORR_n_110),
        .\csum_reg[7]_26 (U_PREAMBLE_CORR_n_111),
        .\csum_reg[7]_27 (U_PREAMBLE_CORR_n_112),
        .\csum_reg[7]_28 (U_PREAMBLE_CORR_n_113),
        .\csum_reg[7]_29 (U_PREAMBLE_CORR_n_114),
        .\csum_reg[7]_3 (U_PREAMBLE_CORR_n_67),
        .\csum_reg[7]_4 (U_PREAMBLE_CORR_n_68),
        .\csum_reg[7]_5 (U_PREAMBLE_CORR_n_70),
        .\csum_reg[7]_6 (U_PREAMBLE_CORR_n_71),
        .\csum_reg[7]_7 (U_PREAMBLE_CORR_n_73),
        .\csum_reg[7]_8 (U_PREAMBLE_CORR_n_76),
        .\csum_reg[7]_9 (U_PREAMBLE_CORR_n_77),
        .out({U_PREAMBLE_CORR_n_116,U_PREAMBLE_CORR_n_117,U_PREAMBLE_CORR_n_118}),
        .preamble_match(preamble_match),
        .sample_slow(sample_slow),
        .shreg({shreg[124],shreg[122],shreg[120],shreg[118],shreg[116],shreg[114],shreg[112],shreg[110],shreg[108],shreg[106],shreg[104],shreg[102],shreg[100],shreg[98],shreg[96:95],shreg[93],shreg[91],shreg[89],shreg[87],shreg[85],shreg[83],shreg[81],shreg[79],shreg[76],shreg[74],shreg[72],shreg[70],shreg[68],shreg[66],shreg[64],shreg[62],shreg[60],shreg[58],shreg[56],shreg[54],shreg[52],shreg[50],shreg[48],shreg[46],shreg[44],shreg[42],shreg[39],shreg[37],shreg[35],shreg[33],shreg[31],shreg[29],shreg[27],shreg[25],shreg[22],shreg[20],shreg[18],shreg[16],shreg[14],shreg[12],shreg[10],shreg[8],shreg[6],shreg[4],shreg[2],shreg[0]}),
        .\shreg_reg[0] (U_SFD_CORR_n_73),
        .\shreg_reg[0]_0 (U_SFD_CORR_n_80),
        .\shreg_reg[100] (U_PREAMBLE_CORR_n_47),
        .\shreg_reg[102] (U_PREAMBLE_CORR_n_48),
        .\shreg_reg[104] (U_PREAMBLE_CORR_n_49),
        .\shreg_reg[106] (U_PREAMBLE_CORR_n_50),
        .\shreg_reg[107]_0 (U_SFD_CORR_n_71),
        .\shreg_reg[107]_1 (U_SFD_CORR_n_84),
        .\shreg_reg[107]_2 (U_SFD_CORR_n_78),
        .\shreg_reg[108] (U_PREAMBLE_CORR_n_51),
        .\shreg_reg[10] (U_PREAMBLE_CORR_n_4),
        .\shreg_reg[110] (U_PREAMBLE_CORR_n_52),
        .\shreg_reg[111]_0 (U_SFD_CORR_n_72),
        .\shreg_reg[111]_1 (U_SFD_CORR_n_85),
        .\shreg_reg[111]_2 (U_SFD_CORR_n_79),
        .\shreg_reg[111]_3 (U_SFD_CORR_n_83),
        .\shreg_reg[112] (U_PREAMBLE_CORR_n_53),
        .\shreg_reg[114] (U_PREAMBLE_CORR_n_54),
        .\shreg_reg[116] (U_PREAMBLE_CORR_n_55),
        .\shreg_reg[118] (U_PREAMBLE_CORR_n_56),
        .\shreg_reg[120] (U_PREAMBLE_CORR_n_57),
        .\shreg_reg[122] (U_PREAMBLE_CORR_n_58),
        .\shreg_reg[124] (U_PREAMBLE_CORR_n_59),
        .\shreg_reg[126] (U_PREAMBLE_CORR_n_60),
        .\shreg_reg[12] (U_PREAMBLE_CORR_n_5),
        .\shreg_reg[14] (U_PREAMBLE_CORR_n_6),
        .\shreg_reg[16] (U_PREAMBLE_CORR_n_7),
        .\shreg_reg[179] (U_SFD_CORR_n_87),
        .\shreg_reg[18] (U_PREAMBLE_CORR_n_8),
        .\shreg_reg[20] (U_PREAMBLE_CORR_n_9),
        .\shreg_reg[22] (U_PREAMBLE_CORR_n_10),
        .\shreg_reg[233] (U_SFD_CORR_n_86),
        .\shreg_reg[25] (U_PREAMBLE_CORR_n_11),
        .\shreg_reg[27] (U_PREAMBLE_CORR_n_12),
        .\shreg_reg[29] (U_PREAMBLE_CORR_n_13),
        .\shreg_reg[2] (U_PREAMBLE_CORR_n_0),
        .\shreg_reg[31] (U_PREAMBLE_CORR_n_14),
        .\shreg_reg[33] (U_PREAMBLE_CORR_n_15),
        .\shreg_reg[35] (U_PREAMBLE_CORR_n_16),
        .\shreg_reg[37] (U_PREAMBLE_CORR_n_17),
        .\shreg_reg[39] (U_PREAMBLE_CORR_n_18),
        .\shreg_reg[41] (U_PREAMBLE_CORR_n_19),
        .\shreg_reg[41]_0 (U_SFD_CORR_n_68),
        .\shreg_reg[41]_1 (U_SFD_CORR_n_66),
        .\shreg_reg[41]_2 (U_SFD_CORR_n_67),
        .\shreg_reg[44] (U_PREAMBLE_CORR_n_20),
        .\shreg_reg[46] (U_PREAMBLE_CORR_n_21),
        .\shreg_reg[48] (U_PREAMBLE_CORR_n_22),
        .\shreg_reg[4] (U_PREAMBLE_CORR_n_1),
        .\shreg_reg[50] (U_PREAMBLE_CORR_n_23),
        .\shreg_reg[52] (U_PREAMBLE_CORR_n_24),
        .\shreg_reg[54] (U_PREAMBLE_CORR_n_25),
        .\shreg_reg[56] (U_PREAMBLE_CORR_n_26),
        .\shreg_reg[58] (U_PREAMBLE_CORR_n_27),
        .\shreg_reg[60] (U_PREAMBLE_CORR_n_28),
        .\shreg_reg[60]_0 (U_SFD_CORR_n_69),
        .\shreg_reg[60]_1 (U_SFD_CORR_n_75),
        .\shreg_reg[62] (U_PREAMBLE_CORR_n_29),
        .\shreg_reg[64] (U_PREAMBLE_CORR_n_30),
        .\shreg_reg[66] (U_PREAMBLE_CORR_n_31),
        .\shreg_reg[68] (U_PREAMBLE_CORR_n_32),
        .\shreg_reg[6] (U_PREAMBLE_CORR_n_2),
        .\shreg_reg[70] (U_PREAMBLE_CORR_n_33),
        .\shreg_reg[72] (U_PREAMBLE_CORR_n_34),
        .\shreg_reg[74] (U_PREAMBLE_CORR_n_35),
        .\shreg_reg[76] (U_PREAMBLE_CORR_n_36),
        .\shreg_reg[77]_0 (U_SFD_CORR_n_70),
        .\shreg_reg[77]_1 (U_SFD_CORR_n_76),
        .\shreg_reg[77]_2 (U_SFD_CORR_n_74),
        .\shreg_reg[77]_3 (U_SFD_CORR_n_77),
        .\shreg_reg[77]_4 (U_SFD_CORR_n_81),
        .\shreg_reg[77]_5 (U_SFD_CORR_n_65),
        .\shreg_reg[77]_6 (U_SFD_CORR_n_89),
        .\shreg_reg[77]_7 (U_SFD_CORR_n_90),
        .\shreg_reg[77]_8 (U_SFD_CORR_n_92),
        .\shreg_reg[79] (U_PREAMBLE_CORR_n_37),
        .\shreg_reg[81] (U_PREAMBLE_CORR_n_38),
        .\shreg_reg[83] (U_PREAMBLE_CORR_n_39),
        .\shreg_reg[85] (U_PREAMBLE_CORR_n_40),
        .\shreg_reg[87] (U_PREAMBLE_CORR_n_41),
        .\shreg_reg[89] (U_PREAMBLE_CORR_n_42),
        .\shreg_reg[8] (U_PREAMBLE_CORR_n_3),
        .\shreg_reg[91] (U_PREAMBLE_CORR_n_43),
        .\shreg_reg[93] (U_PREAMBLE_CORR_n_44),
        .\shreg_reg[95] (U_PREAMBLE_CORR_n_45),
        .\shreg_reg[95]_0 (U_SFD_CORR_n_88),
        .\shreg_reg[95]_1 (U_SFD_CORR_n_91),
        .\shreg_reg[95]_2 (U_SFD_CORR_n_93),
        .\shreg_reg[96] (U_SFD_CORR_n_82),
        .\shreg_reg[96]_0 (U_SFD_CORR_n_63),
        .\shreg_reg[96]_1 (U_SFD_CORR_n_62),
        .\shreg_reg[96]_2 (U_SFD_CORR_n_64),
        .\shreg_reg[98] (U_PREAMBLE_CORR_n_46));
  clkenb__parameterized1 U_SAMPLE
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .E(sample));
  correlator__parameterized0 U_SFD_CORR
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .\csum_reg[3]_0 (U_SFD_CORR_n_62),
        .\csum_reg[3]_1 (U_SFD_CORR_n_63),
        .\csum_reg[3]_10 (U_SFD_CORR_n_79),
        .\csum_reg[3]_11 (U_SFD_CORR_n_88),
        .\csum_reg[3]_12 (U_SFD_CORR_n_89),
        .\csum_reg[3]_2 (U_SFD_CORR_n_65),
        .\csum_reg[3]_3 (U_SFD_CORR_n_68),
        .\csum_reg[3]_4 (U_SFD_CORR_n_70),
        .\csum_reg[3]_5 (U_SFD_CORR_n_71),
        .\csum_reg[3]_6 (U_SFD_CORR_n_72),
        .\csum_reg[3]_7 (U_SFD_CORR_n_73),
        .\csum_reg[3]_8 (U_SFD_CORR_n_74),
        .\csum_reg[3]_9 (U_SFD_CORR_n_77),
        .\csum_reg[7]_0 (U_SFD_CORR_n_64),
        .\csum_reg[7]_1 (U_SFD_CORR_n_66),
        .\csum_reg[7]_10 (U_SFD_CORR_n_83),
        .\csum_reg[7]_11 (U_SFD_CORR_n_84),
        .\csum_reg[7]_12 (U_SFD_CORR_n_85),
        .\csum_reg[7]_13 (U_SFD_CORR_n_86),
        .\csum_reg[7]_14 (U_SFD_CORR_n_87),
        .\csum_reg[7]_15 (U_SFD_CORR_n_90),
        .\csum_reg[7]_16 (U_SFD_CORR_n_91),
        .\csum_reg[7]_17 (U_SFD_CORR_n_92),
        .\csum_reg[7]_18 (U_SFD_CORR_n_93),
        .\csum_reg[7]_2 (U_SFD_CORR_n_67),
        .\csum_reg[7]_3 (U_SFD_CORR_n_69),
        .\csum_reg[7]_4 (U_SFD_CORR_n_75),
        .\csum_reg[7]_5 (U_SFD_CORR_n_76),
        .\csum_reg[7]_6 (U_SFD_CORR_n_78),
        .\csum_reg[7]_7 (U_SFD_CORR_n_80),
        .\csum_reg[7]_8 (U_SFD_CORR_n_81),
        .\csum_reg[7]_9 (U_SFD_CORR_n_82),
        .out({U_PREAMBLE_CORR_n_116,U_PREAMBLE_CORR_n_117,U_PREAMBLE_CORR_n_118}),
        .sample_slow(sample_slow),
        .sel({U_PREAMBLE_CORR_n_2,U_PREAMBLE_CORR_n_1,U_PREAMBLE_CORR_n_0}),
        .sfd_match(sfd_match),
        .\shreg_reg[101] (U_PREAMBLE_CORR_n_48),
        .\shreg_reg[103] (U_PREAMBLE_CORR_n_49),
        .\shreg_reg[105] (U_PREAMBLE_CORR_n_50),
        .\shreg_reg[107] (U_PREAMBLE_CORR_n_51),
        .\shreg_reg[107]_0 (U_PREAMBLE_CORR_n_72),
        .\shreg_reg[107]_1 (U_PREAMBLE_CORR_n_71),
        .\shreg_reg[107]_2 (U_PREAMBLE_CORR_n_70),
        .\shreg_reg[109] (U_PREAMBLE_CORR_n_52),
        .\shreg_reg[111] (U_PREAMBLE_CORR_n_53),
        .\shreg_reg[111]_0 (U_PREAMBLE_CORR_n_78),
        .\shreg_reg[111]_1 (U_PREAMBLE_CORR_n_77),
        .\shreg_reg[111]_10 (U_PREAMBLE_CORR_n_114),
        .\shreg_reg[111]_2 (U_PREAMBLE_CORR_n_76),
        .\shreg_reg[111]_3 (U_PREAMBLE_CORR_n_87),
        .\shreg_reg[111]_4 (U_PREAMBLE_CORR_n_90),
        .\shreg_reg[111]_5 (U_PREAMBLE_CORR_n_75),
        .\shreg_reg[111]_6 (U_PREAMBLE_CORR_n_104),
        .\shreg_reg[111]_7 (U_PREAMBLE_CORR_n_73),
        .\shreg_reg[111]_8 (U_PREAMBLE_CORR_n_105),
        .\shreg_reg[111]_9 (U_PREAMBLE_CORR_n_74),
        .\shreg_reg[113] (U_PREAMBLE_CORR_n_54),
        .\shreg_reg[119] ({U_PREAMBLE_CORR_n_57,U_PREAMBLE_CORR_n_56,U_PREAMBLE_CORR_n_55}),
        .\shreg_reg[119]_0 (U_PREAMBLE_CORR_n_63),
        .\shreg_reg[119]_1 (U_PREAMBLE_CORR_n_62),
        .\shreg_reg[119]_2 (U_PREAMBLE_CORR_n_61),
        .\shreg_reg[11] (U_PREAMBLE_CORR_n_5),
        .\shreg_reg[125] ({shreg[124],shreg[122],shreg[120],shreg[118],shreg[116],shreg[114],shreg[112],shreg[110],shreg[108],shreg[106],shreg[104],shreg[102],shreg[100],shreg[98],shreg[96:95],shreg[93],shreg[91],shreg[89],shreg[87],shreg[85],shreg[83],shreg[81],shreg[79],shreg[76],shreg[74],shreg[72],shreg[70],shreg[68],shreg[66],shreg[64],shreg[62],shreg[60],shreg[58],shreg[56],shreg[54],shreg[52],shreg[50],shreg[48],shreg[46],shreg[44],shreg[42],shreg[39],shreg[37],shreg[35],shreg[33],shreg[31],shreg[29],shreg[27],shreg[25],shreg[22],shreg[20],shreg[18],shreg[16],shreg[14],shreg[12],shreg[10],shreg[8],shreg[6],shreg[4],shreg[2],shreg[0]}),
        .\shreg_reg[125]_0 ({U_PREAMBLE_CORR_n_60,U_PREAMBLE_CORR_n_59,U_PREAMBLE_CORR_n_58}),
        .\shreg_reg[125]_1 (U_PREAMBLE_CORR_n_81),
        .\shreg_reg[125]_2 (U_PREAMBLE_CORR_n_80),
        .\shreg_reg[125]_3 (U_PREAMBLE_CORR_n_79),
        .\shreg_reg[13] (U_PREAMBLE_CORR_n_6),
        .\shreg_reg[15] (U_PREAMBLE_CORR_n_7),
        .\shreg_reg[17] (U_PREAMBLE_CORR_n_8),
        .\shreg_reg[17]_0 (U_PREAMBLE_CORR_n_86),
        .\shreg_reg[17]_1 (U_PREAMBLE_CORR_n_85),
        .\shreg_reg[17]_2 (U_PREAMBLE_CORR_n_88),
        .\shreg_reg[17]_3 (U_PREAMBLE_CORR_n_89),
        .\shreg_reg[17]_4 (U_PREAMBLE_CORR_n_100),
        .\shreg_reg[17]_5 (U_PREAMBLE_CORR_n_101),
        .\shreg_reg[19] (U_PREAMBLE_CORR_n_9),
        .\shreg_reg[21] (U_PREAMBLE_CORR_n_10),
        .\shreg_reg[23] (U_PREAMBLE_CORR_n_95),
        .\shreg_reg[23]_0 (U_PREAMBLE_CORR_n_98),
        .\shreg_reg[23]_1 (U_PREAMBLE_CORR_n_91),
        .\shreg_reg[23]_2 (U_PREAMBLE_CORR_n_106),
        .\shreg_reg[23]_3 (U_PREAMBLE_CORR_n_92),
        .\shreg_reg[23]_4 (U_PREAMBLE_CORR_n_107),
        .\shreg_reg[23]_5 (U_PREAMBLE_CORR_n_110),
        .\shreg_reg[23]_6 (U_PREAMBLE_CORR_n_103),
        .\shreg_reg[24] (U_PREAMBLE_CORR_n_11),
        .\shreg_reg[26] (U_PREAMBLE_CORR_n_12),
        .\shreg_reg[28] (U_PREAMBLE_CORR_n_13),
        .\shreg_reg[30] (U_PREAMBLE_CORR_n_14),
        .\shreg_reg[30]_0 (U_PREAMBLE_CORR_n_102),
        .\shreg_reg[32] (U_PREAMBLE_CORR_n_15),
        .\shreg_reg[34] (U_PREAMBLE_CORR_n_16),
        .\shreg_reg[36] (U_PREAMBLE_CORR_n_17),
        .\shreg_reg[38] (U_PREAMBLE_CORR_n_18),
        .\shreg_reg[40] (U_PREAMBLE_CORR_n_19),
        .\shreg_reg[41]_0 (U_PREAMBLE_CORR_n_97),
        .\shreg_reg[41]_1 (U_PREAMBLE_CORR_n_93),
        .\shreg_reg[43] (U_PREAMBLE_CORR_n_20),
        .\shreg_reg[45] (U_PREAMBLE_CORR_n_21),
        .\shreg_reg[47] (U_PREAMBLE_CORR_n_22),
        .\shreg_reg[49] (U_PREAMBLE_CORR_n_23),
        .\shreg_reg[51] (U_PREAMBLE_CORR_n_24),
        .\shreg_reg[53] (U_PREAMBLE_CORR_n_25),
        .\shreg_reg[53]_0 (U_PREAMBLE_CORR_n_96),
        .\shreg_reg[53]_1 (U_PREAMBLE_CORR_n_94),
        .\shreg_reg[53]_2 (U_PREAMBLE_CORR_n_99),
        .\shreg_reg[53]_3 (U_PREAMBLE_CORR_n_113),
        .\shreg_reg[53]_4 (U_PREAMBLE_CORR_n_108),
        .\shreg_reg[55] (U_PREAMBLE_CORR_n_26),
        .\shreg_reg[55]_0 (U_PREAMBLE_CORR_n_83),
        .\shreg_reg[55]_1 (U_PREAMBLE_CORR_n_84),
        .\shreg_reg[55]_2 (U_PREAMBLE_CORR_n_109),
        .\shreg_reg[55]_3 (U_PREAMBLE_CORR_n_112),
        .\shreg_reg[57] (U_PREAMBLE_CORR_n_27),
        .\shreg_reg[59] (U_PREAMBLE_CORR_n_28),
        .\shreg_reg[5] (U_PREAMBLE_CORR_n_66),
        .\shreg_reg[5]_0 (U_PREAMBLE_CORR_n_65),
        .\shreg_reg[5]_1 (U_PREAMBLE_CORR_n_64),
        .\shreg_reg[61] (U_PREAMBLE_CORR_n_29),
        .\shreg_reg[63] (U_PREAMBLE_CORR_n_30),
        .\shreg_reg[65] (U_PREAMBLE_CORR_n_31),
        .\shreg_reg[67] (U_PREAMBLE_CORR_n_32),
        .\shreg_reg[69] (U_PREAMBLE_CORR_n_33),
        .\shreg_reg[71] (U_PREAMBLE_CORR_n_34),
        .\shreg_reg[73] (U_PREAMBLE_CORR_n_35),
        .\shreg_reg[75] (U_PREAMBLE_CORR_n_36),
        .\shreg_reg[77] (U_PREAMBLE_CORR_n_67),
        .\shreg_reg[77]_0 (U_PREAMBLE_CORR_n_69),
        .\shreg_reg[77]_1 (U_PREAMBLE_CORR_n_68),
        .\shreg_reg[77]_2 (U_PREAMBLE_CORR_n_111),
        .\shreg_reg[78] (U_PREAMBLE_CORR_n_37),
        .\shreg_reg[7] (U_PREAMBLE_CORR_n_3),
        .\shreg_reg[80] (U_PREAMBLE_CORR_n_38),
        .\shreg_reg[82] (U_PREAMBLE_CORR_n_39),
        .\shreg_reg[84] (U_PREAMBLE_CORR_n_40),
        .\shreg_reg[86] (U_PREAMBLE_CORR_n_41),
        .\shreg_reg[88] (U_PREAMBLE_CORR_n_42),
        .\shreg_reg[90] (U_PREAMBLE_CORR_n_43),
        .\shreg_reg[92] (U_PREAMBLE_CORR_n_44),
        .\shreg_reg[94] (U_PREAMBLE_CORR_n_45),
        .\shreg_reg[97] (U_PREAMBLE_CORR_n_46),
        .\shreg_reg[99] (U_PREAMBLE_CORR_n_47),
        .\shreg_reg[9] (U_PREAMBLE_CORR_n_4),
        .sync_out(sync_out));
  counter__parameterized0 U_SLOW_COUNT
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .\FSM_sequential_state_reg[0] (U_SLOW_COUNT_n_1),
        .\FSM_sequential_state_reg[0]_0 (U_SLOW_COUNT_n_2),
        .\FSM_sequential_state_reg[2] (U_SLOW_COUNT_n_0),
        .SR(U_FSM_n_15),
        .preamble_match(preamble_match),
        .sample_slow(sample_slow));
  clkenb__parameterized0 U_SLOW_SAMPLE
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .sample_slow(sample_slow));
  sync_input U_SYNC
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .JA_OBUF(JA_OBUF),
        .sync_out(sync_out));
endmodule

module mxtest_2
   (out,
    \FSM_sequential_state_reg[0]_0 ,
    \q_reg[7] ,
    CLK100MHZ_IBUF_BUFG,
    BTNC_IBUF,
    rdy,
    SW_IBUF,
    E);
  output [1:0]out;
  output \FSM_sequential_state_reg[0]_0 ;
  output [7:0]\q_reg[7] ;
  input CLK100MHZ_IBUF_BUFG;
  input BTNC_IBUF;
  input rdy;
  input [6:0]SW_IBUF;
  input [0:0]E;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_4__0_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [6:0]SW_IBUF;
  wire [4:0]byte_addr;
  wire \byte_addr[0]_i_1_n_0 ;
  wire \byte_addr[1]_i_1_n_0 ;
  wire \byte_addr[2]_i_1_n_0 ;
  wire \byte_addr[3]_i_1_n_0 ;
  wire \byte_addr[4]_i_1_n_0 ;
  wire \byte_addr[4]_i_3_n_0 ;
  wire byte_addr_last;
  wire byte_addr_last_carry__0_i_1_n_0;
  wire byte_addr_last_carry__0_i_2_n_0;
  wire byte_addr_last_carry__0_i_3_n_0;
  wire byte_addr_last_carry__0_i_4_n_0;
  wire byte_addr_last_carry__0_n_0;
  wire byte_addr_last_carry__0_n_1;
  wire byte_addr_last_carry__0_n_2;
  wire byte_addr_last_carry__0_n_3;
  wire byte_addr_last_carry__1_i_1_n_0;
  wire byte_addr_last_carry__1_i_2_n_0;
  wire byte_addr_last_carry__1_i_3_n_0;
  wire byte_addr_last_carry__1_n_2;
  wire byte_addr_last_carry__1_n_3;
  wire byte_addr_last_carry_i_1_n_0;
  wire byte_addr_last_carry_i_2_n_0;
  wire byte_addr_last_carry_i_3_n_0;
  wire byte_addr_last_carry_i_4_n_0;
  wire byte_addr_last_carry_i_5_n_0;
  wire byte_addr_last_carry_n_0;
  wire byte_addr_last_carry_n_1;
  wire byte_addr_last_carry_n_2;
  wire byte_addr_last_carry_n_3;
  (* RTL_KEEP = "yes" *) wire [1:0]out;
  wire [7:0]\q_reg[7] ;
  wire rdy;
  wire \wait_count[0]_i_6_n_0 ;
  wire wait_count_done;
  wire wait_count_enable;
  wire [19:0]wait_count_reg;
  wire \wait_count_reg[0]_i_2_n_0 ;
  wire \wait_count_reg[0]_i_2_n_1 ;
  wire \wait_count_reg[0]_i_2_n_2 ;
  wire \wait_count_reg[0]_i_2_n_3 ;
  wire \wait_count_reg[0]_i_2_n_4 ;
  wire \wait_count_reg[0]_i_2_n_5 ;
  wire \wait_count_reg[0]_i_2_n_6 ;
  wire \wait_count_reg[0]_i_2_n_7 ;
  wire \wait_count_reg[12]_i_1_n_0 ;
  wire \wait_count_reg[12]_i_1_n_1 ;
  wire \wait_count_reg[12]_i_1_n_2 ;
  wire \wait_count_reg[12]_i_1_n_3 ;
  wire \wait_count_reg[12]_i_1_n_4 ;
  wire \wait_count_reg[12]_i_1_n_5 ;
  wire \wait_count_reg[12]_i_1_n_6 ;
  wire \wait_count_reg[12]_i_1_n_7 ;
  wire \wait_count_reg[16]_i_1_n_1 ;
  wire \wait_count_reg[16]_i_1_n_2 ;
  wire \wait_count_reg[16]_i_1_n_3 ;
  wire \wait_count_reg[16]_i_1_n_4 ;
  wire \wait_count_reg[16]_i_1_n_5 ;
  wire \wait_count_reg[16]_i_1_n_6 ;
  wire \wait_count_reg[16]_i_1_n_7 ;
  wire \wait_count_reg[4]_i_1_n_0 ;
  wire \wait_count_reg[4]_i_1_n_1 ;
  wire \wait_count_reg[4]_i_1_n_2 ;
  wire \wait_count_reg[4]_i_1_n_3 ;
  wire \wait_count_reg[4]_i_1_n_4 ;
  wire \wait_count_reg[4]_i_1_n_5 ;
  wire \wait_count_reg[4]_i_1_n_6 ;
  wire \wait_count_reg[4]_i_1_n_7 ;
  wire \wait_count_reg[8]_i_1_n_0 ;
  wire \wait_count_reg[8]_i_1_n_1 ;
  wire \wait_count_reg[8]_i_1_n_2 ;
  wire \wait_count_reg[8]_i_1_n_3 ;
  wire \wait_count_reg[8]_i_1_n_4 ;
  wire \wait_count_reg[8]_i_1_n_5 ;
  wire \wait_count_reg[8]_i_1_n_6 ;
  wire \wait_count_reg[8]_i_1_n_7 ;
  wire [3:0]NLW_byte_addr_last_carry_O_UNCONNECTED;
  wire [3:0]NLW_byte_addr_last_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_byte_addr_last_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_byte_addr_last_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_wait_count_reg[16]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h7F407C407C407C40)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(wait_count_done),
        .I1(out[0]),
        .I2(out[1]),
        .I3(rdy),
        .I4(SW_IBUF[6]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(SW_IBUF[4]),
        .I1(SW_IBUF[2]),
        .I2(SW_IBUF[1]),
        .I3(SW_IBUF[0]),
        .I4(SW_IBUF[5]),
        .I5(SW_IBUF[3]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_3__1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h4744CCCC)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(wait_count_done),
        .I1(out[1]),
        .I2(rdy),
        .I3(byte_addr_last),
        .I4(out[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_state[1]_i_2__1 
       (.I0(\FSM_sequential_state[1]_i_4__0_n_0 ),
        .I1(\FSM_sequential_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_state[1]_i_6_n_0 ),
        .I3(wait_count_reg[0]),
        .I4(wait_count_reg[1]),
        .O(wait_count_done));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \FSM_sequential_state[1]_i_4__0 
       (.I0(wait_count_reg[16]),
        .I1(wait_count_reg[17]),
        .I2(wait_count_reg[14]),
        .I3(wait_count_reg[15]),
        .I4(wait_count_reg[19]),
        .I5(wait_count_reg[18]),
        .O(\FSM_sequential_state[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(wait_count_reg[4]),
        .I1(wait_count_reg[5]),
        .I2(wait_count_reg[2]),
        .I3(wait_count_reg[3]),
        .I4(wait_count_reg[7]),
        .I5(wait_count_reg[6]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(wait_count_reg[10]),
        .I1(wait_count_reg[11]),
        .I2(wait_count_reg[9]),
        .I3(wait_count_reg[8]),
        .I4(wait_count_reg[13]),
        .I5(wait_count_reg[12]),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(out[0]),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(out[1]),
        .R(BTNC_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \byte_addr[0]_i_1 
       (.I0(byte_addr[0]),
        .O(\byte_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \byte_addr[1]_i_1 
       (.I0(byte_addr[0]),
        .I1(byte_addr[1]),
        .O(\byte_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \byte_addr[2]_i_1 
       (.I0(byte_addr[1]),
        .I1(byte_addr[0]),
        .I2(byte_addr[2]),
        .O(\byte_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \byte_addr[3]_i_1 
       (.I0(byte_addr[2]),
        .I1(byte_addr[0]),
        .I2(byte_addr[1]),
        .I3(byte_addr[3]),
        .O(\byte_addr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \byte_addr[4]_i_1 
       (.I0(BTNC_IBUF),
        .I1(out[0]),
        .I2(out[1]),
        .O(\byte_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \byte_addr[4]_i_3 
       (.I0(byte_addr[3]),
        .I1(byte_addr[1]),
        .I2(byte_addr[0]),
        .I3(byte_addr[2]),
        .I4(byte_addr[4]),
        .O(\byte_addr[4]_i_3_n_0 ));
  CARRY4 byte_addr_last_carry
       (.CI(1'b0),
        .CO({byte_addr_last_carry_n_0,byte_addr_last_carry_n_1,byte_addr_last_carry_n_2,byte_addr_last_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_byte_addr_last_carry_O_UNCONNECTED[3:0]),
        .S({byte_addr_last_carry_i_1_n_0,byte_addr_last_carry_i_2_n_0,byte_addr_last_carry_i_3_n_0,byte_addr_last_carry_i_4_n_0}));
  CARRY4 byte_addr_last_carry__0
       (.CI(byte_addr_last_carry_n_0),
        .CO({byte_addr_last_carry__0_n_0,byte_addr_last_carry__0_n_1,byte_addr_last_carry__0_n_2,byte_addr_last_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_byte_addr_last_carry__0_O_UNCONNECTED[3:0]),
        .S({byte_addr_last_carry__0_i_1_n_0,byte_addr_last_carry__0_i_2_n_0,byte_addr_last_carry__0_i_3_n_0,byte_addr_last_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    byte_addr_last_carry__0_i_1
       (.I0(SW_IBUF[4]),
        .I1(SW_IBUF[2]),
        .I2(SW_IBUF[1]),
        .I3(SW_IBUF[0]),
        .I4(SW_IBUF[5]),
        .I5(SW_IBUF[3]),
        .O(byte_addr_last_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    byte_addr_last_carry__0_i_2
       (.I0(SW_IBUF[4]),
        .I1(SW_IBUF[2]),
        .I2(SW_IBUF[1]),
        .I3(SW_IBUF[0]),
        .I4(SW_IBUF[5]),
        .I5(SW_IBUF[3]),
        .O(byte_addr_last_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    byte_addr_last_carry__0_i_3
       (.I0(SW_IBUF[4]),
        .I1(SW_IBUF[2]),
        .I2(SW_IBUF[1]),
        .I3(SW_IBUF[0]),
        .I4(SW_IBUF[5]),
        .I5(SW_IBUF[3]),
        .O(byte_addr_last_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    byte_addr_last_carry__0_i_4
       (.I0(SW_IBUF[4]),
        .I1(SW_IBUF[2]),
        .I2(SW_IBUF[1]),
        .I3(SW_IBUF[0]),
        .I4(SW_IBUF[5]),
        .I5(SW_IBUF[3]),
        .O(byte_addr_last_carry__0_i_4_n_0));
  CARRY4 byte_addr_last_carry__1
       (.CI(byte_addr_last_carry__0_n_0),
        .CO({NLW_byte_addr_last_carry__1_CO_UNCONNECTED[3],byte_addr_last,byte_addr_last_carry__1_n_2,byte_addr_last_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_byte_addr_last_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,byte_addr_last_carry__1_i_1_n_0,byte_addr_last_carry__1_i_2_n_0,byte_addr_last_carry__1_i_3_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    byte_addr_last_carry__1_i_1
       (.I0(SW_IBUF[4]),
        .I1(SW_IBUF[2]),
        .I2(SW_IBUF[1]),
        .I3(SW_IBUF[0]),
        .I4(SW_IBUF[5]),
        .I5(SW_IBUF[3]),
        .O(byte_addr_last_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    byte_addr_last_carry__1_i_2
       (.I0(SW_IBUF[4]),
        .I1(SW_IBUF[2]),
        .I2(SW_IBUF[1]),
        .I3(SW_IBUF[0]),
        .I4(SW_IBUF[5]),
        .I5(SW_IBUF[3]),
        .O(byte_addr_last_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    byte_addr_last_carry__1_i_3
       (.I0(SW_IBUF[4]),
        .I1(SW_IBUF[2]),
        .I2(SW_IBUF[1]),
        .I3(SW_IBUF[0]),
        .I4(SW_IBUF[5]),
        .I5(SW_IBUF[3]),
        .O(byte_addr_last_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    byte_addr_last_carry_i_1
       (.I0(SW_IBUF[4]),
        .I1(SW_IBUF[2]),
        .I2(SW_IBUF[1]),
        .I3(SW_IBUF[0]),
        .I4(SW_IBUF[5]),
        .I5(SW_IBUF[3]),
        .O(byte_addr_last_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    byte_addr_last_carry_i_2
       (.I0(SW_IBUF[4]),
        .I1(SW_IBUF[2]),
        .I2(SW_IBUF[1]),
        .I3(SW_IBUF[0]),
        .I4(SW_IBUF[5]),
        .I5(SW_IBUF[3]),
        .O(byte_addr_last_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000900904002042)) 
    byte_addr_last_carry_i_3
       (.I0(byte_addr_last_carry_i_5_n_0),
        .I1(byte_addr[3]),
        .I2(SW_IBUF[4]),
        .I3(byte_addr[4]),
        .I4(SW_IBUF[5]),
        .I5(SW_IBUF[3]),
        .O(byte_addr_last_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h2400024000244002)) 
    byte_addr_last_carry_i_4
       (.I0(SW_IBUF[0]),
        .I1(byte_addr[0]),
        .I2(byte_addr[1]),
        .I3(SW_IBUF[2]),
        .I4(SW_IBUF[1]),
        .I5(byte_addr[2]),
        .O(byte_addr_last_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    byte_addr_last_carry_i_5
       (.I0(SW_IBUF[2]),
        .I1(SW_IBUF[1]),
        .I2(SW_IBUF[0]),
        .O(byte_addr_last_carry_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_addr_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\byte_addr[0]_i_1_n_0 ),
        .Q(byte_addr[0]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_addr_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\byte_addr[1]_i_1_n_0 ),
        .Q(byte_addr[1]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_addr_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\byte_addr[2]_i_1_n_0 ),
        .Q(byte_addr[2]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_addr_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\byte_addr[3]_i_1_n_0 ),
        .Q(byte_addr[3]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_addr_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(E),
        .D(\byte_addr[4]_i_3_n_0 ),
        .Q(byte_addr[4]),
        .R(\byte_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hC8D24693)) 
    g0_b0
       (.I0(byte_addr[0]),
        .I1(byte_addr[1]),
        .I2(byte_addr[2]),
        .I3(byte_addr[3]),
        .I4(byte_addr[4]),
        .O(\q_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h01D00E80)) 
    g0_b1
       (.I0(byte_addr[0]),
        .I1(byte_addr[1]),
        .I2(byte_addr[2]),
        .I3(byte_addr[3]),
        .I4(byte_addr[4]),
        .O(\q_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hC6DE36F3)) 
    g0_b2
       (.I0(byte_addr[0]),
        .I1(byte_addr[1]),
        .I2(byte_addr[2]),
        .I3(byte_addr[3]),
        .I4(byte_addr[4]),
        .O(\q_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h629D14E8)) 
    g0_b3
       (.I0(byte_addr[0]),
        .I1(byte_addr[1]),
        .I2(byte_addr[2]),
        .I3(byte_addr[3]),
        .I4(byte_addr[4]),
        .O(\q_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h89400A07)) 
    g0_b4
       (.I0(byte_addr[0]),
        .I1(byte_addr[1]),
        .I2(byte_addr[2]),
        .I3(byte_addr[3]),
        .I4(byte_addr[4]),
        .O(\q_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h1820FFF8)) 
    g0_b5
       (.I0(byte_addr[0]),
        .I1(byte_addr[1]),
        .I2(byte_addr[2]),
        .I3(byte_addr[3]),
        .I4(byte_addr[4]),
        .O(\q_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h87DF3EFF)) 
    g0_b6
       (.I0(byte_addr[0]),
        .I1(byte_addr[1]),
        .I2(byte_addr[2]),
        .I3(byte_addr[3]),
        .I4(byte_addr[4]),
        .O(\q_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    g0_b7
       (.I0(byte_addr[0]),
        .I1(byte_addr[1]),
        .I2(byte_addr[2]),
        .I3(byte_addr[3]),
        .I4(byte_addr[4]),
        .O(\q_reg[7] [7]));
  LUT2 #(
    .INIT(4'h8)) 
    \wait_count[0]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(wait_count_enable));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_count[0]_i_6 
       (.I0(wait_count_reg[0]),
        .O(\wait_count[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[0]_i_2_n_7 ),
        .Q(wait_count_reg[0]),
        .R(\byte_addr[4]_i_1_n_0 ));
  CARRY4 \wait_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\wait_count_reg[0]_i_2_n_0 ,\wait_count_reg[0]_i_2_n_1 ,\wait_count_reg[0]_i_2_n_2 ,\wait_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_count_reg[0]_i_2_n_4 ,\wait_count_reg[0]_i_2_n_5 ,\wait_count_reg[0]_i_2_n_6 ,\wait_count_reg[0]_i_2_n_7 }),
        .S({wait_count_reg[3:1],\wait_count[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[8]_i_1_n_5 ),
        .Q(wait_count_reg[10]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[8]_i_1_n_4 ),
        .Q(wait_count_reg[11]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[12]_i_1_n_7 ),
        .Q(wait_count_reg[12]),
        .R(\byte_addr[4]_i_1_n_0 ));
  CARRY4 \wait_count_reg[12]_i_1 
       (.CI(\wait_count_reg[8]_i_1_n_0 ),
        .CO({\wait_count_reg[12]_i_1_n_0 ,\wait_count_reg[12]_i_1_n_1 ,\wait_count_reg[12]_i_1_n_2 ,\wait_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_count_reg[12]_i_1_n_4 ,\wait_count_reg[12]_i_1_n_5 ,\wait_count_reg[12]_i_1_n_6 ,\wait_count_reg[12]_i_1_n_7 }),
        .S(wait_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[12]_i_1_n_6 ),
        .Q(wait_count_reg[13]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[12]_i_1_n_5 ),
        .Q(wait_count_reg[14]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[12]_i_1_n_4 ),
        .Q(wait_count_reg[15]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[16]_i_1_n_7 ),
        .Q(wait_count_reg[16]),
        .R(\byte_addr[4]_i_1_n_0 ));
  CARRY4 \wait_count_reg[16]_i_1 
       (.CI(\wait_count_reg[12]_i_1_n_0 ),
        .CO({\NLW_wait_count_reg[16]_i_1_CO_UNCONNECTED [3],\wait_count_reg[16]_i_1_n_1 ,\wait_count_reg[16]_i_1_n_2 ,\wait_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_count_reg[16]_i_1_n_4 ,\wait_count_reg[16]_i_1_n_5 ,\wait_count_reg[16]_i_1_n_6 ,\wait_count_reg[16]_i_1_n_7 }),
        .S(wait_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[16]_i_1_n_6 ),
        .Q(wait_count_reg[17]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[16]_i_1_n_5 ),
        .Q(wait_count_reg[18]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[16]_i_1_n_4 ),
        .Q(wait_count_reg[19]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[0]_i_2_n_6 ),
        .Q(wait_count_reg[1]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[0]_i_2_n_5 ),
        .Q(wait_count_reg[2]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[0]_i_2_n_4 ),
        .Q(wait_count_reg[3]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[4]_i_1_n_7 ),
        .Q(wait_count_reg[4]),
        .R(\byte_addr[4]_i_1_n_0 ));
  CARRY4 \wait_count_reg[4]_i_1 
       (.CI(\wait_count_reg[0]_i_2_n_0 ),
        .CO({\wait_count_reg[4]_i_1_n_0 ,\wait_count_reg[4]_i_1_n_1 ,\wait_count_reg[4]_i_1_n_2 ,\wait_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_count_reg[4]_i_1_n_4 ,\wait_count_reg[4]_i_1_n_5 ,\wait_count_reg[4]_i_1_n_6 ,\wait_count_reg[4]_i_1_n_7 }),
        .S(wait_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[4]_i_1_n_6 ),
        .Q(wait_count_reg[5]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[4]_i_1_n_5 ),
        .Q(wait_count_reg[6]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[4]_i_1_n_4 ),
        .Q(wait_count_reg[7]),
        .R(\byte_addr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[8]_i_1_n_7 ),
        .Q(wait_count_reg[8]),
        .R(\byte_addr[4]_i_1_n_0 ));
  CARRY4 \wait_count_reg[8]_i_1 
       (.CI(\wait_count_reg[4]_i_1_n_0 ),
        .CO({\wait_count_reg[8]_i_1_n_0 ,\wait_count_reg[8]_i_1_n_1 ,\wait_count_reg[8]_i_1_n_2 ,\wait_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_count_reg[8]_i_1_n_4 ,\wait_count_reg[8]_i_1_n_5 ,\wait_count_reg[8]_i_1_n_6 ,\wait_count_reg[8]_i_1_n_7 }),
        .S(wait_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wait_count_enable),
        .D(\wait_count_reg[8]_i_1_n_6 ),
        .Q(wait_count_reg[9]),
        .R(\byte_addr[4]_i_1_n_0 ));
endmodule

(* NotValidForBitStream *)
module nexys4DDR
   (CLK100MHZ,
    SW,
    BTNC,
    SEGS,
    AN,
    DP,
    LED,
    JA,
    UART_RXD_OUT);
  input CLK100MHZ;
  input [15:0]SW;
  input BTNC;
  output [6:0]SEGS;
  output [7:0]AN;
  output DP;
  output [1:0]LED;
  output [2:0]JA;
  output UART_RXD_OUT;

  wire [7:0]AN;
  wire [7:0]AN_OBUF;
  wire BTNC;
  wire BTNC_IBUF;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire DP;
  wire [2:0]JA;
  wire [2:0]JA_OBUF;
  wire [1:0]LED;
  wire [6:0]SEGS;
  wire [6:0]SEGS_OBUF;
  wire [15:0]SW;
  wire [15:0]SW_IBUF;
  wire UART_RXD_OUT;
  wire UART_RXD_OUT_OBUF;
  wire U_FIFO_EXTRACTOR_n_3;
  wire U_FIFO_n_1;
  wire U_FIFO_n_2;
  wire U_MXTEST_n_0;
  wire U_MXTEST_n_1;
  wire U_MXTEST_n_2;
  wire U_RX_n_3;
  wire byte_addr_enable;
  wire [7:0]d;
  wire [7:0]data_fifo;
  wire [7:0]data_in;
  wire [7:0]data_out;
  wire gb;
  wire gb0;
  wire [0:0]next_state;
  wire rdy;
  wire rp0;
  wire [1:0]state;
  wire write;

  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(AN_OBUF[4]),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(AN_OBUF[5]),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(AN_OBUF[6]),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(AN_OBUF[7]),
        .O(AN[7]));
  IBUF BTNC_IBUF_inst
       (.I(BTNC),
        .O(BTNC_IBUF));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  OBUF DP_OBUF_inst
       (.I(1'b1),
        .O(DP));
  OBUF \JA_OBUF[0]_inst 
       (.I(JA_OBUF[0]),
        .O(JA[0]));
  OBUF \JA_OBUF[1]_inst 
       (.I(JA_OBUF[1]),
        .O(JA[1]));
  OBUF \JA_OBUF[2]_inst 
       (.I(JA_OBUF[2]),
        .O(JA[2]));
  OBUF \LED_OBUF[0]_inst 
       (.I(JA_OBUF[1]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(JA_OBUF[2]),
        .O(LED[1]));
  OBUF \SEGS_OBUF[0]_inst 
       (.I(SEGS_OBUF[0]),
        .O(SEGS[0]));
  OBUF \SEGS_OBUF[1]_inst 
       (.I(SEGS_OBUF[1]),
        .O(SEGS[1]));
  OBUF \SEGS_OBUF[2]_inst 
       (.I(SEGS_OBUF[2]),
        .O(SEGS[2]));
  OBUF \SEGS_OBUF[3]_inst 
       (.I(SEGS_OBUF[3]),
        .O(SEGS[3]));
  OBUF \SEGS_OBUF[4]_inst 
       (.I(SEGS_OBUF[4]),
        .O(SEGS[4]));
  OBUF \SEGS_OBUF[5]_inst 
       (.I(SEGS_OBUF[5]),
        .O(SEGS[5]));
  OBUF \SEGS_OBUF[6]_inst 
       (.I(SEGS_OBUF[6]),
        .O(SEGS[6]));
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(SW_IBUF[0]));
  IBUF \SW_IBUF[14]_inst 
       (.I(SW[14]),
        .O(SW_IBUF[14]));
  IBUF \SW_IBUF[15]_inst 
       (.I(SW[15]),
        .O(SW_IBUF[15]));
  IBUF \SW_IBUF[1]_inst 
       (.I(SW[1]),
        .O(SW_IBUF[1]));
  IBUF \SW_IBUF[2]_inst 
       (.I(SW[2]),
        .O(SW_IBUF[2]));
  IBUF \SW_IBUF[3]_inst 
       (.I(SW[3]),
        .O(SW_IBUF[3]));
  IBUF \SW_IBUF[4]_inst 
       (.I(SW[4]),
        .O(SW_IBUF[4]));
  IBUF \SW_IBUF[5]_inst 
       (.I(SW[5]),
        .O(SW_IBUF[5]));
  IBUF \SW_IBUF[6]_inst 
       (.I(SW[6]),
        .O(SW_IBUF[6]));
  OBUF UART_RXD_OUT_OBUF_inst
       (.I(UART_RXD_OUT_OBUF),
        .O(UART_RXD_OUT));
  p_fifo U_FIFO
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .Q(data_out),
        .dout(data_fifo),
        .gb(gb),
        .gb0(gb0),
        .p_0_in1_out(U_RX_n_3),
        .rp0(rp0),
        .\state_reg[0] (U_FIFO_n_1),
        .\state_reg[1] (U_FIFO_EXTRACTOR_n_3),
        .\wp_reg[0]_0 (U_FIFO_n_2),
        .write(write));
  fifo_fsm U_FIFO_EXTRACTOR
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D(next_state),
        .Q(state),
        .\data_reg[7] (data_fifo),
        .gb(gb),
        .gb0(gb0),
        .gb_reg(U_FIFO_EXTRACTOR_n_3),
        .\q_reg[7] (d),
        .rp0(rp0),
        .\wp_reg[2] (U_FIFO_n_1));
  mxtest_2 U_MXTEST
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .E(byte_addr_enable),
        .\FSM_sequential_state_reg[0]_0 (U_MXTEST_n_2),
        .SW_IBUF(SW_IBUF[6:0]),
        .out({U_MXTEST_n_0,U_MXTEST_n_1}),
        .\q_reg[7] (data_in),
        .rdy(rdy));
  mx_rcvr U_RX
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .JA_OBUF(JA_OBUF[0]),
        .\LED[1] (JA_OBUF[2:1]),
        .Q(data_out),
        .p_0_in1_out(U_RX_n_3),
        .\wp_reg[2] (U_FIFO_n_2),
        .write(write));
  dispctl U_SEG_CTL
       (.AN_OBUF(AN_OBUF),
        .BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .Q(data_out),
        .SEGS_OBUF(SEGS_OBUF));
  manchester_tx U_TX
       (.BTNC_IBUF(BTNC_IBUF),
        .CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .E(byte_addr_enable),
        .\FSM_sequential_state_reg[0] (U_MXTEST_n_2),
        .JA_OBUF(JA_OBUF[0]),
        .SW_IBUF(SW_IBUF[15:14]),
        .\byte_addr_reg[0] (data_in),
        .out({U_MXTEST_n_0,U_MXTEST_n_1}),
        .rdy(rdy));
  transmitter U_UART_TX
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D(next_state),
        .Q(state),
        .UART_RXD_OUT_OBUF(UART_RXD_OUT_OBUF),
        .\data_fsm_reg[7] (d),
        .\wp_reg[2] (U_FIFO_n_1));
endmodule

module one_bit_ff
   (data_bit_last,
    BTNC_IBUF,
    \FSM_onehot_state_reg[3] ,
    CLK100MHZ_IBUF_BUFG);
  output data_bit_last;
  input BTNC_IBUF;
  input \FSM_onehot_state_reg[3] ;
  input CLK100MHZ_IBUF_BUFG;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire \FSM_onehot_state_reg[3] ;
  wire data_bit_last;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[3] ),
        .Q(data_bit_last),
        .R(BTNC_IBUF));
endmodule

module p_fifo
   (gb,
    \state_reg[0] ,
    \wp_reg[0]_0 ,
    gb0,
    dout,
    rp0,
    CLK100MHZ_IBUF_BUFG,
    BTNC_IBUF,
    \state_reg[1] ,
    write,
    p_0_in1_out,
    Q);
  output gb;
  output \state_reg[0] ;
  output \wp_reg[0]_0 ;
  output gb0;
  output [7:0]dout;
  input rp0;
  input CLK100MHZ_IBUF_BUFG;
  input BTNC_IBUF;
  input \state_reg[1] ;
  input write;
  input p_0_in1_out;
  input [7:0]Q;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [7:0]Q;
  wire [7:0]dout;
  wire gb;
  wire gb0;
  wire gb_i_3_n_0;
  wire gb_i_4_n_0;
  wire mem_reg_0_31_0_5_i_3_n_0;
  wire p_0_in1_out;
  wire rp0;
  wire [4:0]rp_p1;
  wire [4:0]rp_reg;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire wp0;
  wire [4:0]wp_p1;
  wire \wp_reg[0]_0 ;
  wire [4:0]wp_reg__0;
  wire write;
  wire [1:0]NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_6_7_DOB_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_6_7_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_6_7_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'h9009000000000000)) 
    gb_i_2
       (.I0(rp_reg[3]),
        .I1(wp_p1[3]),
        .I2(rp_reg[4]),
        .I3(wp_p1[4]),
        .I4(gb_i_3_n_0),
        .I5(gb_i_4_n_0),
        .O(gb0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h18844221)) 
    gb_i_3
       (.I0(rp_reg[1]),
        .I1(rp_reg[2]),
        .I2(wp_reg__0[1]),
        .I3(wp_reg__0[0]),
        .I4(wp_reg__0[2]),
        .O(gb_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    gb_i_4
       (.I0(wp_reg__0[0]),
        .I1(rp_reg[0]),
        .I2(write),
        .O(gb_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gb_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_reg[1] ),
        .Q(gb),
        .R(BTNC_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_0_31_0_5
       (.ADDRA(rp_reg),
        .ADDRB(rp_reg),
        .ADDRC(rp_reg),
        .ADDRD(wp_reg__0),
        .DIA(Q[1:0]),
        .DIB(Q[3:2]),
        .DIC(Q[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(dout[1:0]),
        .DOB(dout[3:2]),
        .DOC(dout[5:4]),
        .DOD(NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK100MHZ_IBUF_BUFG),
        .WE(p_0_in1_out));
  LUT6 #(
    .INIT(64'hFFFF6FF6FFFFFFFF)) 
    mem_reg_0_31_0_5_i_2
       (.I0(wp_reg__0[2]),
        .I1(rp_reg[2]),
        .I2(wp_reg__0[3]),
        .I3(rp_reg[3]),
        .I4(mem_reg_0_31_0_5_i_3_n_0),
        .I5(gb),
        .O(\wp_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    mem_reg_0_31_0_5_i_3
       (.I0(rp_reg[0]),
        .I1(wp_reg__0[0]),
        .I2(rp_reg[4]),
        .I3(wp_reg__0[4]),
        .I4(wp_reg__0[1]),
        .I5(rp_reg[1]),
        .O(mem_reg_0_31_0_5_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    mem_reg_0_31_6_7
       (.ADDRA(rp_reg),
        .ADDRB(rp_reg),
        .ADDRC(rp_reg),
        .ADDRD(wp_reg__0),
        .DIA(Q[7:6]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(dout[7:6]),
        .DOB(NLW_mem_reg_0_31_6_7_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_mem_reg_0_31_6_7_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_reg_0_31_6_7_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK100MHZ_IBUF_BUFG),
        .WE(p_0_in1_out));
  LUT1 #(
    .INIT(2'h1)) 
    \rp[0]_i_2 
       (.I0(rp_reg[0]),
        .O(rp_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rp[1]_i_1 
       (.I0(rp_reg[0]),
        .I1(rp_reg[1]),
        .O(rp_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rp[2]_i_1 
       (.I0(rp_reg[1]),
        .I1(rp_reg[0]),
        .I2(rp_reg[2]),
        .O(rp_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rp[3]_i_1 
       (.I0(rp_reg[0]),
        .I1(rp_reg[1]),
        .I2(rp_reg[2]),
        .I3(rp_reg[3]),
        .O(rp_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rp[4]_i_1 
       (.I0(rp_reg[2]),
        .I1(rp_reg[3]),
        .I2(rp_reg[0]),
        .I3(rp_reg[1]),
        .I4(rp_reg[4]),
        .O(rp_p1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rp_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(rp0),
        .CLR(BTNC_IBUF),
        .D(rp_p1[0]),
        .Q(rp_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rp_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(rp0),
        .CLR(BTNC_IBUF),
        .D(rp_p1[1]),
        .Q(rp_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rp_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(rp0),
        .CLR(BTNC_IBUF),
        .D(rp_p1[2]),
        .Q(rp_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rp_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(rp0),
        .CLR(BTNC_IBUF),
        .D(rp_p1[3]),
        .Q(rp_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rp_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(rp0),
        .CLR(BTNC_IBUF),
        .D(rp_p1[4]),
        .Q(rp_reg[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    \state[0]_i_2 
       (.I0(wp_reg__0[2]),
        .I1(rp_reg[2]),
        .I2(wp_reg__0[3]),
        .I3(rp_reg[3]),
        .I4(mem_reg_0_31_0_5_i_3_n_0),
        .I5(gb),
        .O(\state_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \wp[0]_i_1 
       (.I0(wp_reg__0[0]),
        .O(wp_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wp[1]_i_1 
       (.I0(wp_reg__0[0]),
        .I1(wp_reg__0[1]),
        .O(wp_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wp[2]_i_1 
       (.I0(wp_reg__0[1]),
        .I1(wp_reg__0[0]),
        .I2(wp_reg__0[2]),
        .O(wp_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wp[3]_i_1 
       (.I0(wp_reg__0[0]),
        .I1(wp_reg__0[1]),
        .I2(wp_reg__0[2]),
        .I3(wp_reg__0[3]),
        .O(wp_p1[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \wp[4]_i_1 
       (.I0(\wp_reg[0]_0 ),
        .I1(write),
        .O(wp0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wp[4]_i_2 
       (.I0(wp_reg__0[2]),
        .I1(wp_reg__0[3]),
        .I2(wp_reg__0[0]),
        .I3(wp_reg__0[1]),
        .I4(wp_reg__0[4]),
        .O(wp_p1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \wp_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wp0),
        .CLR(BTNC_IBUF),
        .D(wp_p1[0]),
        .Q(wp_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wp_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wp0),
        .CLR(BTNC_IBUF),
        .D(wp_p1[1]),
        .Q(wp_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wp_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wp0),
        .CLR(BTNC_IBUF),
        .D(wp_p1[2]),
        .Q(wp_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wp_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wp0),
        .CLR(BTNC_IBUF),
        .D(wp_p1[3]),
        .Q(wp_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wp_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(wp0),
        .CLR(BTNC_IBUF),
        .D(wp_p1[4]),
        .Q(wp_reg__0[4]));
endmodule

module reg_parm
   (data7,
    data6,
    data5,
    data4,
    data3,
    data2,
    data1,
    UART_RXD_OUT,
    out,
    \data_fsm_reg[7] ,
    CLK100MHZ_IBUF_BUFG);
  output data7;
  output data6;
  output data5;
  output data4;
  output data3;
  output data2;
  output data1;
  output UART_RXD_OUT;
  input [2:0]out;
  input [7:0]\data_fsm_reg[7] ;
  input CLK100MHZ_IBUF_BUFG;

  wire CLK100MHZ_IBUF_BUFG;
  wire UART_RXD_OUT;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire [7:0]\data_fsm_reg[7] ;
  wire lden;
  wire [2:0]out;

  LUT3 #(
    .INIT(8'h02)) 
    \q[7]_i_1__2 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(lden));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\data_fsm_reg[7] [0]),
        .Q(UART_RXD_OUT),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\data_fsm_reg[7] [1]),
        .Q(data1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\data_fsm_reg[7] [2]),
        .Q(data2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\data_fsm_reg[7] [3]),
        .Q(data3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\data_fsm_reg[7] [4]),
        .Q(data4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\data_fsm_reg[7] [5]),
        .Q(data5),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\data_fsm_reg[7] [6]),
        .Q(data6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\data_fsm_reg[7] [7]),
        .Q(data7),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "reg_parm" *) 
module reg_parm_0
   (JA_OBUF,
    sync_out_reg,
    sync_out_reg_0,
    sync_out_reg_1,
    SW_IBUF,
    idle,
    baud_reg,
    out,
    \byte_addr_reg[0] ,
    CLK100MHZ_IBUF_BUFG);
  output [0:0]JA_OBUF;
  output sync_out_reg;
  output sync_out_reg_0;
  output sync_out_reg_1;
  input [1:0]SW_IBUF;
  input idle;
  input baud_reg;
  input [3:0]out;
  input [7:0]\byte_addr_reg[0] ;
  input CLK100MHZ_IBUF_BUFG;

  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]JA_OBUF;
  wire [1:0]SW_IBUF;
  wire baud_reg;
  wire [7:0]\byte_addr_reg[0] ;
  wire idle;
  wire lden;
  wire [3:0]out;
  wire [7:0]saved_data;
  wire sync_out_reg;
  wire sync_out_reg_0;
  wire sync_out_reg_1;

  LUT4 #(
    .INIT(16'hAAFC)) 
    \JA_OBUF[0]_inst_i_1 
       (.I0(SW_IBUF[0]),
        .I1(idle),
        .I2(baud_reg),
        .I3(SW_IBUF[1]),
        .O(JA_OBUF));
  LUT4 #(
    .INIT(16'h0024)) 
    \q[7]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[3]),
        .I3(out[2]),
        .O(lden));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\byte_addr_reg[0] [0]),
        .Q(saved_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\byte_addr_reg[0] [1]),
        .Q(saved_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\byte_addr_reg[0] [2]),
        .Q(saved_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\byte_addr_reg[0] [3]),
        .Q(saved_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\byte_addr_reg[0] [4]),
        .Q(saved_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\byte_addr_reg[0] [5]),
        .Q(saved_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\byte_addr_reg[0] [6]),
        .Q(saved_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(lden),
        .D(\byte_addr_reg[0] [7]),
        .Q(saved_data[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE2FF)) 
    txd_i_1
       (.I0(saved_data[0]),
        .I1(out[0]),
        .I2(saved_data[1]),
        .I3(out[1]),
        .O(sync_out_reg_1));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    txd_i_2
       (.I0(\byte_addr_reg[0] [0]),
        .I1(out[1]),
        .I2(saved_data[7]),
        .I3(out[0]),
        .I4(saved_data[6]),
        .O(sync_out_reg_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    txd_i_3
       (.I0(saved_data[5]),
        .I1(saved_data[4]),
        .I2(out[1]),
        .I3(saved_data[3]),
        .I4(out[0]),
        .I5(saved_data[2]),
        .O(sync_out_reg));
endmodule

module sync_input
   (sync_out,
    JA_OBUF,
    CLK100MHZ_IBUF_BUFG);
  output sync_out;
  input [0:0]JA_OBUF;
  input CLK100MHZ_IBUF_BUFG;

  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]JA_OBUF;
  wire sync_out;

  FDRE #(
    .INIT(1'b0)) 
    sync_out_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(JA_OBUF),
        .Q(sync_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sync_input" *) 
module sync_input_1
   (write,
    p_0_in1_out,
    out,
    CLK100MHZ_IBUF_BUFG,
    BTNC_IBUF,
    \wp_reg[2] );
  output write;
  output p_0_in1_out;
  input [0:0]out;
  input CLK100MHZ_IBUF_BUFG;
  input BTNC_IBUF;
  input \wp_reg[2] ;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]out;
  wire p_0_in1_out;
  wire \wp_reg[2] ;
  wire write;

  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_0_31_0_5_i_1
       (.I0(write),
        .I1(BTNC_IBUF),
        .I2(\wp_reg[2] ),
        .O(p_0_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    sync_out_reg
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(out),
        .Q(write),
        .R(1'b0));
endmodule

module transmitter
   (D,
    UART_RXD_OUT_OBUF,
    CLK100MHZ_IBUF_BUFG,
    \wp_reg[2] ,
    Q,
    \data_fsm_reg[7] );
  output [0:0]D;
  output UART_RXD_OUT_OBUF;
  input CLK100MHZ_IBUF_BUFG;
  input \wp_reg[2] ;
  input [1:0]Q;
  input [7:0]\data_fsm_reg[7] ;

  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [1:0]Q;
  wire UART_RXD_OUT_OBUF;
  wire U_SNAPSHOT_n_7;
  wire carry;
  wire clk_reset;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire [7:0]\data_fsm_reg[7] ;
  wire enb;
  wire mux_out;
  wire [3:0]q_reg__0;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire \wp_reg[2] ;

  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0080F88F08)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(enb),
        .I5(state[1]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
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
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state[0]),
        .I1(q_reg__0[0]),
        .I2(q_reg__0[1]),
        .I3(q_reg__0[2]),
        .I4(q_reg__0[3]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4202)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(carry),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  clkenb__parameterized3 U_CLKENB
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .E(enb),
        .SR(clk_reset));
  counter_parm__parameterized2 U_COUNTER
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .E(enb),
        .Q(q_reg__0),
        .carry(carry),
        .data1(data1),
        .data2(data2),
        .data3(data3),
        .data4(data4),
        .data5(data5),
        .data6(data6),
        .data7(data7),
        .mux_out(mux_out),
        .out(state[2:1]),
        .\q_reg[0]_0 (U_SNAPSHOT_n_7));
  reg_parm U_SNAPSHOT
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .UART_RXD_OUT(U_SNAPSHOT_n_7),
        .data1(data1),
        .data2(data2),
        .data3(data3),
        .data4(data4),
        .data5(data5),
        .data6(data6),
        .data7(data7),
        .\data_fsm_reg[7] (\data_fsm_reg[7] ),
        .out(state));
  LUT3 #(
    .INIT(8'h01)) 
    __0
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(clk_reset));
  LUT4 #(
    .INIT(16'h5D45)) 
    __2
       (.I0(state[1]),
        .I1(mux_out),
        .I2(state[2]),
        .I3(state[0]),
        .O(UART_RXD_OUT_OBUF));
  LUT6 #(
    .INIT(64'h000009090000FF00)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\wp_reg[2] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D));
endmodule

module transmitter_for_mx
   (E,
    JA_OBUF,
    rdy,
    CLK100MHZ_IBUF_BUFG,
    out,
    \byte_addr_reg[0] ,
    SW_IBUF,
    BTNC_IBUF,
    \FSM_sequential_state_reg[0]_0 );
  output [0:0]E;
  output [0:0]JA_OBUF;
  output rdy;
  input CLK100MHZ_IBUF_BUFG;
  input [1:0]out;
  input [7:0]\byte_addr_reg[0] ;
  input [1:0]SW_IBUF;
  input BTNC_IBUF;
  input \FSM_sequential_state_reg[0]_0 ;

  wire BTNC_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [0:0]JA_OBUF;
  wire [1:0]SW_IBUF;
  wire U_CLKENB_n_2;
  wire U_CLKENB_n_3;
  wire U_CLKENB_n_4;
  wire U_EOF_WIDTH_COUNT_n_0;
  wire U_EOF_WIDTH_COUNT_n_1;
  wire U_EOF_WIDTH_COUNT_n_2;
  wire U_SNAPSHOT_n_1;
  wire U_SNAPSHOT_n_2;
  wire U_SNAPSHOT_n_3;
  wire baud;
  wire [7:0]\byte_addr_reg[0] ;
  wire clk_reset;
  wire enb;
  wire idle;
  wire [1:0]out;
  wire rdy;
  (* RTL_KEEP = "yes" *) wire [3:0]state;
  wire txd_n_0;

  LUT4 #(
    .INIT(16'h00D1)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[2]),
        .O(rdy));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(U_CLKENB_n_4),
        .Q(state[0]),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(U_EOF_WIDTH_COUNT_n_0),
        .Q(state[1]),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(U_CLKENB_n_3),
        .Q(state[2]),
        .R(BTNC_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(U_CLKENB_n_2),
        .Q(state[3]),
        .R(BTNC_IBUF));
  LUT4 #(
    .INIT(16'h0091)) 
    \JA_OBUF[0]_inst_i_2 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[2]),
        .O(idle));
  clkenb_baud U_BAUD_GEN
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .SR(clk_reset),
        .baud(baud),
        .out(state));
  clkenb U_CLKENB
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D({U_CLKENB_n_2,U_CLKENB_n_3,U_CLKENB_n_4}),
        .\FSM_sequential_state_reg[3] (U_EOF_WIDTH_COUNT_n_1),
        .SR(clk_reset),
        .enb(enb),
        .out(state),
        .\q_reg[1]_0 (U_EOF_WIDTH_COUNT_n_2));
  counter_parm__parameterized0 U_EOF_WIDTH_COUNT
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .D(U_EOF_WIDTH_COUNT_n_0),
        .\FSM_sequential_state_reg[0] (U_EOF_WIDTH_COUNT_n_1),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0]_0 ),
        .\FSM_sequential_state_reg[3] (U_EOF_WIDTH_COUNT_n_2),
        .enb(enb),
        .out(state));
  reg_parm_0 U_SNAPSHOT
       (.CLK100MHZ_IBUF_BUFG(CLK100MHZ_IBUF_BUFG),
        .JA_OBUF(JA_OBUF),
        .SW_IBUF(SW_IBUF),
        .baud_reg(txd_n_0),
        .\byte_addr_reg[0] (\byte_addr_reg[0] ),
        .idle(idle),
        .out(state),
        .sync_out_reg(U_SNAPSHOT_n_1),
        .sync_out_reg_0(U_SNAPSHOT_n_2),
        .sync_out_reg_1(U_SNAPSHOT_n_3));
  LUT6 #(
    .INIT(64'h4444444400404440)) 
    \byte_addr[4]_i_2 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(state[2]),
        .O(E));
  LUT6 #(
    .INIT(64'hA5A556A6AAAA56A6)) 
    txd
       (.I0(baud),
        .I1(U_SNAPSHOT_n_3),
        .I2(state[3]),
        .I3(U_SNAPSHOT_n_2),
        .I4(state[2]),
        .I5(U_SNAPSHOT_n_1),
        .O(txd_n_0));
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
