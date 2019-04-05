// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Mar 26 04:43:28 2019
// Host        : DESKTOP-GD2UNUH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_ila_0_0/hdmi_ila_0_0_stub.v
// Design      : hdmi_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2018.2" *)
module hdmi_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[4:0],probe1[0:0],probe2[31:0],probe3[31:0],probe4[31:0],probe5[0:0]" */;
  input clk;
  input [4:0]probe0;
  input [0:0]probe1;
  input [31:0]probe2;
  input [31:0]probe3;
  input [31:0]probe4;
  input [0:0]probe5;
endmodule
