// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Feb 19 20:18:38 2020
// Host        : agazorPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_add_0_1 -prefix
//               design_1_add_0_1_ design_1_add_0_0_sim_netlist.v
// Design      : design_1_add_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S_AXI_AXILITES_ADDR_WIDTH = "6" *) (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) 
module design_1_add_0_1_add
   (s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_BRESP,
    ap_clk,
    ap_rst_n);
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [5:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  input [5:0]s_axi_AXILiteS_ARADDR;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  input ap_clk;
  input ap_rst_n;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [5:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [5:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;

  assign s_axi_AXILiteS_BRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_BRESP[0] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_add_0_1_add_AXILiteS_s_axi add_AXILiteS_s_axi_U
       (.\FSM_onehot_rstate_reg[1]_0 (s_axi_AXILiteS_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_AXILiteS_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_AXILiteS_WREADY),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID));
endmodule

module design_1_add_0_1_add_AXILiteS_s_axi
   (s_axi_AXILiteS_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_AXILiteS_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_AXILiteS_RDATA,
    ap_clk,
    ap_rst_n,
    s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_ARADDR);
  output s_axi_AXILiteS_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_AXILiteS_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output [31:0]s_axi_AXILiteS_RDATA;
  input ap_clk;
  input ap_rst_n;
  input [5:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_AWVALID;
  input s_axi_AXILiteS_BREADY;
  input s_axi_AXILiteS_WVALID;
  input s_axi_AXILiteS_ARVALID;
  input s_axi_AXILiteS_RREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input [5:0]s_axi_AXILiteS_ARADDR;

  wire ARESET;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [31:0]a;
  wire ap_clk;
  wire ap_rst_n;
  wire ar_hs;
  wire [31:0]b;
  wire [31:0]c;
  wire \int_a[31]_i_3_n_0 ;
  wire [31:0]int_c;
  wire \int_c[11]_i_2_n_0 ;
  wire \int_c[11]_i_3_n_0 ;
  wire \int_c[11]_i_4_n_0 ;
  wire \int_c[11]_i_5_n_0 ;
  wire \int_c[15]_i_2_n_0 ;
  wire \int_c[15]_i_3_n_0 ;
  wire \int_c[15]_i_4_n_0 ;
  wire \int_c[15]_i_5_n_0 ;
  wire \int_c[19]_i_2_n_0 ;
  wire \int_c[19]_i_3_n_0 ;
  wire \int_c[19]_i_4_n_0 ;
  wire \int_c[19]_i_5_n_0 ;
  wire \int_c[23]_i_2_n_0 ;
  wire \int_c[23]_i_3_n_0 ;
  wire \int_c[23]_i_4_n_0 ;
  wire \int_c[23]_i_5_n_0 ;
  wire \int_c[27]_i_2_n_0 ;
  wire \int_c[27]_i_3_n_0 ;
  wire \int_c[27]_i_4_n_0 ;
  wire \int_c[27]_i_5_n_0 ;
  wire \int_c[31]_i_2_n_0 ;
  wire \int_c[31]_i_3_n_0 ;
  wire \int_c[31]_i_4_n_0 ;
  wire \int_c[31]_i_5_n_0 ;
  wire \int_c[3]_i_2_n_0 ;
  wire \int_c[3]_i_3_n_0 ;
  wire \int_c[3]_i_4_n_0 ;
  wire \int_c[7]_i_2_n_0 ;
  wire \int_c[7]_i_3_n_0 ;
  wire \int_c[7]_i_4_n_0 ;
  wire \int_c[7]_i_5_n_0 ;
  wire int_c_ap_vld;
  wire \int_c_reg[11]_i_1_n_0 ;
  wire \int_c_reg[11]_i_1_n_1 ;
  wire \int_c_reg[11]_i_1_n_2 ;
  wire \int_c_reg[11]_i_1_n_3 ;
  wire \int_c_reg[15]_i_1_n_0 ;
  wire \int_c_reg[15]_i_1_n_1 ;
  wire \int_c_reg[15]_i_1_n_2 ;
  wire \int_c_reg[15]_i_1_n_3 ;
  wire \int_c_reg[19]_i_1_n_0 ;
  wire \int_c_reg[19]_i_1_n_1 ;
  wire \int_c_reg[19]_i_1_n_2 ;
  wire \int_c_reg[19]_i_1_n_3 ;
  wire \int_c_reg[23]_i_1_n_0 ;
  wire \int_c_reg[23]_i_1_n_1 ;
  wire \int_c_reg[23]_i_1_n_2 ;
  wire \int_c_reg[23]_i_1_n_3 ;
  wire \int_c_reg[27]_i_1_n_0 ;
  wire \int_c_reg[27]_i_1_n_1 ;
  wire \int_c_reg[27]_i_1_n_2 ;
  wire \int_c_reg[27]_i_1_n_3 ;
  wire \int_c_reg[31]_i_1_n_1 ;
  wire \int_c_reg[31]_i_1_n_2 ;
  wire \int_c_reg[31]_i_1_n_3 ;
  wire \int_c_reg[3]_i_1_n_0 ;
  wire \int_c_reg[3]_i_1_n_1 ;
  wire \int_c_reg[3]_i_1_n_2 ;
  wire \int_c_reg[3]_i_1_n_3 ;
  wire \int_c_reg[7]_i_1_n_0 ;
  wire \int_c_reg[7]_i_1_n_1 ;
  wire \int_c_reg[7]_i_1_n_2 ;
  wire \int_c_reg[7]_i_1_n_3 ;
  wire [31:0]\or ;
  wire [31:0]or0_out;
  wire p_0_in;
  wire p_0_in4_out;
  wire [31:0]rdata_data;
  wire \rdata_data[0]_i_2_n_0 ;
  wire \rdata_data[10]_i_2_n_0 ;
  wire \rdata_data[11]_i_2_n_0 ;
  wire \rdata_data[12]_i_2_n_0 ;
  wire \rdata_data[13]_i_2_n_0 ;
  wire \rdata_data[14]_i_2_n_0 ;
  wire \rdata_data[15]_i_2_n_0 ;
  wire \rdata_data[16]_i_2_n_0 ;
  wire \rdata_data[17]_i_2_n_0 ;
  wire \rdata_data[18]_i_2_n_0 ;
  wire \rdata_data[19]_i_2_n_0 ;
  wire \rdata_data[1]_i_2_n_0 ;
  wire \rdata_data[20]_i_2_n_0 ;
  wire \rdata_data[21]_i_2_n_0 ;
  wire \rdata_data[22]_i_2_n_0 ;
  wire \rdata_data[23]_i_2_n_0 ;
  wire \rdata_data[24]_i_2_n_0 ;
  wire \rdata_data[25]_i_2_n_0 ;
  wire \rdata_data[26]_i_2_n_0 ;
  wire \rdata_data[27]_i_2_n_0 ;
  wire \rdata_data[28]_i_2_n_0 ;
  wire \rdata_data[29]_i_2_n_0 ;
  wire \rdata_data[2]_i_2_n_0 ;
  wire \rdata_data[30]_i_2_n_0 ;
  wire \rdata_data[31]_i_3_n_0 ;
  wire \rdata_data[31]_i_4_n_0 ;
  wire \rdata_data[3]_i_2_n_0 ;
  wire \rdata_data[4]_i_2_n_0 ;
  wire \rdata_data[5]_i_2_n_0 ;
  wire \rdata_data[6]_i_2_n_0 ;
  wire \rdata_data[7]_i_2_n_0 ;
  wire \rdata_data[8]_i_2_n_0 ;
  wire \rdata_data[9]_i_2_n_0 ;
  wire [2:1]rnext;
  wire [5:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARVALID;
  wire [5:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire [3:3]\NLW_int_c_reg[31]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF747)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_AXILiteS_RVALID),
        .I3(s_axi_AXILiteS_RREADY),
        .O(rnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_AXILiteS_RREADY),
        .I3(s_axi_AXILiteS_RVALID),
        .O(rnext[2]));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[1]),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[2]),
        .Q(s_axi_AXILiteS_RVALID),
        .R(ARESET));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ARESET));
  LUT5 #(
    .INIT(32'hF444F477)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(s_axi_AXILiteS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_AXILiteS_BREADY),
        .I3(s_axi_AXILiteS_BVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88F8)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_AXILiteS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_AXILiteS_WVALID),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_AXILiteS_BREADY),
        .I1(s_axi_AXILiteS_BVALID),
        .I2(s_axi_AXILiteS_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ARESET));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_BVALID),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(a[0]),
        .O(or0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[10]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[10]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(a[10]),
        .O(or0_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[11]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[11]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(a[11]),
        .O(or0_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[12]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[12]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(a[12]),
        .O(or0_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[13]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[13]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(a[13]),
        .O(or0_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[14]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[14]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(a[14]),
        .O(or0_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[15]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[15]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(a[15]),
        .O(or0_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[16]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[16]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(a[16]),
        .O(or0_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[17]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[17]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(a[17]),
        .O(or0_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[18]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[18]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(a[18]),
        .O(or0_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[19]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[19]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(a[19]),
        .O(or0_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(a[1]),
        .O(or0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[20]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[20]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(a[20]),
        .O(or0_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[21]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[21]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(a[21]),
        .O(or0_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[22]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[22]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(a[22]),
        .O(or0_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[23]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[23]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(a[23]),
        .O(or0_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[24]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[24]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(a[24]),
        .O(or0_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[25]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[25]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(a[25]),
        .O(or0_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[26]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[26]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(a[26]),
        .O(or0_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[27]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[27]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(a[27]),
        .O(or0_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[28]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[28]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(a[28]),
        .O(or0_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[29]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[29]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(a[29]),
        .O(or0_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(a[2]),
        .O(or0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[30]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[30]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(a[30]),
        .O(or0_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \int_a[31]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\int_a[31]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[3] ),
        .O(p_0_in4_out));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[31]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[31]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(a[31]),
        .O(or0_out[31]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \int_a[31]_i_3 
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(\waddr_reg_n_0_[5] ),
        .I5(s_axi_AXILiteS_WVALID),
        .O(\int_a[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(a[3]),
        .O(or0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(a[4]),
        .O(or0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(a[5]),
        .O(or0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(a[6]),
        .O(or0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(a[7]),
        .O(or0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(a[8]),
        .O(or0_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[9]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(a[9]),
        .O(or0_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[0]),
        .Q(a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[10] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[10]),
        .Q(a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[11] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[11]),
        .Q(a[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[12] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[12]),
        .Q(a[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[13] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[13]),
        .Q(a[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[14] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[14]),
        .Q(a[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[15] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[15]),
        .Q(a[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[16] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[16]),
        .Q(a[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[17] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[17]),
        .Q(a[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[18] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[18]),
        .Q(a[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[19] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[19]),
        .Q(a[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[1]),
        .Q(a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[20] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[20]),
        .Q(a[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[21] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[21]),
        .Q(a[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[22] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[22]),
        .Q(a[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[23] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[23]),
        .Q(a[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[24] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[24]),
        .Q(a[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[25] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[25]),
        .Q(a[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[26] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[26]),
        .Q(a[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[27] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[27]),
        .Q(a[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[28] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[28]),
        .Q(a[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[29] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[29]),
        .Q(a[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[2]),
        .Q(a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[30] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[30]),
        .Q(a[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[31] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[31]),
        .Q(a[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[3]),
        .Q(a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[4]),
        .Q(a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[5]),
        .Q(a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[6]),
        .Q(a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[7]),
        .Q(a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[8]),
        .Q(a[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[9] 
       (.C(ap_clk),
        .CE(p_0_in4_out),
        .D(or0_out[9]),
        .Q(a[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(b[0]),
        .O(\or [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[10]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[10]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(b[10]),
        .O(\or [10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[11]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[11]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(b[11]),
        .O(\or [11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[12]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[12]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(b[12]),
        .O(\or [12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[13]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[13]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(b[13]),
        .O(\or [13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[14]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[14]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(b[14]),
        .O(\or [14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[15]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[15]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(b[15]),
        .O(\or [15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[16]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[16]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(b[16]),
        .O(\or [16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[17]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[17]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(b[17]),
        .O(\or [17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[18]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[18]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(b[18]),
        .O(\or [18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[19]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[19]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(b[19]),
        .O(\or [19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(b[1]),
        .O(\or [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[20]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[20]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(b[20]),
        .O(\or [20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[21]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[21]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(b[21]),
        .O(\or [21]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[22]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[22]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(b[22]),
        .O(\or [22]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[23]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[23]),
        .I1(s_axi_AXILiteS_WSTRB[2]),
        .I2(b[23]),
        .O(\or [23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[24]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[24]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(b[24]),
        .O(\or [24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[25]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[25]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(b[25]),
        .O(\or [25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[26]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[26]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(b[26]),
        .O(\or [26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[27]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[27]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(b[27]),
        .O(\or [27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[28]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[28]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(b[28]),
        .O(\or [28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[29]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[29]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(b[29]),
        .O(\or [29]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[2]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(b[2]),
        .O(\or [2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[30]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[30]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(b[30]),
        .O(\or [30]));
  LUT3 #(
    .INIT(8'h80)) 
    \int_b[31]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\int_a[31]_i_3_n_0 ),
        .I2(\waddr_reg_n_0_[3] ),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[31]_i_2 
       (.I0(s_axi_AXILiteS_WDATA[31]),
        .I1(s_axi_AXILiteS_WSTRB[3]),
        .I2(b[31]),
        .O(\or [31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[3]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[3]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(b[3]),
        .O(\or [3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[4]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[4]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(b[4]),
        .O(\or [4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[5]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[5]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(b[5]),
        .O(\or [5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[6]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[6]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(b[6]),
        .O(\or [6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[7]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[7]),
        .I1(s_axi_AXILiteS_WSTRB[0]),
        .I2(b[7]),
        .O(\or [7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[8]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[8]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(b[8]),
        .O(\or [8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[9]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[9]),
        .I1(s_axi_AXILiteS_WSTRB[1]),
        .I2(b[9]),
        .O(\or [9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [0]),
        .Q(b[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[10] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [10]),
        .Q(b[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[11] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [11]),
        .Q(b[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[12] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [12]),
        .Q(b[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[13] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [13]),
        .Q(b[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[14] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [14]),
        .Q(b[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[15] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [15]),
        .Q(b[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[16] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [16]),
        .Q(b[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[17] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [17]),
        .Q(b[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[18] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [18]),
        .Q(b[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[19] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [19]),
        .Q(b[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [1]),
        .Q(b[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[20] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [20]),
        .Q(b[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[21] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [21]),
        .Q(b[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[22] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [22]),
        .Q(b[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[23] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [23]),
        .Q(b[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[24] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [24]),
        .Q(b[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[25] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [25]),
        .Q(b[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[26] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [26]),
        .Q(b[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[27] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [27]),
        .Q(b[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[28] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [28]),
        .Q(b[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[29] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [29]),
        .Q(b[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [2]),
        .Q(b[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[30] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [30]),
        .Q(b[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[31] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [31]),
        .Q(b[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [3]),
        .Q(b[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [4]),
        .Q(b[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [5]),
        .Q(b[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [6]),
        .Q(b[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [7]),
        .Q(b[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [8]),
        .Q(b[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[9] 
       (.C(ap_clk),
        .CE(p_0_in),
        .D(\or [9]),
        .Q(b[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[11]_i_2 
       (.I0(b[11]),
        .I1(a[10]),
        .O(\int_c[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[11]_i_3 
       (.I0(b[10]),
        .I1(a[9]),
        .O(\int_c[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[11]_i_4 
       (.I0(b[9]),
        .I1(a[8]),
        .O(\int_c[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[11]_i_5 
       (.I0(b[8]),
        .I1(a[7]),
        .O(\int_c[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[15]_i_2 
       (.I0(b[15]),
        .I1(a[14]),
        .O(\int_c[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[15]_i_3 
       (.I0(b[14]),
        .I1(a[13]),
        .O(\int_c[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[15]_i_4 
       (.I0(b[13]),
        .I1(a[12]),
        .O(\int_c[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[15]_i_5 
       (.I0(b[12]),
        .I1(a[11]),
        .O(\int_c[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[19]_i_2 
       (.I0(b[19]),
        .I1(a[18]),
        .O(\int_c[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[19]_i_3 
       (.I0(b[18]),
        .I1(a[17]),
        .O(\int_c[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[19]_i_4 
       (.I0(b[17]),
        .I1(a[16]),
        .O(\int_c[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[19]_i_5 
       (.I0(b[16]),
        .I1(a[15]),
        .O(\int_c[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[23]_i_2 
       (.I0(b[23]),
        .I1(a[22]),
        .O(\int_c[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[23]_i_3 
       (.I0(b[22]),
        .I1(a[21]),
        .O(\int_c[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[23]_i_4 
       (.I0(b[21]),
        .I1(a[20]),
        .O(\int_c[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[23]_i_5 
       (.I0(b[20]),
        .I1(a[19]),
        .O(\int_c[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[27]_i_2 
       (.I0(b[27]),
        .I1(a[26]),
        .O(\int_c[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[27]_i_3 
       (.I0(b[26]),
        .I1(a[25]),
        .O(\int_c[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[27]_i_4 
       (.I0(b[25]),
        .I1(a[24]),
        .O(\int_c[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[27]_i_5 
       (.I0(b[24]),
        .I1(a[23]),
        .O(\int_c[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[31]_i_2 
       (.I0(b[31]),
        .I1(a[30]),
        .O(\int_c[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[31]_i_3 
       (.I0(b[30]),
        .I1(a[29]),
        .O(\int_c[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[31]_i_4 
       (.I0(b[29]),
        .I1(a[28]),
        .O(\int_c[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[31]_i_5 
       (.I0(b[28]),
        .I1(a[27]),
        .O(\int_c[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[3]_i_2 
       (.I0(b[3]),
        .I1(a[2]),
        .O(\int_c[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[3]_i_3 
       (.I0(b[2]),
        .I1(a[1]),
        .O(\int_c[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[3]_i_4 
       (.I0(b[1]),
        .I1(a[0]),
        .O(\int_c[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[7]_i_2 
       (.I0(b[7]),
        .I1(a[6]),
        .O(\int_c[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[7]_i_3 
       (.I0(b[6]),
        .I1(a[5]),
        .O(\int_c[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[7]_i_4 
       (.I0(b[5]),
        .I1(a[4]),
        .O(\int_c[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_c[7]_i_5 
       (.I0(b[4]),
        .I1(a[3]),
        .O(\int_c[7]_i_5_n_0 ));
  FDRE int_c_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(int_c_ap_vld),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[0]),
        .Q(int_c[0]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[10]),
        .Q(int_c[10]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[11]),
        .Q(int_c[11]),
        .R(ARESET));
  CARRY4 \int_c_reg[11]_i_1 
       (.CI(\int_c_reg[7]_i_1_n_0 ),
        .CO({\int_c_reg[11]_i_1_n_0 ,\int_c_reg[11]_i_1_n_1 ,\int_c_reg[11]_i_1_n_2 ,\int_c_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[11:8]),
        .O(c[11:8]),
        .S({\int_c[11]_i_2_n_0 ,\int_c[11]_i_3_n_0 ,\int_c[11]_i_4_n_0 ,\int_c[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[12]),
        .Q(int_c[12]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[13]),
        .Q(int_c[13]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[14]),
        .Q(int_c[14]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[15]),
        .Q(int_c[15]),
        .R(ARESET));
  CARRY4 \int_c_reg[15]_i_1 
       (.CI(\int_c_reg[11]_i_1_n_0 ),
        .CO({\int_c_reg[15]_i_1_n_0 ,\int_c_reg[15]_i_1_n_1 ,\int_c_reg[15]_i_1_n_2 ,\int_c_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[15:12]),
        .O(c[15:12]),
        .S({\int_c[15]_i_2_n_0 ,\int_c[15]_i_3_n_0 ,\int_c[15]_i_4_n_0 ,\int_c[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[16]),
        .Q(int_c[16]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[17]),
        .Q(int_c[17]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[18]),
        .Q(int_c[18]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[19]),
        .Q(int_c[19]),
        .R(ARESET));
  CARRY4 \int_c_reg[19]_i_1 
       (.CI(\int_c_reg[15]_i_1_n_0 ),
        .CO({\int_c_reg[19]_i_1_n_0 ,\int_c_reg[19]_i_1_n_1 ,\int_c_reg[19]_i_1_n_2 ,\int_c_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[19:16]),
        .O(c[19:16]),
        .S({\int_c[19]_i_2_n_0 ,\int_c[19]_i_3_n_0 ,\int_c[19]_i_4_n_0 ,\int_c[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[1]),
        .Q(int_c[1]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[20]),
        .Q(int_c[20]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[21]),
        .Q(int_c[21]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[22]),
        .Q(int_c[22]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[23]),
        .Q(int_c[23]),
        .R(ARESET));
  CARRY4 \int_c_reg[23]_i_1 
       (.CI(\int_c_reg[19]_i_1_n_0 ),
        .CO({\int_c_reg[23]_i_1_n_0 ,\int_c_reg[23]_i_1_n_1 ,\int_c_reg[23]_i_1_n_2 ,\int_c_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[23:20]),
        .O(c[23:20]),
        .S({\int_c[23]_i_2_n_0 ,\int_c[23]_i_3_n_0 ,\int_c[23]_i_4_n_0 ,\int_c[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[24]),
        .Q(int_c[24]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[25]),
        .Q(int_c[25]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[26]),
        .Q(int_c[26]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[27]),
        .Q(int_c[27]),
        .R(ARESET));
  CARRY4 \int_c_reg[27]_i_1 
       (.CI(\int_c_reg[23]_i_1_n_0 ),
        .CO({\int_c_reg[27]_i_1_n_0 ,\int_c_reg[27]_i_1_n_1 ,\int_c_reg[27]_i_1_n_2 ,\int_c_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[27:24]),
        .O(c[27:24]),
        .S({\int_c[27]_i_2_n_0 ,\int_c[27]_i_3_n_0 ,\int_c[27]_i_4_n_0 ,\int_c[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[28]),
        .Q(int_c[28]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[29]),
        .Q(int_c[29]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[2]),
        .Q(int_c[2]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[30]),
        .Q(int_c[30]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[31]),
        .Q(int_c[31]),
        .R(ARESET));
  CARRY4 \int_c_reg[31]_i_1 
       (.CI(\int_c_reg[27]_i_1_n_0 ),
        .CO({\NLW_int_c_reg[31]_i_1_CO_UNCONNECTED [3],\int_c_reg[31]_i_1_n_1 ,\int_c_reg[31]_i_1_n_2 ,\int_c_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,b[30:28]}),
        .O(c[31:28]),
        .S({\int_c[31]_i_2_n_0 ,\int_c[31]_i_3_n_0 ,\int_c[31]_i_4_n_0 ,\int_c[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[3]),
        .Q(int_c[3]),
        .R(ARESET));
  CARRY4 \int_c_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\int_c_reg[3]_i_1_n_0 ,\int_c_reg[3]_i_1_n_1 ,\int_c_reg[3]_i_1_n_2 ,\int_c_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({b[3:1],1'b0}),
        .O(c[3:0]),
        .S({\int_c[3]_i_2_n_0 ,\int_c[3]_i_3_n_0 ,\int_c[3]_i_4_n_0 ,b[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[4]),
        .Q(int_c[4]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[5]),
        .Q(int_c[5]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[6]),
        .Q(int_c[6]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[7]),
        .Q(int_c[7]),
        .R(ARESET));
  CARRY4 \int_c_reg[7]_i_1 
       (.CI(\int_c_reg[3]_i_1_n_0 ),
        .CO({\int_c_reg[7]_i_1_n_0 ,\int_c_reg[7]_i_1_n_1 ,\int_c_reg[7]_i_1_n_2 ,\int_c_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[7:4]),
        .O(c[7:4]),
        .S({\int_c[7]_i_2_n_0 ,\int_c[7]_i_3_n_0 ,\int_c[7]_i_4_n_0 ,\int_c[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[8]),
        .Q(int_c[8]),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(c[9]),
        .Q(int_c[9]),
        .R(ARESET));
  LUT6 #(
    .INIT(64'h33B8008800B80088)) 
    \rdata_data[0]_i_1 
       (.I0(\rdata_data[0]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[0]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[0]),
        .O(rdata_data[0]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \rdata_data[0]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[0]),
        .I1(int_c[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(int_c_ap_vld),
        .I4(s_axi_AXILiteS_ARADDR[1]),
        .I5(s_axi_AXILiteS_ARADDR[4]),
        .O(\rdata_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[10]_i_1 
       (.I0(\rdata_data[10]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[10]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[10]),
        .O(rdata_data[10]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[10]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[10]),
        .O(\rdata_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[11]_i_1 
       (.I0(\rdata_data[11]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[11]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[11]),
        .O(rdata_data[11]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[11]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[11]),
        .O(\rdata_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[12]_i_1 
       (.I0(\rdata_data[12]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[12]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[12]),
        .O(rdata_data[12]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[12]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[12]),
        .O(\rdata_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[13]_i_1 
       (.I0(\rdata_data[13]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[13]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[13]),
        .O(rdata_data[13]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[13]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[13]),
        .O(\rdata_data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[14]_i_1 
       (.I0(\rdata_data[14]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[14]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[14]),
        .O(rdata_data[14]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[14]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[14]),
        .O(\rdata_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[15]_i_1 
       (.I0(\rdata_data[15]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[15]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[15]),
        .O(rdata_data[15]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[15]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[15]),
        .O(\rdata_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[16]_i_1 
       (.I0(\rdata_data[16]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[16]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[16]),
        .O(rdata_data[16]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[16]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[16]),
        .O(\rdata_data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[17]_i_1 
       (.I0(\rdata_data[17]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[17]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[17]),
        .O(rdata_data[17]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[17]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[17]),
        .O(\rdata_data[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[18]_i_1 
       (.I0(\rdata_data[18]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[18]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[18]),
        .O(rdata_data[18]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[18]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[18]),
        .O(\rdata_data[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[19]_i_1 
       (.I0(\rdata_data[19]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[19]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[19]),
        .O(rdata_data[19]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[19]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[19]),
        .O(\rdata_data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[1]_i_1 
       (.I0(\rdata_data[1]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[1]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[1]),
        .O(rdata_data[1]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[1]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[1]),
        .O(\rdata_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[20]_i_1 
       (.I0(\rdata_data[20]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[20]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[20]),
        .O(rdata_data[20]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[20]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[20]),
        .O(\rdata_data[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[21]_i_1 
       (.I0(\rdata_data[21]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[21]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[21]),
        .O(rdata_data[21]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[21]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[21]),
        .O(\rdata_data[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[22]_i_1 
       (.I0(\rdata_data[22]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[22]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[22]),
        .O(rdata_data[22]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[22]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[22]),
        .O(\rdata_data[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[23]_i_1 
       (.I0(\rdata_data[23]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[23]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[23]),
        .O(rdata_data[23]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[23]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[23]),
        .O(\rdata_data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[24]_i_1 
       (.I0(\rdata_data[24]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[24]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[24]),
        .O(rdata_data[24]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[24]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[24]),
        .O(\rdata_data[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[25]_i_1 
       (.I0(\rdata_data[25]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[25]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[25]),
        .O(rdata_data[25]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[25]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[25]),
        .O(\rdata_data[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[26]_i_1 
       (.I0(\rdata_data[26]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[26]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[26]),
        .O(rdata_data[26]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[26]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[26]),
        .O(\rdata_data[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[27]_i_1 
       (.I0(\rdata_data[27]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[27]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[27]),
        .O(rdata_data[27]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[27]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[27]),
        .O(\rdata_data[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[28]_i_1 
       (.I0(\rdata_data[28]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[28]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[28]),
        .O(rdata_data[28]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[28]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[28]),
        .O(\rdata_data[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[29]_i_1 
       (.I0(\rdata_data[29]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[29]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[29]),
        .O(rdata_data[29]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[29]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[29]),
        .O(\rdata_data[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[2]_i_1 
       (.I0(\rdata_data[2]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[2]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[2]),
        .O(rdata_data[2]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[2]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[2]),
        .O(\rdata_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[30]_i_1 
       (.I0(\rdata_data[30]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[30]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[30]),
        .O(rdata_data[30]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[30]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[30]),
        .O(\rdata_data[30]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata_data[31]_i_1 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[31]_i_2 
       (.I0(\rdata_data[31]_i_3_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[31]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[31]),
        .O(rdata_data[31]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[31]_i_3 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[31]),
        .O(\rdata_data[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \rdata_data[31]_i_4 
       (.I0(s_axi_AXILiteS_ARADDR[0]),
        .I1(s_axi_AXILiteS_ARADDR[2]),
        .I2(s_axi_AXILiteS_ARADDR[1]),
        .I3(s_axi_AXILiteS_ARADDR[4]),
        .O(\rdata_data[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[3]_i_1 
       (.I0(\rdata_data[3]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[3]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[3]),
        .O(rdata_data[3]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[3]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[3]),
        .O(\rdata_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[4]_i_1 
       (.I0(\rdata_data[4]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[4]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[4]),
        .O(rdata_data[4]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[4]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[4]),
        .O(\rdata_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[5]_i_1 
       (.I0(\rdata_data[5]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[5]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[5]),
        .O(rdata_data[5]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[5]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[5]),
        .O(\rdata_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[6]_i_1 
       (.I0(\rdata_data[6]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[6]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[6]),
        .O(rdata_data[6]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[6]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[6]),
        .O(\rdata_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[7]_i_1 
       (.I0(\rdata_data[7]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[7]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[7]),
        .O(rdata_data[7]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[7]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[7]),
        .O(\rdata_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[8]_i_1 
       (.I0(\rdata_data[8]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[8]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[8]),
        .O(rdata_data[8]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[8]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[8]),
        .O(\rdata_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8888888B88888)) 
    \rdata_data[9]_i_1 
       (.I0(\rdata_data[9]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[5]),
        .I2(a[9]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(\rdata_data[31]_i_4_n_0 ),
        .I5(b[9]),
        .O(rdata_data[9]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \rdata_data[9]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[3]),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .I4(s_axi_AXILiteS_ARADDR[4]),
        .I5(int_c[9]),
        .O(\rdata_data[9]_i_2_n_0 ));
  FDRE \rdata_data_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[0]),
        .Q(s_axi_AXILiteS_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_data_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[10]),
        .Q(s_axi_AXILiteS_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_data_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[11]),
        .Q(s_axi_AXILiteS_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_data_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[12]),
        .Q(s_axi_AXILiteS_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_data_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[13]),
        .Q(s_axi_AXILiteS_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_data_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[14]),
        .Q(s_axi_AXILiteS_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_data_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[15]),
        .Q(s_axi_AXILiteS_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_data_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[16]),
        .Q(s_axi_AXILiteS_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_data_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[17]),
        .Q(s_axi_AXILiteS_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_data_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[18]),
        .Q(s_axi_AXILiteS_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_data_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[19]),
        .Q(s_axi_AXILiteS_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_data_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[1]),
        .Q(s_axi_AXILiteS_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_data_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[20]),
        .Q(s_axi_AXILiteS_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_data_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[21]),
        .Q(s_axi_AXILiteS_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_data_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[22]),
        .Q(s_axi_AXILiteS_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_data_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[23]),
        .Q(s_axi_AXILiteS_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_data_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[24]),
        .Q(s_axi_AXILiteS_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_data_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[25]),
        .Q(s_axi_AXILiteS_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_data_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[26]),
        .Q(s_axi_AXILiteS_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_data_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[27]),
        .Q(s_axi_AXILiteS_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_data_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[28]),
        .Q(s_axi_AXILiteS_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_data_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[29]),
        .Q(s_axi_AXILiteS_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_data_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[2]),
        .Q(s_axi_AXILiteS_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_data_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[30]),
        .Q(s_axi_AXILiteS_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_data_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[31]),
        .Q(s_axi_AXILiteS_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_data_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[3]),
        .Q(s_axi_AXILiteS_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_data_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[4]),
        .Q(s_axi_AXILiteS_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_data_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[5]),
        .Q(s_axi_AXILiteS_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_data_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[6]),
        .Q(s_axi_AXILiteS_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_data_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[7]),
        .Q(s_axi_AXILiteS_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_data_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[8]),
        .Q(s_axi_AXILiteS_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_data_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata_data[9]),
        .Q(s_axi_AXILiteS_RDATA[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[5]_i_1 
       (.I0(s_axi_AXILiteS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_add_0_0,add,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "add,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_add_0_1
   (s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_BRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    ap_clk,
    ap_rst_n);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s_axi_AXILiteS_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID" *) input s_axi_AXILiteS_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY" *) output s_axi_AXILiteS_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA" *) input [31:0]s_axi_AXILiteS_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB" *) input [3:0]s_axi_AXILiteS_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID" *) input s_axi_AXILiteS_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY" *) output s_axi_AXILiteS_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP" *) output [1:0]s_axi_AXILiteS_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID" *) output s_axi_AXILiteS_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY" *) input s_axi_AXILiteS_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR" *) input [5:0]s_axi_AXILiteS_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID" *) input s_axi_AXILiteS_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY" *) output s_axi_AXILiteS_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA" *) output [31:0]s_axi_AXILiteS_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP" *) output [1:0]s_axi_AXILiteS_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID" *) output s_axi_AXILiteS_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY" *) input s_axi_AXILiteS_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXILiteS, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;

  wire ap_clk;
  wire ap_rst_n;
  wire [5:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [5:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire [1:0]s_axi_AXILiteS_BRESP;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire [1:0]s_axi_AXILiteS_RRESP;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;

  (* C_S_AXI_AXILITES_ADDR_WIDTH = "6" *) 
  (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) 
  design_1_add_0_1_add U0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
        .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID));
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
