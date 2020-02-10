// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Feb 10 09:39:17 2020
// Host        : agazorPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/fpga/lab2/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_servo_0_0_1/design_1_servo_0_0_sim_netlist.v
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
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst;
  wire ap_start;
  wire [7:0]current_duty_cycle;
  wire [3:0]current_speed;
  wire [7:0]down;
  wire [7:0]dutyCycle;
  wire \dutyCycle[1]_INST_0_i_1_n_0 ;
  wire \dutyCycle[7]_INST_0_i_13_n_0 ;
  wire \dutyCycle[7]_INST_0_i_14_n_0 ;
  wire \dutyCycle[7]_INST_0_i_15_n_0 ;
  wire \dutyCycle[7]_INST_0_i_16_n_0 ;
  wire \dutyCycle[7]_INST_0_i_17_n_0 ;
  wire \dutyCycle[7]_INST_0_i_18_n_0 ;
  wire \dutyCycle[7]_INST_0_i_1_n_0 ;
  wire \dutyCycle[7]_INST_0_i_1_n_1 ;
  wire \dutyCycle[7]_INST_0_i_1_n_2 ;
  wire \dutyCycle[7]_INST_0_i_1_n_3 ;
  wire \dutyCycle[7]_INST_0_i_5_n_0 ;
  wire \dutyCycle[7]_INST_0_i_6_n_0 ;
  wire \dutyCycle[7]_INST_0_i_7_n_0 ;
  wire \dutyCycle[7]_INST_0_i_8_n_0 ;
  wire \dutyCycle[7]_INST_0_n_1 ;
  wire \dutyCycle[7]_INST_0_n_2 ;
  wire \dutyCycle[7]_INST_0_n_3 ;
  wire dutyCycle_ap_vld;
  wire \icmp_ln16_reg_299[0]_i_1_n_0 ;
  wire \icmp_ln16_reg_299[0]_i_2_n_0 ;
  wire \icmp_ln16_reg_299_reg_n_0_[0] ;
  wire [7:0]left_r;
  wire [7:0]right_r;
  wire [4:1]select_ln12_fu_168_p3;
  wire [6:0]select_ln16_fu_235_p3;
  wire [6:0]select_ln20_fu_251_p3;
  wire [4:0]sext_ln12_reg_294;
  wire \sext_ln12_reg_294[0]_i_1_n_0 ;
  wire \sext_ln12_reg_294[3]_i_1_n_0 ;
  wire [3:0]\^speed ;
  wire \speed[3]_INST_0_i_1_n_0 ;
  wire \speed[3]_INST_0_i_2_n_0 ;
  wire \speed[3]_INST_0_i_3_n_0 ;
  wire \speed[3]_INST_0_i_4_n_0 ;
  wire \speed[3]_INST_0_i_5_n_0 ;
  wire speed_ap_vld;
  wire [7:0]sub_ln17_fu_194_p20_out;
  wire [7:0]sub_ln17_reg_309;
  wire \sub_ln17_reg_309[3]_i_10_n_0 ;
  wire \sub_ln17_reg_309[3]_i_2_n_0 ;
  wire \sub_ln17_reg_309[3]_i_3_n_0 ;
  wire \sub_ln17_reg_309[3]_i_4_n_0 ;
  wire \sub_ln17_reg_309[3]_i_5_n_0 ;
  wire \sub_ln17_reg_309[3]_i_6_n_0 ;
  wire \sub_ln17_reg_309[3]_i_7_n_0 ;
  wire \sub_ln17_reg_309[3]_i_8_n_0 ;
  wire \sub_ln17_reg_309[3]_i_9_n_0 ;
  wire \sub_ln17_reg_309[7]_i_2_n_0 ;
  wire \sub_ln17_reg_309[7]_i_3_n_0 ;
  wire \sub_ln17_reg_309[7]_i_4_n_0 ;
  wire \sub_ln17_reg_309[7]_i_5_n_0 ;
  wire \sub_ln17_reg_309_reg[3]_i_1_n_0 ;
  wire \sub_ln17_reg_309_reg[3]_i_1_n_1 ;
  wire \sub_ln17_reg_309_reg[3]_i_1_n_2 ;
  wire \sub_ln17_reg_309_reg[3]_i_1_n_3 ;
  wire \sub_ln17_reg_309_reg[7]_i_1_n_1 ;
  wire \sub_ln17_reg_309_reg[7]_i_1_n_2 ;
  wire \sub_ln17_reg_309_reg[7]_i_1_n_3 ;
  wire [7:0]up;
  wire [3:3]\NLW_dutyCycle[7]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_sub_ln17_reg_309_reg[7]_i_1_CO_UNCONNECTED ;

  assign ap_done = dutyCycle_ap_vld;
  assign ap_ready = dutyCycle_ap_vld;
  assign speed[7] = \<const0> ;
  assign speed[6] = \<const0> ;
  assign speed[5] = \<const0> ;
  assign speed[4] = \<const0> ;
  assign speed[3:0] = \^speed [3:0];
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_rst),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(dutyCycle_ap_vld),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_rst),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
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
        .Q(dutyCycle_ap_vld),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  FDRE #(
    .INIT(1'b0)) 
    \current_duty_cycle_reg[0] 
       (.C(ap_clk),
        .CE(dutyCycle_ap_vld),
        .D(dutyCycle[0]),
        .Q(current_duty_cycle[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_duty_cycle_reg[1] 
       (.C(ap_clk),
        .CE(dutyCycle_ap_vld),
        .D(dutyCycle[1]),
        .Q(current_duty_cycle[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_duty_cycle_reg[2] 
       (.C(ap_clk),
        .CE(dutyCycle_ap_vld),
        .D(dutyCycle[2]),
        .Q(current_duty_cycle[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_duty_cycle_reg[3] 
       (.C(ap_clk),
        .CE(dutyCycle_ap_vld),
        .D(dutyCycle[3]),
        .Q(current_duty_cycle[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_duty_cycle_reg[4] 
       (.C(ap_clk),
        .CE(dutyCycle_ap_vld),
        .D(dutyCycle[4]),
        .Q(current_duty_cycle[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_duty_cycle_reg[5] 
       (.C(ap_clk),
        .CE(dutyCycle_ap_vld),
        .D(dutyCycle[5]),
        .Q(current_duty_cycle[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_duty_cycle_reg[6] 
       (.C(ap_clk),
        .CE(dutyCycle_ap_vld),
        .D(dutyCycle[6]),
        .Q(current_duty_cycle[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_duty_cycle_reg[7] 
       (.C(ap_clk),
        .CE(dutyCycle_ap_vld),
        .D(dutyCycle[7]),
        .Q(current_duty_cycle[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[0] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(\^speed [0]),
        .Q(current_speed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[1] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(\^speed [1]),
        .Q(current_speed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[2] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(\^speed [2]),
        .Q(current_speed[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[3] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(\^speed [3]),
        .Q(current_speed[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCycle[0]_INST_0 
       (.I0(select_ln20_fu_251_p3[0]),
        .I1(\dutyCycle[1]_INST_0_i_1_n_0 ),
        .O(dutyCycle[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dutyCycle[1]_INST_0 
       (.I0(select_ln20_fu_251_p3[1]),
        .I1(\dutyCycle[1]_INST_0_i_1_n_0 ),
        .O(dutyCycle[1]));
  LUT6 #(
    .INIT(64'hC3F3C3F3C3F3D333)) 
    \dutyCycle[1]_INST_0_i_1 
       (.I0(select_ln20_fu_251_p3[2]),
        .I1(dutyCycle[7]),
        .I2(select_ln20_fu_251_p3[6]),
        .I3(select_ln20_fu_251_p3[5]),
        .I4(select_ln20_fu_251_p3[3]),
        .I5(select_ln20_fu_251_p3[4]),
        .O(\dutyCycle[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01FFFFFF00001FFF)) 
    \dutyCycle[2]_INST_0 
       (.I0(select_ln20_fu_251_p3[4]),
        .I1(select_ln20_fu_251_p3[3]),
        .I2(select_ln20_fu_251_p3[5]),
        .I3(select_ln20_fu_251_p3[6]),
        .I4(dutyCycle[7]),
        .I5(select_ln20_fu_251_p3[2]),
        .O(dutyCycle[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFECCC000)) 
    \dutyCycle[3]_INST_0 
       (.I0(select_ln20_fu_251_p3[4]),
        .I1(select_ln20_fu_251_p3[3]),
        .I2(select_ln20_fu_251_p3[5]),
        .I3(select_ln20_fu_251_p3[6]),
        .I4(dutyCycle[7]),
        .O(dutyCycle[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0A80)) 
    \dutyCycle[4]_INST_0 
       (.I0(select_ln20_fu_251_p3[4]),
        .I1(select_ln20_fu_251_p3[5]),
        .I2(select_ln20_fu_251_p3[6]),
        .I3(dutyCycle[7]),
        .O(dutyCycle[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \dutyCycle[5]_INST_0 
       (.I0(select_ln20_fu_251_p3[6]),
        .I1(select_ln20_fu_251_p3[5]),
        .I2(dutyCycle[7]),
        .O(dutyCycle[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dutyCycle[6]_INST_0 
       (.I0(select_ln20_fu_251_p3[6]),
        .I1(dutyCycle[7]),
        .O(dutyCycle[6]));
  CARRY4 \dutyCycle[7]_INST_0 
       (.CI(\dutyCycle[7]_INST_0_i_1_n_0 ),
        .CO({\NLW_dutyCycle[7]_INST_0_CO_UNCONNECTED [3],\dutyCycle[7]_INST_0_n_1 ,\dutyCycle[7]_INST_0_n_2 ,\dutyCycle[7]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,select_ln16_fu_235_p3[6:4]}),
        .O({dutyCycle[7],select_ln20_fu_251_p3[6:4]}),
        .S({\dutyCycle[7]_INST_0_i_5_n_0 ,\dutyCycle[7]_INST_0_i_6_n_0 ,\dutyCycle[7]_INST_0_i_7_n_0 ,\dutyCycle[7]_INST_0_i_8_n_0 }));
  CARRY4 \dutyCycle[7]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\dutyCycle[7]_INST_0_i_1_n_0 ,\dutyCycle[7]_INST_0_i_1_n_1 ,\dutyCycle[7]_INST_0_i_1_n_2 ,\dutyCycle[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(select_ln16_fu_235_p3[3:0]),
        .O(select_ln20_fu_251_p3[3:0]),
        .S({\dutyCycle[7]_INST_0_i_13_n_0 ,\dutyCycle[7]_INST_0_i_14_n_0 ,\dutyCycle[7]_INST_0_i_15_n_0 ,\dutyCycle[7]_INST_0_i_16_n_0 }));
  LUT3 #(
    .INIT(8'hB8)) 
    \dutyCycle[7]_INST_0_i_10 
       (.I0(current_duty_cycle[2]),
        .I1(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I2(sub_ln17_reg_309[2]),
        .O(select_ln16_fu_235_p3[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dutyCycle[7]_INST_0_i_11 
       (.I0(current_duty_cycle[1]),
        .I1(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I2(sub_ln17_reg_309[1]),
        .O(select_ln16_fu_235_p3[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dutyCycle[7]_INST_0_i_12 
       (.I0(current_duty_cycle[0]),
        .I1(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I2(sub_ln17_reg_309[0]),
        .O(select_ln16_fu_235_p3[0]));
  LUT5 #(
    .INIT(32'hE21DE2E2)) 
    \dutyCycle[7]_INST_0_i_13 
       (.I0(sub_ln17_reg_309[3]),
        .I1(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I2(current_duty_cycle[3]),
        .I3(\dutyCycle[7]_INST_0_i_17_n_0 ),
        .I4(sext_ln12_reg_294[3]),
        .O(\dutyCycle[7]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hE21DE2E2)) 
    \dutyCycle[7]_INST_0_i_14 
       (.I0(sub_ln17_reg_309[2]),
        .I1(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I2(current_duty_cycle[2]),
        .I3(\dutyCycle[7]_INST_0_i_17_n_0 ),
        .I4(sext_ln12_reg_294[2]),
        .O(\dutyCycle[7]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hE21DE2E2)) 
    \dutyCycle[7]_INST_0_i_15 
       (.I0(sub_ln17_reg_309[1]),
        .I1(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I2(current_duty_cycle[1]),
        .I3(\dutyCycle[7]_INST_0_i_17_n_0 ),
        .I4(sext_ln12_reg_294[1]),
        .O(\dutyCycle[7]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hE21DE2E2)) 
    \dutyCycle[7]_INST_0_i_16 
       (.I0(sub_ln17_reg_309[0]),
        .I1(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I2(current_duty_cycle[0]),
        .I3(\dutyCycle[7]_INST_0_i_17_n_0 ),
        .I4(sext_ln12_reg_294[0]),
        .O(\dutyCycle[7]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \dutyCycle[7]_INST_0_i_17 
       (.I0(right_r[3]),
        .I1(right_r[1]),
        .I2(right_r[4]),
        .I3(right_r[6]),
        .I4(\dutyCycle[7]_INST_0_i_18_n_0 ),
        .O(\dutyCycle[7]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dutyCycle[7]_INST_0_i_18 
       (.I0(right_r[0]),
        .I1(right_r[2]),
        .I2(right_r[7]),
        .I3(right_r[5]),
        .O(\dutyCycle[7]_INST_0_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dutyCycle[7]_INST_0_i_2 
       (.I0(current_duty_cycle[6]),
        .I1(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I2(sub_ln17_reg_309[6]),
        .O(select_ln16_fu_235_p3[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dutyCycle[7]_INST_0_i_3 
       (.I0(current_duty_cycle[5]),
        .I1(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I2(sub_ln17_reg_309[5]),
        .O(select_ln16_fu_235_p3[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dutyCycle[7]_INST_0_i_4 
       (.I0(current_duty_cycle[4]),
        .I1(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I2(sub_ln17_reg_309[4]),
        .O(select_ln16_fu_235_p3[4]));
  LUT5 #(
    .INIT(32'hDDD222D2)) 
    \dutyCycle[7]_INST_0_i_5 
       (.I0(sext_ln12_reg_294[4]),
        .I1(\dutyCycle[7]_INST_0_i_17_n_0 ),
        .I2(sub_ln17_reg_309[7]),
        .I3(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I4(current_duty_cycle[7]),
        .O(\dutyCycle[7]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hDDD222D2)) 
    \dutyCycle[7]_INST_0_i_6 
       (.I0(sext_ln12_reg_294[4]),
        .I1(\dutyCycle[7]_INST_0_i_17_n_0 ),
        .I2(sub_ln17_reg_309[6]),
        .I3(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I4(current_duty_cycle[6]),
        .O(\dutyCycle[7]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hDDD222D2)) 
    \dutyCycle[7]_INST_0_i_7 
       (.I0(sext_ln12_reg_294[4]),
        .I1(\dutyCycle[7]_INST_0_i_17_n_0 ),
        .I2(sub_ln17_reg_309[5]),
        .I3(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I4(current_duty_cycle[5]),
        .O(\dutyCycle[7]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hDDD222D2)) 
    \dutyCycle[7]_INST_0_i_8 
       (.I0(sext_ln12_reg_294[4]),
        .I1(\dutyCycle[7]_INST_0_i_17_n_0 ),
        .I2(sub_ln17_reg_309[4]),
        .I3(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I4(current_duty_cycle[4]),
        .O(\dutyCycle[7]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \dutyCycle[7]_INST_0_i_9 
       (.I0(current_duty_cycle[3]),
        .I1(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .I2(sub_ln17_reg_309[3]),
        .O(select_ln16_fu_235_p3[3]));
  LUT6 #(
    .INIT(64'h04FFFFFF04000000)) 
    \icmp_ln16_reg_299[0]_i_1 
       (.I0(left_r[7]),
        .I1(\icmp_ln16_reg_299[0]_i_2_n_0 ),
        .I2(left_r[6]),
        .I3(ap_start),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .O(\icmp_ln16_reg_299[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \icmp_ln16_reg_299[0]_i_2 
       (.I0(left_r[5]),
        .I1(left_r[3]),
        .I2(left_r[1]),
        .I3(left_r[0]),
        .I4(left_r[2]),
        .I5(left_r[4]),
        .O(\icmp_ln16_reg_299[0]_i_2_n_0 ));
  FDRE \icmp_ln16_reg_299_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln16_reg_299[0]_i_1_n_0 ),
        .Q(\icmp_ln16_reg_299_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5A5A5A5AA5A5A5A6)) 
    \sext_ln12_reg_294[0]_i_1 
       (.I0(\speed[3]_INST_0_i_2_n_0 ),
        .I1(current_speed[1]),
        .I2(current_speed[0]),
        .I3(current_speed[2]),
        .I4(current_speed[3]),
        .I5(\speed[3]_INST_0_i_1_n_0 ),
        .O(\sext_ln12_reg_294[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55AAAAAAAAAAAA54)) 
    \sext_ln12_reg_294[1]_i_1 
       (.I0(current_speed[1]),
        .I1(current_speed[3]),
        .I2(current_speed[2]),
        .I3(current_speed[0]),
        .I4(\speed[3]_INST_0_i_1_n_0 ),
        .I5(\speed[3]_INST_0_i_2_n_0 ),
        .O(select_ln12_fu_168_p3[1]));
  LUT6 #(
    .INIT(64'h3FFFC000FFFC0002)) 
    \sext_ln12_reg_294[2]_i_1 
       (.I0(current_speed[3]),
        .I1(\speed[3]_INST_0_i_1_n_0 ),
        .I2(current_speed[0]),
        .I3(current_speed[1]),
        .I4(current_speed[2]),
        .I5(\speed[3]_INST_0_i_2_n_0 ),
        .O(select_ln12_fu_168_p3[2]));
  LUT6 #(
    .INIT(64'hECCCCCCCCCCCCCC8)) 
    \sext_ln12_reg_294[3]_i_1 
       (.I0(\speed[3]_INST_0_i_2_n_0 ),
        .I1(current_speed[3]),
        .I2(current_speed[2]),
        .I3(current_speed[0]),
        .I4(current_speed[1]),
        .I5(\speed[3]_INST_0_i_1_n_0 ),
        .O(\sext_ln12_reg_294[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44444440)) 
    \sext_ln12_reg_294[4]_i_1 
       (.I0(\speed[3]_INST_0_i_1_n_0 ),
        .I1(current_speed[3]),
        .I2(current_speed[2]),
        .I3(current_speed[0]),
        .I4(current_speed[1]),
        .O(select_ln12_fu_168_p3[4]));
  FDRE \sext_ln12_reg_294_reg[0] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(\sext_ln12_reg_294[0]_i_1_n_0 ),
        .Q(sext_ln12_reg_294[0]),
        .R(1'b0));
  FDRE \sext_ln12_reg_294_reg[1] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(select_ln12_fu_168_p3[1]),
        .Q(sext_ln12_reg_294[1]),
        .R(1'b0));
  FDRE \sext_ln12_reg_294_reg[2] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(select_ln12_fu_168_p3[2]),
        .Q(sext_ln12_reg_294[2]),
        .R(1'b0));
  FDRE \sext_ln12_reg_294_reg[3] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(\sext_ln12_reg_294[3]_i_1_n_0 ),
        .Q(sext_ln12_reg_294[3]),
        .R(1'b0));
  FDRE \sext_ln12_reg_294_reg[4] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(select_ln12_fu_168_p3[4]),
        .Q(sext_ln12_reg_294[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1122112222112216)) 
    \speed[0]_INST_0 
       (.I0(\speed[3]_INST_0_i_2_n_0 ),
        .I1(current_speed[3]),
        .I2(current_speed[2]),
        .I3(current_speed[0]),
        .I4(current_speed[1]),
        .I5(\speed[3]_INST_0_i_1_n_0 ),
        .O(\^speed [0]));
  LUT6 #(
    .INIT(64'h1133220033220014)) 
    \speed[1]_INST_0 
       (.I0(\speed[3]_INST_0_i_2_n_0 ),
        .I1(current_speed[3]),
        .I2(current_speed[2]),
        .I3(current_speed[0]),
        .I4(current_speed[1]),
        .I5(\speed[3]_INST_0_i_1_n_0 ),
        .O(\^speed [1]));
  LUT6 #(
    .INIT(64'h1230303030303024)) 
    \speed[2]_INST_0 
       (.I0(\speed[3]_INST_0_i_2_n_0 ),
        .I1(current_speed[3]),
        .I2(current_speed[2]),
        .I3(current_speed[0]),
        .I4(current_speed[1]),
        .I5(\speed[3]_INST_0_i_1_n_0 ),
        .O(\^speed [2]));
  LUT6 #(
    .INIT(64'hFFFF8000FFFE0000)) 
    \speed[3]_INST_0 
       (.I0(\speed[3]_INST_0_i_1_n_0 ),
        .I1(current_speed[1]),
        .I2(current_speed[0]),
        .I3(current_speed[2]),
        .I4(current_speed[3]),
        .I5(\speed[3]_INST_0_i_2_n_0 ),
        .O(\^speed [3]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \speed[3]_INST_0_i_1 
       (.I0(down[3]),
        .I1(down[1]),
        .I2(down[4]),
        .I3(down[6]),
        .I4(\speed[3]_INST_0_i_3_n_0 ),
        .O(\speed[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555557)) 
    \speed[3]_INST_0_i_2 
       (.I0(current_speed[3]),
        .I1(current_speed[2]),
        .I2(current_speed[0]),
        .I3(current_speed[1]),
        .I4(\speed[3]_INST_0_i_1_n_0 ),
        .I5(\speed[3]_INST_0_i_4_n_0 ),
        .O(\speed[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \speed[3]_INST_0_i_3 
       (.I0(down[0]),
        .I1(down[2]),
        .I2(down[7]),
        .I3(down[5]),
        .O(\speed[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \speed[3]_INST_0_i_4 
       (.I0(up[5]),
        .I1(up[7]),
        .I2(up[2]),
        .I3(up[0]),
        .I4(\speed[3]_INST_0_i_5_n_0 ),
        .O(\speed[3]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \speed[3]_INST_0_i_5 
       (.I0(up[6]),
        .I1(up[4]),
        .I2(up[1]),
        .I3(up[3]),
        .O(\speed[3]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    speed_ap_vld_INST_0
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(speed_ap_vld));
  LUT4 #(
    .INIT(16'h0001)) 
    \sub_ln17_reg_309[3]_i_10 
       (.I0(current_speed[1]),
        .I1(current_speed[0]),
        .I2(current_speed[2]),
        .I3(current_speed[3]),
        .O(\sub_ln17_reg_309[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666666A66)) 
    \sub_ln17_reg_309[3]_i_2 
       (.I0(current_duty_cycle[3]),
        .I1(\sub_ln17_reg_309[3]_i_6_n_0 ),
        .I2(\sub_ln17_reg_309[3]_i_7_n_0 ),
        .I3(\speed[3]_INST_0_i_2_n_0 ),
        .I4(\sub_ln17_reg_309[3]_i_8_n_0 ),
        .I5(\sub_ln17_reg_309[3]_i_9_n_0 ),
        .O(\sub_ln17_reg_309[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h66666966)) 
    \sub_ln17_reg_309[3]_i_3 
       (.I0(current_duty_cycle[2]),
        .I1(\sub_ln17_reg_309[3]_i_9_n_0 ),
        .I2(\sub_ln17_reg_309[3]_i_8_n_0 ),
        .I3(\speed[3]_INST_0_i_2_n_0 ),
        .I4(\sub_ln17_reg_309[3]_i_7_n_0 ),
        .O(\sub_ln17_reg_309[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6699995999999956)) 
    \sub_ln17_reg_309[3]_i_4 
       (.I0(current_duty_cycle[1]),
        .I1(current_speed[1]),
        .I2(\sub_ln17_reg_309[3]_i_10_n_0 ),
        .I3(current_speed[0]),
        .I4(\speed[3]_INST_0_i_1_n_0 ),
        .I5(\speed[3]_INST_0_i_2_n_0 ),
        .O(\sub_ln17_reg_309[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sub_ln17_reg_309[3]_i_5 
       (.I0(current_duty_cycle[0]),
        .I1(\sub_ln17_reg_309[3]_i_8_n_0 ),
        .I2(\speed[3]_INST_0_i_2_n_0 ),
        .O(\sub_ln17_reg_309[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \sub_ln17_reg_309[3]_i_6 
       (.I0(\speed[3]_INST_0_i_1_n_0 ),
        .I1(current_speed[1]),
        .I2(current_speed[0]),
        .I3(current_speed[2]),
        .I4(current_speed[3]),
        .O(\sub_ln17_reg_309[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h555555AB)) 
    \sub_ln17_reg_309[3]_i_7 
       (.I0(current_speed[1]),
        .I1(current_speed[3]),
        .I2(current_speed[2]),
        .I3(current_speed[0]),
        .I4(\speed[3]_INST_0_i_1_n_0 ),
        .O(\sub_ln17_reg_309[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55AA55AB)) 
    \sub_ln17_reg_309[3]_i_8 
       (.I0(\speed[3]_INST_0_i_1_n_0 ),
        .I1(current_speed[3]),
        .I2(current_speed[2]),
        .I3(current_speed[0]),
        .I4(current_speed[1]),
        .O(\sub_ln17_reg_309[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0003FFFD)) 
    \sub_ln17_reg_309[3]_i_9 
       (.I0(current_speed[3]),
        .I1(\speed[3]_INST_0_i_1_n_0 ),
        .I2(current_speed[0]),
        .I3(current_speed[1]),
        .I4(current_speed[2]),
        .O(\sub_ln17_reg_309[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sub_ln17_reg_309[7]_i_2 
       (.I0(current_duty_cycle[6]),
        .I1(current_duty_cycle[7]),
        .O(\sub_ln17_reg_309[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sub_ln17_reg_309[7]_i_3 
       (.I0(current_duty_cycle[5]),
        .I1(current_duty_cycle[6]),
        .O(\sub_ln17_reg_309[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44444440BBBBBBBF)) 
    \sub_ln17_reg_309[7]_i_4 
       (.I0(\speed[3]_INST_0_i_1_n_0 ),
        .I1(current_speed[3]),
        .I2(current_speed[2]),
        .I3(current_speed[0]),
        .I4(current_speed[1]),
        .I5(current_duty_cycle[5]),
        .O(\sub_ln17_reg_309[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44444440BBBBBBBF)) 
    \sub_ln17_reg_309[7]_i_5 
       (.I0(\speed[3]_INST_0_i_1_n_0 ),
        .I1(current_speed[3]),
        .I2(current_speed[2]),
        .I3(current_speed[0]),
        .I4(current_speed[1]),
        .I5(current_duty_cycle[4]),
        .O(\sub_ln17_reg_309[7]_i_5_n_0 ));
  FDRE \sub_ln17_reg_309_reg[0] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(sub_ln17_fu_194_p20_out[0]),
        .Q(sub_ln17_reg_309[0]),
        .R(1'b0));
  FDRE \sub_ln17_reg_309_reg[1] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(sub_ln17_fu_194_p20_out[1]),
        .Q(sub_ln17_reg_309[1]),
        .R(1'b0));
  FDRE \sub_ln17_reg_309_reg[2] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(sub_ln17_fu_194_p20_out[2]),
        .Q(sub_ln17_reg_309[2]),
        .R(1'b0));
  FDRE \sub_ln17_reg_309_reg[3] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(sub_ln17_fu_194_p20_out[3]),
        .Q(sub_ln17_reg_309[3]),
        .R(1'b0));
  CARRY4 \sub_ln17_reg_309_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sub_ln17_reg_309_reg[3]_i_1_n_0 ,\sub_ln17_reg_309_reg[3]_i_1_n_1 ,\sub_ln17_reg_309_reg[3]_i_1_n_2 ,\sub_ln17_reg_309_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(current_duty_cycle[3:0]),
        .O(sub_ln17_fu_194_p20_out[3:0]),
        .S({\sub_ln17_reg_309[3]_i_2_n_0 ,\sub_ln17_reg_309[3]_i_3_n_0 ,\sub_ln17_reg_309[3]_i_4_n_0 ,\sub_ln17_reg_309[3]_i_5_n_0 }));
  FDRE \sub_ln17_reg_309_reg[4] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(sub_ln17_fu_194_p20_out[4]),
        .Q(sub_ln17_reg_309[4]),
        .R(1'b0));
  FDRE \sub_ln17_reg_309_reg[5] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(sub_ln17_fu_194_p20_out[5]),
        .Q(sub_ln17_reg_309[5]),
        .R(1'b0));
  FDRE \sub_ln17_reg_309_reg[6] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(sub_ln17_fu_194_p20_out[6]),
        .Q(sub_ln17_reg_309[6]),
        .R(1'b0));
  FDRE \sub_ln17_reg_309_reg[7] 
       (.C(ap_clk),
        .CE(speed_ap_vld),
        .D(sub_ln17_fu_194_p20_out[7]),
        .Q(sub_ln17_reg_309[7]),
        .R(1'b0));
  CARRY4 \sub_ln17_reg_309_reg[7]_i_1 
       (.CI(\sub_ln17_reg_309_reg[3]_i_1_n_0 ),
        .CO({\NLW_sub_ln17_reg_309_reg[7]_i_1_CO_UNCONNECTED [3],\sub_ln17_reg_309_reg[7]_i_1_n_1 ,\sub_ln17_reg_309_reg[7]_i_1_n_2 ,\sub_ln17_reg_309_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,current_duty_cycle[5],select_ln12_fu_168_p3[4],current_duty_cycle[4]}),
        .O(sub_ln17_fu_194_p20_out[7:4]),
        .S({\sub_ln17_reg_309[7]_i_2_n_0 ,\sub_ln17_reg_309[7]_i_3_n_0 ,\sub_ln17_reg_309[7]_i_4_n_0 ,\sub_ln17_reg_309[7]_i_5_n_0 }));
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
