// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Feb 17 18:11:04 2020
// Host        : agazorPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_servo_0_0_sim_netlist.v
// Design      : design_1_servo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_servo_0_0,servo,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "servo,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (p_dutyCycle_ap_vld,
    p_speed_ap_vld,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    p_up,
    p_down,
    p_left,
    p_right,
    p_dutyCycle,
    p_speed);
  output p_dutyCycle_ap_vld;
  output p_speed_ap_vld;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_up DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_up, LAYERED_METADATA undef" *) input [7:0]p_up;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_down DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_down, LAYERED_METADATA undef" *) input [7:0]p_down;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_left DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_left, LAYERED_METADATA undef" *) input [7:0]p_left;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_right DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_right, LAYERED_METADATA undef" *) input [7:0]p_right;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_dutyCycle DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_dutyCycle, LAYERED_METADATA undef" *) output [7:0]p_dutyCycle;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_speed DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_speed, LAYERED_METADATA undef" *) output [7:0]p_speed;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [7:0]p_down;
  wire [7:0]p_dutyCycle;
  wire p_dutyCycle_ap_vld;
  wire [7:0]p_left;
  wire [7:0]p_right;
  wire [7:0]p_speed;
  wire p_speed_ap_vld;
  wire [7:0]p_up;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_servo U0
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .p_down(p_down),
        .p_dutyCycle(p_dutyCycle),
        .p_dutyCycle_ap_vld(p_dutyCycle_ap_vld),
        .p_left(p_left),
        .p_right(p_right),
        .p_speed(p_speed),
        .p_speed_ap_vld(p_speed_ap_vld),
        .p_up(p_up));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_servo
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    p_up,
    p_down,
    p_left,
    p_right,
    p_dutyCycle,
    p_dutyCycle_ap_vld,
    p_speed,
    p_speed_ap_vld);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [7:0]p_up;
  input [7:0]p_down;
  input [7:0]p_left;
  input [7:0]p_right;
  output [7:0]p_dutyCycle;
  output p_dutyCycle_ap_vld;
  output [7:0]p_speed;
  output p_speed_ap_vld;

  wire \<const0> ;
  wire [8:0]add_ln21_fu_253_p2;
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst;
  wire ap_start;
  wire [7:0]current_duty_cycle;
  wire current_duty_cycle0;
  wire [6:0]current_speed;
  wire \current_speed[6]_i_1_n_0 ;
  wire \icmp_ln17_reg_320[0]_i_1_n_0 ;
  wire \icmp_ln17_reg_320[0]_i_2_n_0 ;
  wire \icmp_ln17_reg_320[0]_i_3_n_0 ;
  wire \icmp_ln17_reg_320_reg_n_0_[0] ;
  wire [7:0]p_down;
  wire [7:0]p_dutyCycle;
  wire \p_dutyCycle[0]_INST_0_i_10_n_0 ;
  wire \p_dutyCycle[0]_INST_0_i_11_n_0 ;
  wire \p_dutyCycle[0]_INST_0_i_1_n_0 ;
  wire \p_dutyCycle[0]_INST_0_i_1_n_1 ;
  wire \p_dutyCycle[0]_INST_0_i_1_n_2 ;
  wire \p_dutyCycle[0]_INST_0_i_1_n_3 ;
  wire \p_dutyCycle[0]_INST_0_i_2_n_0 ;
  wire \p_dutyCycle[0]_INST_0_i_3_n_0 ;
  wire \p_dutyCycle[0]_INST_0_i_4_n_0 ;
  wire \p_dutyCycle[0]_INST_0_i_5_n_0 ;
  wire \p_dutyCycle[0]_INST_0_i_6_n_0 ;
  wire \p_dutyCycle[0]_INST_0_i_7_n_0 ;
  wire \p_dutyCycle[0]_INST_0_i_8_n_0 ;
  wire \p_dutyCycle[0]_INST_0_i_9_n_0 ;
  wire \p_dutyCycle[0]_INST_0_n_0 ;
  wire \p_dutyCycle[0]_INST_0_n_1 ;
  wire \p_dutyCycle[0]_INST_0_n_2 ;
  wire \p_dutyCycle[0]_INST_0_n_3 ;
  wire \p_dutyCycle[4]_INST_0_i_10_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_11_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_12_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_12_n_1 ;
  wire \p_dutyCycle[4]_INST_0_i_12_n_2 ;
  wire \p_dutyCycle[4]_INST_0_i_12_n_3 ;
  wire \p_dutyCycle[4]_INST_0_i_13_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_14_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_15_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_17_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_18_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_19_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_1_n_1 ;
  wire \p_dutyCycle[4]_INST_0_i_1_n_2 ;
  wire \p_dutyCycle[4]_INST_0_i_1_n_3 ;
  wire \p_dutyCycle[4]_INST_0_i_20_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_21_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_2_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_3_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_4_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_5_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_6_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_7_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_8_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_9_n_0 ;
  wire \p_dutyCycle[4]_INST_0_i_9_n_1 ;
  wire \p_dutyCycle[4]_INST_0_i_9_n_2 ;
  wire \p_dutyCycle[4]_INST_0_i_9_n_3 ;
  wire \p_dutyCycle[4]_INST_0_n_1 ;
  wire \p_dutyCycle[4]_INST_0_n_2 ;
  wire \p_dutyCycle[4]_INST_0_n_3 ;
  wire [7:0]p_left;
  wire [7:0]p_right;
  wire [6:0]\^p_speed ;
  wire [7:0]p_up;
  wire [6:0]select_ln13_fu_172_p3;
  wire \select_ln13_reg_313[1]_i_1_n_0 ;
  wire \select_ln13_reg_313[3]_i_2_n_0 ;
  wire \select_ln13_reg_313[3]_i_3_n_0 ;
  wire \select_ln13_reg_313[3]_i_4_n_0 ;
  wire \select_ln13_reg_313[3]_i_5_n_0 ;
  wire \select_ln13_reg_313[3]_i_6_n_0 ;
  wire \select_ln13_reg_313[3]_i_7_n_0 ;
  wire \select_ln13_reg_313[3]_i_8_n_0 ;
  wire \select_ln13_reg_313[4]_i_2_n_0 ;
  wire \select_ln13_reg_313[5]_i_2_n_0 ;
  wire \select_ln13_reg_313[5]_i_3_n_0 ;
  wire \select_ln13_reg_313[5]_i_4_n_0 ;
  wire \select_ln13_reg_313[6]_i_3_n_0 ;
  wire [7:0]select_ln17_1_fu_237_p3;
  wire [8:2]sub_ln17_fu_204_p2;
  wire [8:2]sub_ln17_reg_338;
  wire \sub_ln17_reg_338[3]_i_2_n_0 ;
  wire \sub_ln17_reg_338[3]_i_3_n_0 ;
  wire \sub_ln17_reg_338[3]_i_4_n_0 ;
  wire \sub_ln17_reg_338[3]_i_5_n_0 ;
  wire \sub_ln17_reg_338[3]_i_6_n_0 ;
  wire \sub_ln17_reg_338[3]_i_7_n_0 ;
  wire \sub_ln17_reg_338[3]_i_8_n_0 ;
  wire \sub_ln17_reg_338[3]_i_9_n_0 ;
  wire \sub_ln17_reg_338[7]_i_2_n_0 ;
  wire \sub_ln17_reg_338[7]_i_3_n_0 ;
  wire \sub_ln17_reg_338[7]_i_4_n_0 ;
  wire \sub_ln17_reg_338[7]_i_5_n_0 ;
  wire \sub_ln17_reg_338[7]_i_6_n_0 ;
  wire \sub_ln17_reg_338_reg[3]_i_1_n_0 ;
  wire \sub_ln17_reg_338_reg[3]_i_1_n_1 ;
  wire \sub_ln17_reg_338_reg[3]_i_1_n_2 ;
  wire \sub_ln17_reg_338_reg[3]_i_1_n_3 ;
  wire \sub_ln17_reg_338_reg[7]_i_1_n_0 ;
  wire \sub_ln17_reg_338_reg[7]_i_1_n_1 ;
  wire \sub_ln17_reg_338_reg[7]_i_1_n_2 ;
  wire \sub_ln17_reg_338_reg[7]_i_1_n_3 ;
  wire [3:3]\NLW_p_dutyCycle[4]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_p_dutyCycle[4]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_p_dutyCycle[4]_INST_0_i_16_CO_UNCONNECTED ;
  wire [3:0]\NLW_p_dutyCycle[4]_INST_0_i_16_O_UNCONNECTED ;
  wire [1:0]\NLW_sub_ln17_reg_338_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_sub_ln17_reg_338_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_sub_ln17_reg_338_reg[8]_i_1_O_UNCONNECTED ;

  assign ap_ready = ap_done;
  assign p_dutyCycle_ap_vld = ap_done;
  assign p_speed[7] = \<const0> ;
  assign p_speed[6:0] = \^p_speed [6:0];
  assign p_speed_ap_vld = ap_done;
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
       (.I0(ap_done),
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
        .Q(ap_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'h888888888AAAAAAA)) 
    \current_duty_cycle[7]_i_1 
       (.I0(ap_done),
        .I1(\p_dutyCycle[0]_INST_0_i_6_n_0 ),
        .I2(add_ln21_fu_253_p2[7]),
        .I3(add_ln21_fu_253_p2[6]),
        .I4(\p_dutyCycle[4]_INST_0_i_10_n_0 ),
        .I5(\p_dutyCycle[4]_INST_0_i_11_n_0 ),
        .O(current_duty_cycle0));
  FDRE #(
    .INIT(1'b0)) 
    \current_duty_cycle_reg[0] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(p_dutyCycle[0]),
        .Q(current_duty_cycle[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_duty_cycle_reg[1] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(p_dutyCycle[1]),
        .Q(current_duty_cycle[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_duty_cycle_reg[2] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(p_dutyCycle[2]),
        .Q(current_duty_cycle[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_duty_cycle_reg[3] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(p_dutyCycle[3]),
        .Q(current_duty_cycle[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_duty_cycle_reg[4] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(p_dutyCycle[4]),
        .Q(current_duty_cycle[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_duty_cycle_reg[5] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(p_dutyCycle[5]),
        .Q(current_duty_cycle[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_duty_cycle_reg[6] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(p_dutyCycle[6]),
        .Q(current_duty_cycle[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \current_duty_cycle_reg[7] 
       (.C(ap_clk),
        .CE(current_duty_cycle0),
        .D(p_dutyCycle[7]),
        .Q(current_duty_cycle[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8088)) 
    \current_speed[6]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(\select_ln13_reg_313[3]_i_2_n_0 ),
        .I3(\select_ln13_reg_313[4]_i_2_n_0 ),
        .O(\current_speed[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[0] 
       (.C(ap_clk),
        .CE(\current_speed[6]_i_1_n_0 ),
        .D(select_ln13_fu_172_p3[0]),
        .Q(current_speed[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[1] 
       (.C(ap_clk),
        .CE(\current_speed[6]_i_1_n_0 ),
        .D(\select_ln13_reg_313[1]_i_1_n_0 ),
        .Q(current_speed[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[2] 
       (.C(ap_clk),
        .CE(\current_speed[6]_i_1_n_0 ),
        .D(select_ln13_fu_172_p3[2]),
        .Q(current_speed[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[3] 
       (.C(ap_clk),
        .CE(\current_speed[6]_i_1_n_0 ),
        .D(select_ln13_fu_172_p3[3]),
        .Q(current_speed[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[4] 
       (.C(ap_clk),
        .CE(\current_speed[6]_i_1_n_0 ),
        .D(select_ln13_fu_172_p3[4]),
        .Q(current_speed[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[5] 
       (.C(ap_clk),
        .CE(\current_speed[6]_i_1_n_0 ),
        .D(select_ln13_fu_172_p3[5]),
        .Q(current_speed[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_speed_reg[6] 
       (.C(ap_clk),
        .CE(\current_speed[6]_i_1_n_0 ),
        .D(select_ln13_fu_172_p3[6]),
        .Q(current_speed[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h70FF7070)) 
    \icmp_ln17_reg_320[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\icmp_ln17_reg_320_reg_n_0_[0] ),
        .I3(\icmp_ln17_reg_320[0]_i_2_n_0 ),
        .I4(\icmp_ln17_reg_320[0]_i_3_n_0 ),
        .O(\icmp_ln17_reg_320[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \icmp_ln17_reg_320[0]_i_2 
       (.I0(p_left[0]),
        .I1(p_left[2]),
        .I2(p_left[1]),
        .I3(p_left[3]),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(ap_start),
        .O(\icmp_ln17_reg_320[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \icmp_ln17_reg_320[0]_i_3 
       (.I0(p_left[7]),
        .I1(p_left[4]),
        .I2(p_left[6]),
        .I3(p_left[5]),
        .O(\icmp_ln17_reg_320[0]_i_3_n_0 ));
  FDRE \icmp_ln17_reg_320_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\icmp_ln17_reg_320[0]_i_1_n_0 ),
        .Q(\icmp_ln17_reg_320_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \p_dutyCycle[0]_INST_0 
       (.CI(1'b0),
        .CO({\p_dutyCycle[0]_INST_0_n_0 ,\p_dutyCycle[0]_INST_0_n_1 ,\p_dutyCycle[0]_INST_0_n_2 ,\p_dutyCycle[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(select_ln17_1_fu_237_p3[3:0]),
        .O(p_dutyCycle[3:0]),
        .S({\p_dutyCycle[0]_INST_0_i_2_n_0 ,\p_dutyCycle[0]_INST_0_i_3_n_0 ,\p_dutyCycle[0]_INST_0_i_4_n_0 ,\p_dutyCycle[0]_INST_0_i_5_n_0 }));
  CARRY4 \p_dutyCycle[0]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\p_dutyCycle[0]_INST_0_i_1_n_0 ,\p_dutyCycle[0]_INST_0_i_1_n_1 ,\p_dutyCycle[0]_INST_0_i_1_n_2 ,\p_dutyCycle[0]_INST_0_i_1_n_3 }),
        .CYINIT(\p_dutyCycle[0]_INST_0_i_6_n_0 ),
        .DI(current_duty_cycle[3:0]),
        .O(select_ln17_1_fu_237_p3[3:0]),
        .S({\p_dutyCycle[0]_INST_0_i_7_n_0 ,\p_dutyCycle[0]_INST_0_i_8_n_0 ,\p_dutyCycle[0]_INST_0_i_9_n_0 ,\p_dutyCycle[0]_INST_0_i_10_n_0 }));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_dutyCycle[0]_INST_0_i_10 
       (.I0(current_duty_cycle[0]),
        .I1(\^p_speed [0]),
        .I2(\p_dutyCycle[0]_INST_0_i_6_n_0 ),
        .O(\p_dutyCycle[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001FFFFFF)) 
    \p_dutyCycle[0]_INST_0_i_11 
       (.I0(sub_ln17_reg_338[2]),
        .I1(sub_ln17_reg_338[4]),
        .I2(sub_ln17_reg_338[3]),
        .I3(sub_ln17_reg_338[5]),
        .I4(sub_ln17_reg_338[6]),
        .I5(sub_ln17_reg_338[7]),
        .O(\p_dutyCycle[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9555AAAAAAAA)) 
    \p_dutyCycle[0]_INST_0_i_2 
       (.I0(select_ln17_1_fu_237_p3[3]),
        .I1(add_ln21_fu_253_p2[7]),
        .I2(add_ln21_fu_253_p2[6]),
        .I3(\p_dutyCycle[4]_INST_0_i_10_n_0 ),
        .I4(\p_dutyCycle[4]_INST_0_i_11_n_0 ),
        .I5(\^p_speed [3]),
        .O(\p_dutyCycle[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9555AAAAAAAA)) 
    \p_dutyCycle[0]_INST_0_i_3 
       (.I0(select_ln17_1_fu_237_p3[2]),
        .I1(add_ln21_fu_253_p2[7]),
        .I2(add_ln21_fu_253_p2[6]),
        .I3(\p_dutyCycle[4]_INST_0_i_10_n_0 ),
        .I4(\p_dutyCycle[4]_INST_0_i_11_n_0 ),
        .I5(\^p_speed [2]),
        .O(\p_dutyCycle[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9555AAAAAAAA)) 
    \p_dutyCycle[0]_INST_0_i_4 
       (.I0(select_ln17_1_fu_237_p3[1]),
        .I1(add_ln21_fu_253_p2[7]),
        .I2(add_ln21_fu_253_p2[6]),
        .I3(\p_dutyCycle[4]_INST_0_i_10_n_0 ),
        .I4(\p_dutyCycle[4]_INST_0_i_11_n_0 ),
        .I5(\^p_speed [1]),
        .O(\p_dutyCycle[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9555AAAAAAAA)) 
    \p_dutyCycle[0]_INST_0_i_5 
       (.I0(select_ln17_1_fu_237_p3[0]),
        .I1(add_ln21_fu_253_p2[7]),
        .I2(add_ln21_fu_253_p2[6]),
        .I3(\p_dutyCycle[4]_INST_0_i_10_n_0 ),
        .I4(\p_dutyCycle[4]_INST_0_i_11_n_0 ),
        .I5(\^p_speed [0]),
        .O(\p_dutyCycle[0]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \p_dutyCycle[0]_INST_0_i_6 
       (.I0(sub_ln17_reg_338[8]),
        .I1(\icmp_ln17_reg_320_reg_n_0_[0] ),
        .I2(\p_dutyCycle[0]_INST_0_i_11_n_0 ),
        .O(\p_dutyCycle[0]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_dutyCycle[0]_INST_0_i_7 
       (.I0(current_duty_cycle[3]),
        .I1(\^p_speed [3]),
        .I2(\p_dutyCycle[0]_INST_0_i_6_n_0 ),
        .O(\p_dutyCycle[0]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_dutyCycle[0]_INST_0_i_8 
       (.I0(current_duty_cycle[2]),
        .I1(\^p_speed [2]),
        .I2(\p_dutyCycle[0]_INST_0_i_6_n_0 ),
        .O(\p_dutyCycle[0]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_dutyCycle[0]_INST_0_i_9 
       (.I0(current_duty_cycle[1]),
        .I1(\^p_speed [1]),
        .I2(\p_dutyCycle[0]_INST_0_i_6_n_0 ),
        .O(\p_dutyCycle[0]_INST_0_i_9_n_0 ));
  CARRY4 \p_dutyCycle[4]_INST_0 
       (.CI(\p_dutyCycle[0]_INST_0_n_0 ),
        .CO({\NLW_p_dutyCycle[4]_INST_0_CO_UNCONNECTED [3],\p_dutyCycle[4]_INST_0_n_1 ,\p_dutyCycle[4]_INST_0_n_2 ,\p_dutyCycle[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,select_ln17_1_fu_237_p3[6:4]}),
        .O(p_dutyCycle[7:4]),
        .S({select_ln17_1_fu_237_p3[7],\p_dutyCycle[4]_INST_0_i_2_n_0 ,\p_dutyCycle[4]_INST_0_i_3_n_0 ,\p_dutyCycle[4]_INST_0_i_4_n_0 }));
  CARRY4 \p_dutyCycle[4]_INST_0_i_1 
       (.CI(\p_dutyCycle[0]_INST_0_i_1_n_0 ),
        .CO({\NLW_p_dutyCycle[4]_INST_0_i_1_CO_UNCONNECTED [3],\p_dutyCycle[4]_INST_0_i_1_n_1 ,\p_dutyCycle[4]_INST_0_i_1_n_2 ,\p_dutyCycle[4]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,current_duty_cycle[6:4]}),
        .O(select_ln17_1_fu_237_p3[7:4]),
        .S({\p_dutyCycle[4]_INST_0_i_5_n_0 ,\p_dutyCycle[4]_INST_0_i_6_n_0 ,\p_dutyCycle[4]_INST_0_i_7_n_0 ,\p_dutyCycle[4]_INST_0_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFE00)) 
    \p_dutyCycle[4]_INST_0_i_10 
       (.I0(add_ln21_fu_253_p2[0]),
        .I1(add_ln21_fu_253_p2[1]),
        .I2(add_ln21_fu_253_p2[2]),
        .I3(add_ln21_fu_253_p2[3]),
        .I4(add_ln21_fu_253_p2[4]),
        .I5(add_ln21_fu_253_p2[5]),
        .O(\p_dutyCycle[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \p_dutyCycle[4]_INST_0_i_11 
       (.I0(add_ln21_fu_253_p2[8]),
        .I1(\p_dutyCycle[4]_INST_0_i_17_n_0 ),
        .I2(p_right[3]),
        .I3(p_right[1]),
        .I4(p_right[7]),
        .I5(p_right[4]),
        .O(\p_dutyCycle[4]_INST_0_i_11_n_0 ));
  CARRY4 \p_dutyCycle[4]_INST_0_i_12 
       (.CI(1'b0),
        .CO({\p_dutyCycle[4]_INST_0_i_12_n_0 ,\p_dutyCycle[4]_INST_0_i_12_n_1 ,\p_dutyCycle[4]_INST_0_i_12_n_2 ,\p_dutyCycle[4]_INST_0_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI(select_ln17_1_fu_237_p3[3:0]),
        .O(add_ln21_fu_253_p2[3:0]),
        .S({\p_dutyCycle[4]_INST_0_i_18_n_0 ,\p_dutyCycle[4]_INST_0_i_19_n_0 ,\p_dutyCycle[4]_INST_0_i_20_n_0 ,\p_dutyCycle[4]_INST_0_i_21_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \p_dutyCycle[4]_INST_0_i_13 
       (.I0(select_ln17_1_fu_237_p3[6]),
        .I1(\^p_speed [6]),
        .O(\p_dutyCycle[4]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_dutyCycle[4]_INST_0_i_14 
       (.I0(select_ln17_1_fu_237_p3[5]),
        .I1(\^p_speed [5]),
        .O(\p_dutyCycle[4]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_dutyCycle[4]_INST_0_i_15 
       (.I0(select_ln17_1_fu_237_p3[4]),
        .I1(\^p_speed [4]),
        .O(\p_dutyCycle[4]_INST_0_i_15_n_0 ));
  CARRY4 \p_dutyCycle[4]_INST_0_i_16 
       (.CI(\p_dutyCycle[4]_INST_0_i_9_n_0 ),
        .CO({\NLW_p_dutyCycle[4]_INST_0_i_16_CO_UNCONNECTED [3:1],add_ln21_fu_253_p2[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_p_dutyCycle[4]_INST_0_i_16_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \p_dutyCycle[4]_INST_0_i_17 
       (.I0(p_right[6]),
        .I1(p_right[5]),
        .I2(p_right[2]),
        .I3(p_right[0]),
        .O(\p_dutyCycle[4]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_dutyCycle[4]_INST_0_i_18 
       (.I0(select_ln17_1_fu_237_p3[3]),
        .I1(\^p_speed [3]),
        .O(\p_dutyCycle[4]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_dutyCycle[4]_INST_0_i_19 
       (.I0(select_ln17_1_fu_237_p3[2]),
        .I1(\^p_speed [2]),
        .O(\p_dutyCycle[4]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9555AAAAAAAA)) 
    \p_dutyCycle[4]_INST_0_i_2 
       (.I0(select_ln17_1_fu_237_p3[6]),
        .I1(add_ln21_fu_253_p2[7]),
        .I2(add_ln21_fu_253_p2[6]),
        .I3(\p_dutyCycle[4]_INST_0_i_10_n_0 ),
        .I4(\p_dutyCycle[4]_INST_0_i_11_n_0 ),
        .I5(\^p_speed [6]),
        .O(\p_dutyCycle[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_dutyCycle[4]_INST_0_i_20 
       (.I0(select_ln17_1_fu_237_p3[1]),
        .I1(\^p_speed [1]),
        .O(\p_dutyCycle[4]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_dutyCycle[4]_INST_0_i_21 
       (.I0(select_ln17_1_fu_237_p3[0]),
        .I1(\^p_speed [0]),
        .O(\p_dutyCycle[4]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9555AAAAAAAA)) 
    \p_dutyCycle[4]_INST_0_i_3 
       (.I0(select_ln17_1_fu_237_p3[5]),
        .I1(add_ln21_fu_253_p2[7]),
        .I2(add_ln21_fu_253_p2[6]),
        .I3(\p_dutyCycle[4]_INST_0_i_10_n_0 ),
        .I4(\p_dutyCycle[4]_INST_0_i_11_n_0 ),
        .I5(\^p_speed [5]),
        .O(\p_dutyCycle[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9555AAAAAAAA)) 
    \p_dutyCycle[4]_INST_0_i_4 
       (.I0(select_ln17_1_fu_237_p3[4]),
        .I1(add_ln21_fu_253_p2[7]),
        .I2(add_ln21_fu_253_p2[6]),
        .I3(\p_dutyCycle[4]_INST_0_i_10_n_0 ),
        .I4(\p_dutyCycle[4]_INST_0_i_11_n_0 ),
        .I5(\^p_speed [4]),
        .O(\p_dutyCycle[4]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \p_dutyCycle[4]_INST_0_i_5 
       (.I0(current_duty_cycle[7]),
        .I1(\p_dutyCycle[0]_INST_0_i_6_n_0 ),
        .O(\p_dutyCycle[4]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_dutyCycle[4]_INST_0_i_6 
       (.I0(current_duty_cycle[6]),
        .I1(\^p_speed [6]),
        .I2(\p_dutyCycle[0]_INST_0_i_6_n_0 ),
        .O(\p_dutyCycle[4]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_dutyCycle[4]_INST_0_i_7 
       (.I0(current_duty_cycle[5]),
        .I1(\^p_speed [5]),
        .I2(\p_dutyCycle[0]_INST_0_i_6_n_0 ),
        .O(\p_dutyCycle[4]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_dutyCycle[4]_INST_0_i_8 
       (.I0(current_duty_cycle[4]),
        .I1(\^p_speed [4]),
        .I2(\p_dutyCycle[0]_INST_0_i_6_n_0 ),
        .O(\p_dutyCycle[4]_INST_0_i_8_n_0 ));
  CARRY4 \p_dutyCycle[4]_INST_0_i_9 
       (.CI(\p_dutyCycle[4]_INST_0_i_12_n_0 ),
        .CO({\p_dutyCycle[4]_INST_0_i_9_n_0 ,\p_dutyCycle[4]_INST_0_i_9_n_1 ,\p_dutyCycle[4]_INST_0_i_9_n_2 ,\p_dutyCycle[4]_INST_0_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI(select_ln17_1_fu_237_p3[7:4]),
        .O(add_ln21_fu_253_p2[7:4]),
        .S({select_ln17_1_fu_237_p3[7],\p_dutyCycle[4]_INST_0_i_13_n_0 ,\p_dutyCycle[4]_INST_0_i_14_n_0 ,\p_dutyCycle[4]_INST_0_i_15_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \select_ln13_reg_313[0]_i_1 
       (.I0(current_speed[0]),
        .I1(\select_ln13_reg_313[4]_i_2_n_0 ),
        .I2(\select_ln13_reg_313[3]_i_2_n_0 ),
        .O(select_ln13_fu_172_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \select_ln13_reg_313[1]_i_1 
       (.I0(\select_ln13_reg_313[3]_i_2_n_0 ),
        .I1(current_speed[0]),
        .I2(\select_ln13_reg_313[4]_i_2_n_0 ),
        .I3(current_speed[1]),
        .O(\select_ln13_reg_313[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \select_ln13_reg_313[2]_i_1 
       (.I0(\select_ln13_reg_313[3]_i_2_n_0 ),
        .I1(current_speed[1]),
        .I2(\select_ln13_reg_313[4]_i_2_n_0 ),
        .I3(current_speed[0]),
        .I4(current_speed[2]),
        .O(select_ln13_fu_172_p3[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE80000003)) 
    \select_ln13_reg_313[3]_i_1 
       (.I0(\select_ln13_reg_313[3]_i_2_n_0 ),
        .I1(current_speed[1]),
        .I2(\select_ln13_reg_313[4]_i_2_n_0 ),
        .I3(current_speed[0]),
        .I4(current_speed[2]),
        .I5(current_speed[3]),
        .O(select_ln13_fu_172_p3[3]));
  LUT5 #(
    .INIT(32'h00000041)) 
    \select_ln13_reg_313[3]_i_2 
       (.I0(current_speed[6]),
        .I1(\select_ln13_reg_313[3]_i_3_n_0 ),
        .I2(current_speed[5]),
        .I3(\select_ln13_reg_313[3]_i_4_n_0 ),
        .I4(\select_ln13_reg_313[3]_i_5_n_0 ),
        .O(\select_ln13_reg_313[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1110000011101110)) 
    \select_ln13_reg_313[3]_i_3 
       (.I0(\select_ln13_reg_313[5]_i_4_n_0 ),
        .I1(current_speed[4]),
        .I2(current_speed[6]),
        .I3(current_speed[5]),
        .I4(\select_ln13_reg_313[5]_i_3_n_0 ),
        .I5(\select_ln13_reg_313[5]_i_2_n_0 ),
        .O(\select_ln13_reg_313[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \select_ln13_reg_313[3]_i_4 
       (.I0(current_speed[4]),
        .I1(\select_ln13_reg_313[3]_i_6_n_0 ),
        .I2(p_up[2]),
        .I3(p_up[0]),
        .I4(p_up[6]),
        .I5(p_up[5]),
        .O(\select_ln13_reg_313[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF22FF00000D00)) 
    \select_ln13_reg_313[3]_i_5 
       (.I0(\select_ln13_reg_313[5]_i_2_n_0 ),
        .I1(\select_ln13_reg_313[5]_i_3_n_0 ),
        .I2(\select_ln13_reg_313[3]_i_7_n_0 ),
        .I3(\select_ln13_reg_313[3]_i_8_n_0 ),
        .I4(current_speed[0]),
        .I5(current_speed[3]),
        .O(\select_ln13_reg_313[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \select_ln13_reg_313[3]_i_6 
       (.I0(p_up[7]),
        .I1(p_up[4]),
        .I2(p_up[3]),
        .I3(p_up[1]),
        .O(\select_ln13_reg_313[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \select_ln13_reg_313[3]_i_7 
       (.I0(current_speed[4]),
        .I1(current_speed[6]),
        .I2(current_speed[5]),
        .O(\select_ln13_reg_313[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \select_ln13_reg_313[3]_i_8 
       (.I0(current_speed[1]),
        .I1(current_speed[2]),
        .O(\select_ln13_reg_313[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \select_ln13_reg_313[4]_i_1 
       (.I0(current_speed[1]),
        .I1(current_speed[2]),
        .I2(current_speed[0]),
        .I3(current_speed[3]),
        .I4(\select_ln13_reg_313[4]_i_2_n_0 ),
        .I5(current_speed[4]),
        .O(select_ln13_fu_172_p3[4]));
  LUT6 #(
    .INIT(64'h0001FFFF00010001)) 
    \select_ln13_reg_313[4]_i_2 
       (.I0(\select_ln13_reg_313[5]_i_4_n_0 ),
        .I1(current_speed[4]),
        .I2(current_speed[6]),
        .I3(current_speed[5]),
        .I4(\select_ln13_reg_313[5]_i_3_n_0 ),
        .I5(\select_ln13_reg_313[5]_i_2_n_0 ),
        .O(\select_ln13_reg_313[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F02D20)) 
    \select_ln13_reg_313[5]_i_1 
       (.I0(\select_ln13_reg_313[5]_i_2_n_0 ),
        .I1(\select_ln13_reg_313[5]_i_3_n_0 ),
        .I2(current_speed[5]),
        .I3(current_speed[6]),
        .I4(current_speed[4]),
        .I5(\select_ln13_reg_313[5]_i_4_n_0 ),
        .O(select_ln13_fu_172_p3[5]));
  LUT4 #(
    .INIT(16'h0001)) 
    \select_ln13_reg_313[5]_i_2 
       (.I0(p_down[6]),
        .I1(p_down[5]),
        .I2(p_down[2]),
        .I3(p_down[0]),
        .O(\select_ln13_reg_313[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \select_ln13_reg_313[5]_i_3 
       (.I0(p_down[3]),
        .I1(p_down[1]),
        .I2(p_down[7]),
        .I3(p_down[4]),
        .O(\select_ln13_reg_313[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \select_ln13_reg_313[5]_i_4 
       (.I0(current_speed[3]),
        .I1(current_speed[0]),
        .I2(current_speed[2]),
        .I3(current_speed[1]),
        .O(\select_ln13_reg_313[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \select_ln13_reg_313[6]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm1));
  LUT1 #(
    .INIT(2'h1)) 
    \select_ln13_reg_313[6]_i_2 
       (.I0(\select_ln13_reg_313[6]_i_3_n_0 ),
        .O(select_ln13_fu_172_p3[6]));
  LUT6 #(
    .INIT(64'h55555555555555F7)) 
    \select_ln13_reg_313[6]_i_3 
       (.I0(current_speed[6]),
        .I1(\select_ln13_reg_313[5]_i_2_n_0 ),
        .I2(\select_ln13_reg_313[5]_i_3_n_0 ),
        .I3(current_speed[4]),
        .I4(\select_ln13_reg_313[5]_i_4_n_0 ),
        .I5(current_speed[5]),
        .O(\select_ln13_reg_313[6]_i_3_n_0 ));
  FDRE \select_ln13_reg_313_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(select_ln13_fu_172_p3[0]),
        .Q(\^p_speed [0]),
        .R(1'b0));
  FDRE \select_ln13_reg_313_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(\select_ln13_reg_313[1]_i_1_n_0 ),
        .Q(\^p_speed [1]),
        .R(1'b0));
  FDRE \select_ln13_reg_313_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(select_ln13_fu_172_p3[2]),
        .Q(\^p_speed [2]),
        .R(1'b0));
  FDRE \select_ln13_reg_313_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(select_ln13_fu_172_p3[3]),
        .Q(\^p_speed [3]),
        .R(1'b0));
  FDRE \select_ln13_reg_313_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(select_ln13_fu_172_p3[4]),
        .Q(\^p_speed [4]),
        .R(1'b0));
  FDRE \select_ln13_reg_313_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(select_ln13_fu_172_p3[5]),
        .Q(\^p_speed [5]),
        .R(1'b0));
  FDRE \select_ln13_reg_313_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(select_ln13_fu_172_p3[6]),
        .Q(\^p_speed [6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAA99995555A)) 
    \sub_ln17_reg_338[3]_i_2 
       (.I0(current_duty_cycle[3]),
        .I1(\sub_ln17_reg_338[3]_i_6_n_0 ),
        .I2(current_speed[1]),
        .I3(\sub_ln17_reg_338[3]_i_7_n_0 ),
        .I4(current_speed[2]),
        .I5(current_speed[3]),
        .O(\sub_ln17_reg_338[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999996)) 
    \sub_ln17_reg_338[3]_i_3 
       (.I0(current_duty_cycle[2]),
        .I1(current_speed[2]),
        .I2(current_speed[0]),
        .I3(\select_ln13_reg_313[4]_i_2_n_0 ),
        .I4(current_speed[1]),
        .I5(\select_ln13_reg_313[3]_i_2_n_0 ),
        .O(\sub_ln17_reg_338[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h69999996)) 
    \sub_ln17_reg_338[3]_i_4 
       (.I0(current_duty_cycle[1]),
        .I1(current_speed[1]),
        .I2(\select_ln13_reg_313[4]_i_2_n_0 ),
        .I3(current_speed[0]),
        .I4(\select_ln13_reg_313[3]_i_2_n_0 ),
        .O(\sub_ln17_reg_338[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sub_ln17_reg_338[3]_i_5 
       (.I0(current_duty_cycle[0]),
        .I1(current_speed[0]),
        .I2(\select_ln13_reg_313[4]_i_2_n_0 ),
        .I3(\select_ln13_reg_313[3]_i_2_n_0 ),
        .O(\sub_ln17_reg_338[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \sub_ln17_reg_338[3]_i_6 
       (.I0(\sub_ln17_reg_338[3]_i_8_n_0 ),
        .I1(\select_ln13_reg_313[6]_i_3_n_0 ),
        .I2(select_ln13_fu_172_p3[5]),
        .I3(\select_ln13_reg_313[3]_i_4_n_0 ),
        .I4(\select_ln13_reg_313[3]_i_5_n_0 ),
        .I5(\sub_ln17_reg_338[3]_i_9_n_0 ),
        .O(\sub_ln17_reg_338[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \sub_ln17_reg_338[3]_i_7 
       (.I0(current_speed[0]),
        .I1(\select_ln13_reg_313[5]_i_2_n_0 ),
        .I2(\select_ln13_reg_313[5]_i_3_n_0 ),
        .I3(\select_ln13_reg_313[3]_i_7_n_0 ),
        .I4(\select_ln13_reg_313[5]_i_4_n_0 ),
        .O(\sub_ln17_reg_338[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA6A655A6)) 
    \sub_ln17_reg_338[3]_i_8 
       (.I0(current_speed[0]),
        .I1(\select_ln13_reg_313[5]_i_2_n_0 ),
        .I2(\select_ln13_reg_313[5]_i_3_n_0 ),
        .I3(\select_ln13_reg_313[3]_i_7_n_0 ),
        .I4(\select_ln13_reg_313[5]_i_4_n_0 ),
        .O(\sub_ln17_reg_338[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h555555559A559A9A)) 
    \sub_ln17_reg_338[3]_i_9 
       (.I0(current_speed[1]),
        .I1(\select_ln13_reg_313[5]_i_4_n_0 ),
        .I2(\select_ln13_reg_313[3]_i_7_n_0 ),
        .I3(\select_ln13_reg_313[5]_i_3_n_0 ),
        .I4(\select_ln13_reg_313[5]_i_2_n_0 ),
        .I5(current_speed[0]),
        .O(\sub_ln17_reg_338[3]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sub_ln17_reg_338[7]_i_2 
       (.I0(current_duty_cycle[7]),
        .O(\sub_ln17_reg_338[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sub_ln17_reg_338[7]_i_3 
       (.I0(current_duty_cycle[6]),
        .I1(\select_ln13_reg_313[6]_i_3_n_0 ),
        .O(\sub_ln17_reg_338[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \sub_ln17_reg_338[7]_i_4 
       (.I0(current_duty_cycle[5]),
        .I1(select_ln13_fu_172_p3[5]),
        .O(\sub_ln17_reg_338[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sub_ln17_reg_338[7]_i_5 
       (.I0(current_duty_cycle[4]),
        .I1(\sub_ln17_reg_338[7]_i_6_n_0 ),
        .O(\sub_ln17_reg_338[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \sub_ln17_reg_338[7]_i_6 
       (.I0(current_speed[4]),
        .I1(\select_ln13_reg_313[4]_i_2_n_0 ),
        .I2(current_speed[3]),
        .I3(current_speed[0]),
        .I4(current_speed[2]),
        .I5(current_speed[1]),
        .O(\sub_ln17_reg_338[7]_i_6_n_0 ));
  FDRE \sub_ln17_reg_338_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(sub_ln17_fu_204_p2[2]),
        .Q(sub_ln17_reg_338[2]),
        .R(1'b0));
  FDRE \sub_ln17_reg_338_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(sub_ln17_fu_204_p2[3]),
        .Q(sub_ln17_reg_338[3]),
        .R(1'b0));
  CARRY4 \sub_ln17_reg_338_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sub_ln17_reg_338_reg[3]_i_1_n_0 ,\sub_ln17_reg_338_reg[3]_i_1_n_1 ,\sub_ln17_reg_338_reg[3]_i_1_n_2 ,\sub_ln17_reg_338_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(current_duty_cycle[3:0]),
        .O({sub_ln17_fu_204_p2[3:2],\NLW_sub_ln17_reg_338_reg[3]_i_1_O_UNCONNECTED [1:0]}),
        .S({\sub_ln17_reg_338[3]_i_2_n_0 ,\sub_ln17_reg_338[3]_i_3_n_0 ,\sub_ln17_reg_338[3]_i_4_n_0 ,\sub_ln17_reg_338[3]_i_5_n_0 }));
  FDRE \sub_ln17_reg_338_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(sub_ln17_fu_204_p2[4]),
        .Q(sub_ln17_reg_338[4]),
        .R(1'b0));
  FDRE \sub_ln17_reg_338_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(sub_ln17_fu_204_p2[5]),
        .Q(sub_ln17_reg_338[5]),
        .R(1'b0));
  FDRE \sub_ln17_reg_338_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(sub_ln17_fu_204_p2[6]),
        .Q(sub_ln17_reg_338[6]),
        .R(1'b0));
  FDRE \sub_ln17_reg_338_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(sub_ln17_fu_204_p2[7]),
        .Q(sub_ln17_reg_338[7]),
        .R(1'b0));
  CARRY4 \sub_ln17_reg_338_reg[7]_i_1 
       (.CI(\sub_ln17_reg_338_reg[3]_i_1_n_0 ),
        .CO({\sub_ln17_reg_338_reg[7]_i_1_n_0 ,\sub_ln17_reg_338_reg[7]_i_1_n_1 ,\sub_ln17_reg_338_reg[7]_i_1_n_2 ,\sub_ln17_reg_338_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(current_duty_cycle[7:4]),
        .O(sub_ln17_fu_204_p2[7:4]),
        .S({\sub_ln17_reg_338[7]_i_2_n_0 ,\sub_ln17_reg_338[7]_i_3_n_0 ,\sub_ln17_reg_338[7]_i_4_n_0 ,\sub_ln17_reg_338[7]_i_5_n_0 }));
  FDRE \sub_ln17_reg_338_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(sub_ln17_fu_204_p2[8]),
        .Q(sub_ln17_reg_338[8]),
        .R(1'b0));
  CARRY4 \sub_ln17_reg_338_reg[8]_i_1 
       (.CI(\sub_ln17_reg_338_reg[7]_i_1_n_0 ),
        .CO(\NLW_sub_ln17_reg_338_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sub_ln17_reg_338_reg[8]_i_1_O_UNCONNECTED [3:1],sub_ln17_fu_204_p2[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
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
