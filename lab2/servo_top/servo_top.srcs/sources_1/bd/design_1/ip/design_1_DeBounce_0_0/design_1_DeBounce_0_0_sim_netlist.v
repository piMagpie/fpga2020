// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Feb 17 18:56:31 2020
// Host        : agazorPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/fpga/lab2/servo_top/servo_top.srcs/sources_1/bd/design_1/ip/design_1_DeBounce_0_0/design_1_DeBounce_0_0_sim_netlist.v
// Design      : design_1_DeBounce_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_DeBounce_0_0,DeBounce,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "DeBounce,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_DeBounce_0_0
   (Clock,
    button_in,
    pulse_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clock, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_ap_clk_0, INSERT_VIP 0" *) input Clock;
  input [7:0]button_in;
  output [7:0]pulse_out;

  wire Clock;
  wire [7:0]button_in;
  wire [0:0]\^pulse_out ;

  assign pulse_out[7] = \^pulse_out [0];
  assign pulse_out[6] = \^pulse_out [0];
  assign pulse_out[5] = \^pulse_out [0];
  assign pulse_out[4] = \^pulse_out [0];
  assign pulse_out[3] = \^pulse_out [0];
  assign pulse_out[2] = \^pulse_out [0];
  assign pulse_out[1] = \^pulse_out [0];
  assign pulse_out[0] = \^pulse_out [0];
  design_1_DeBounce_0_0_DeBounce U0
       (.Clock(Clock),
        .button_in(button_in[0]),
        .pulse_out(\^pulse_out ));
endmodule

(* ORIG_REF_NAME = "DeBounce" *) 
module design_1_DeBounce_0_0_DeBounce
   (pulse_out,
    Clock,
    button_in);
  output [0:0]pulse_out;
  input Clock;
  input [0:0]button_in;

  wire Clock;
  wire [0:0]button_in;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_1;
  wire count0_carry__3_n_2;
  wire count0_carry__3_n_3;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_1;
  wire count0_carry__4_n_2;
  wire count0_carry__4_n_3;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_1;
  wire count0_carry__5_n_2;
  wire count0_carry__5_n_3;
  wire count0_carry__6_n_2;
  wire count0_carry__6_n_3;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_2_n_0 ;
  wire \count[31]_i_3_n_0 ;
  wire \count[31]_i_4_n_0 ;
  wire \count[31]_i_5_n_0 ;
  wire \count[31]_i_6_n_0 ;
  wire \count[31]_i_7_n_0 ;
  wire \count[31]_i_8_n_0 ;
  wire \count[31]_i_9_n_0 ;
  wire [31:1]data0;
  wire [0:0]pulse_out;
  wire \pulse_out[0]_i_1_n_0 ;
  wire [32:0]sel0;
  wire state0;
  wire [3:2]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;

  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(sel0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(sel0[4:1]));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(sel0[8:5]));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(sel0[12:9]));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(sel0[16:13]));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,count0_carry__3_n_1,count0_carry__3_n_2,count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(sel0[20:17]));
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,count0_carry__4_n_1,count0_carry__4_n_2,count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(sel0[24:21]));
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,count0_carry__5_n_1,count0_carry__5_n_2,count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(sel0[28:25]));
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO({NLW_count0_carry__6_CO_UNCONNECTED[3:2],count0_carry__6_n_2,count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,sel0[31:29]}));
  LUT5 #(
    .INIT(32'h00FFFE00)) 
    \count[0]_i_1 
       (.I0(\count[31]_i_4_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_2_n_0 ),
        .I3(sel0[32]),
        .I4(sel0[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \count[31]_i_1 
       (.I0(sel0[32]),
        .I1(sel0[0]),
        .I2(\count[31]_i_2_n_0 ),
        .I3(\count[31]_i_3_n_0 ),
        .I4(\count[31]_i_4_n_0 ),
        .O(\count[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \count[31]_i_2 
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .I2(sel0[10]),
        .I3(sel0[11]),
        .I4(\count[31]_i_5_n_0 ),
        .O(\count[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_3 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\count[31]_i_6_n_0 ),
        .O(\count[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[31]_i_4 
       (.I0(\count[31]_i_7_n_0 ),
        .I1(\count[31]_i_8_n_0 ),
        .I2(sel0[31]),
        .I3(sel0[30]),
        .I4(sel0[1]),
        .I5(\count[31]_i_9_n_0 ),
        .O(\count[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count[31]_i_5 
       (.I0(sel0[14]),
        .I1(sel0[15]),
        .I2(sel0[16]),
        .I3(sel0[17]),
        .O(\count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \count[31]_i_6 
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .I2(sel0[9]),
        .I3(sel0[8]),
        .O(\count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count[31]_i_7 
       (.I0(sel0[22]),
        .I1(sel0[23]),
        .I2(sel0[24]),
        .I3(sel0[25]),
        .O(\count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[31]_i_8 
       (.I0(sel0[19]),
        .I1(sel0[18]),
        .I2(sel0[21]),
        .I3(sel0[20]),
        .O(\count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_9 
       (.I0(sel0[27]),
        .I1(sel0[26]),
        .I2(sel0[29]),
        .I3(sel0[28]),
        .O(\count[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[10]),
        .Q(sel0[10]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[11]),
        .Q(sel0[11]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[12]),
        .Q(sel0[12]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[13]),
        .Q(sel0[13]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[14]),
        .Q(sel0[14]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[15]),
        .Q(sel0[15]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[16]),
        .Q(sel0[16]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[17]),
        .Q(sel0[17]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[18]),
        .Q(sel0[18]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[19]),
        .Q(sel0[19]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[1]),
        .Q(sel0[1]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[20]),
        .Q(sel0[20]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[21]),
        .Q(sel0[21]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[22]),
        .Q(sel0[22]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[23]),
        .Q(sel0[23]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[24]),
        .Q(sel0[24]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[25]),
        .Q(sel0[25]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[26]),
        .Q(sel0[26]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[27]),
        .Q(sel0[27]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[28]),
        .Q(sel0[28]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[29]),
        .Q(sel0[29]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[2]),
        .Q(sel0[2]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[30]),
        .Q(sel0[30]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[31]),
        .Q(sel0[31]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[3]),
        .Q(sel0[3]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[4]),
        .Q(sel0[4]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[5]),
        .Q(sel0[5]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[6]),
        .Q(sel0[6]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[7]),
        .Q(sel0[7]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[8]),
        .Q(sel0[8]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(Clock),
        .CE(sel0[32]),
        .D(data0[9]),
        .Q(sel0[9]),
        .R(\count[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pulse_out[0]_i_1 
       (.I0(button_in),
        .I1(sel0[32]),
        .O(\pulse_out[0]_i_1_n_0 ));
  FDRE \pulse_out_reg[0] 
       (.C(Clock),
        .CE(1'b1),
        .D(\pulse_out[0]_i_1_n_0 ),
        .Q(pulse_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    state_i_1
       (.I0(\count[31]_i_4_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_2_n_0 ),
        .I3(sel0[0]),
        .I4(sel0[32]),
        .I5(button_in),
        .O(state0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(Clock),
        .CE(1'b1),
        .D(state0),
        .Q(sel0[32]),
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
