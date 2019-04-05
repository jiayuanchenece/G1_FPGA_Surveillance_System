// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Mar 26 12:46:01 2019
// Host        : DESKTOP-GD2UNUH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_motion_detection_0_0/hdmi_motion_detection_0_0_stub.v
// Design      : hdmi_motion_detection_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "motion_v1_0,Vivado 2018.2" *)
module hdmi_motion_detection_0_0(aclk, aresetn, S_AXI_AWADDR, S_AXI_AWVALID, 
  S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_WVALID, S_AXI_WREADY, S_AXI_BRESP, 
  S_AXI_BVALID, S_AXI_BREADY, S_AXI_ARADDR, S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, 
  S_AXI_RRESP, S_AXI_RVALID, S_AXI_RREADY, M_AXI_ARADDR, M_AXI_ARVALID, M_AXI_ARREADY, 
  M_AXI_RDATA, M_AXI_RRESP, M_AXI_RVALID, M_AXI_RREADY, M_AXI_AWADDR, M_AXI_AWVALID, 
  M_AXI_AWREADY, M_AXI_WDATA, M_AXI_WSTRB, M_AXI_WVALID, M_AXI_WREADY, M_AXI_BRESP, 
  M_AXI_BVALID, M_AXI_BREADY, S_AXI_TVALID, S_AXI_TLAST, S_AXI_TDATA, S_AXI_TKEEP, 
  S_AXI_TREADY, S_AXI_S2MM_TVALID, S_AXI_S2MM_TLAST, S_AXI_S2MM_TDATA, S_AXI_S2MM_TKEEP, 
  S_AXI_S2MM_TREADY, state, finish_read1, finish_read2, gray1, gray2, done, start1, start2, start3, 
  dma_base, motion_detected)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,S_AXI_AWADDR[31:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[31:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,M_AXI_ARADDR[31:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RDATA[31:0],M_AXI_RRESP[1:0],M_AXI_RVALID,M_AXI_RREADY,M_AXI_AWADDR[31:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WDATA[31:0],M_AXI_WSTRB[3:0],M_AXI_WVALID,M_AXI_WREADY,M_AXI_BRESP,M_AXI_BVALID,M_AXI_BREADY,S_AXI_TVALID,S_AXI_TLAST,S_AXI_TDATA[31:0],S_AXI_TKEEP[3:0],S_AXI_TREADY,S_AXI_S2MM_TVALID,S_AXI_S2MM_TLAST,S_AXI_S2MM_TDATA[31:0],S_AXI_S2MM_TKEEP[3:0],S_AXI_S2MM_TREADY,state[4:0],finish_read1,finish_read2,gray1[31:0],gray2[31:0],done,start1,start2,start3,dma_base[31:0],motion_detected" */;
  input aclk;
  input aresetn;
  input [31:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [31:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  output [31:0]M_AXI_ARADDR;
  output M_AXI_ARVALID;
  input M_AXI_ARREADY;
  input [31:0]M_AXI_RDATA;
  input [1:0]M_AXI_RRESP;
  input M_AXI_RVALID;
  output M_AXI_RREADY;
  output [31:0]M_AXI_AWADDR;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output [31:0]M_AXI_WDATA;
  output [3:0]M_AXI_WSTRB;
  output M_AXI_WVALID;
  input M_AXI_WREADY;
  input M_AXI_BRESP;
  input M_AXI_BVALID;
  output M_AXI_BREADY;
  input S_AXI_TVALID;
  input S_AXI_TLAST;
  input [31:0]S_AXI_TDATA;
  input [3:0]S_AXI_TKEEP;
  output S_AXI_TREADY;
  output S_AXI_S2MM_TVALID;
  output S_AXI_S2MM_TLAST;
  output [31:0]S_AXI_S2MM_TDATA;
  output [3:0]S_AXI_S2MM_TKEEP;
  input S_AXI_S2MM_TREADY;
  output [4:0]state;
  output finish_read1;
  output finish_read2;
  output [31:0]gray1;
  output [31:0]gray2;
  output done;
  output start1;
  output start2;
  output start3;
  output [31:0]dma_base;
  output motion_detected;
endmodule
