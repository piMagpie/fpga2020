// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Feb 17 19:55:59 2020
// Host        : agazorPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/fpga/lab2/servo_top/servo_top.srcs/sources_1/bd/design_1/ip/design_1_pwm8_0_0/design_1_pwm8_0_0_sim_netlist.v
// Design      : design_1_pwm8_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pwm8_0_0,pwm8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pwm8,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_pwm8_0_0
   (pwm,
    clock,
    pwmout);
  input [7:0]pwm;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clock, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clock;
  output pwmout;

  wire clock;
  wire [7:0]pwm;
  wire pwmout;

  design_1_pwm8_0_0_pwm8 U0
       (.clock(clock),
        .pwm(pwm),
        .pwmout(pwmout));
endmodule

(* ORIG_REF_NAME = "pwm8" *) 
module design_1_pwm8_0_0_pwm8
   (pwmout,
    pwm,
    clock);
  output pwmout;
  input [7:0]pwm;
  input clock;

  wire clock;
  wire eqOp;
  wire eqOp_0;
  wire eqOp_carry_i_1_n_0;
  wire eqOp_carry_i_2_n_0;
  wire eqOp_carry_i_3_n_0;
  wire eqOp_carry_i_4_n_0;
  wire eqOp_carry_i_5_n_0;
  wire eqOp_carry_i_6_n_0;
  wire eqOp_carry_i_7_n_0;
  wire eqOp_carry_n_0;
  wire eqOp_carry_n_1;
  wire eqOp_carry_n_2;
  wire eqOp_carry_n_3;
  wire [10:0]plusOp;
  wire [7:0]pwm;
  wire \pwm_cnt[10]_i_2_n_0 ;
  wire [10:0]pwm_cnt_reg;
  wire pwmout;
  wire state_i_1_n_0;
  wire state_i_4_n_0;
  wire state_i_5_n_0;
  wire [3:0]NLW_eqOp_carry_O_UNCONNECTED;

  CARRY4 eqOp_carry
       (.CI(1'b0),
        .CO({eqOp_carry_n_0,eqOp_carry_n_1,eqOp_carry_n_2,eqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry_O_UNCONNECTED[3:0]),
        .S({eqOp_carry_i_1_n_0,eqOp_carry_i_2_n_0,eqOp_carry_i_3_n_0,eqOp_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    eqOp_carry_i_1
       (.I0(pwm_cnt_reg[9]),
        .I1(pwm_cnt_reg[10]),
        .O(eqOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0120201010020201)) 
    eqOp_carry_i_2
       (.I0(pwm_cnt_reg[6]),
        .I1(pwm_cnt_reg[8]),
        .I2(pwm[7]),
        .I3(pwm[6]),
        .I4(eqOp_carry_i_5_n_0),
        .I5(pwm_cnt_reg[7]),
        .O(eqOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0880022020088002)) 
    eqOp_carry_i_3
       (.I0(eqOp_carry_i_6_n_0),
        .I1(pwm[5]),
        .I2(pwm[4]),
        .I3(eqOp_carry_i_7_n_0),
        .I4(pwm_cnt_reg[5]),
        .I5(pwm_cnt_reg[4]),
        .O(eqOp_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0480012010084002)) 
    eqOp_carry_i_4
       (.I0(pwm_cnt_reg[0]),
        .I1(pwm[2]),
        .I2(pwm[1]),
        .I3(pwm[0]),
        .I4(pwm_cnt_reg[2]),
        .I5(pwm_cnt_reg[1]),
        .O(eqOp_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    eqOp_carry_i_5
       (.I0(pwm[5]),
        .I1(pwm[3]),
        .I2(pwm[1]),
        .I3(pwm[0]),
        .I4(pwm[2]),
        .I5(pwm[4]),
        .O(eqOp_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAA9555)) 
    eqOp_carry_i_6
       (.I0(pwm[3]),
        .I1(pwm[2]),
        .I2(pwm[0]),
        .I3(pwm[1]),
        .I4(pwm_cnt_reg[3]),
        .O(eqOp_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    eqOp_carry_i_7
       (.I0(pwm[3]),
        .I1(pwm[1]),
        .I2(pwm[0]),
        .I3(pwm[2]),
        .O(eqOp_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_cnt[0]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .O(plusOp[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pwm_cnt[10]_i_1 
       (.I0(pwm_cnt_reg[8]),
        .I1(pwm_cnt_reg[6]),
        .I2(\pwm_cnt[10]_i_2_n_0 ),
        .I3(pwm_cnt_reg[7]),
        .I4(pwm_cnt_reg[9]),
        .I5(pwm_cnt_reg[10]),
        .O(plusOp[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pwm_cnt[10]_i_2 
       (.I0(pwm_cnt_reg[5]),
        .I1(pwm_cnt_reg[3]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[0]),
        .I4(pwm_cnt_reg[2]),
        .I5(pwm_cnt_reg[4]),
        .O(\pwm_cnt[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cnt[1]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .I1(pwm_cnt_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pwm_cnt[2]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pwm_cnt[3]_i_1 
       (.I0(pwm_cnt_reg[1]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[2]),
        .I3(pwm_cnt_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pwm_cnt[4]_i_1 
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[3]),
        .I4(pwm_cnt_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pwm_cnt[5]_i_1 
       (.I0(pwm_cnt_reg[3]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[2]),
        .I4(pwm_cnt_reg[4]),
        .I5(pwm_cnt_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cnt[6]_i_1 
       (.I0(\pwm_cnt[10]_i_2_n_0 ),
        .I1(pwm_cnt_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pwm_cnt[7]_i_1 
       (.I0(\pwm_cnt[10]_i_2_n_0 ),
        .I1(pwm_cnt_reg[6]),
        .I2(pwm_cnt_reg[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pwm_cnt[8]_i_1 
       (.I0(pwm_cnt_reg[6]),
        .I1(\pwm_cnt[10]_i_2_n_0 ),
        .I2(pwm_cnt_reg[7]),
        .I3(pwm_cnt_reg[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pwm_cnt[9]_i_1 
       (.I0(pwm_cnt_reg[7]),
        .I1(\pwm_cnt[10]_i_2_n_0 ),
        .I2(pwm_cnt_reg[6]),
        .I3(pwm_cnt_reg[8]),
        .I4(pwm_cnt_reg[9]),
        .O(plusOp[9]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(pwm_cnt_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(pwm_cnt_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(pwm_cnt_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(pwm_cnt_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(pwm_cnt_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(pwm_cnt_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(pwm_cnt_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(pwm_cnt_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(pwm_cnt_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(pwm_cnt_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(pwm_cnt_reg[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00F2)) 
    state_i_1
       (.I0(pwmout),
        .I1(eqOp_carry_n_0),
        .I2(eqOp_0),
        .I3(eqOp),
        .O(state_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    state_i_2
       (.I0(pwm_cnt_reg[8]),
        .I1(pwm_cnt_reg[7]),
        .I2(pwm_cnt_reg[6]),
        .I3(pwm_cnt_reg[10]),
        .I4(pwm_cnt_reg[9]),
        .I5(state_i_4_n_0),
        .O(eqOp_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    state_i_3
       (.I0(pwm[4]),
        .I1(pwm[5]),
        .I2(pwm[7]),
        .I3(pwm[6]),
        .I4(state_i_5_n_0),
        .O(eqOp));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    state_i_4
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[5]),
        .I4(pwm_cnt_reg[3]),
        .I5(pwm_cnt_reg[4]),
        .O(state_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    state_i_5
       (.I0(pwm[1]),
        .I1(pwm[0]),
        .I2(pwm[3]),
        .I3(pwm[2]),
        .O(state_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clock),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(pwmout),
        .R(1'b0));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
