// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Feb  5 09:55:57 2020
// Host        : agazorPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/fpga/lab2/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_servo_0_0_1/design_1_servo_0_0_sim_netlist.v
// Design      : design_1_servo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_servo_0_0,servo,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "servo,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_servo_0_0
   (dutyCycle_ap_vld,
    speed_ap_vld,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    up,
    down,
    left_r,
    right_r,
    dutyCycle,
    speed);
  output dutyCycle_ap_vld;
  output speed_ap_vld;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME up, LAYERED_METADATA undef" *) input [7:0]up;
  (* x_interface_info = "xilinx.com:signal:data:1.0 down DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME down, LAYERED_METADATA undef" *) input [7:0]down;
  (* x_interface_info = "xilinx.com:signal:data:1.0 left_r DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME left_r, LAYERED_METADATA undef" *) input [7:0]left_r;
  (* x_interface_info = "xilinx.com:signal:data:1.0 right_r DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME right_r, LAYERED_METADATA undef" *) input [7:0]right_r;
  (* x_interface_info = "xilinx.com:signal:data:1.0 dutyCycle DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME dutyCycle, LAYERED_METADATA undef" *) output [7:0]dutyCycle;
  (* x_interface_info = "xilinx.com:signal:data:1.0 speed DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME speed, LAYERED_METADATA undef" *) output [7:0]speed;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [7:0]down;
  wire [7:0]dutyCycle;
  wire dutyCycle_ap_vld;
  wire [7:0]left_r;
  wire [7:0]right_r;
  wire [7:0]speed;
  wire speed_ap_vld;
  wire [7:0]up;

  design_1_servo_0_0_servo U0
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .down(down),
        .dutyCycle(dutyCycle),
        .dutyCycle_ap_vld(dutyCycle_ap_vld),
        .left_r(left_r),
        .right_r(right_r),
        .speed(speed),
        .speed_ap_vld(speed_ap_vld),
        .up(up));
endmodule

(* ORIG_REF_NAME = "servo" *) 
module design_1_servo_0_0_servo
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    up,
    down,
    left_r,
    right_r,
    dutyCycle,
    dutyCycle_ap_vld,
    speed,
    speed_ap_vld);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [7:0]up;
  input [7:0]down;
  input [7:0]left_r;
  input [7:0]right_r;
  output [7:0]dutyCycle;
  output dutyCycle_ap_vld;
  output [7:0]speed;
  output speed_ap_vld;

  wire \<const0> ;
  wire \<const1> ;
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire \ap_CS_fsm[2]_i_1_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst;
  wire ap_start;
  wire [7:0]current_duty_cycle;
  wire current_duty_cycle0;
  wire [6:0]current_speed;
  wire current_speed0;
  wire \current_speed[0]_i_1_n_0 ;
  wire \current_speed[1]_i_1_n_0 ;
  wire \current_speed[2]_i_1_n_0 ;
  wire \current_speed[3]_i_1_n_0 ;
  wire \current_speed[4]_i_1_n_0 ;
  wire \current_speed[4]_i_2_n_0 ;
  wire \current_speed[4]_i_3_n_0 ;
  wire \current_speed[4]_i_4_n_0 ;
  wire \current_speed[5]_i_1_n_0 ;
  wire \current_speed[5]_i_2_n_0 ;
  wire \current_speed[6]_i_10_n_0 ;
  wire \current_speed[6]_i_11_n_0 ;
  wire \current_speed[6]_i_12_n_0 ;
  wire \current_speed[6]_i_13_n_0 ;
  wire \current_speed[6]_i_2_n_0 ;
  wire \current_speed[6]_i_3_n_0 ;
  wire \current_speed[6]_i_4_n_0 ;
  wire \current_speed[6]_i_5_n_0 ;
  wire \current_speed[6]_i_6_n_0 ;
  wire \current_speed[6]_i_7_n_0 ;
  wire \current_speed[6]_i_8_n_0 ;
  wire \current_speed[6]_i_9_n_0 ;
  wire [7:0]down;
  wire [4:0]\^dutyCycle ;
  wire \dutyCycle[1]_INST_0_i_1_n_0 ;
  wire \dutyCycle[3]_INST_0_i_1_n_0 ;
  wire \dutyCycle[3]_INST_0_i_1_n_1 ;
  wire \dutyCycle[3]_INST_0_i_1_n_2 ;
  wire \dutyCycle[3]_INST_0_i_1_n_3 ;
  wire \dutyCycle[3]_INST_0_i_1_n_4 ;
  wire \dutyCycle[3]_INST_0_i_1_n_5 ;
  wire \dutyCycle[3]_INST_0_i_1_n_6 ;
  wire \dutyCycle[3]_INST_0_i_1_n_7 ;
  wire \dutyCycle[3]_INST_0_i_2_n_0 ;
  wire \dutyCycle[3]_INST_0_i_3_n_0 ;
  wire \dutyCycle[3]_INST_0_i_4_n_0 ;
  wire \dutyCycle[3]_INST_0_i_5_n_0 ;
  wire \dutyCycle[4]_INST_0_i_1_n_1 ;
  wire \dutyCycle[4]_INST_0_i_1_n_2 ;
  wire \dutyCycle[4]_INST_0_i_1_n_3 ;
  wire \dutyCycle[4]_INST_0_i_1_n_4 ;
  wire \dutyCycle[4]_INST_0_i_1_n_5 ;
  wire \dutyCycle[4]_INST_0_i_1_n_6 ;
  wire \dutyCycle[4]_INST_0_i_1_n_7 ;
  wire \dutyCycle[4]_INST_0_i_2_n_0 ;
  wire \dutyCycle[4]_INST_0_i_3_n_0 ;
  wire \dutyCycle[4]_INST_0_i_4_n_0 ;
  wire \icmp_ln16_reg_319[0]_i_1_n_0 ;
  wire \icmp_ln16_reg_319_reg_n_0_[0] ;
  wire \icmp_ln20_1_reg_329[0]_i_1_n_0 ;
  wire \icmp_ln20_1_reg_329[0]_i_2_n_0 ;
  wire \icmp_ln20_1_reg_329[0]_i_3_n_0 ;
  wire \icmp_ln20_1_reg_329[0]_i_4_n_0 ;
  wire \icmp_ln20_1_reg_329[0]_i_5_n_0 ;
  wire \icmp_ln20_1_reg_329_reg_n_0_[0] ;
  wire \icmp_ln20_reg_324[0]_i_1_n_0 ;
  wire \icmp_ln20_reg_324_reg_n_0_[0] ;
  wire [7:0]left_r;
  wire [7:0]right_r;
  wire \select_ln12_reg_306_reg_n_0_[0] ;
  wire \select_ln12_reg_306_reg_n_0_[1] ;
  wire \select_ln12_reg_306_reg_n_0_[2] ;
  wire [7:0]select_ln16_fu_215_p3;
  wire [7:0]select_ln16_reg_333;
  wire \select_ln16_reg_333[3]_i_2_n_0 ;
  wire \select_ln16_reg_333[3]_i_3_n_0 ;
  wire \select_ln16_reg_333[3]_i_4_n_0 ;
  wire \select_ln16_reg_333[3]_i_5_n_0 ;
  wire \select_ln16_reg_333[3]_i_6_n_0 ;
  wire \select_ln16_reg_333[7]_i_2_n_0 ;
  wire \select_ln16_reg_333[7]_i_3_n_0 ;
  wire \select_ln16_reg_333[7]_i_4_n_0 ;
  wire \select_ln16_reg_333[7]_i_5_n_0 ;
  wire \select_ln16_reg_333_reg[3]_i_1_n_0 ;
  wire \select_ln16_reg_333_reg[3]_i_1_n_1 ;
  wire \select_ln16_reg_333_reg[3]_i_1_n_2 ;
  wire \select_ln16_reg_333_reg[3]_i_1_n_3 ;
  wire \select_ln16_reg_333_reg[7]_i_1_n_1 ;
  wire \select_ln16_reg_333_reg[7]_i_1_n_2 ;
  wire \select_ln16_reg_333_reg[7]_i_1_n_3 ;
  wire [3:0]\^speed ;
  wire [3:0]tmp_1_fu_255_p4;
  wire [7:0]up;
  wire [3:3]\NLW_dutyCycle[4]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_select_ln16_reg_333_reg[7]_i_1_CO_UNCONNECTED ;

  assign ap_ready = ap_done;
  assign dutyCycle[7] = \<const0> ;
  assign dutyCycle[6] = \<const1> ;
  assign dutyCycle[5] = \<const1> ;
  assign dutyCycle[4:0] = \^dutyCycle [4:0];
  assign dutyCycle_ap_vld = ap_done;
  assign speed[7] = \<const0> ;
  assign speed[6] = \<const0> ;
  assign speed[5] = \<const0> ;
  assign speed[4] = \<const0> ;
  assign speed[3:0] = \^speed [3:0];
  assign speed_ap_vld = ap_done;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF00F7)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(ap_done),
        .I3(ap_CS_fsm_state2),
        .I4(ap_rst),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(ap_done),
        .I4(ap_rst),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_rst),
        .O(\ap_CS_fsm[2]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_0 ),
        .Q(ap_CS_fsm_state2),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[2]_i_1_n_0 ),
        .Q(ap_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT2 #(
    .INIT(4'h2)) 
    \current_duty_cycle[7]_i_1 
       (.I0(ap_done),
        .I1(\icmp_ln20_1_reg_329_reg_n_0_[0] ),
        .O(current_duty_cycle0));
  FDRE #(
    .INIT(1'b0)) 
    \current_duty_cycle_reg[0] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(\dutyCycle[3]_INST_0_i_1_n_7 ),
        .Q(current_duty_cycle[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_duty_cycle_reg[1] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(\dutyCycle[3]_INST_0_i_1_n_6 ),
        .Q(current_duty_cycle[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_duty_cycle_reg[2] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(\dutyCycle[3]_INST_0_i_1_n_5 ),
        .Q(current_duty_cycle[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_duty_cycle_reg[3] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(\dutyCycle[3]_INST_0_i_1_n_4 ),
        .Q(current_duty_cycle[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_duty_cycle_reg[4] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(\dutyCycle[4]_INST_0_i_1_n_7 ),
        .Q(current_duty_cycle[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_duty_cycle_reg[5] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(\dutyCycle[4]_INST_0_i_1_n_6 ),
        .Q(current_duty_cycle[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_duty_cycle_reg[6] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(\dutyCycle[4]_INST_0_i_1_n_5 ),
        .Q(current_duty_cycle[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_duty_cycle_reg[7] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(\dutyCycle[4]_INST_0_i_1_n_4 ),
        .Q(current_duty_cycle[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \current_speed[0]_i_1 
       (.I0(\current_speed[6]_i_3_n_0 ),
        .I1(\current_speed[6]_i_4_n_0 ),
        .I2(current_speed[0]),
        .O(\current_speed[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBD42)) 
    \current_speed[1]_i_1 
       (.I0(\current_speed[6]_i_3_n_0 ),
        .I1(current_speed[0]),
        .I2(\current_speed[6]_i_4_n_0 ),
        .I3(current_speed[1]),
        .O(\current_speed[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBFFD4002)) 
    \current_speed[2]_i_1 
       (.I0(\current_speed[6]_i_3_n_0 ),
        .I1(current_speed[0]),
        .I2(current_speed[1]),
        .I3(\current_speed[6]_i_4_n_0 ),
        .I4(current_speed[2]),
        .O(\current_speed[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA96AAAAAAA)) 
    \current_speed[3]_i_1 
       (.I0(current_speed[3]),
        .I1(current_speed[2]),
        .I2(\current_speed[6]_i_4_n_0 ),
        .I3(current_speed[1]),
        .I4(current_speed[0]),
        .I5(\current_speed[6]_i_3_n_0 ),
        .O(\current_speed[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBFFBFFD44004002)) 
    \current_speed[4]_i_1 
       (.I0(\current_speed[4]_i_2_n_0 ),
        .I1(current_speed[3]),
        .I2(\current_speed[4]_i_3_n_0 ),
        .I3(current_speed[2]),
        .I4(\current_speed[6]_i_4_n_0 ),
        .I5(current_speed[4]),
        .O(\current_speed[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFEF)) 
    \current_speed[4]_i_2 
       (.I0(\current_speed[6]_i_8_n_0 ),
        .I1(\current_speed[4]_i_4_n_0 ),
        .I2(\current_speed[6]_i_6_n_0 ),
        .I3(current_speed[0]),
        .I4(\current_speed[6]_i_4_n_0 ),
        .I5(current_speed[1]),
        .O(\current_speed[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_speed[4]_i_3 
       (.I0(current_speed[1]),
        .I1(current_speed[0]),
        .O(\current_speed[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \current_speed[4]_i_4 
       (.I0(current_speed[6]),
        .I1(current_speed[4]),
        .I2(current_speed[5]),
        .O(\current_speed[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBFBFFDF44040020)) 
    \current_speed[5]_i_1 
       (.I0(\current_speed[6]_i_5_n_0 ),
        .I1(current_speed[3]),
        .I2(\current_speed[5]_i_2_n_0 ),
        .I3(\current_speed[6]_i_4_n_0 ),
        .I4(current_speed[4]),
        .I5(current_speed[5]),
        .O(\current_speed[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \current_speed[5]_i_2 
       (.I0(current_speed[2]),
        .I1(current_speed[0]),
        .I2(current_speed[1]),
        .O(\current_speed[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0888)) 
    \current_speed[6]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(\current_speed[6]_i_3_n_0 ),
        .I3(\current_speed[6]_i_4_n_0 ),
        .O(current_speed0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_speed[6]_i_10 
       (.I0(down[2]),
        .I1(down[3]),
        .I2(down[0]),
        .I3(down[1]),
        .O(\current_speed[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \current_speed[6]_i_11 
       (.I0(down[7]),
        .I1(down[6]),
        .I2(down[4]),
        .I3(down[5]),
        .O(\current_speed[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D0FF)) 
    \current_speed[6]_i_12 
       (.I0(\current_speed[6]_i_11_n_0 ),
        .I1(\current_speed[6]_i_10_n_0 ),
        .I2(\current_speed[5]_i_2_n_0 ),
        .I3(current_speed[3]),
        .I4(\current_speed[6]_i_9_n_0 ),
        .I5(current_speed[6]),
        .O(\current_speed[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_speed[6]_i_13 
       (.I0(up[3]),
        .I1(up[7]),
        .I2(up[5]),
        .I3(up[0]),
        .O(\current_speed[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFF1F01000010)) 
    \current_speed[6]_i_2 
       (.I0(\current_speed[6]_i_5_n_0 ),
        .I1(\current_speed[6]_i_6_n_0 ),
        .I2(\current_speed[6]_i_7_n_0 ),
        .I3(current_speed[4]),
        .I4(current_speed[5]),
        .I5(current_speed[6]),
        .O(\current_speed[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \current_speed[6]_i_3 
       (.I0(\current_speed[6]_i_8_n_0 ),
        .I1(current_speed[6]),
        .I2(current_speed[4]),
        .I3(current_speed[5]),
        .I4(\current_speed[6]_i_6_n_0 ),
        .O(\current_speed[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000100)) 
    \current_speed[6]_i_4 
       (.I0(\current_speed[6]_i_9_n_0 ),
        .I1(current_speed[3]),
        .I2(current_speed[6]),
        .I3(\current_speed[5]_i_2_n_0 ),
        .I4(\current_speed[6]_i_10_n_0 ),
        .I5(\current_speed[6]_i_11_n_0 ),
        .O(\current_speed[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFD)) 
    \current_speed[6]_i_5 
       (.I0(\current_speed[6]_i_12_n_0 ),
        .I1(\current_speed[6]_i_8_n_0 ),
        .I2(current_speed[0]),
        .I3(current_speed[1]),
        .I4(\current_speed[6]_i_4_n_0 ),
        .I5(current_speed[2]),
        .O(\current_speed[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCD333333CD33CD33)) 
    \current_speed[6]_i_6 
       (.I0(\current_speed[6]_i_9_n_0 ),
        .I1(current_speed[3]),
        .I2(current_speed[6]),
        .I3(\current_speed[5]_i_2_n_0 ),
        .I4(\current_speed[6]_i_10_n_0 ),
        .I5(\current_speed[6]_i_11_n_0 ),
        .O(\current_speed[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \current_speed[6]_i_7 
       (.I0(\current_speed[6]_i_4_n_0 ),
        .I1(current_speed[2]),
        .I2(current_speed[0]),
        .I3(current_speed[1]),
        .I4(current_speed[3]),
        .O(\current_speed[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \current_speed[6]_i_8 
       (.I0(up[4]),
        .I1(up[1]),
        .I2(up[2]),
        .I3(up[6]),
        .I4(\current_speed[6]_i_13_n_0 ),
        .O(\current_speed[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \current_speed[6]_i_9 
       (.I0(current_speed[5]),
        .I1(current_speed[4]),
        .O(\current_speed[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[0] 
       (.C(ap_clk),
        .CE(current_speed0),
        .D(\current_speed[0]_i_1_n_0 ),
        .Q(current_speed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[1] 
       (.C(ap_clk),
        .CE(current_speed0),
        .D(\current_speed[1]_i_1_n_0 ),
        .Q(current_speed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[2] 
       (.C(ap_clk),
        .CE(current_speed0),
        .D(\current_speed[2]_i_1_n_0 ),
        .Q(current_speed[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[3] 
       (.C(ap_clk),
        .CE(current_speed0),
        .D(\current_speed[3]_i_1_n_0 ),
        .Q(current_speed[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[4] 
       (.C(ap_clk),
        .CE(current_speed0),
        .D(\current_speed[4]_i_1_n_0 ),
        .Q(current_speed[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[5] 
       (.C(ap_clk),
        .CE(current_speed0),
        .D(\current_speed[5]_i_1_n_0 ),
        .Q(current_speed[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[6] 
       (.C(ap_clk),
        .CE(current_speed0),
        .D(\current_speed[6]_i_2_n_0 ),
        .Q(current_speed[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dutyCycle[0]_INST_0 
       (.I0(\dutyCycle[1]_INST_0_i_1_n_0 ),
        .I1(\dutyCycle[3]_INST_0_i_1_n_7 ),
        .O(\^dutyCycle [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dutyCycle[1]_INST_0 
       (.I0(\dutyCycle[1]_INST_0_i_1_n_0 ),
        .I1(\dutyCycle[3]_INST_0_i_1_n_6 ),
        .O(\^dutyCycle [1]));
  LUT6 #(
    .INIT(64'h00000000AAA80000)) 
    \dutyCycle[1]_INST_0_i_1 
       (.I0(\dutyCycle[4]_INST_0_i_1_n_5 ),
        .I1(\dutyCycle[3]_INST_0_i_1_n_5 ),
        .I2(\dutyCycle[4]_INST_0_i_1_n_7 ),
        .I3(\dutyCycle[3]_INST_0_i_1_n_4 ),
        .I4(\dutyCycle[4]_INST_0_i_1_n_6 ),
        .I5(\dutyCycle[4]_INST_0_i_1_n_4 ),
        .O(\dutyCycle[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDFFFFF)) 
    \dutyCycle[2]_INST_0 
       (.I0(\dutyCycle[4]_INST_0_i_1_n_5 ),
        .I1(\dutyCycle[3]_INST_0_i_1_n_5 ),
        .I2(\dutyCycle[3]_INST_0_i_1_n_4 ),
        .I3(\dutyCycle[4]_INST_0_i_1_n_7 ),
        .I4(\dutyCycle[4]_INST_0_i_1_n_6 ),
        .I5(\dutyCycle[4]_INST_0_i_1_n_4 ),
        .O(\^dutyCycle [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \dutyCycle[3]_INST_0 
       (.I0(\dutyCycle[4]_INST_0_i_1_n_5 ),
        .I1(\dutyCycle[3]_INST_0_i_1_n_4 ),
        .I2(\dutyCycle[4]_INST_0_i_1_n_6 ),
        .I3(\dutyCycle[4]_INST_0_i_1_n_4 ),
        .O(\^dutyCycle [3]));
  CARRY4 \dutyCycle[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\dutyCycle[3]_INST_0_i_1_n_0 ,\dutyCycle[3]_INST_0_i_1_n_1 ,\dutyCycle[3]_INST_0_i_1_n_2 ,\dutyCycle[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(select_ln16_reg_333[3:0]),
        .O({\dutyCycle[3]_INST_0_i_1_n_4 ,\dutyCycle[3]_INST_0_i_1_n_5 ,\dutyCycle[3]_INST_0_i_1_n_6 ,\dutyCycle[3]_INST_0_i_1_n_7 }),
        .S({\dutyCycle[3]_INST_0_i_2_n_0 ,\dutyCycle[3]_INST_0_i_3_n_0 ,\dutyCycle[3]_INST_0_i_4_n_0 ,\dutyCycle[3]_INST_0_i_5_n_0 }));
  LUT3 #(
    .INIT(8'h9A)) 
    \dutyCycle[3]_INST_0_i_2 
       (.I0(select_ln16_reg_333[3]),
        .I1(\icmp_ln20_reg_324_reg_n_0_[0] ),
        .I2(tmp_1_fu_255_p4[0]),
        .O(\dutyCycle[3]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \dutyCycle[3]_INST_0_i_3 
       (.I0(select_ln16_reg_333[2]),
        .I1(\icmp_ln20_reg_324_reg_n_0_[0] ),
        .I2(\select_ln12_reg_306_reg_n_0_[2] ),
        .O(\dutyCycle[3]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \dutyCycle[3]_INST_0_i_4 
       (.I0(select_ln16_reg_333[1]),
        .I1(\icmp_ln20_reg_324_reg_n_0_[0] ),
        .I2(\select_ln12_reg_306_reg_n_0_[1] ),
        .O(\dutyCycle[3]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \dutyCycle[3]_INST_0_i_5 
       (.I0(select_ln16_reg_333[0]),
        .I1(\icmp_ln20_reg_324_reg_n_0_[0] ),
        .I2(\select_ln12_reg_306_reg_n_0_[0] ),
        .O(\dutyCycle[3]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \dutyCycle[4]_INST_0 
       (.I0(\dutyCycle[4]_INST_0_i_1_n_5 ),
        .I1(\dutyCycle[4]_INST_0_i_1_n_7 ),
        .I2(\dutyCycle[4]_INST_0_i_1_n_6 ),
        .I3(\dutyCycle[4]_INST_0_i_1_n_4 ),
        .O(\^dutyCycle [4]));
  CARRY4 \dutyCycle[4]_INST_0_i_1 
       (.CI(\dutyCycle[3]_INST_0_i_1_n_0 ),
        .CO({\NLW_dutyCycle[4]_INST_0_i_1_CO_UNCONNECTED [3],\dutyCycle[4]_INST_0_i_1_n_1 ,\dutyCycle[4]_INST_0_i_1_n_2 ,\dutyCycle[4]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,select_ln16_reg_333[6:4]}),
        .O({\dutyCycle[4]_INST_0_i_1_n_4 ,\dutyCycle[4]_INST_0_i_1_n_5 ,\dutyCycle[4]_INST_0_i_1_n_6 ,\dutyCycle[4]_INST_0_i_1_n_7 }),
        .S({select_ln16_reg_333[7],\dutyCycle[4]_INST_0_i_2_n_0 ,\dutyCycle[4]_INST_0_i_3_n_0 ,\dutyCycle[4]_INST_0_i_4_n_0 }));
  LUT3 #(
    .INIT(8'h9A)) 
    \dutyCycle[4]_INST_0_i_2 
       (.I0(select_ln16_reg_333[6]),
        .I1(\icmp_ln20_reg_324_reg_n_0_[0] ),
        .I2(tmp_1_fu_255_p4[3]),
        .O(\dutyCycle[4]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \dutyCycle[4]_INST_0_i_3 
       (.I0(select_ln16_reg_333[5]),
        .I1(\icmp_ln20_reg_324_reg_n_0_[0] ),
        .I2(tmp_1_fu_255_p4[2]),
        .O(\dutyCycle[4]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \dutyCycle[4]_INST_0_i_4 
       (.I0(select_ln16_reg_333[4]),
        .I1(\icmp_ln20_reg_324_reg_n_0_[0] ),
        .I2(tmp_1_fu_255_p4[1]),
        .O(\dutyCycle[4]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF70)) 
    \icmp_ln16_reg_319[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\icmp_ln16_reg_319_reg_n_0_[0] ),
        .I3(\icmp_ln20_1_reg_329[0]_i_2_n_0 ),
        .O(\icmp_ln16_reg_319[0]_i_1_n_0 ));
  FDRE \icmp_ln16_reg_319_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln16_reg_319[0]_i_1_n_0 ),
        .Q(\icmp_ln16_reg_319_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF707070)) 
    \icmp_ln20_1_reg_329[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\icmp_ln20_1_reg_329_reg_n_0_[0] ),
        .I3(\icmp_ln20_1_reg_329[0]_i_2_n_0 ),
        .I4(\icmp_ln20_1_reg_329[0]_i_3_n_0 ),
        .O(\icmp_ln20_1_reg_329[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \icmp_ln20_1_reg_329[0]_i_2 
       (.I0(left_r[4]),
        .I1(left_r[0]),
        .I2(left_r[5]),
        .I3(left_r[6]),
        .I4(\icmp_ln20_1_reg_329[0]_i_4_n_0 ),
        .O(\icmp_ln20_1_reg_329[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \icmp_ln20_1_reg_329[0]_i_3 
       (.I0(right_r[6]),
        .I1(right_r[3]),
        .I2(right_r[0]),
        .I3(right_r[5]),
        .I4(\icmp_ln20_1_reg_329[0]_i_5_n_0 ),
        .O(\icmp_ln20_1_reg_329[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \icmp_ln20_1_reg_329[0]_i_4 
       (.I0(left_r[7]),
        .I1(left_r[1]),
        .I2(left_r[3]),
        .I3(left_r[2]),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(ap_start),
        .O(\icmp_ln20_1_reg_329[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \icmp_ln20_1_reg_329[0]_i_5 
       (.I0(right_r[1]),
        .I1(right_r[4]),
        .I2(right_r[7]),
        .I3(right_r[2]),
        .O(\icmp_ln20_1_reg_329[0]_i_5_n_0 ));
  FDRE \icmp_ln20_1_reg_329_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln20_1_reg_329[0]_i_1_n_0 ),
        .Q(\icmp_ln20_1_reg_329_reg_n_0_[0] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \icmp_ln20_reg_324[0]_i_1 
       (.I0(\icmp_ln20_reg_324_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(\icmp_ln20_1_reg_329[0]_i_3_n_0 ),
        .O(\icmp_ln20_reg_324[0]_i_1_n_0 ));
  FDRE \icmp_ln20_reg_324_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln20_reg_324[0]_i_1_n_0 ),
        .Q(\icmp_ln20_reg_324_reg_n_0_[0] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \select_ln12_reg_306[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm1));
  FDRE \select_ln12_reg_306_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\current_speed[0]_i_1_n_0 ),
        .Q(\select_ln12_reg_306_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \select_ln12_reg_306_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\current_speed[1]_i_1_n_0 ),
        .Q(\select_ln12_reg_306_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \select_ln12_reg_306_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\current_speed[2]_i_1_n_0 ),
        .Q(\select_ln12_reg_306_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \select_ln12_reg_306_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\current_speed[3]_i_1_n_0 ),
        .Q(tmp_1_fu_255_p4[0]),
        .R(1'b0));
  FDRE \select_ln12_reg_306_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\current_speed[4]_i_1_n_0 ),
        .Q(tmp_1_fu_255_p4[1]),
        .R(1'b0));
  FDRE \select_ln12_reg_306_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\current_speed[5]_i_1_n_0 ),
        .Q(tmp_1_fu_255_p4[2]),
        .R(1'b0));
  FDRE \select_ln12_reg_306_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\current_speed[6]_i_2_n_0 ),
        .Q(tmp_1_fu_255_p4[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \select_ln16_reg_333[3]_i_2 
       (.I0(\icmp_ln16_reg_319_reg_n_0_[0] ),
        .O(\select_ln16_reg_333[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \select_ln16_reg_333[3]_i_3 
       (.I0(current_duty_cycle[3]),
        .I1(\icmp_ln16_reg_319_reg_n_0_[0] ),
        .I2(tmp_1_fu_255_p4[0]),
        .O(\select_ln16_reg_333[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \select_ln16_reg_333[3]_i_4 
       (.I0(current_duty_cycle[2]),
        .I1(\icmp_ln16_reg_319_reg_n_0_[0] ),
        .I2(\select_ln12_reg_306_reg_n_0_[2] ),
        .O(\select_ln16_reg_333[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \select_ln16_reg_333[3]_i_5 
       (.I0(current_duty_cycle[1]),
        .I1(\icmp_ln16_reg_319_reg_n_0_[0] ),
        .I2(\select_ln12_reg_306_reg_n_0_[1] ),
        .O(\select_ln16_reg_333[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \select_ln16_reg_333[3]_i_6 
       (.I0(current_duty_cycle[0]),
        .I1(\icmp_ln16_reg_319_reg_n_0_[0] ),
        .I2(\select_ln12_reg_306_reg_n_0_[0] ),
        .O(\select_ln16_reg_333[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \select_ln16_reg_333[7]_i_2 
       (.I0(\icmp_ln16_reg_319_reg_n_0_[0] ),
        .I1(current_duty_cycle[7]),
        .O(\select_ln16_reg_333[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \select_ln16_reg_333[7]_i_3 
       (.I0(current_duty_cycle[6]),
        .I1(\icmp_ln16_reg_319_reg_n_0_[0] ),
        .I2(tmp_1_fu_255_p4[3]),
        .O(\select_ln16_reg_333[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \select_ln16_reg_333[7]_i_4 
       (.I0(current_duty_cycle[5]),
        .I1(\icmp_ln16_reg_319_reg_n_0_[0] ),
        .I2(tmp_1_fu_255_p4[2]),
        .O(\select_ln16_reg_333[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \select_ln16_reg_333[7]_i_5 
       (.I0(current_duty_cycle[4]),
        .I1(\icmp_ln16_reg_319_reg_n_0_[0] ),
        .I2(tmp_1_fu_255_p4[1]),
        .O(\select_ln16_reg_333[7]_i_5_n_0 ));
  FDRE \select_ln16_reg_333_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(select_ln16_fu_215_p3[0]),
        .Q(select_ln16_reg_333[0]),
        .R(1'b0));
  FDRE \select_ln16_reg_333_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(select_ln16_fu_215_p3[1]),
        .Q(select_ln16_reg_333[1]),
        .R(1'b0));
  FDRE \select_ln16_reg_333_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(select_ln16_fu_215_p3[2]),
        .Q(select_ln16_reg_333[2]),
        .R(1'b0));
  FDRE \select_ln16_reg_333_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(select_ln16_fu_215_p3[3]),
        .Q(select_ln16_reg_333[3]),
        .R(1'b0));
  CARRY4 \select_ln16_reg_333_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\select_ln16_reg_333_reg[3]_i_1_n_0 ,\select_ln16_reg_333_reg[3]_i_1_n_1 ,\select_ln16_reg_333_reg[3]_i_1_n_2 ,\select_ln16_reg_333_reg[3]_i_1_n_3 }),
        .CYINIT(\select_ln16_reg_333[3]_i_2_n_0 ),
        .DI(current_duty_cycle[3:0]),
        .O(select_ln16_fu_215_p3[3:0]),
        .S({\select_ln16_reg_333[3]_i_3_n_0 ,\select_ln16_reg_333[3]_i_4_n_0 ,\select_ln16_reg_333[3]_i_5_n_0 ,\select_ln16_reg_333[3]_i_6_n_0 }));
  FDRE \select_ln16_reg_333_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(select_ln16_fu_215_p3[4]),
        .Q(select_ln16_reg_333[4]),
        .R(1'b0));
  FDRE \select_ln16_reg_333_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(select_ln16_fu_215_p3[5]),
        .Q(select_ln16_reg_333[5]),
        .R(1'b0));
  FDRE \select_ln16_reg_333_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(select_ln16_fu_215_p3[6]),
        .Q(select_ln16_reg_333[6]),
        .R(1'b0));
  FDRE \select_ln16_reg_333_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(select_ln16_fu_215_p3[7]),
        .Q(select_ln16_reg_333[7]),
        .R(1'b0));
  CARRY4 \select_ln16_reg_333_reg[7]_i_1 
       (.CI(\select_ln16_reg_333_reg[3]_i_1_n_0 ),
        .CO({\NLW_select_ln16_reg_333_reg[7]_i_1_CO_UNCONNECTED [3],\select_ln16_reg_333_reg[7]_i_1_n_1 ,\select_ln16_reg_333_reg[7]_i_1_n_2 ,\select_ln16_reg_333_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,current_duty_cycle[6:4]}),
        .O(select_ln16_fu_215_p3[7:4]),
        .S({\select_ln16_reg_333[7]_i_2_n_0 ,\select_ln16_reg_333[7]_i_3_n_0 ,\select_ln16_reg_333[7]_i_4_n_0 ,\select_ln16_reg_333[7]_i_5_n_0 }));
  LUT5 #(
    .INIT(32'h00010000)) 
    \speed[0]_INST_0 
       (.I0(tmp_1_fu_255_p4[2]),
        .I1(tmp_1_fu_255_p4[0]),
        .I2(tmp_1_fu_255_p4[3]),
        .I3(tmp_1_fu_255_p4[1]),
        .I4(\select_ln12_reg_306_reg_n_0_[0] ),
        .O(\^speed [0]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \speed[1]_INST_0 
       (.I0(tmp_1_fu_255_p4[2]),
        .I1(tmp_1_fu_255_p4[0]),
        .I2(tmp_1_fu_255_p4[3]),
        .I3(tmp_1_fu_255_p4[1]),
        .I4(\select_ln12_reg_306_reg_n_0_[1] ),
        .O(\^speed [1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \speed[2]_INST_0 
       (.I0(tmp_1_fu_255_p4[2]),
        .I1(tmp_1_fu_255_p4[0]),
        .I2(tmp_1_fu_255_p4[3]),
        .I3(tmp_1_fu_255_p4[1]),
        .I4(\select_ln12_reg_306_reg_n_0_[2] ),
        .O(\^speed [2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \speed[3]_INST_0 
       (.I0(tmp_1_fu_255_p4[1]),
        .I1(tmp_1_fu_255_p4[0]),
        .I2(tmp_1_fu_255_p4[3]),
        .I3(tmp_1_fu_255_p4[2]),
        .O(\^speed [3]));
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
