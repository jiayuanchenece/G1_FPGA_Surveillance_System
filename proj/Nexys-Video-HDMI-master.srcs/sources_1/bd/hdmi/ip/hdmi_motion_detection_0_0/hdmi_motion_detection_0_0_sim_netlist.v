// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Mar 26 12:46:01 2019
// Host        : DESKTOP-GD2UNUH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_motion_detection_0_0/hdmi_motion_detection_0_0_sim_netlist.v
// Design      : hdmi_motion_detection_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hdmi_motion_detection_0_0,motion_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "motion_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module hdmi_motion_detection_0_0
   (aclk,
    aresetn,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    M_AXI_ARADDR,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RVALID,
    M_AXI_RREADY,
    M_AXI_AWADDR,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_BREADY,
    S_AXI_TVALID,
    S_AXI_TLAST,
    S_AXI_TDATA,
    S_AXI_TKEEP,
    S_AXI_TREADY,
    S_AXI_S2MM_TVALID,
    S_AXI_S2MM_TLAST,
    S_AXI_S2MM_TDATA,
    S_AXI_S2MM_TKEEP,
    S_AXI_S2MM_TREADY,
    state,
    finish_read1,
    finish_read2,
    gray1,
    gray2,
    done,
    start1,
    start2,
    start3,
    dma_base,
    motion_detected);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXI:M_AXI:S_AXI_LITE:S2MM_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) input [31:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [31:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input S_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]M_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output M_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input M_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]M_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]M_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input M_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output M_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]M_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]M_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]M_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input M_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output M_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXI TVALID" *) input S_AXI_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXI TLAST" *) input S_AXI_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXI TDATA" *) input [31:0]S_AXI_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXI TKEEP" *) input [3:0]S_AXI_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXI TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk, LAYERED_METADATA undef" *) output S_AXI_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S2MM_AXIS TVALID" *) output S_AXI_S2MM_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S2MM_AXIS TLAST" *) output S_AXI_S2MM_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S2MM_AXIS TDATA" *) output [31:0]S_AXI_S2MM_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S2MM_AXIS TKEEP" *) output [3:0]S_AXI_S2MM_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S2MM_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S2MM_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk, LAYERED_METADATA undef" *) input S_AXI_S2MM_TREADY;
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

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]M_AXI_AWADDR;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_WDATA;
  wire M_AXI_WREADY;
  wire [3:3]\^M_AXI_WSTRB ;
  wire M_AXI_WVALID;
  wire [31:0]S_AXI_ARADDR;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [31:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:31]\^S_AXI_S2MM_TDATA ;
  wire S_AXI_S2MM_TREADY;
  wire [31:0]S_AXI_TDATA;
  wire S_AXI_TLAST;
  wire S_AXI_TREADY;
  wire S_AXI_TVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire aclk;
  wire aresetn;
  wire [31:0]dma_base;
  wire done;
  wire finish_read1;
  wire finish_read2;
  wire [31:0]gray1;
  wire [31:0]gray2;
  wire motion_detected;
  wire start1;
  wire start2;
  wire start3;
  wire [4:0]state;

  assign M_AXI_WSTRB[3] = \^M_AXI_WSTRB [3];
  assign M_AXI_WSTRB[2] = \^M_AXI_WSTRB [3];
  assign M_AXI_WSTRB[1] = \^M_AXI_WSTRB [3];
  assign M_AXI_WSTRB[0] = \^M_AXI_WSTRB [3];
  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign S_AXI_S2MM_TDATA[31] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[30] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[29] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[28] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[27] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[26] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[25] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[24] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[23] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[22] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[21] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[20] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[19] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[18] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[17] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[16] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[15] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[14] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[13] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[12] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[11] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[10] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[9] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[8] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[7] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[6] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[5] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[4] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[3] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[2] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[1] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TDATA[0] = \^S_AXI_S2MM_TDATA [31];
  assign S_AXI_S2MM_TKEEP[3] = \<const1> ;
  assign S_AXI_S2MM_TKEEP[2] = \<const1> ;
  assign S_AXI_S2MM_TKEEP[1] = \<const1> ;
  assign S_AXI_S2MM_TKEEP[0] = \<const1> ;
  assign S_AXI_S2MM_TLAST = \<const0> ;
  assign S_AXI_S2MM_TVALID = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  hdmi_motion_detection_0_0_motion_v1_0 inst
       (.M_AXI_AWADDR(M_AXI_AWADDR),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_AWVALID(M_AXI_AWVALID),
        .M_AXI_BREADY(M_AXI_BREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WDATA(M_AXI_WDATA),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WSTRB(\^M_AXI_WSTRB ),
        .M_AXI_WVALID(M_AXI_WVALID),
        .Q(state),
        .S_AXI_ARADDR(S_AXI_ARADDR[5:2]),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[5:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_S2MM_TDATA(\^S_AXI_S2MM_TDATA ),
        .S_AXI_S2MM_TREADY(S_AXI_S2MM_TREADY),
        .S_AXI_TDATA({S_AXI_TDATA[31:25],S_AXI_TDATA[23:17],S_AXI_TDATA[15:9],S_AXI_TDATA[7:1]}),
        .S_AXI_TLAST(S_AXI_TLAST),
        .S_AXI_TREADY(S_AXI_TREADY),
        .S_AXI_TVALID(S_AXI_TVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .aclk(aclk),
        .aresetn(aresetn),
        .dma_base(dma_base),
        .done(done),
        .finish_read1(finish_read1),
        .finish_read2(finish_read2),
        .\gray1[31] (gray1),
        .\gray2[31] (gray2),
        .motion_detected(motion_detected),
        .start1(start1),
        .start2(start2),
        .start3(start3));
endmodule

(* ORIG_REF_NAME = "motion_v1_0" *) 
module hdmi_motion_detection_0_0_motion_v1_0
   (Q,
    S_AXI_TREADY,
    finish_read1,
    finish_read2,
    motion_detected,
    start3,
    start2,
    start1,
    \gray2[31] ,
    \gray1[31] ,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    done,
    dma_base,
    M_AXI_BREADY,
    M_AXI_WVALID,
    M_AXI_WDATA,
    M_AXI_AWVALID,
    M_AXI_AWADDR,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_RVALID,
    M_AXI_WSTRB,
    S_AXI_BVALID,
    S_AXI_S2MM_TDATA,
    S_AXI_TVALID,
    aresetn,
    S_AXI_WSTRB,
    S_AXI_TDATA,
    aclk,
    S_AXI_S2MM_TREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    M_AXI_AWREADY,
    M_AXI_WREADY,
    M_AXI_BVALID,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    S_AXI_TLAST,
    S_AXI_ARVALID,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output [4:0]Q;
  output S_AXI_TREADY;
  output finish_read1;
  output finish_read2;
  output motion_detected;
  output start3;
  output start2;
  output start1;
  output [31:0]\gray2[31] ;
  output [31:0]\gray1[31] ;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output done;
  output [31:0]dma_base;
  output M_AXI_BREADY;
  output M_AXI_WVALID;
  output [31:0]M_AXI_WDATA;
  output M_AXI_AWVALID;
  output [31:0]M_AXI_AWADDR;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_RVALID;
  output [0:0]M_AXI_WSTRB;
  output S_AXI_BVALID;
  output [0:0]S_AXI_S2MM_TDATA;
  input S_AXI_TVALID;
  input aresetn;
  input [3:0]S_AXI_WSTRB;
  input [27:0]S_AXI_TDATA;
  input aclk;
  input S_AXI_S2MM_TREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input M_AXI_AWREADY;
  input M_AXI_WREADY;
  input M_AXI_BVALID;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_ARADDR;
  input [3:0]S_AXI_AWADDR;
  input S_AXI_TLAST;
  input S_AXI_ARVALID;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire [31:0]M_AXI_AWADDR;
  wire \M_AXI_AWADDR[6]_i_4_n_0 ;
  wire \M_AXI_AWADDR[6]_i_5_n_0 ;
  wire \M_AXI_AWADDR[6]_i_6_n_0 ;
  wire \M_AXI_AWADDR[6]_i_7_n_0 ;
  wire \M_AXI_AWADDR[6]_i_8_n_0 ;
  wire \M_AXI_AWADDR[6]_i_9_n_0 ;
  wire \M_AXI_AWADDR_reg[10]_i_2_n_0 ;
  wire \M_AXI_AWADDR_reg[10]_i_2_n_1 ;
  wire \M_AXI_AWADDR_reg[10]_i_2_n_2 ;
  wire \M_AXI_AWADDR_reg[10]_i_2_n_3 ;
  wire \M_AXI_AWADDR_reg[10]_i_3_n_0 ;
  wire \M_AXI_AWADDR_reg[10]_i_3_n_1 ;
  wire \M_AXI_AWADDR_reg[10]_i_3_n_2 ;
  wire \M_AXI_AWADDR_reg[10]_i_3_n_3 ;
  wire \M_AXI_AWADDR_reg[14]_i_2_n_0 ;
  wire \M_AXI_AWADDR_reg[14]_i_2_n_1 ;
  wire \M_AXI_AWADDR_reg[14]_i_2_n_2 ;
  wire \M_AXI_AWADDR_reg[14]_i_2_n_3 ;
  wire \M_AXI_AWADDR_reg[14]_i_3_n_0 ;
  wire \M_AXI_AWADDR_reg[14]_i_3_n_1 ;
  wire \M_AXI_AWADDR_reg[14]_i_3_n_2 ;
  wire \M_AXI_AWADDR_reg[14]_i_3_n_3 ;
  wire \M_AXI_AWADDR_reg[18]_i_2_n_0 ;
  wire \M_AXI_AWADDR_reg[18]_i_2_n_1 ;
  wire \M_AXI_AWADDR_reg[18]_i_2_n_2 ;
  wire \M_AXI_AWADDR_reg[18]_i_2_n_3 ;
  wire \M_AXI_AWADDR_reg[18]_i_3_n_0 ;
  wire \M_AXI_AWADDR_reg[18]_i_3_n_1 ;
  wire \M_AXI_AWADDR_reg[18]_i_3_n_2 ;
  wire \M_AXI_AWADDR_reg[18]_i_3_n_3 ;
  wire \M_AXI_AWADDR_reg[22]_i_2_n_0 ;
  wire \M_AXI_AWADDR_reg[22]_i_2_n_1 ;
  wire \M_AXI_AWADDR_reg[22]_i_2_n_2 ;
  wire \M_AXI_AWADDR_reg[22]_i_2_n_3 ;
  wire \M_AXI_AWADDR_reg[22]_i_3_n_0 ;
  wire \M_AXI_AWADDR_reg[22]_i_3_n_1 ;
  wire \M_AXI_AWADDR_reg[22]_i_3_n_2 ;
  wire \M_AXI_AWADDR_reg[22]_i_3_n_3 ;
  wire \M_AXI_AWADDR_reg[26]_i_2_n_0 ;
  wire \M_AXI_AWADDR_reg[26]_i_2_n_1 ;
  wire \M_AXI_AWADDR_reg[26]_i_2_n_2 ;
  wire \M_AXI_AWADDR_reg[26]_i_2_n_3 ;
  wire \M_AXI_AWADDR_reg[26]_i_3_n_0 ;
  wire \M_AXI_AWADDR_reg[26]_i_3_n_1 ;
  wire \M_AXI_AWADDR_reg[26]_i_3_n_2 ;
  wire \M_AXI_AWADDR_reg[26]_i_3_n_3 ;
  wire \M_AXI_AWADDR_reg[30]_i_2_n_0 ;
  wire \M_AXI_AWADDR_reg[30]_i_2_n_1 ;
  wire \M_AXI_AWADDR_reg[30]_i_2_n_2 ;
  wire \M_AXI_AWADDR_reg[30]_i_2_n_3 ;
  wire \M_AXI_AWADDR_reg[30]_i_3_n_0 ;
  wire \M_AXI_AWADDR_reg[30]_i_3_n_1 ;
  wire \M_AXI_AWADDR_reg[30]_i_3_n_2 ;
  wire \M_AXI_AWADDR_reg[30]_i_3_n_3 ;
  wire \M_AXI_AWADDR_reg[6]_i_2_n_0 ;
  wire \M_AXI_AWADDR_reg[6]_i_2_n_1 ;
  wire \M_AXI_AWADDR_reg[6]_i_2_n_2 ;
  wire \M_AXI_AWADDR_reg[6]_i_2_n_3 ;
  wire \M_AXI_AWADDR_reg[6]_i_3_n_0 ;
  wire \M_AXI_AWADDR_reg[6]_i_3_n_1 ;
  wire \M_AXI_AWADDR_reg[6]_i_3_n_2 ;
  wire \M_AXI_AWADDR_reg[6]_i_3_n_3 ;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_WDATA;
  wire \M_AXI_WDATA[0]_i_2_n_0 ;
  wire \M_AXI_WDATA[10]_i_1_n_0 ;
  wire \M_AXI_WDATA[11]_i_1_n_0 ;
  wire \M_AXI_WDATA[12]_i_2_n_0 ;
  wire \M_AXI_WDATA[13]_i_1_n_0 ;
  wire \M_AXI_WDATA[14]_i_1_n_0 ;
  wire \M_AXI_WDATA[15]_i_1_n_0 ;
  wire \M_AXI_WDATA[16]_i_1_n_0 ;
  wire \M_AXI_WDATA[17]_i_2_n_0 ;
  wire \M_AXI_WDATA[18]_i_2_n_0 ;
  wire \M_AXI_WDATA[19]_i_2_n_0 ;
  wire \M_AXI_WDATA[1]_i_1_n_0 ;
  wire \M_AXI_WDATA[20]_i_1_n_0 ;
  wire \M_AXI_WDATA[21]_i_1_n_0 ;
  wire \M_AXI_WDATA[22]_i_1_n_0 ;
  wire \M_AXI_WDATA[23]_i_1_n_0 ;
  wire \M_AXI_WDATA[24]_i_1_n_0 ;
  wire \M_AXI_WDATA[25]_i_1_n_0 ;
  wire \M_AXI_WDATA[26]_i_1_n_0 ;
  wire \M_AXI_WDATA[27]_i_1_n_0 ;
  wire \M_AXI_WDATA[28]_i_1_n_0 ;
  wire \M_AXI_WDATA[29]_i_1_n_0 ;
  wire \M_AXI_WDATA[2]_i_5_n_0 ;
  wire \M_AXI_WDATA[30]_i_1_n_0 ;
  wire \M_AXI_WDATA[31]_i_2_n_0 ;
  wire \M_AXI_WDATA[3]_i_1_n_0 ;
  wire \M_AXI_WDATA[4]_i_1_n_0 ;
  wire \M_AXI_WDATA[5]_i_1_n_0 ;
  wire \M_AXI_WDATA[6]_i_1_n_0 ;
  wire \M_AXI_WDATA[7]_i_1_n_0 ;
  wire \M_AXI_WDATA[8]_i_1_n_0 ;
  wire \M_AXI_WDATA[9]_i_1_n_0 ;
  wire M_AXI_WREADY;
  wire [0:0]M_AXI_WSTRB;
  wire M_AXI_WVALID;
  wire M_AXI_WVALID_i_3_n_0;
  wire [4:0]Q;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [0:0]S_AXI_S2MM_TDATA;
  wire \S_AXI_S2MM_TDATA[31]_i_11_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_12_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_13_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_14_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_16_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_17_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_18_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_19_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_1_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_20_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_21_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_22_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_23_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_6_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_7_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_8_n_0 ;
  wire \S_AXI_S2MM_TDATA[31]_i_9_n_0 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_10_n_0 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_10_n_1 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_10_n_2 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_10_n_3 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_15_n_0 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_15_n_1 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_15_n_2 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_15_n_3 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_4_n_0 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_4_n_1 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_4_n_2 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_4_n_3 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_5_n_0 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_5_n_1 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_5_n_2 ;
  wire \S_AXI_S2MM_TDATA_reg[31]_i_5_n_3 ;
  wire S_AXI_S2MM_TREADY;
  wire [27:0]S_AXI_TDATA;
  wire S_AXI_TLAST;
  wire S_AXI_TREADY;
  wire S_AXI_TVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire aclk;
  wire [31:3]addr0;
  wire [31:4]addr02_out;
  wire aresetn;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [5:2]axi_araddr;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire \clearDelay2[0]_i_3_n_0 ;
  wire [31:0]clearDelay2_reg;
  wire \clearDelay2_reg[0]_i_2_n_0 ;
  wire \clearDelay2_reg[0]_i_2_n_1 ;
  wire \clearDelay2_reg[0]_i_2_n_2 ;
  wire \clearDelay2_reg[0]_i_2_n_3 ;
  wire \clearDelay2_reg[0]_i_2_n_4 ;
  wire \clearDelay2_reg[0]_i_2_n_5 ;
  wire \clearDelay2_reg[0]_i_2_n_6 ;
  wire \clearDelay2_reg[0]_i_2_n_7 ;
  wire \clearDelay2_reg[12]_i_1_n_0 ;
  wire \clearDelay2_reg[12]_i_1_n_1 ;
  wire \clearDelay2_reg[12]_i_1_n_2 ;
  wire \clearDelay2_reg[12]_i_1_n_3 ;
  wire \clearDelay2_reg[12]_i_1_n_4 ;
  wire \clearDelay2_reg[12]_i_1_n_5 ;
  wire \clearDelay2_reg[12]_i_1_n_6 ;
  wire \clearDelay2_reg[12]_i_1_n_7 ;
  wire \clearDelay2_reg[16]_i_1_n_0 ;
  wire \clearDelay2_reg[16]_i_1_n_1 ;
  wire \clearDelay2_reg[16]_i_1_n_2 ;
  wire \clearDelay2_reg[16]_i_1_n_3 ;
  wire \clearDelay2_reg[16]_i_1_n_4 ;
  wire \clearDelay2_reg[16]_i_1_n_5 ;
  wire \clearDelay2_reg[16]_i_1_n_6 ;
  wire \clearDelay2_reg[16]_i_1_n_7 ;
  wire \clearDelay2_reg[20]_i_1_n_0 ;
  wire \clearDelay2_reg[20]_i_1_n_1 ;
  wire \clearDelay2_reg[20]_i_1_n_2 ;
  wire \clearDelay2_reg[20]_i_1_n_3 ;
  wire \clearDelay2_reg[20]_i_1_n_4 ;
  wire \clearDelay2_reg[20]_i_1_n_5 ;
  wire \clearDelay2_reg[20]_i_1_n_6 ;
  wire \clearDelay2_reg[20]_i_1_n_7 ;
  wire \clearDelay2_reg[24]_i_1_n_0 ;
  wire \clearDelay2_reg[24]_i_1_n_1 ;
  wire \clearDelay2_reg[24]_i_1_n_2 ;
  wire \clearDelay2_reg[24]_i_1_n_3 ;
  wire \clearDelay2_reg[24]_i_1_n_4 ;
  wire \clearDelay2_reg[24]_i_1_n_5 ;
  wire \clearDelay2_reg[24]_i_1_n_6 ;
  wire \clearDelay2_reg[24]_i_1_n_7 ;
  wire \clearDelay2_reg[28]_i_1_n_1 ;
  wire \clearDelay2_reg[28]_i_1_n_2 ;
  wire \clearDelay2_reg[28]_i_1_n_3 ;
  wire \clearDelay2_reg[28]_i_1_n_4 ;
  wire \clearDelay2_reg[28]_i_1_n_5 ;
  wire \clearDelay2_reg[28]_i_1_n_6 ;
  wire \clearDelay2_reg[28]_i_1_n_7 ;
  wire \clearDelay2_reg[4]_i_1_n_0 ;
  wire \clearDelay2_reg[4]_i_1_n_1 ;
  wire \clearDelay2_reg[4]_i_1_n_2 ;
  wire \clearDelay2_reg[4]_i_1_n_3 ;
  wire \clearDelay2_reg[4]_i_1_n_4 ;
  wire \clearDelay2_reg[4]_i_1_n_5 ;
  wire \clearDelay2_reg[4]_i_1_n_6 ;
  wire \clearDelay2_reg[4]_i_1_n_7 ;
  wire \clearDelay2_reg[8]_i_1_n_0 ;
  wire \clearDelay2_reg[8]_i_1_n_1 ;
  wire \clearDelay2_reg[8]_i_1_n_2 ;
  wire \clearDelay2_reg[8]_i_1_n_3 ;
  wire \clearDelay2_reg[8]_i_1_n_4 ;
  wire \clearDelay2_reg[8]_i_1_n_5 ;
  wire \clearDelay2_reg[8]_i_1_n_6 ;
  wire \clearDelay2_reg[8]_i_1_n_7 ;
  wire \clearDelay3[0]_i_1_n_0 ;
  wire \clearDelay3[0]_i_3_n_0 ;
  wire [31:4]clearDelay3_reg;
  wire \clearDelay3_reg[0]_i_2_n_0 ;
  wire \clearDelay3_reg[0]_i_2_n_1 ;
  wire \clearDelay3_reg[0]_i_2_n_2 ;
  wire \clearDelay3_reg[0]_i_2_n_3 ;
  wire \clearDelay3_reg[0]_i_2_n_4 ;
  wire \clearDelay3_reg[0]_i_2_n_5 ;
  wire \clearDelay3_reg[0]_i_2_n_6 ;
  wire \clearDelay3_reg[0]_i_2_n_7 ;
  wire \clearDelay3_reg[12]_i_1_n_0 ;
  wire \clearDelay3_reg[12]_i_1_n_1 ;
  wire \clearDelay3_reg[12]_i_1_n_2 ;
  wire \clearDelay3_reg[12]_i_1_n_3 ;
  wire \clearDelay3_reg[12]_i_1_n_4 ;
  wire \clearDelay3_reg[12]_i_1_n_5 ;
  wire \clearDelay3_reg[12]_i_1_n_6 ;
  wire \clearDelay3_reg[12]_i_1_n_7 ;
  wire \clearDelay3_reg[16]_i_1_n_0 ;
  wire \clearDelay3_reg[16]_i_1_n_1 ;
  wire \clearDelay3_reg[16]_i_1_n_2 ;
  wire \clearDelay3_reg[16]_i_1_n_3 ;
  wire \clearDelay3_reg[16]_i_1_n_4 ;
  wire \clearDelay3_reg[16]_i_1_n_5 ;
  wire \clearDelay3_reg[16]_i_1_n_6 ;
  wire \clearDelay3_reg[16]_i_1_n_7 ;
  wire \clearDelay3_reg[20]_i_1_n_0 ;
  wire \clearDelay3_reg[20]_i_1_n_1 ;
  wire \clearDelay3_reg[20]_i_1_n_2 ;
  wire \clearDelay3_reg[20]_i_1_n_3 ;
  wire \clearDelay3_reg[20]_i_1_n_4 ;
  wire \clearDelay3_reg[20]_i_1_n_5 ;
  wire \clearDelay3_reg[20]_i_1_n_6 ;
  wire \clearDelay3_reg[20]_i_1_n_7 ;
  wire \clearDelay3_reg[24]_i_1_n_0 ;
  wire \clearDelay3_reg[24]_i_1_n_1 ;
  wire \clearDelay3_reg[24]_i_1_n_2 ;
  wire \clearDelay3_reg[24]_i_1_n_3 ;
  wire \clearDelay3_reg[24]_i_1_n_4 ;
  wire \clearDelay3_reg[24]_i_1_n_5 ;
  wire \clearDelay3_reg[24]_i_1_n_6 ;
  wire \clearDelay3_reg[24]_i_1_n_7 ;
  wire \clearDelay3_reg[28]_i_1_n_1 ;
  wire \clearDelay3_reg[28]_i_1_n_2 ;
  wire \clearDelay3_reg[28]_i_1_n_3 ;
  wire \clearDelay3_reg[28]_i_1_n_4 ;
  wire \clearDelay3_reg[28]_i_1_n_5 ;
  wire \clearDelay3_reg[28]_i_1_n_6 ;
  wire \clearDelay3_reg[28]_i_1_n_7 ;
  wire \clearDelay3_reg[4]_i_1_n_0 ;
  wire \clearDelay3_reg[4]_i_1_n_1 ;
  wire \clearDelay3_reg[4]_i_1_n_2 ;
  wire \clearDelay3_reg[4]_i_1_n_3 ;
  wire \clearDelay3_reg[4]_i_1_n_4 ;
  wire \clearDelay3_reg[4]_i_1_n_5 ;
  wire \clearDelay3_reg[4]_i_1_n_6 ;
  wire \clearDelay3_reg[4]_i_1_n_7 ;
  wire \clearDelay3_reg[8]_i_1_n_0 ;
  wire \clearDelay3_reg[8]_i_1_n_1 ;
  wire \clearDelay3_reg[8]_i_1_n_2 ;
  wire \clearDelay3_reg[8]_i_1_n_3 ;
  wire \clearDelay3_reg[8]_i_1_n_4 ;
  wire \clearDelay3_reg[8]_i_1_n_5 ;
  wire \clearDelay3_reg[8]_i_1_n_6 ;
  wire \clearDelay3_reg[8]_i_1_n_7 ;
  wire \clearDelay3_reg_n_0_[0] ;
  wire \clearDelay3_reg_n_0_[1] ;
  wire \clearDelay3_reg_n_0_[2] ;
  wire \clearDelay3_reg_n_0_[3] ;
  wire \clearDelay4[0]_i_1_n_0 ;
  wire \clearDelay4[0]_i_3_n_0 ;
  wire [31:0]clearDelay4_reg;
  wire \clearDelay4_reg[0]_i_2_n_0 ;
  wire \clearDelay4_reg[0]_i_2_n_1 ;
  wire \clearDelay4_reg[0]_i_2_n_2 ;
  wire \clearDelay4_reg[0]_i_2_n_3 ;
  wire \clearDelay4_reg[0]_i_2_n_4 ;
  wire \clearDelay4_reg[0]_i_2_n_5 ;
  wire \clearDelay4_reg[0]_i_2_n_6 ;
  wire \clearDelay4_reg[0]_i_2_n_7 ;
  wire \clearDelay4_reg[12]_i_1_n_0 ;
  wire \clearDelay4_reg[12]_i_1_n_1 ;
  wire \clearDelay4_reg[12]_i_1_n_2 ;
  wire \clearDelay4_reg[12]_i_1_n_3 ;
  wire \clearDelay4_reg[12]_i_1_n_4 ;
  wire \clearDelay4_reg[12]_i_1_n_5 ;
  wire \clearDelay4_reg[12]_i_1_n_6 ;
  wire \clearDelay4_reg[12]_i_1_n_7 ;
  wire \clearDelay4_reg[16]_i_1_n_0 ;
  wire \clearDelay4_reg[16]_i_1_n_1 ;
  wire \clearDelay4_reg[16]_i_1_n_2 ;
  wire \clearDelay4_reg[16]_i_1_n_3 ;
  wire \clearDelay4_reg[16]_i_1_n_4 ;
  wire \clearDelay4_reg[16]_i_1_n_5 ;
  wire \clearDelay4_reg[16]_i_1_n_6 ;
  wire \clearDelay4_reg[16]_i_1_n_7 ;
  wire \clearDelay4_reg[20]_i_1_n_0 ;
  wire \clearDelay4_reg[20]_i_1_n_1 ;
  wire \clearDelay4_reg[20]_i_1_n_2 ;
  wire \clearDelay4_reg[20]_i_1_n_3 ;
  wire \clearDelay4_reg[20]_i_1_n_4 ;
  wire \clearDelay4_reg[20]_i_1_n_5 ;
  wire \clearDelay4_reg[20]_i_1_n_6 ;
  wire \clearDelay4_reg[20]_i_1_n_7 ;
  wire \clearDelay4_reg[24]_i_1_n_0 ;
  wire \clearDelay4_reg[24]_i_1_n_1 ;
  wire \clearDelay4_reg[24]_i_1_n_2 ;
  wire \clearDelay4_reg[24]_i_1_n_3 ;
  wire \clearDelay4_reg[24]_i_1_n_4 ;
  wire \clearDelay4_reg[24]_i_1_n_5 ;
  wire \clearDelay4_reg[24]_i_1_n_6 ;
  wire \clearDelay4_reg[24]_i_1_n_7 ;
  wire \clearDelay4_reg[28]_i_1_n_1 ;
  wire \clearDelay4_reg[28]_i_1_n_2 ;
  wire \clearDelay4_reg[28]_i_1_n_3 ;
  wire \clearDelay4_reg[28]_i_1_n_4 ;
  wire \clearDelay4_reg[28]_i_1_n_5 ;
  wire \clearDelay4_reg[28]_i_1_n_6 ;
  wire \clearDelay4_reg[28]_i_1_n_7 ;
  wire \clearDelay4_reg[4]_i_1_n_0 ;
  wire \clearDelay4_reg[4]_i_1_n_1 ;
  wire \clearDelay4_reg[4]_i_1_n_2 ;
  wire \clearDelay4_reg[4]_i_1_n_3 ;
  wire \clearDelay4_reg[4]_i_1_n_4 ;
  wire \clearDelay4_reg[4]_i_1_n_5 ;
  wire \clearDelay4_reg[4]_i_1_n_6 ;
  wire \clearDelay4_reg[4]_i_1_n_7 ;
  wire \clearDelay4_reg[8]_i_1_n_0 ;
  wire \clearDelay4_reg[8]_i_1_n_1 ;
  wire \clearDelay4_reg[8]_i_1_n_2 ;
  wire \clearDelay4_reg[8]_i_1_n_3 ;
  wire \clearDelay4_reg[8]_i_1_n_4 ;
  wire \clearDelay4_reg[8]_i_1_n_5 ;
  wire \clearDelay4_reg[8]_i_1_n_6 ;
  wire \clearDelay4_reg[8]_i_1_n_7 ;
  wire \clearDelay[0]_i_3_n_0 ;
  wire [31:4]clearDelay_reg;
  wire \clearDelay_reg[0]_i_2_n_0 ;
  wire \clearDelay_reg[0]_i_2_n_1 ;
  wire \clearDelay_reg[0]_i_2_n_2 ;
  wire \clearDelay_reg[0]_i_2_n_3 ;
  wire \clearDelay_reg[0]_i_2_n_4 ;
  wire \clearDelay_reg[0]_i_2_n_5 ;
  wire \clearDelay_reg[0]_i_2_n_6 ;
  wire \clearDelay_reg[0]_i_2_n_7 ;
  wire \clearDelay_reg[12]_i_1_n_0 ;
  wire \clearDelay_reg[12]_i_1_n_1 ;
  wire \clearDelay_reg[12]_i_1_n_2 ;
  wire \clearDelay_reg[12]_i_1_n_3 ;
  wire \clearDelay_reg[12]_i_1_n_4 ;
  wire \clearDelay_reg[12]_i_1_n_5 ;
  wire \clearDelay_reg[12]_i_1_n_6 ;
  wire \clearDelay_reg[12]_i_1_n_7 ;
  wire \clearDelay_reg[16]_i_1_n_0 ;
  wire \clearDelay_reg[16]_i_1_n_1 ;
  wire \clearDelay_reg[16]_i_1_n_2 ;
  wire \clearDelay_reg[16]_i_1_n_3 ;
  wire \clearDelay_reg[16]_i_1_n_4 ;
  wire \clearDelay_reg[16]_i_1_n_5 ;
  wire \clearDelay_reg[16]_i_1_n_6 ;
  wire \clearDelay_reg[16]_i_1_n_7 ;
  wire \clearDelay_reg[20]_i_1_n_0 ;
  wire \clearDelay_reg[20]_i_1_n_1 ;
  wire \clearDelay_reg[20]_i_1_n_2 ;
  wire \clearDelay_reg[20]_i_1_n_3 ;
  wire \clearDelay_reg[20]_i_1_n_4 ;
  wire \clearDelay_reg[20]_i_1_n_5 ;
  wire \clearDelay_reg[20]_i_1_n_6 ;
  wire \clearDelay_reg[20]_i_1_n_7 ;
  wire \clearDelay_reg[24]_i_1_n_0 ;
  wire \clearDelay_reg[24]_i_1_n_1 ;
  wire \clearDelay_reg[24]_i_1_n_2 ;
  wire \clearDelay_reg[24]_i_1_n_3 ;
  wire \clearDelay_reg[24]_i_1_n_4 ;
  wire \clearDelay_reg[24]_i_1_n_5 ;
  wire \clearDelay_reg[24]_i_1_n_6 ;
  wire \clearDelay_reg[24]_i_1_n_7 ;
  wire \clearDelay_reg[28]_i_1_n_1 ;
  wire \clearDelay_reg[28]_i_1_n_2 ;
  wire \clearDelay_reg[28]_i_1_n_3 ;
  wire \clearDelay_reg[28]_i_1_n_4 ;
  wire \clearDelay_reg[28]_i_1_n_5 ;
  wire \clearDelay_reg[28]_i_1_n_6 ;
  wire \clearDelay_reg[28]_i_1_n_7 ;
  wire \clearDelay_reg[4]_i_1_n_0 ;
  wire \clearDelay_reg[4]_i_1_n_1 ;
  wire \clearDelay_reg[4]_i_1_n_2 ;
  wire \clearDelay_reg[4]_i_1_n_3 ;
  wire \clearDelay_reg[4]_i_1_n_4 ;
  wire \clearDelay_reg[4]_i_1_n_5 ;
  wire \clearDelay_reg[4]_i_1_n_6 ;
  wire \clearDelay_reg[4]_i_1_n_7 ;
  wire \clearDelay_reg[8]_i_1_n_0 ;
  wire \clearDelay_reg[8]_i_1_n_1 ;
  wire \clearDelay_reg[8]_i_1_n_2 ;
  wire \clearDelay_reg[8]_i_1_n_3 ;
  wire \clearDelay_reg[8]_i_1_n_4 ;
  wire \clearDelay_reg[8]_i_1_n_5 ;
  wire \clearDelay_reg[8]_i_1_n_6 ;
  wire \clearDelay_reg[8]_i_1_n_7 ;
  wire \clearDelay_reg_n_0_[0] ;
  wire \clearDelay_reg_n_0_[1] ;
  wire \clearDelay_reg_n_0_[2] ;
  wire \clearDelay_reg_n_0_[3] ;
  wire clear_awvalid;
  wire clear_awvalid2;
  wire clear_awvalid3;
  wire clear_bready;
  wire clear_bready2;
  wire clear_bready3;
  wire clear_bready4;
  wire clear_wvalid;
  wire clear_wvalid2;
  wire clear_wvalid3;
  wire [4:0]column_count;
  wire \column_count[4]_i_1_n_0 ;
  wire \column_count[4]_i_3_n_0 ;
  wire \column_count_reg_n_0_[0] ;
  wire \column_count_reg_n_0_[1] ;
  wire \column_count_reg_n_0_[2] ;
  wire \column_count_reg_n_0_[3] ;
  wire \column_count_reg_n_0_[4] ;
  wire [1:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire [31:3]data0;
  wire \delayCounter[0]_i_1_n_0 ;
  wire \delayCounter[0]_i_3_n_0 ;
  wire [31:0]delayCounter_reg;
  wire \delayCounter_reg[0]_i_2_n_0 ;
  wire \delayCounter_reg[0]_i_2_n_1 ;
  wire \delayCounter_reg[0]_i_2_n_2 ;
  wire \delayCounter_reg[0]_i_2_n_3 ;
  wire \delayCounter_reg[0]_i_2_n_4 ;
  wire \delayCounter_reg[0]_i_2_n_5 ;
  wire \delayCounter_reg[0]_i_2_n_6 ;
  wire \delayCounter_reg[0]_i_2_n_7 ;
  wire \delayCounter_reg[12]_i_1_n_0 ;
  wire \delayCounter_reg[12]_i_1_n_1 ;
  wire \delayCounter_reg[12]_i_1_n_2 ;
  wire \delayCounter_reg[12]_i_1_n_3 ;
  wire \delayCounter_reg[12]_i_1_n_4 ;
  wire \delayCounter_reg[12]_i_1_n_5 ;
  wire \delayCounter_reg[12]_i_1_n_6 ;
  wire \delayCounter_reg[12]_i_1_n_7 ;
  wire \delayCounter_reg[16]_i_1_n_0 ;
  wire \delayCounter_reg[16]_i_1_n_1 ;
  wire \delayCounter_reg[16]_i_1_n_2 ;
  wire \delayCounter_reg[16]_i_1_n_3 ;
  wire \delayCounter_reg[16]_i_1_n_4 ;
  wire \delayCounter_reg[16]_i_1_n_5 ;
  wire \delayCounter_reg[16]_i_1_n_6 ;
  wire \delayCounter_reg[16]_i_1_n_7 ;
  wire \delayCounter_reg[20]_i_1_n_0 ;
  wire \delayCounter_reg[20]_i_1_n_1 ;
  wire \delayCounter_reg[20]_i_1_n_2 ;
  wire \delayCounter_reg[20]_i_1_n_3 ;
  wire \delayCounter_reg[20]_i_1_n_4 ;
  wire \delayCounter_reg[20]_i_1_n_5 ;
  wire \delayCounter_reg[20]_i_1_n_6 ;
  wire \delayCounter_reg[20]_i_1_n_7 ;
  wire \delayCounter_reg[24]_i_1_n_0 ;
  wire \delayCounter_reg[24]_i_1_n_1 ;
  wire \delayCounter_reg[24]_i_1_n_2 ;
  wire \delayCounter_reg[24]_i_1_n_3 ;
  wire \delayCounter_reg[24]_i_1_n_4 ;
  wire \delayCounter_reg[24]_i_1_n_5 ;
  wire \delayCounter_reg[24]_i_1_n_6 ;
  wire \delayCounter_reg[24]_i_1_n_7 ;
  wire \delayCounter_reg[28]_i_1_n_1 ;
  wire \delayCounter_reg[28]_i_1_n_2 ;
  wire \delayCounter_reg[28]_i_1_n_3 ;
  wire \delayCounter_reg[28]_i_1_n_4 ;
  wire \delayCounter_reg[28]_i_1_n_5 ;
  wire \delayCounter_reg[28]_i_1_n_6 ;
  wire \delayCounter_reg[28]_i_1_n_7 ;
  wire \delayCounter_reg[4]_i_1_n_0 ;
  wire \delayCounter_reg[4]_i_1_n_1 ;
  wire \delayCounter_reg[4]_i_1_n_2 ;
  wire \delayCounter_reg[4]_i_1_n_3 ;
  wire \delayCounter_reg[4]_i_1_n_4 ;
  wire \delayCounter_reg[4]_i_1_n_5 ;
  wire \delayCounter_reg[4]_i_1_n_6 ;
  wire \delayCounter_reg[4]_i_1_n_7 ;
  wire \delayCounter_reg[8]_i_1_n_0 ;
  wire \delayCounter_reg[8]_i_1_n_1 ;
  wire \delayCounter_reg[8]_i_1_n_2 ;
  wire \delayCounter_reg[8]_i_1_n_3 ;
  wire \delayCounter_reg[8]_i_1_n_4 ;
  wire \delayCounter_reg[8]_i_1_n_5 ;
  wire \delayCounter_reg[8]_i_1_n_6 ;
  wire \delayCounter_reg[8]_i_1_n_7 ;
  wire delay_S_AXI_TLAST;
  wire delay_S_AXI_TLAST_reg_n_0;
  wire delay_tvalid;
  wire [31:0]dma_base;
  wire \dma_init[31]_i_1_n_0 ;
  wire \dma_init[31]_i_3_n_0 ;
  wire \dma_init[6]_i_3_n_0 ;
  wire \dma_init[6]_i_4_n_0 ;
  wire \dma_init_reg[10]_i_2_n_0 ;
  wire \dma_init_reg[10]_i_2_n_1 ;
  wire \dma_init_reg[10]_i_2_n_2 ;
  wire \dma_init_reg[10]_i_2_n_3 ;
  wire \dma_init_reg[14]_i_2_n_0 ;
  wire \dma_init_reg[14]_i_2_n_1 ;
  wire \dma_init_reg[14]_i_2_n_2 ;
  wire \dma_init_reg[14]_i_2_n_3 ;
  wire \dma_init_reg[18]_i_2_n_0 ;
  wire \dma_init_reg[18]_i_2_n_1 ;
  wire \dma_init_reg[18]_i_2_n_2 ;
  wire \dma_init_reg[18]_i_2_n_3 ;
  wire \dma_init_reg[22]_i_2_n_0 ;
  wire \dma_init_reg[22]_i_2_n_1 ;
  wire \dma_init_reg[22]_i_2_n_2 ;
  wire \dma_init_reg[22]_i_2_n_3 ;
  wire \dma_init_reg[26]_i_2_n_0 ;
  wire \dma_init_reg[26]_i_2_n_1 ;
  wire \dma_init_reg[26]_i_2_n_2 ;
  wire \dma_init_reg[26]_i_2_n_3 ;
  wire \dma_init_reg[30]_i_2_n_0 ;
  wire \dma_init_reg[30]_i_2_n_1 ;
  wire \dma_init_reg[30]_i_2_n_2 ;
  wire \dma_init_reg[30]_i_2_n_3 ;
  wire \dma_init_reg[6]_i_2_n_0 ;
  wire \dma_init_reg[6]_i_2_n_1 ;
  wire \dma_init_reg[6]_i_2_n_2 ;
  wire \dma_init_reg[6]_i_2_n_3 ;
  wire done;
  wire finish_read1;
  wire finish_read2;
  wire finish_send;
  wire finish_send_i_1_n_0;
  wire finish_send_i_2_n_0;
  wire finish_send_i_3_n_0;
  wire finish_send_i_4_n_0;
  wire finish_send_i_5_n_0;
  wire finish_send_i_6_n_0;
  wire finish_send_i_7_n_0;
  wire finish_send_i_8_n_0;
  wire finish_send_i_9_n_0;
  wire gray10;
  wire \gray1[11]_i_100_n_0 ;
  wire \gray1[11]_i_101_n_0 ;
  wire \gray1[11]_i_102_n_0 ;
  wire \gray1[11]_i_103_n_0 ;
  wire \gray1[11]_i_104_n_0 ;
  wire \gray1[11]_i_105_n_0 ;
  wire \gray1[11]_i_106_n_0 ;
  wire \gray1[11]_i_107_n_0 ;
  wire \gray1[11]_i_108_n_0 ;
  wire \gray1[11]_i_109_n_0 ;
  wire \gray1[11]_i_10_n_0 ;
  wire \gray1[11]_i_110_n_0 ;
  wire \gray1[11]_i_111_n_0 ;
  wire \gray1[11]_i_112_n_0 ;
  wire \gray1[11]_i_113_n_0 ;
  wire \gray1[11]_i_114_n_0 ;
  wire \gray1[11]_i_115_n_0 ;
  wire \gray1[11]_i_116_n_0 ;
  wire \gray1[11]_i_117_n_0 ;
  wire \gray1[11]_i_118_n_0 ;
  wire \gray1[11]_i_119_n_0 ;
  wire \gray1[11]_i_11_n_0 ;
  wire \gray1[11]_i_120_n_0 ;
  wire \gray1[11]_i_121_n_0 ;
  wire \gray1[11]_i_122_n_0 ;
  wire \gray1[11]_i_123_n_0 ;
  wire \gray1[11]_i_124_n_0 ;
  wire \gray1[11]_i_125_n_0 ;
  wire \gray1[11]_i_12_n_0 ;
  wire \gray1[11]_i_13_n_0 ;
  wire \gray1[11]_i_17_n_0 ;
  wire \gray1[11]_i_20_n_0 ;
  wire \gray1[11]_i_21_n_0 ;
  wire \gray1[11]_i_22_n_0 ;
  wire \gray1[11]_i_23_n_0 ;
  wire \gray1[11]_i_24_n_0 ;
  wire \gray1[11]_i_25_n_0 ;
  wire \gray1[11]_i_26_n_0 ;
  wire \gray1[11]_i_27_n_0 ;
  wire \gray1[11]_i_28_n_0 ;
  wire \gray1[11]_i_29_n_0 ;
  wire \gray1[11]_i_2_n_0 ;
  wire \gray1[11]_i_30_n_0 ;
  wire \gray1[11]_i_31_n_0 ;
  wire \gray1[11]_i_32_n_0 ;
  wire \gray1[11]_i_33_n_0 ;
  wire \gray1[11]_i_34_n_0 ;
  wire \gray1[11]_i_35_n_0 ;
  wire \gray1[11]_i_36_n_0 ;
  wire \gray1[11]_i_37_n_0 ;
  wire \gray1[11]_i_38_n_0 ;
  wire \gray1[11]_i_39_n_0 ;
  wire \gray1[11]_i_3_n_0 ;
  wire \gray1[11]_i_40_n_0 ;
  wire \gray1[11]_i_41_n_0 ;
  wire \gray1[11]_i_42_n_0 ;
  wire \gray1[11]_i_43_n_0 ;
  wire \gray1[11]_i_44_n_0 ;
  wire \gray1[11]_i_45_n_0 ;
  wire \gray1[11]_i_46_n_0 ;
  wire \gray1[11]_i_47_n_0 ;
  wire \gray1[11]_i_48_n_0 ;
  wire \gray1[11]_i_49_n_0 ;
  wire \gray1[11]_i_4_n_0 ;
  wire \gray1[11]_i_50_n_0 ;
  wire \gray1[11]_i_51_n_0 ;
  wire \gray1[11]_i_52_n_0 ;
  wire \gray1[11]_i_53_n_0 ;
  wire \gray1[11]_i_54_n_0 ;
  wire \gray1[11]_i_55_n_0 ;
  wire \gray1[11]_i_56_n_0 ;
  wire \gray1[11]_i_57_n_0 ;
  wire \gray1[11]_i_58_n_0 ;
  wire \gray1[11]_i_59_n_0 ;
  wire \gray1[11]_i_5_n_0 ;
  wire \gray1[11]_i_60_n_0 ;
  wire \gray1[11]_i_61_n_0 ;
  wire \gray1[11]_i_64_n_0 ;
  wire \gray1[11]_i_66_n_0 ;
  wire \gray1[11]_i_67_n_0 ;
  wire \gray1[11]_i_68_n_0 ;
  wire \gray1[11]_i_69_n_0 ;
  wire \gray1[11]_i_70_n_0 ;
  wire \gray1[11]_i_72_n_0 ;
  wire \gray1[11]_i_74_n_0 ;
  wire \gray1[11]_i_75_n_0 ;
  wire \gray1[11]_i_76_n_0 ;
  wire \gray1[11]_i_77_n_0 ;
  wire \gray1[11]_i_78_n_0 ;
  wire \gray1[11]_i_79_n_0 ;
  wire \gray1[11]_i_7_n_0 ;
  wire \gray1[11]_i_80_n_0 ;
  wire \gray1[11]_i_82_n_0 ;
  wire \gray1[11]_i_83_n_0 ;
  wire \gray1[11]_i_84_n_0 ;
  wire \gray1[11]_i_85_n_0 ;
  wire \gray1[11]_i_86_n_0 ;
  wire \gray1[11]_i_87_n_0 ;
  wire \gray1[11]_i_88_n_0 ;
  wire \gray1[11]_i_89_n_0 ;
  wire \gray1[11]_i_8_n_0 ;
  wire \gray1[11]_i_90_n_0 ;
  wire \gray1[11]_i_91_n_0 ;
  wire \gray1[11]_i_92_n_0 ;
  wire \gray1[11]_i_93_n_0 ;
  wire \gray1[11]_i_94_n_0 ;
  wire \gray1[11]_i_95_n_0 ;
  wire \gray1[11]_i_96_n_0 ;
  wire \gray1[11]_i_97_n_0 ;
  wire \gray1[11]_i_98_n_0 ;
  wire \gray1[11]_i_99_n_0 ;
  wire \gray1[11]_i_9_n_0 ;
  wire [31:0]\gray1[31] ;
  wire \gray1[31]_i_1_n_0 ;
  wire \gray1[3]_i_11_n_0 ;
  wire \gray1[3]_i_12_n_0 ;
  wire \gray1[3]_i_13_n_0 ;
  wire \gray1[3]_i_14_n_0 ;
  wire \gray1[3]_i_15_n_0 ;
  wire \gray1[3]_i_16_n_0 ;
  wire \gray1[3]_i_17_n_0 ;
  wire \gray1[3]_i_18_n_0 ;
  wire \gray1[3]_i_19_n_0 ;
  wire \gray1[3]_i_20_n_0 ;
  wire \gray1[3]_i_21_n_0 ;
  wire \gray1[3]_i_22_n_0 ;
  wire \gray1[3]_i_23_n_0 ;
  wire \gray1[3]_i_2_n_0 ;
  wire \gray1[3]_i_3_n_0 ;
  wire \gray1[3]_i_4_n_0 ;
  wire \gray1[3]_i_5_n_0 ;
  wire \gray1[3]_i_7_n_0 ;
  wire \gray1[3]_i_8_n_0 ;
  wire \gray1[3]_i_9_n_0 ;
  wire \gray1[7]_i_10_n_0 ;
  wire \gray1[7]_i_11_n_0 ;
  wire \gray1[7]_i_12_n_0 ;
  wire \gray1[7]_i_13_n_0 ;
  wire \gray1[7]_i_14_n_0 ;
  wire \gray1[7]_i_15_n_0 ;
  wire \gray1[7]_i_16_n_0 ;
  wire \gray1[7]_i_17_n_0 ;
  wire \gray1[7]_i_20_n_0 ;
  wire \gray1[7]_i_21_n_0 ;
  wire \gray1[7]_i_22_n_0 ;
  wire \gray1[7]_i_23_n_0 ;
  wire \gray1[7]_i_24_n_0 ;
  wire \gray1[7]_i_25_n_0 ;
  wire \gray1[7]_i_26_n_0 ;
  wire \gray1[7]_i_27_n_0 ;
  wire \gray1[7]_i_28_n_0 ;
  wire \gray1[7]_i_29_n_0 ;
  wire \gray1[7]_i_2_n_0 ;
  wire \gray1[7]_i_30_n_0 ;
  wire \gray1[7]_i_31_n_0 ;
  wire \gray1[7]_i_32_n_0 ;
  wire \gray1[7]_i_33_n_0 ;
  wire \gray1[7]_i_34_n_0 ;
  wire \gray1[7]_i_35_n_0 ;
  wire \gray1[7]_i_36_n_0 ;
  wire \gray1[7]_i_37_n_0 ;
  wire \gray1[7]_i_38_n_0 ;
  wire \gray1[7]_i_39_n_0 ;
  wire \gray1[7]_i_3_n_0 ;
  wire \gray1[7]_i_40_n_0 ;
  wire \gray1[7]_i_41_n_0 ;
  wire \gray1[7]_i_42_n_0 ;
  wire \gray1[7]_i_43_n_0 ;
  wire \gray1[7]_i_44_n_0 ;
  wire \gray1[7]_i_45_n_0 ;
  wire \gray1[7]_i_46_n_0 ;
  wire \gray1[7]_i_47_n_0 ;
  wire \gray1[7]_i_48_n_0 ;
  wire \gray1[7]_i_49_n_0 ;
  wire \gray1[7]_i_4_n_0 ;
  wire \gray1[7]_i_50_n_0 ;
  wire \gray1[7]_i_51_n_0 ;
  wire \gray1[7]_i_52_n_0 ;
  wire \gray1[7]_i_53_n_0 ;
  wire \gray1[7]_i_54_n_0 ;
  wire \gray1[7]_i_55_n_0 ;
  wire \gray1[7]_i_5_n_0 ;
  wire \gray1[7]_i_7_n_0 ;
  wire \gray1[7]_i_8_n_0 ;
  wire \gray1[7]_i_9_n_0 ;
  wire \gray1_reg[11]_i_14_n_1 ;
  wire \gray1_reg[11]_i_14_n_2 ;
  wire \gray1_reg[11]_i_14_n_3 ;
  wire \gray1_reg[11]_i_14_n_4 ;
  wire \gray1_reg[11]_i_14_n_5 ;
  wire \gray1_reg[11]_i_14_n_6 ;
  wire \gray1_reg[11]_i_14_n_7 ;
  wire \gray1_reg[11]_i_15_n_1 ;
  wire \gray1_reg[11]_i_15_n_2 ;
  wire \gray1_reg[11]_i_15_n_3 ;
  wire \gray1_reg[11]_i_15_n_4 ;
  wire \gray1_reg[11]_i_15_n_5 ;
  wire \gray1_reg[11]_i_15_n_6 ;
  wire \gray1_reg[11]_i_15_n_7 ;
  wire \gray1_reg[11]_i_16_n_0 ;
  wire \gray1_reg[11]_i_16_n_2 ;
  wire \gray1_reg[11]_i_16_n_3 ;
  wire \gray1_reg[11]_i_16_n_5 ;
  wire \gray1_reg[11]_i_16_n_6 ;
  wire \gray1_reg[11]_i_16_n_7 ;
  wire \gray1_reg[11]_i_18_n_0 ;
  wire \gray1_reg[11]_i_18_n_1 ;
  wire \gray1_reg[11]_i_18_n_2 ;
  wire \gray1_reg[11]_i_18_n_3 ;
  wire \gray1_reg[11]_i_18_n_4 ;
  wire \gray1_reg[11]_i_18_n_5 ;
  wire \gray1_reg[11]_i_18_n_6 ;
  wire \gray1_reg[11]_i_18_n_7 ;
  wire \gray1_reg[11]_i_19_n_0 ;
  wire \gray1_reg[11]_i_19_n_1 ;
  wire \gray1_reg[11]_i_19_n_2 ;
  wire \gray1_reg[11]_i_19_n_3 ;
  wire \gray1_reg[11]_i_19_n_4 ;
  wire \gray1_reg[11]_i_19_n_5 ;
  wire \gray1_reg[11]_i_19_n_6 ;
  wire \gray1_reg[11]_i_19_n_7 ;
  wire \gray1_reg[11]_i_1_n_0 ;
  wire \gray1_reg[11]_i_1_n_1 ;
  wire \gray1_reg[11]_i_1_n_2 ;
  wire \gray1_reg[11]_i_1_n_3 ;
  wire \gray1_reg[11]_i_1_n_4 ;
  wire \gray1_reg[11]_i_1_n_5 ;
  wire \gray1_reg[11]_i_1_n_6 ;
  wire \gray1_reg[11]_i_1_n_7 ;
  wire \gray1_reg[11]_i_62_n_0 ;
  wire \gray1_reg[11]_i_62_n_2 ;
  wire \gray1_reg[11]_i_62_n_3 ;
  wire \gray1_reg[11]_i_62_n_5 ;
  wire \gray1_reg[11]_i_62_n_6 ;
  wire \gray1_reg[11]_i_62_n_7 ;
  wire \gray1_reg[11]_i_63_n_0 ;
  wire \gray1_reg[11]_i_63_n_2 ;
  wire \gray1_reg[11]_i_63_n_3 ;
  wire \gray1_reg[11]_i_63_n_5 ;
  wire \gray1_reg[11]_i_63_n_6 ;
  wire \gray1_reg[11]_i_63_n_7 ;
  wire \gray1_reg[11]_i_65_n_0 ;
  wire \gray1_reg[11]_i_65_n_2 ;
  wire \gray1_reg[11]_i_65_n_3 ;
  wire \gray1_reg[11]_i_65_n_5 ;
  wire \gray1_reg[11]_i_65_n_6 ;
  wire \gray1_reg[11]_i_65_n_7 ;
  wire \gray1_reg[11]_i_6_n_1 ;
  wire \gray1_reg[11]_i_6_n_2 ;
  wire \gray1_reg[11]_i_6_n_3 ;
  wire \gray1_reg[11]_i_71_n_0 ;
  wire \gray1_reg[11]_i_71_n_1 ;
  wire \gray1_reg[11]_i_71_n_2 ;
  wire \gray1_reg[11]_i_71_n_3 ;
  wire \gray1_reg[11]_i_71_n_4 ;
  wire \gray1_reg[11]_i_71_n_5 ;
  wire \gray1_reg[11]_i_71_n_6 ;
  wire \gray1_reg[11]_i_71_n_7 ;
  wire \gray1_reg[11]_i_73_n_0 ;
  wire \gray1_reg[11]_i_73_n_1 ;
  wire \gray1_reg[11]_i_73_n_2 ;
  wire \gray1_reg[11]_i_73_n_3 ;
  wire \gray1_reg[11]_i_73_n_4 ;
  wire \gray1_reg[11]_i_73_n_5 ;
  wire \gray1_reg[11]_i_73_n_6 ;
  wire \gray1_reg[11]_i_73_n_7 ;
  wire \gray1_reg[11]_i_81_n_0 ;
  wire \gray1_reg[11]_i_81_n_1 ;
  wire \gray1_reg[11]_i_81_n_2 ;
  wire \gray1_reg[11]_i_81_n_3 ;
  wire \gray1_reg[11]_i_81_n_4 ;
  wire \gray1_reg[11]_i_81_n_5 ;
  wire \gray1_reg[11]_i_81_n_6 ;
  wire \gray1_reg[11]_i_81_n_7 ;
  wire \gray1_reg[15]_i_1_n_0 ;
  wire \gray1_reg[15]_i_1_n_1 ;
  wire \gray1_reg[15]_i_1_n_2 ;
  wire \gray1_reg[15]_i_1_n_3 ;
  wire \gray1_reg[15]_i_1_n_4 ;
  wire \gray1_reg[15]_i_1_n_5 ;
  wire \gray1_reg[15]_i_1_n_6 ;
  wire \gray1_reg[15]_i_1_n_7 ;
  wire \gray1_reg[19]_i_1_n_0 ;
  wire \gray1_reg[19]_i_1_n_1 ;
  wire \gray1_reg[19]_i_1_n_2 ;
  wire \gray1_reg[19]_i_1_n_3 ;
  wire \gray1_reg[19]_i_1_n_4 ;
  wire \gray1_reg[19]_i_1_n_5 ;
  wire \gray1_reg[19]_i_1_n_6 ;
  wire \gray1_reg[19]_i_1_n_7 ;
  wire \gray1_reg[23]_i_1_n_0 ;
  wire \gray1_reg[23]_i_1_n_1 ;
  wire \gray1_reg[23]_i_1_n_2 ;
  wire \gray1_reg[23]_i_1_n_3 ;
  wire \gray1_reg[23]_i_1_n_4 ;
  wire \gray1_reg[23]_i_1_n_5 ;
  wire \gray1_reg[23]_i_1_n_6 ;
  wire \gray1_reg[23]_i_1_n_7 ;
  wire \gray1_reg[27]_i_1_n_0 ;
  wire \gray1_reg[27]_i_1_n_1 ;
  wire \gray1_reg[27]_i_1_n_2 ;
  wire \gray1_reg[27]_i_1_n_3 ;
  wire \gray1_reg[27]_i_1_n_4 ;
  wire \gray1_reg[27]_i_1_n_5 ;
  wire \gray1_reg[27]_i_1_n_6 ;
  wire \gray1_reg[27]_i_1_n_7 ;
  wire \gray1_reg[31]_i_3_n_1 ;
  wire \gray1_reg[31]_i_3_n_2 ;
  wire \gray1_reg[31]_i_3_n_3 ;
  wire \gray1_reg[31]_i_3_n_4 ;
  wire \gray1_reg[31]_i_3_n_5 ;
  wire \gray1_reg[31]_i_3_n_6 ;
  wire \gray1_reg[31]_i_3_n_7 ;
  wire \gray1_reg[3]_i_10_n_0 ;
  wire \gray1_reg[3]_i_10_n_1 ;
  wire \gray1_reg[3]_i_10_n_2 ;
  wire \gray1_reg[3]_i_10_n_3 ;
  wire \gray1_reg[3]_i_10_n_4 ;
  wire \gray1_reg[3]_i_10_n_5 ;
  wire \gray1_reg[3]_i_10_n_6 ;
  wire \gray1_reg[3]_i_10_n_7 ;
  wire \gray1_reg[3]_i_1_n_0 ;
  wire \gray1_reg[3]_i_1_n_1 ;
  wire \gray1_reg[3]_i_1_n_2 ;
  wire \gray1_reg[3]_i_1_n_3 ;
  wire \gray1_reg[3]_i_1_n_4 ;
  wire \gray1_reg[3]_i_1_n_5 ;
  wire \gray1_reg[3]_i_1_n_6 ;
  wire \gray1_reg[3]_i_1_n_7 ;
  wire \gray1_reg[3]_i_6_n_0 ;
  wire \gray1_reg[3]_i_6_n_1 ;
  wire \gray1_reg[3]_i_6_n_2 ;
  wire \gray1_reg[3]_i_6_n_3 ;
  wire \gray1_reg[7]_i_18_n_0 ;
  wire \gray1_reg[7]_i_18_n_1 ;
  wire \gray1_reg[7]_i_18_n_2 ;
  wire \gray1_reg[7]_i_18_n_3 ;
  wire \gray1_reg[7]_i_18_n_4 ;
  wire \gray1_reg[7]_i_18_n_5 ;
  wire \gray1_reg[7]_i_18_n_6 ;
  wire \gray1_reg[7]_i_18_n_7 ;
  wire \gray1_reg[7]_i_19_n_0 ;
  wire \gray1_reg[7]_i_19_n_1 ;
  wire \gray1_reg[7]_i_19_n_2 ;
  wire \gray1_reg[7]_i_19_n_3 ;
  wire \gray1_reg[7]_i_19_n_4 ;
  wire \gray1_reg[7]_i_19_n_5 ;
  wire \gray1_reg[7]_i_19_n_6 ;
  wire \gray1_reg[7]_i_19_n_7 ;
  wire \gray1_reg[7]_i_1_n_0 ;
  wire \gray1_reg[7]_i_1_n_1 ;
  wire \gray1_reg[7]_i_1_n_2 ;
  wire \gray1_reg[7]_i_1_n_3 ;
  wire \gray1_reg[7]_i_1_n_4 ;
  wire \gray1_reg[7]_i_1_n_5 ;
  wire \gray1_reg[7]_i_1_n_6 ;
  wire \gray1_reg[7]_i_1_n_7 ;
  wire \gray1_reg[7]_i_6_n_0 ;
  wire \gray1_reg[7]_i_6_n_1 ;
  wire \gray1_reg[7]_i_6_n_2 ;
  wire \gray1_reg[7]_i_6_n_3 ;
  wire gray20;
  wire \gray2[11]_i_2_n_0 ;
  wire \gray2[11]_i_3_n_0 ;
  wire \gray2[11]_i_4_n_0 ;
  wire \gray2[11]_i_5_n_0 ;
  wire [31:0]\gray2[31] ;
  wire \gray2[31]_i_1_n_0 ;
  wire \gray2[3]_i_2_n_0 ;
  wire \gray2[3]_i_3_n_0 ;
  wire \gray2[3]_i_4_n_0 ;
  wire \gray2[3]_i_5_n_0 ;
  wire \gray2[7]_i_2_n_0 ;
  wire \gray2[7]_i_3_n_0 ;
  wire \gray2[7]_i_4_n_0 ;
  wire \gray2[7]_i_5_n_0 ;
  wire \gray2_reg[11]_i_1_n_0 ;
  wire \gray2_reg[11]_i_1_n_1 ;
  wire \gray2_reg[11]_i_1_n_2 ;
  wire \gray2_reg[11]_i_1_n_3 ;
  wire \gray2_reg[11]_i_1_n_4 ;
  wire \gray2_reg[11]_i_1_n_5 ;
  wire \gray2_reg[11]_i_1_n_6 ;
  wire \gray2_reg[11]_i_1_n_7 ;
  wire \gray2_reg[15]_i_1_n_0 ;
  wire \gray2_reg[15]_i_1_n_1 ;
  wire \gray2_reg[15]_i_1_n_2 ;
  wire \gray2_reg[15]_i_1_n_3 ;
  wire \gray2_reg[15]_i_1_n_4 ;
  wire \gray2_reg[15]_i_1_n_5 ;
  wire \gray2_reg[15]_i_1_n_6 ;
  wire \gray2_reg[15]_i_1_n_7 ;
  wire \gray2_reg[19]_i_1_n_0 ;
  wire \gray2_reg[19]_i_1_n_1 ;
  wire \gray2_reg[19]_i_1_n_2 ;
  wire \gray2_reg[19]_i_1_n_3 ;
  wire \gray2_reg[19]_i_1_n_4 ;
  wire \gray2_reg[19]_i_1_n_5 ;
  wire \gray2_reg[19]_i_1_n_6 ;
  wire \gray2_reg[19]_i_1_n_7 ;
  wire \gray2_reg[23]_i_1_n_0 ;
  wire \gray2_reg[23]_i_1_n_1 ;
  wire \gray2_reg[23]_i_1_n_2 ;
  wire \gray2_reg[23]_i_1_n_3 ;
  wire \gray2_reg[23]_i_1_n_4 ;
  wire \gray2_reg[23]_i_1_n_5 ;
  wire \gray2_reg[23]_i_1_n_6 ;
  wire \gray2_reg[23]_i_1_n_7 ;
  wire \gray2_reg[27]_i_1_n_0 ;
  wire \gray2_reg[27]_i_1_n_1 ;
  wire \gray2_reg[27]_i_1_n_2 ;
  wire \gray2_reg[27]_i_1_n_3 ;
  wire \gray2_reg[27]_i_1_n_4 ;
  wire \gray2_reg[27]_i_1_n_5 ;
  wire \gray2_reg[27]_i_1_n_6 ;
  wire \gray2_reg[27]_i_1_n_7 ;
  wire \gray2_reg[31]_i_3_n_1 ;
  wire \gray2_reg[31]_i_3_n_2 ;
  wire \gray2_reg[31]_i_3_n_3 ;
  wire \gray2_reg[31]_i_3_n_4 ;
  wire \gray2_reg[31]_i_3_n_5 ;
  wire \gray2_reg[31]_i_3_n_6 ;
  wire \gray2_reg[31]_i_3_n_7 ;
  wire \gray2_reg[3]_i_1_n_0 ;
  wire \gray2_reg[3]_i_1_n_1 ;
  wire \gray2_reg[3]_i_1_n_2 ;
  wire \gray2_reg[3]_i_1_n_3 ;
  wire \gray2_reg[3]_i_1_n_4 ;
  wire \gray2_reg[3]_i_1_n_5 ;
  wire \gray2_reg[3]_i_1_n_6 ;
  wire \gray2_reg[3]_i_1_n_7 ;
  wire \gray2_reg[7]_i_1_n_0 ;
  wire \gray2_reg[7]_i_1_n_1 ;
  wire \gray2_reg[7]_i_1_n_2 ;
  wire \gray2_reg[7]_i_1_n_3 ;
  wire \gray2_reg[7]_i_1_n_4 ;
  wire \gray2_reg[7]_i_1_n_5 ;
  wire \gray2_reg[7]_i_1_n_6 ;
  wire \gray2_reg[7]_i_1_n_7 ;
  wire [11:0]grayResult;
  wire \initS2MMClearSDelay[0]_i_1_n_0 ;
  wire \initS2MMClearSDelay[0]_i_3_n_0 ;
  wire [31:4]initS2MMClearSDelay_reg;
  wire \initS2MMClearSDelay_reg[0]_i_2_n_0 ;
  wire \initS2MMClearSDelay_reg[0]_i_2_n_1 ;
  wire \initS2MMClearSDelay_reg[0]_i_2_n_2 ;
  wire \initS2MMClearSDelay_reg[0]_i_2_n_3 ;
  wire \initS2MMClearSDelay_reg[0]_i_2_n_4 ;
  wire \initS2MMClearSDelay_reg[0]_i_2_n_5 ;
  wire \initS2MMClearSDelay_reg[0]_i_2_n_6 ;
  wire \initS2MMClearSDelay_reg[0]_i_2_n_7 ;
  wire \initS2MMClearSDelay_reg[12]_i_1_n_0 ;
  wire \initS2MMClearSDelay_reg[12]_i_1_n_1 ;
  wire \initS2MMClearSDelay_reg[12]_i_1_n_2 ;
  wire \initS2MMClearSDelay_reg[12]_i_1_n_3 ;
  wire \initS2MMClearSDelay_reg[12]_i_1_n_4 ;
  wire \initS2MMClearSDelay_reg[12]_i_1_n_5 ;
  wire \initS2MMClearSDelay_reg[12]_i_1_n_6 ;
  wire \initS2MMClearSDelay_reg[12]_i_1_n_7 ;
  wire \initS2MMClearSDelay_reg[16]_i_1_n_0 ;
  wire \initS2MMClearSDelay_reg[16]_i_1_n_1 ;
  wire \initS2MMClearSDelay_reg[16]_i_1_n_2 ;
  wire \initS2MMClearSDelay_reg[16]_i_1_n_3 ;
  wire \initS2MMClearSDelay_reg[16]_i_1_n_4 ;
  wire \initS2MMClearSDelay_reg[16]_i_1_n_5 ;
  wire \initS2MMClearSDelay_reg[16]_i_1_n_6 ;
  wire \initS2MMClearSDelay_reg[16]_i_1_n_7 ;
  wire \initS2MMClearSDelay_reg[20]_i_1_n_0 ;
  wire \initS2MMClearSDelay_reg[20]_i_1_n_1 ;
  wire \initS2MMClearSDelay_reg[20]_i_1_n_2 ;
  wire \initS2MMClearSDelay_reg[20]_i_1_n_3 ;
  wire \initS2MMClearSDelay_reg[20]_i_1_n_4 ;
  wire \initS2MMClearSDelay_reg[20]_i_1_n_5 ;
  wire \initS2MMClearSDelay_reg[20]_i_1_n_6 ;
  wire \initS2MMClearSDelay_reg[20]_i_1_n_7 ;
  wire \initS2MMClearSDelay_reg[24]_i_1_n_0 ;
  wire \initS2MMClearSDelay_reg[24]_i_1_n_1 ;
  wire \initS2MMClearSDelay_reg[24]_i_1_n_2 ;
  wire \initS2MMClearSDelay_reg[24]_i_1_n_3 ;
  wire \initS2MMClearSDelay_reg[24]_i_1_n_4 ;
  wire \initS2MMClearSDelay_reg[24]_i_1_n_5 ;
  wire \initS2MMClearSDelay_reg[24]_i_1_n_6 ;
  wire \initS2MMClearSDelay_reg[24]_i_1_n_7 ;
  wire \initS2MMClearSDelay_reg[28]_i_1_n_1 ;
  wire \initS2MMClearSDelay_reg[28]_i_1_n_2 ;
  wire \initS2MMClearSDelay_reg[28]_i_1_n_3 ;
  wire \initS2MMClearSDelay_reg[28]_i_1_n_4 ;
  wire \initS2MMClearSDelay_reg[28]_i_1_n_5 ;
  wire \initS2MMClearSDelay_reg[28]_i_1_n_6 ;
  wire \initS2MMClearSDelay_reg[28]_i_1_n_7 ;
  wire \initS2MMClearSDelay_reg[4]_i_1_n_0 ;
  wire \initS2MMClearSDelay_reg[4]_i_1_n_1 ;
  wire \initS2MMClearSDelay_reg[4]_i_1_n_2 ;
  wire \initS2MMClearSDelay_reg[4]_i_1_n_3 ;
  wire \initS2MMClearSDelay_reg[4]_i_1_n_4 ;
  wire \initS2MMClearSDelay_reg[4]_i_1_n_5 ;
  wire \initS2MMClearSDelay_reg[4]_i_1_n_6 ;
  wire \initS2MMClearSDelay_reg[4]_i_1_n_7 ;
  wire \initS2MMClearSDelay_reg[8]_i_1_n_0 ;
  wire \initS2MMClearSDelay_reg[8]_i_1_n_1 ;
  wire \initS2MMClearSDelay_reg[8]_i_1_n_2 ;
  wire \initS2MMClearSDelay_reg[8]_i_1_n_3 ;
  wire \initS2MMClearSDelay_reg[8]_i_1_n_4 ;
  wire \initS2MMClearSDelay_reg[8]_i_1_n_5 ;
  wire \initS2MMClearSDelay_reg[8]_i_1_n_6 ;
  wire \initS2MMClearSDelay_reg[8]_i_1_n_7 ;
  wire \initS2MMClearSDelay_reg_n_0_[0] ;
  wire \initS2MMClearSDelay_reg_n_0_[1] ;
  wire \initS2MMClearSDelay_reg_n_0_[2] ;
  wire \initS2MMClearSDelay_reg_n_0_[3] ;
  wire m_handshake1;
  wire m_handshake1_1;
  wire m_handshake1_11;
  wire m_handshake1_3;
  wire m_handshake1_5;
  wire m_handshake1_7;
  wire m_handshake1_9;
  wire m_handshake1_i_1__0_n_0;
  wire m_handshake1_i_1__1_n_0;
  wire m_handshake1_i_1__2_n_0;
  wire m_handshake1_i_1__3_n_0;
  wire m_handshake1_i_1__4_n_0;
  wire m_handshake1_i_1__5_n_0;
  wire m_handshake1_i_1_n_0;
  wire m_handshake2;
  wire m_handshake2_0;
  wire m_handshake2_10;
  wire m_handshake2_2;
  wire m_handshake2_4;
  wire m_handshake2_6;
  wire m_handshake2_8;
  wire m_handshake2_i_1__0_n_0;
  wire m_handshake2_i_1__1_n_0;
  wire m_handshake2_i_1__2_n_0;
  wire m_handshake2_i_1__3_n_0;
  wire m_handshake2_i_1__4_n_0;
  wire m_handshake2_i_1__5_n_0;
  wire m_handshake2_i_1_n_0;
  wire m_handshake3;
  wire m_handshake3_i_1__0_n_0;
  wire m_handshake3_i_1__1_n_0;
  wire m_handshake3_i_1__2_n_0;
  wire m_handshake3_i_1__3_n_0;
  wire m_handshake3_i_1__4_n_0;
  wire m_handshake3_i_1__5_n_0;
  wire m_handshake3_i_1_n_0;
  wire [4:0]maxDiffCol;
  wire \maxDiffCol[4]_i_1_n_0 ;
  wire \maxDiffCol[4]_i_2_n_0 ;
  wire [15:0]maxDiffRow;
  wire motion_detected;
  wire motion_detected_INST_0_i_100_n_0;
  wire motion_detected_INST_0_i_101_n_0;
  wire motion_detected_INST_0_i_102_n_0;
  wire motion_detected_INST_0_i_103_n_0;
  wire motion_detected_INST_0_i_104_n_0;
  wire motion_detected_INST_0_i_105_n_0;
  wire motion_detected_INST_0_i_106_n_0;
  wire motion_detected_INST_0_i_107_n_0;
  wire motion_detected_INST_0_i_108_n_0;
  wire motion_detected_INST_0_i_10_n_0;
  wire motion_detected_INST_0_i_11_n_0;
  wire motion_detected_INST_0_i_12_n_0;
  wire motion_detected_INST_0_i_13_n_0;
  wire motion_detected_INST_0_i_13_n_1;
  wire motion_detected_INST_0_i_13_n_2;
  wire motion_detected_INST_0_i_13_n_3;
  wire motion_detected_INST_0_i_14_n_0;
  wire motion_detected_INST_0_i_15_n_0;
  wire motion_detected_INST_0_i_16_n_0;
  wire motion_detected_INST_0_i_17_n_0;
  wire motion_detected_INST_0_i_18_n_0;
  wire motion_detected_INST_0_i_19_n_0;
  wire motion_detected_INST_0_i_1_n_0;
  wire motion_detected_INST_0_i_1_n_1;
  wire motion_detected_INST_0_i_1_n_2;
  wire motion_detected_INST_0_i_1_n_3;
  wire motion_detected_INST_0_i_20_n_0;
  wire motion_detected_INST_0_i_21_n_0;
  wire motion_detected_INST_0_i_22_n_0;
  wire motion_detected_INST_0_i_22_n_1;
  wire motion_detected_INST_0_i_22_n_2;
  wire motion_detected_INST_0_i_22_n_3;
  wire motion_detected_INST_0_i_23_n_0;
  wire motion_detected_INST_0_i_24_n_0;
  wire motion_detected_INST_0_i_25_n_0;
  wire motion_detected_INST_0_i_26_n_0;
  wire motion_detected_INST_0_i_27_n_0;
  wire motion_detected_INST_0_i_28_n_0;
  wire motion_detected_INST_0_i_29_n_0;
  wire motion_detected_INST_0_i_2_n_0;
  wire motion_detected_INST_0_i_2_n_1;
  wire motion_detected_INST_0_i_2_n_2;
  wire motion_detected_INST_0_i_2_n_3;
  wire motion_detected_INST_0_i_30_n_0;
  wire motion_detected_INST_0_i_31_n_0;
  wire motion_detected_INST_0_i_31_n_1;
  wire motion_detected_INST_0_i_31_n_2;
  wire motion_detected_INST_0_i_31_n_3;
  wire motion_detected_INST_0_i_32_n_0;
  wire motion_detected_INST_0_i_33_n_0;
  wire motion_detected_INST_0_i_34_n_0;
  wire motion_detected_INST_0_i_35_n_0;
  wire motion_detected_INST_0_i_36_n_0;
  wire motion_detected_INST_0_i_37_n_0;
  wire motion_detected_INST_0_i_38_n_0;
  wire motion_detected_INST_0_i_39_n_0;
  wire motion_detected_INST_0_i_3_n_0;
  wire motion_detected_INST_0_i_3_n_1;
  wire motion_detected_INST_0_i_3_n_2;
  wire motion_detected_INST_0_i_3_n_3;
  wire motion_detected_INST_0_i_40_n_0;
  wire motion_detected_INST_0_i_40_n_1;
  wire motion_detected_INST_0_i_40_n_2;
  wire motion_detected_INST_0_i_40_n_3;
  wire motion_detected_INST_0_i_41_n_0;
  wire motion_detected_INST_0_i_42_n_0;
  wire motion_detected_INST_0_i_43_n_0;
  wire motion_detected_INST_0_i_44_n_0;
  wire motion_detected_INST_0_i_45_n_0;
  wire motion_detected_INST_0_i_46_n_0;
  wire motion_detected_INST_0_i_47_n_0;
  wire motion_detected_INST_0_i_48_n_0;
  wire motion_detected_INST_0_i_49_n_0;
  wire motion_detected_INST_0_i_49_n_1;
  wire motion_detected_INST_0_i_49_n_2;
  wire motion_detected_INST_0_i_49_n_3;
  wire motion_detected_INST_0_i_4_n_0;
  wire motion_detected_INST_0_i_4_n_1;
  wire motion_detected_INST_0_i_4_n_2;
  wire motion_detected_INST_0_i_4_n_3;
  wire motion_detected_INST_0_i_50_n_0;
  wire motion_detected_INST_0_i_51_n_0;
  wire motion_detected_INST_0_i_52_n_0;
  wire motion_detected_INST_0_i_53_n_0;
  wire motion_detected_INST_0_i_54_n_0;
  wire motion_detected_INST_0_i_55_n_0;
  wire motion_detected_INST_0_i_56_n_0;
  wire motion_detected_INST_0_i_57_n_0;
  wire motion_detected_INST_0_i_58_n_0;
  wire motion_detected_INST_0_i_58_n_1;
  wire motion_detected_INST_0_i_58_n_2;
  wire motion_detected_INST_0_i_58_n_3;
  wire motion_detected_INST_0_i_59_n_0;
  wire motion_detected_INST_0_i_5_n_0;
  wire motion_detected_INST_0_i_60_n_0;
  wire motion_detected_INST_0_i_61_n_0;
  wire motion_detected_INST_0_i_62_n_0;
  wire motion_detected_INST_0_i_63_n_0;
  wire motion_detected_INST_0_i_64_n_0;
  wire motion_detected_INST_0_i_65_n_0;
  wire motion_detected_INST_0_i_66_n_0;
  wire motion_detected_INST_0_i_67_n_0;
  wire motion_detected_INST_0_i_67_n_1;
  wire motion_detected_INST_0_i_67_n_2;
  wire motion_detected_INST_0_i_67_n_3;
  wire motion_detected_INST_0_i_68_n_0;
  wire motion_detected_INST_0_i_69_n_0;
  wire motion_detected_INST_0_i_6_n_0;
  wire motion_detected_INST_0_i_70_n_0;
  wire motion_detected_INST_0_i_71_n_0;
  wire motion_detected_INST_0_i_72_n_0;
  wire motion_detected_INST_0_i_73_n_0;
  wire motion_detected_INST_0_i_74_n_0;
  wire motion_detected_INST_0_i_75_n_0;
  wire motion_detected_INST_0_i_76_n_0;
  wire motion_detected_INST_0_i_76_n_1;
  wire motion_detected_INST_0_i_76_n_2;
  wire motion_detected_INST_0_i_76_n_3;
  wire motion_detected_INST_0_i_77_n_0;
  wire motion_detected_INST_0_i_78_n_0;
  wire motion_detected_INST_0_i_79_n_0;
  wire motion_detected_INST_0_i_7_n_0;
  wire motion_detected_INST_0_i_80_n_0;
  wire motion_detected_INST_0_i_81_n_0;
  wire motion_detected_INST_0_i_82_n_0;
  wire motion_detected_INST_0_i_83_n_0;
  wire motion_detected_INST_0_i_84_n_0;
  wire motion_detected_INST_0_i_85_n_0;
  wire motion_detected_INST_0_i_86_n_0;
  wire motion_detected_INST_0_i_87_n_0;
  wire motion_detected_INST_0_i_88_n_0;
  wire motion_detected_INST_0_i_89_n_0;
  wire motion_detected_INST_0_i_8_n_0;
  wire motion_detected_INST_0_i_90_n_0;
  wire motion_detected_INST_0_i_91_n_0;
  wire motion_detected_INST_0_i_92_n_0;
  wire motion_detected_INST_0_i_93_n_0;
  wire motion_detected_INST_0_i_94_n_0;
  wire motion_detected_INST_0_i_95_n_0;
  wire motion_detected_INST_0_i_96_n_0;
  wire motion_detected_INST_0_i_97_n_0;
  wire motion_detected_INST_0_i_98_n_0;
  wire motion_detected_INST_0_i_99_n_0;
  wire motion_detected_INST_0_i_9_n_0;
  wire [4:0]nextState;
  wire nextState1;
  wire \nextState_reg[0]_i_10_n_0 ;
  wire \nextState_reg[0]_i_11_n_0 ;
  wire \nextState_reg[0]_i_12_n_0 ;
  wire \nextState_reg[0]_i_13_n_0 ;
  wire \nextState_reg[0]_i_3_n_0 ;
  wire \nextState_reg[0]_i_5_n_0 ;
  wire \nextState_reg[0]_i_7_n_0 ;
  wire \nextState_reg[0]_i_8_n_0 ;
  wire \nextState_reg[0]_i_9_n_0 ;
  wire \nextState_reg[1]_i_10_n_0 ;
  wire \nextState_reg[1]_i_11_n_0 ;
  wire \nextState_reg[1]_i_12_n_0 ;
  wire \nextState_reg[1]_i_13_n_0 ;
  wire \nextState_reg[1]_i_14_n_0 ;
  wire \nextState_reg[1]_i_15_n_0 ;
  wire \nextState_reg[1]_i_16_n_0 ;
  wire \nextState_reg[1]_i_17_n_0 ;
  wire \nextState_reg[1]_i_4_n_0 ;
  wire \nextState_reg[1]_i_5_n_0 ;
  wire \nextState_reg[1]_i_6_n_0 ;
  wire \nextState_reg[1]_i_8_n_0 ;
  wire \nextState_reg[1]_i_9_n_0 ;
  wire \nextState_reg[2]_i_10_n_0 ;
  wire \nextState_reg[2]_i_12_n_0 ;
  wire \nextState_reg[2]_i_13_n_0 ;
  wire \nextState_reg[2]_i_15_n_0 ;
  wire \nextState_reg[2]_i_16_n_0 ;
  wire \nextState_reg[2]_i_17_n_0 ;
  wire \nextState_reg[2]_i_18_n_0 ;
  wire \nextState_reg[2]_i_19_n_0 ;
  wire \nextState_reg[2]_i_20_n_1 ;
  wire \nextState_reg[2]_i_20_n_2 ;
  wire \nextState_reg[2]_i_20_n_3 ;
  wire \nextState_reg[2]_i_21_n_0 ;
  wire \nextState_reg[2]_i_22_n_0 ;
  wire \nextState_reg[2]_i_23_n_0 ;
  wire \nextState_reg[2]_i_24_n_0 ;
  wire \nextState_reg[2]_i_25_n_0 ;
  wire \nextState_reg[2]_i_25_n_1 ;
  wire \nextState_reg[2]_i_25_n_2 ;
  wire \nextState_reg[2]_i_25_n_3 ;
  wire \nextState_reg[2]_i_26_n_0 ;
  wire \nextState_reg[2]_i_27_n_0 ;
  wire \nextState_reg[2]_i_28_n_0 ;
  wire \nextState_reg[2]_i_29_n_0 ;
  wire \nextState_reg[2]_i_30_n_0 ;
  wire \nextState_reg[2]_i_31_n_0 ;
  wire \nextState_reg[2]_i_32_n_0 ;
  wire \nextState_reg[2]_i_33_n_0 ;
  wire \nextState_reg[2]_i_34_n_0 ;
  wire \nextState_reg[2]_i_34_n_1 ;
  wire \nextState_reg[2]_i_34_n_2 ;
  wire \nextState_reg[2]_i_34_n_3 ;
  wire \nextState_reg[2]_i_35_n_0 ;
  wire \nextState_reg[2]_i_36_n_0 ;
  wire \nextState_reg[2]_i_37_n_0 ;
  wire \nextState_reg[2]_i_38_n_0 ;
  wire \nextState_reg[2]_i_39_n_0 ;
  wire \nextState_reg[2]_i_3_n_0 ;
  wire \nextState_reg[2]_i_40_n_0 ;
  wire \nextState_reg[2]_i_41_n_0 ;
  wire \nextState_reg[2]_i_42_n_0 ;
  wire \nextState_reg[2]_i_43_n_0 ;
  wire \nextState_reg[2]_i_43_n_1 ;
  wire \nextState_reg[2]_i_43_n_2 ;
  wire \nextState_reg[2]_i_43_n_3 ;
  wire \nextState_reg[2]_i_44_n_0 ;
  wire \nextState_reg[2]_i_45_n_0 ;
  wire \nextState_reg[2]_i_46_n_0 ;
  wire \nextState_reg[2]_i_47_n_0 ;
  wire \nextState_reg[2]_i_48_n_0 ;
  wire \nextState_reg[2]_i_49_n_0 ;
  wire \nextState_reg[2]_i_4_n_0 ;
  wire \nextState_reg[2]_i_50_n_0 ;
  wire \nextState_reg[2]_i_51_n_0 ;
  wire \nextState_reg[2]_i_52_n_0 ;
  wire \nextState_reg[2]_i_53_n_0 ;
  wire \nextState_reg[2]_i_54_n_0 ;
  wire \nextState_reg[2]_i_55_n_0 ;
  wire \nextState_reg[2]_i_56_n_0 ;
  wire \nextState_reg[2]_i_57_n_0 ;
  wire \nextState_reg[2]_i_58_n_0 ;
  wire \nextState_reg[2]_i_59_n_0 ;
  wire \nextState_reg[2]_i_6_n_0 ;
  wire \nextState_reg[2]_i_8_n_0 ;
  wire \nextState_reg[2]_i_9_n_0 ;
  wire \nextState_reg[3]_i_10_n_0 ;
  wire \nextState_reg[3]_i_11_n_0 ;
  wire \nextState_reg[3]_i_12_n_0 ;
  wire \nextState_reg[3]_i_13_n_0 ;
  wire \nextState_reg[3]_i_14_n_0 ;
  wire \nextState_reg[3]_i_15_n_0 ;
  wire \nextState_reg[3]_i_3_n_0 ;
  wire \nextState_reg[3]_i_5_n_0 ;
  wire \nextState_reg[3]_i_6_n_0 ;
  wire \nextState_reg[3]_i_8_n_0 ;
  wire \nextState_reg[3]_i_9_n_0 ;
  wire \nextState_reg[4]_i_10_n_0 ;
  wire \nextState_reg[4]_i_11_n_0 ;
  wire \nextState_reg[4]_i_2_n_0 ;
  wire \nextState_reg[4]_i_6_n_0 ;
  wire \nextState_reg[4]_i_7_n_0 ;
  wire \nextState_reg[4]_i_8_n_0 ;
  wire \nextState_reg[4]_i_9_n_0 ;
  wire \overlayDelayCounter[0]_i_3_n_0 ;
  wire [31:4]overlayDelayCounter_reg;
  wire \overlayDelayCounter_reg[0]_i_2_n_0 ;
  wire \overlayDelayCounter_reg[0]_i_2_n_1 ;
  wire \overlayDelayCounter_reg[0]_i_2_n_2 ;
  wire \overlayDelayCounter_reg[0]_i_2_n_3 ;
  wire \overlayDelayCounter_reg[0]_i_2_n_4 ;
  wire \overlayDelayCounter_reg[0]_i_2_n_5 ;
  wire \overlayDelayCounter_reg[0]_i_2_n_6 ;
  wire \overlayDelayCounter_reg[0]_i_2_n_7 ;
  wire \overlayDelayCounter_reg[12]_i_1_n_0 ;
  wire \overlayDelayCounter_reg[12]_i_1_n_1 ;
  wire \overlayDelayCounter_reg[12]_i_1_n_2 ;
  wire \overlayDelayCounter_reg[12]_i_1_n_3 ;
  wire \overlayDelayCounter_reg[12]_i_1_n_4 ;
  wire \overlayDelayCounter_reg[12]_i_1_n_5 ;
  wire \overlayDelayCounter_reg[12]_i_1_n_6 ;
  wire \overlayDelayCounter_reg[12]_i_1_n_7 ;
  wire \overlayDelayCounter_reg[16]_i_1_n_0 ;
  wire \overlayDelayCounter_reg[16]_i_1_n_1 ;
  wire \overlayDelayCounter_reg[16]_i_1_n_2 ;
  wire \overlayDelayCounter_reg[16]_i_1_n_3 ;
  wire \overlayDelayCounter_reg[16]_i_1_n_4 ;
  wire \overlayDelayCounter_reg[16]_i_1_n_5 ;
  wire \overlayDelayCounter_reg[16]_i_1_n_6 ;
  wire \overlayDelayCounter_reg[16]_i_1_n_7 ;
  wire \overlayDelayCounter_reg[20]_i_1_n_0 ;
  wire \overlayDelayCounter_reg[20]_i_1_n_1 ;
  wire \overlayDelayCounter_reg[20]_i_1_n_2 ;
  wire \overlayDelayCounter_reg[20]_i_1_n_3 ;
  wire \overlayDelayCounter_reg[20]_i_1_n_4 ;
  wire \overlayDelayCounter_reg[20]_i_1_n_5 ;
  wire \overlayDelayCounter_reg[20]_i_1_n_6 ;
  wire \overlayDelayCounter_reg[20]_i_1_n_7 ;
  wire \overlayDelayCounter_reg[24]_i_1_n_0 ;
  wire \overlayDelayCounter_reg[24]_i_1_n_1 ;
  wire \overlayDelayCounter_reg[24]_i_1_n_2 ;
  wire \overlayDelayCounter_reg[24]_i_1_n_3 ;
  wire \overlayDelayCounter_reg[24]_i_1_n_4 ;
  wire \overlayDelayCounter_reg[24]_i_1_n_5 ;
  wire \overlayDelayCounter_reg[24]_i_1_n_6 ;
  wire \overlayDelayCounter_reg[24]_i_1_n_7 ;
  wire \overlayDelayCounter_reg[28]_i_1_n_1 ;
  wire \overlayDelayCounter_reg[28]_i_1_n_2 ;
  wire \overlayDelayCounter_reg[28]_i_1_n_3 ;
  wire \overlayDelayCounter_reg[28]_i_1_n_4 ;
  wire \overlayDelayCounter_reg[28]_i_1_n_5 ;
  wire \overlayDelayCounter_reg[28]_i_1_n_6 ;
  wire \overlayDelayCounter_reg[28]_i_1_n_7 ;
  wire \overlayDelayCounter_reg[4]_i_1_n_0 ;
  wire \overlayDelayCounter_reg[4]_i_1_n_1 ;
  wire \overlayDelayCounter_reg[4]_i_1_n_2 ;
  wire \overlayDelayCounter_reg[4]_i_1_n_3 ;
  wire \overlayDelayCounter_reg[4]_i_1_n_4 ;
  wire \overlayDelayCounter_reg[4]_i_1_n_5 ;
  wire \overlayDelayCounter_reg[4]_i_1_n_6 ;
  wire \overlayDelayCounter_reg[4]_i_1_n_7 ;
  wire \overlayDelayCounter_reg[8]_i_1_n_0 ;
  wire \overlayDelayCounter_reg[8]_i_1_n_1 ;
  wire \overlayDelayCounter_reg[8]_i_1_n_2 ;
  wire \overlayDelayCounter_reg[8]_i_1_n_3 ;
  wire \overlayDelayCounter_reg[8]_i_1_n_4 ;
  wire \overlayDelayCounter_reg[8]_i_1_n_5 ;
  wire \overlayDelayCounter_reg[8]_i_1_n_6 ;
  wire \overlayDelayCounter_reg[8]_i_1_n_7 ;
  wire \overlayDelayCounter_reg_n_0_[0] ;
  wire \overlayDelayCounter_reg_n_0_[1] ;
  wire \overlayDelayCounter_reg_n_0_[2] ;
  wire \overlayDelayCounter_reg_n_0_[3] ;
  wire [3:0]p_0_in;
  wire p_0_in12_in;
  wire p_0_in13_in;
  wire p_0_in1_in;
  wire [31:3]p_1_in;
  wire pixel_word_count1;
  wire \pixel_word_count[0]_i_1_n_0 ;
  wire \pixel_word_count[0]_i_3_n_0 ;
  wire [31:0]pixel_word_count_reg;
  wire \pixel_word_count_reg[0]_i_2_n_0 ;
  wire \pixel_word_count_reg[0]_i_2_n_1 ;
  wire \pixel_word_count_reg[0]_i_2_n_2 ;
  wire \pixel_word_count_reg[0]_i_2_n_3 ;
  wire \pixel_word_count_reg[0]_i_2_n_4 ;
  wire \pixel_word_count_reg[0]_i_2_n_5 ;
  wire \pixel_word_count_reg[0]_i_2_n_6 ;
  wire \pixel_word_count_reg[0]_i_2_n_7 ;
  wire \pixel_word_count_reg[12]_i_1_n_0 ;
  wire \pixel_word_count_reg[12]_i_1_n_1 ;
  wire \pixel_word_count_reg[12]_i_1_n_2 ;
  wire \pixel_word_count_reg[12]_i_1_n_3 ;
  wire \pixel_word_count_reg[12]_i_1_n_4 ;
  wire \pixel_word_count_reg[12]_i_1_n_5 ;
  wire \pixel_word_count_reg[12]_i_1_n_6 ;
  wire \pixel_word_count_reg[12]_i_1_n_7 ;
  wire \pixel_word_count_reg[16]_i_1_n_0 ;
  wire \pixel_word_count_reg[16]_i_1_n_1 ;
  wire \pixel_word_count_reg[16]_i_1_n_2 ;
  wire \pixel_word_count_reg[16]_i_1_n_3 ;
  wire \pixel_word_count_reg[16]_i_1_n_4 ;
  wire \pixel_word_count_reg[16]_i_1_n_5 ;
  wire \pixel_word_count_reg[16]_i_1_n_6 ;
  wire \pixel_word_count_reg[16]_i_1_n_7 ;
  wire \pixel_word_count_reg[20]_i_1_n_0 ;
  wire \pixel_word_count_reg[20]_i_1_n_1 ;
  wire \pixel_word_count_reg[20]_i_1_n_2 ;
  wire \pixel_word_count_reg[20]_i_1_n_3 ;
  wire \pixel_word_count_reg[20]_i_1_n_4 ;
  wire \pixel_word_count_reg[20]_i_1_n_5 ;
  wire \pixel_word_count_reg[20]_i_1_n_6 ;
  wire \pixel_word_count_reg[20]_i_1_n_7 ;
  wire \pixel_word_count_reg[24]_i_1_n_0 ;
  wire \pixel_word_count_reg[24]_i_1_n_1 ;
  wire \pixel_word_count_reg[24]_i_1_n_2 ;
  wire \pixel_word_count_reg[24]_i_1_n_3 ;
  wire \pixel_word_count_reg[24]_i_1_n_4 ;
  wire \pixel_word_count_reg[24]_i_1_n_5 ;
  wire \pixel_word_count_reg[24]_i_1_n_6 ;
  wire \pixel_word_count_reg[24]_i_1_n_7 ;
  wire \pixel_word_count_reg[28]_i_1_n_1 ;
  wire \pixel_word_count_reg[28]_i_1_n_2 ;
  wire \pixel_word_count_reg[28]_i_1_n_3 ;
  wire \pixel_word_count_reg[28]_i_1_n_4 ;
  wire \pixel_word_count_reg[28]_i_1_n_5 ;
  wire \pixel_word_count_reg[28]_i_1_n_6 ;
  wire \pixel_word_count_reg[28]_i_1_n_7 ;
  wire \pixel_word_count_reg[4]_i_1_n_0 ;
  wire \pixel_word_count_reg[4]_i_1_n_1 ;
  wire \pixel_word_count_reg[4]_i_1_n_2 ;
  wire \pixel_word_count_reg[4]_i_1_n_3 ;
  wire \pixel_word_count_reg[4]_i_1_n_4 ;
  wire \pixel_word_count_reg[4]_i_1_n_5 ;
  wire \pixel_word_count_reg[4]_i_1_n_6 ;
  wire \pixel_word_count_reg[4]_i_1_n_7 ;
  wire \pixel_word_count_reg[8]_i_1_n_0 ;
  wire \pixel_word_count_reg[8]_i_1_n_1 ;
  wire \pixel_word_count_reg[8]_i_1_n_2 ;
  wire \pixel_word_count_reg[8]_i_1_n_3 ;
  wire \pixel_word_count_reg[8]_i_1_n_4 ;
  wire \pixel_word_count_reg[8]_i_1_n_5 ;
  wire \pixel_word_count_reg[8]_i_1_n_6 ;
  wire \pixel_word_count_reg[8]_i_1_n_7 ;
  wire receive_1_i_1_n_0;
  wire receive_2_i_1_n_0;
  wire [31:0]reg_data_out;
  wire [31:2]rgb1;
  wire [31:1]rgb2;
  wire [31:1]rgb3;
  wire [26:1]row_count0;
  wire \row_count[0]_i_2_n_0 ;
  wire \row_count[0]_i_3_n_0 ;
  wire \row_count[0]_i_4_n_0 ;
  wire \row_count[0]_i_5_n_0 ;
  wire \row_count[12]_i_2_n_0 ;
  wire \row_count[12]_i_3_n_0 ;
  wire \row_count[12]_i_4_n_0 ;
  wire \row_count[12]_i_5_n_0 ;
  wire \row_count[16]_i_2_n_0 ;
  wire \row_count[16]_i_3_n_0 ;
  wire \row_count[16]_i_4_n_0 ;
  wire \row_count[16]_i_5_n_0 ;
  wire \row_count[20]_i_2_n_0 ;
  wire \row_count[20]_i_3_n_0 ;
  wire \row_count[20]_i_4_n_0 ;
  wire \row_count[20]_i_5_n_0 ;
  wire \row_count[24]_i_2_n_0 ;
  wire \row_count[24]_i_3_n_0 ;
  wire \row_count[24]_i_4_n_0 ;
  wire \row_count[4]_i_2_n_0 ;
  wire \row_count[4]_i_3_n_0 ;
  wire \row_count[4]_i_4_n_0 ;
  wire \row_count[4]_i_5_n_0 ;
  wire \row_count[8]_i_2_n_0 ;
  wire \row_count[8]_i_3_n_0 ;
  wire \row_count[8]_i_4_n_0 ;
  wire \row_count[8]_i_5_n_0 ;
  wire [15:5]row_count_reg;
  wire \row_count_reg[0]_i_1_n_0 ;
  wire \row_count_reg[0]_i_1_n_1 ;
  wire \row_count_reg[0]_i_1_n_2 ;
  wire \row_count_reg[0]_i_1_n_3 ;
  wire \row_count_reg[0]_i_1_n_4 ;
  wire \row_count_reg[0]_i_1_n_5 ;
  wire \row_count_reg[0]_i_1_n_6 ;
  wire \row_count_reg[0]_i_1_n_7 ;
  wire \row_count_reg[0]_i_6_n_0 ;
  wire \row_count_reg[0]_i_6_n_1 ;
  wire \row_count_reg[0]_i_6_n_2 ;
  wire \row_count_reg[0]_i_6_n_3 ;
  wire \row_count_reg[12]_i_1_n_0 ;
  wire \row_count_reg[12]_i_1_n_1 ;
  wire \row_count_reg[12]_i_1_n_2 ;
  wire \row_count_reg[12]_i_1_n_3 ;
  wire \row_count_reg[12]_i_1_n_4 ;
  wire \row_count_reg[12]_i_1_n_5 ;
  wire \row_count_reg[12]_i_1_n_6 ;
  wire \row_count_reg[12]_i_1_n_7 ;
  wire \row_count_reg[12]_i_6_n_0 ;
  wire \row_count_reg[12]_i_6_n_1 ;
  wire \row_count_reg[12]_i_6_n_2 ;
  wire \row_count_reg[12]_i_6_n_3 ;
  wire \row_count_reg[16]_i_1_n_0 ;
  wire \row_count_reg[16]_i_1_n_1 ;
  wire \row_count_reg[16]_i_1_n_2 ;
  wire \row_count_reg[16]_i_1_n_3 ;
  wire \row_count_reg[16]_i_1_n_4 ;
  wire \row_count_reg[16]_i_1_n_5 ;
  wire \row_count_reg[16]_i_1_n_6 ;
  wire \row_count_reg[16]_i_1_n_7 ;
  wire \row_count_reg[16]_i_6_n_0 ;
  wire \row_count_reg[16]_i_6_n_1 ;
  wire \row_count_reg[16]_i_6_n_2 ;
  wire \row_count_reg[16]_i_6_n_3 ;
  wire \row_count_reg[20]_i_1_n_0 ;
  wire \row_count_reg[20]_i_1_n_1 ;
  wire \row_count_reg[20]_i_1_n_2 ;
  wire \row_count_reg[20]_i_1_n_3 ;
  wire \row_count_reg[20]_i_1_n_4 ;
  wire \row_count_reg[20]_i_1_n_5 ;
  wire \row_count_reg[20]_i_1_n_6 ;
  wire \row_count_reg[20]_i_1_n_7 ;
  wire \row_count_reg[20]_i_6_n_0 ;
  wire \row_count_reg[20]_i_6_n_1 ;
  wire \row_count_reg[20]_i_6_n_2 ;
  wire \row_count_reg[20]_i_6_n_3 ;
  wire \row_count_reg[24]_i_1_n_2 ;
  wire \row_count_reg[24]_i_1_n_3 ;
  wire \row_count_reg[24]_i_1_n_5 ;
  wire \row_count_reg[24]_i_1_n_6 ;
  wire \row_count_reg[24]_i_1_n_7 ;
  wire \row_count_reg[24]_i_5_n_3 ;
  wire \row_count_reg[4]_i_1_n_0 ;
  wire \row_count_reg[4]_i_1_n_1 ;
  wire \row_count_reg[4]_i_1_n_2 ;
  wire \row_count_reg[4]_i_1_n_3 ;
  wire \row_count_reg[4]_i_1_n_4 ;
  wire \row_count_reg[4]_i_1_n_5 ;
  wire \row_count_reg[4]_i_1_n_6 ;
  wire \row_count_reg[4]_i_1_n_7 ;
  wire \row_count_reg[4]_i_6_n_0 ;
  wire \row_count_reg[4]_i_6_n_1 ;
  wire \row_count_reg[4]_i_6_n_2 ;
  wire \row_count_reg[4]_i_6_n_3 ;
  wire \row_count_reg[8]_i_1_n_0 ;
  wire \row_count_reg[8]_i_1_n_1 ;
  wire \row_count_reg[8]_i_1_n_2 ;
  wire \row_count_reg[8]_i_1_n_3 ;
  wire \row_count_reg[8]_i_1_n_4 ;
  wire \row_count_reg[8]_i_1_n_5 ;
  wire \row_count_reg[8]_i_1_n_6 ;
  wire \row_count_reg[8]_i_1_n_7 ;
  wire \row_count_reg[8]_i_6_n_0 ;
  wire \row_count_reg[8]_i_6_n_1 ;
  wire \row_count_reg[8]_i_6_n_2 ;
  wire \row_count_reg[8]_i_6_n_3 ;
  wire [26:16]row_count_reg__0;
  wire \row_count_reg_n_0_[0] ;
  wire \row_count_reg_n_0_[1] ;
  wire \row_count_reg_n_0_[2] ;
  wire \row_count_reg_n_0_[3] ;
  wire \row_count_reg_n_0_[4] ;
  wire [31:7]slv_reg0;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg11;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[25] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[29] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[30] ;
  wire \slv_reg3_reg_n_0_[31] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire [31:7]slv_reg4;
  wire \slv_reg4_reg_n_0_[0] ;
  wire \slv_reg4_reg_n_0_[10] ;
  wire \slv_reg4_reg_n_0_[11] ;
  wire \slv_reg4_reg_n_0_[12] ;
  wire \slv_reg4_reg_n_0_[13] ;
  wire \slv_reg4_reg_n_0_[14] ;
  wire \slv_reg4_reg_n_0_[15] ;
  wire \slv_reg4_reg_n_0_[16] ;
  wire \slv_reg4_reg_n_0_[17] ;
  wire \slv_reg4_reg_n_0_[18] ;
  wire \slv_reg4_reg_n_0_[19] ;
  wire \slv_reg4_reg_n_0_[1] ;
  wire \slv_reg4_reg_n_0_[20] ;
  wire \slv_reg4_reg_n_0_[21] ;
  wire \slv_reg4_reg_n_0_[22] ;
  wire \slv_reg4_reg_n_0_[23] ;
  wire \slv_reg4_reg_n_0_[24] ;
  wire \slv_reg4_reg_n_0_[25] ;
  wire \slv_reg4_reg_n_0_[26] ;
  wire \slv_reg4_reg_n_0_[27] ;
  wire \slv_reg4_reg_n_0_[28] ;
  wire \slv_reg4_reg_n_0_[29] ;
  wire \slv_reg4_reg_n_0_[2] ;
  wire \slv_reg4_reg_n_0_[30] ;
  wire \slv_reg4_reg_n_0_[31] ;
  wire \slv_reg4_reg_n_0_[3] ;
  wire \slv_reg4_reg_n_0_[4] ;
  wire \slv_reg4_reg_n_0_[5] ;
  wire \slv_reg4_reg_n_0_[6] ;
  wire \slv_reg4_reg_n_0_[7] ;
  wire \slv_reg4_reg_n_0_[8] ;
  wire \slv_reg4_reg_n_0_[9] ;
  wire [31:0]slv_reg50;
  wire slv_reg51;
  wire \slv_reg5[0]_i_1_n_0 ;
  wire \slv_reg5[10]_i_1_n_0 ;
  wire \slv_reg5[11]_i_10_n_0 ;
  wire \slv_reg5[11]_i_11_n_0 ;
  wire \slv_reg5[11]_i_1_n_0 ;
  wire \slv_reg5[11]_i_4_n_0 ;
  wire \slv_reg5[11]_i_5_n_0 ;
  wire \slv_reg5[11]_i_6_n_0 ;
  wire \slv_reg5[11]_i_7_n_0 ;
  wire \slv_reg5[11]_i_8_n_0 ;
  wire \slv_reg5[11]_i_9_n_0 ;
  wire \slv_reg5[12]_i_1_n_0 ;
  wire \slv_reg5[13]_i_1_n_0 ;
  wire \slv_reg5[14]_i_1_n_0 ;
  wire \slv_reg5[15]_i_10_n_0 ;
  wire \slv_reg5[15]_i_11_n_0 ;
  wire \slv_reg5[15]_i_12_n_0 ;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[15]_i_2_n_0 ;
  wire \slv_reg5[15]_i_5_n_0 ;
  wire \slv_reg5[15]_i_6_n_0 ;
  wire \slv_reg5[15]_i_7_n_0 ;
  wire \slv_reg5[15]_i_8_n_0 ;
  wire \slv_reg5[15]_i_9_n_0 ;
  wire \slv_reg5[16]_i_1_n_0 ;
  wire \slv_reg5[17]_i_1_n_0 ;
  wire \slv_reg5[18]_i_1_n_0 ;
  wire \slv_reg5[19]_i_10_n_0 ;
  wire \slv_reg5[19]_i_11_n_0 ;
  wire \slv_reg5[19]_i_1_n_0 ;
  wire \slv_reg5[19]_i_4_n_0 ;
  wire \slv_reg5[19]_i_5_n_0 ;
  wire \slv_reg5[19]_i_6_n_0 ;
  wire \slv_reg5[19]_i_7_n_0 ;
  wire \slv_reg5[19]_i_8_n_0 ;
  wire \slv_reg5[19]_i_9_n_0 ;
  wire \slv_reg5[1]_i_1_n_0 ;
  wire \slv_reg5[20]_i_1_n_0 ;
  wire \slv_reg5[21]_i_1_n_0 ;
  wire \slv_reg5[22]_i_1_n_0 ;
  wire \slv_reg5[23]_i_10_n_0 ;
  wire \slv_reg5[23]_i_11_n_0 ;
  wire \slv_reg5[23]_i_12_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[23]_i_2_n_0 ;
  wire \slv_reg5[23]_i_5_n_0 ;
  wire \slv_reg5[23]_i_6_n_0 ;
  wire \slv_reg5[23]_i_7_n_0 ;
  wire \slv_reg5[23]_i_8_n_0 ;
  wire \slv_reg5[23]_i_9_n_0 ;
  wire \slv_reg5[24]_i_1_n_0 ;
  wire \slv_reg5[25]_i_1_n_0 ;
  wire \slv_reg5[26]_i_1_n_0 ;
  wire \slv_reg5[27]_i_10_n_0 ;
  wire \slv_reg5[27]_i_11_n_0 ;
  wire \slv_reg5[27]_i_1_n_0 ;
  wire \slv_reg5[27]_i_4_n_0 ;
  wire \slv_reg5[27]_i_5_n_0 ;
  wire \slv_reg5[27]_i_6_n_0 ;
  wire \slv_reg5[27]_i_7_n_0 ;
  wire \slv_reg5[27]_i_8_n_0 ;
  wire \slv_reg5[27]_i_9_n_0 ;
  wire \slv_reg5[28]_i_1_n_0 ;
  wire \slv_reg5[29]_i_1_n_0 ;
  wire \slv_reg5[2]_i_1_n_0 ;
  wire \slv_reg5[30]_i_1_n_0 ;
  wire \slv_reg5[31]_i_10_n_0 ;
  wire \slv_reg5[31]_i_11_n_0 ;
  wire \slv_reg5[31]_i_12_n_0 ;
  wire \slv_reg5[31]_i_14_n_0 ;
  wire \slv_reg5[31]_i_15_n_0 ;
  wire \slv_reg5[31]_i_16_n_0 ;
  wire \slv_reg5[31]_i_17_n_0 ;
  wire \slv_reg5[31]_i_18_n_0 ;
  wire \slv_reg5[31]_i_19_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[31]_i_20_n_0 ;
  wire \slv_reg5[31]_i_21_n_0 ;
  wire \slv_reg5[31]_i_22_n_0 ;
  wire \slv_reg5[31]_i_23_n_0 ;
  wire \slv_reg5[31]_i_24_n_0 ;
  wire \slv_reg5[31]_i_25_n_0 ;
  wire \slv_reg5[31]_i_27_n_0 ;
  wire \slv_reg5[31]_i_28_n_0 ;
  wire \slv_reg5[31]_i_29_n_0 ;
  wire \slv_reg5[31]_i_2_n_0 ;
  wire \slv_reg5[31]_i_30_n_0 ;
  wire \slv_reg5[31]_i_31_n_0 ;
  wire \slv_reg5[31]_i_32_n_0 ;
  wire \slv_reg5[31]_i_33_n_0 ;
  wire \slv_reg5[31]_i_34_n_0 ;
  wire \slv_reg5[31]_i_36_n_0 ;
  wire \slv_reg5[31]_i_37_n_0 ;
  wire \slv_reg5[31]_i_38_n_0 ;
  wire \slv_reg5[31]_i_39_n_0 ;
  wire \slv_reg5[31]_i_3_n_0 ;
  wire \slv_reg5[31]_i_40_n_0 ;
  wire \slv_reg5[31]_i_41_n_0 ;
  wire \slv_reg5[31]_i_42_n_0 ;
  wire \slv_reg5[31]_i_43_n_0 ;
  wire \slv_reg5[31]_i_44_n_0 ;
  wire \slv_reg5[31]_i_45_n_0 ;
  wire \slv_reg5[31]_i_46_n_0 ;
  wire \slv_reg5[31]_i_47_n_0 ;
  wire \slv_reg5[31]_i_48_n_0 ;
  wire \slv_reg5[31]_i_49_n_0 ;
  wire \slv_reg5[31]_i_50_n_0 ;
  wire \slv_reg5[31]_i_51_n_0 ;
  wire \slv_reg5[31]_i_5_n_0 ;
  wire \slv_reg5[31]_i_9_n_0 ;
  wire \slv_reg5[3]_i_10_n_0 ;
  wire \slv_reg5[3]_i_11_n_0 ;
  wire \slv_reg5[3]_i_1_n_0 ;
  wire \slv_reg5[3]_i_4_n_0 ;
  wire \slv_reg5[3]_i_5_n_0 ;
  wire \slv_reg5[3]_i_6_n_0 ;
  wire \slv_reg5[3]_i_7_n_0 ;
  wire \slv_reg5[3]_i_8_n_0 ;
  wire \slv_reg5[3]_i_9_n_0 ;
  wire \slv_reg5[4]_i_1_n_0 ;
  wire \slv_reg5[5]_i_1_n_0 ;
  wire \slv_reg5[6]_i_1_n_0 ;
  wire \slv_reg5[7]_i_10_n_0 ;
  wire \slv_reg5[7]_i_11_n_0 ;
  wire \slv_reg5[7]_i_12_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire \slv_reg5[7]_i_2_n_0 ;
  wire \slv_reg5[7]_i_5_n_0 ;
  wire \slv_reg5[7]_i_6_n_0 ;
  wire \slv_reg5[7]_i_7_n_0 ;
  wire \slv_reg5[7]_i_8_n_0 ;
  wire \slv_reg5[7]_i_9_n_0 ;
  wire \slv_reg5[8]_i_1_n_0 ;
  wire \slv_reg5[9]_i_1_n_0 ;
  wire \slv_reg5_reg[11]_i_2_n_0 ;
  wire \slv_reg5_reg[11]_i_2_n_1 ;
  wire \slv_reg5_reg[11]_i_2_n_2 ;
  wire \slv_reg5_reg[11]_i_2_n_3 ;
  wire \slv_reg5_reg[11]_i_3_n_0 ;
  wire \slv_reg5_reg[11]_i_3_n_1 ;
  wire \slv_reg5_reg[11]_i_3_n_2 ;
  wire \slv_reg5_reg[11]_i_3_n_3 ;
  wire \slv_reg5_reg[11]_i_3_n_4 ;
  wire \slv_reg5_reg[11]_i_3_n_5 ;
  wire \slv_reg5_reg[11]_i_3_n_6 ;
  wire \slv_reg5_reg[11]_i_3_n_7 ;
  wire \slv_reg5_reg[15]_i_3_n_0 ;
  wire \slv_reg5_reg[15]_i_3_n_1 ;
  wire \slv_reg5_reg[15]_i_3_n_2 ;
  wire \slv_reg5_reg[15]_i_3_n_3 ;
  wire \slv_reg5_reg[15]_i_4_n_0 ;
  wire \slv_reg5_reg[15]_i_4_n_1 ;
  wire \slv_reg5_reg[15]_i_4_n_2 ;
  wire \slv_reg5_reg[15]_i_4_n_3 ;
  wire \slv_reg5_reg[15]_i_4_n_4 ;
  wire \slv_reg5_reg[15]_i_4_n_5 ;
  wire \slv_reg5_reg[15]_i_4_n_6 ;
  wire \slv_reg5_reg[15]_i_4_n_7 ;
  wire \slv_reg5_reg[19]_i_2_n_0 ;
  wire \slv_reg5_reg[19]_i_2_n_1 ;
  wire \slv_reg5_reg[19]_i_2_n_2 ;
  wire \slv_reg5_reg[19]_i_2_n_3 ;
  wire \slv_reg5_reg[19]_i_3_n_0 ;
  wire \slv_reg5_reg[19]_i_3_n_1 ;
  wire \slv_reg5_reg[19]_i_3_n_2 ;
  wire \slv_reg5_reg[19]_i_3_n_3 ;
  wire \slv_reg5_reg[19]_i_3_n_4 ;
  wire \slv_reg5_reg[19]_i_3_n_5 ;
  wire \slv_reg5_reg[19]_i_3_n_6 ;
  wire \slv_reg5_reg[19]_i_3_n_7 ;
  wire \slv_reg5_reg[23]_i_3_n_0 ;
  wire \slv_reg5_reg[23]_i_3_n_1 ;
  wire \slv_reg5_reg[23]_i_3_n_2 ;
  wire \slv_reg5_reg[23]_i_3_n_3 ;
  wire \slv_reg5_reg[23]_i_4_n_0 ;
  wire \slv_reg5_reg[23]_i_4_n_1 ;
  wire \slv_reg5_reg[23]_i_4_n_2 ;
  wire \slv_reg5_reg[23]_i_4_n_3 ;
  wire \slv_reg5_reg[23]_i_4_n_4 ;
  wire \slv_reg5_reg[23]_i_4_n_5 ;
  wire \slv_reg5_reg[23]_i_4_n_6 ;
  wire \slv_reg5_reg[23]_i_4_n_7 ;
  wire \slv_reg5_reg[27]_i_2_n_0 ;
  wire \slv_reg5_reg[27]_i_2_n_1 ;
  wire \slv_reg5_reg[27]_i_2_n_2 ;
  wire \slv_reg5_reg[27]_i_2_n_3 ;
  wire \slv_reg5_reg[27]_i_3_n_0 ;
  wire \slv_reg5_reg[27]_i_3_n_1 ;
  wire \slv_reg5_reg[27]_i_3_n_2 ;
  wire \slv_reg5_reg[27]_i_3_n_3 ;
  wire \slv_reg5_reg[27]_i_3_n_4 ;
  wire \slv_reg5_reg[27]_i_3_n_5 ;
  wire \slv_reg5_reg[27]_i_3_n_6 ;
  wire \slv_reg5_reg[27]_i_3_n_7 ;
  wire \slv_reg5_reg[31]_i_13_n_0 ;
  wire \slv_reg5_reg[31]_i_13_n_1 ;
  wire \slv_reg5_reg[31]_i_13_n_2 ;
  wire \slv_reg5_reg[31]_i_13_n_3 ;
  wire \slv_reg5_reg[31]_i_26_n_0 ;
  wire \slv_reg5_reg[31]_i_26_n_1 ;
  wire \slv_reg5_reg[31]_i_26_n_2 ;
  wire \slv_reg5_reg[31]_i_26_n_3 ;
  wire \slv_reg5_reg[31]_i_35_n_0 ;
  wire \slv_reg5_reg[31]_i_35_n_1 ;
  wire \slv_reg5_reg[31]_i_35_n_2 ;
  wire \slv_reg5_reg[31]_i_35_n_3 ;
  wire \slv_reg5_reg[31]_i_6_n_1 ;
  wire \slv_reg5_reg[31]_i_6_n_2 ;
  wire \slv_reg5_reg[31]_i_6_n_3 ;
  wire \slv_reg5_reg[31]_i_7_n_0 ;
  wire \slv_reg5_reg[31]_i_7_n_1 ;
  wire \slv_reg5_reg[31]_i_7_n_2 ;
  wire \slv_reg5_reg[31]_i_7_n_3 ;
  wire \slv_reg5_reg[31]_i_8_n_1 ;
  wire \slv_reg5_reg[31]_i_8_n_2 ;
  wire \slv_reg5_reg[31]_i_8_n_3 ;
  wire \slv_reg5_reg[31]_i_8_n_4 ;
  wire \slv_reg5_reg[31]_i_8_n_5 ;
  wire \slv_reg5_reg[31]_i_8_n_6 ;
  wire \slv_reg5_reg[31]_i_8_n_7 ;
  wire \slv_reg5_reg[3]_i_2_n_0 ;
  wire \slv_reg5_reg[3]_i_2_n_1 ;
  wire \slv_reg5_reg[3]_i_2_n_2 ;
  wire \slv_reg5_reg[3]_i_2_n_3 ;
  wire \slv_reg5_reg[3]_i_3_n_0 ;
  wire \slv_reg5_reg[3]_i_3_n_1 ;
  wire \slv_reg5_reg[3]_i_3_n_2 ;
  wire \slv_reg5_reg[3]_i_3_n_3 ;
  wire \slv_reg5_reg[3]_i_3_n_4 ;
  wire \slv_reg5_reg[3]_i_3_n_5 ;
  wire \slv_reg5_reg[3]_i_3_n_6 ;
  wire \slv_reg5_reg[3]_i_3_n_7 ;
  wire \slv_reg5_reg[7]_i_3_n_0 ;
  wire \slv_reg5_reg[7]_i_3_n_1 ;
  wire \slv_reg5_reg[7]_i_3_n_2 ;
  wire \slv_reg5_reg[7]_i_3_n_3 ;
  wire \slv_reg5_reg[7]_i_4_n_0 ;
  wire \slv_reg5_reg[7]_i_4_n_1 ;
  wire \slv_reg5_reg[7]_i_4_n_2 ;
  wire \slv_reg5_reg[7]_i_4_n_3 ;
  wire \slv_reg5_reg[7]_i_4_n_4 ;
  wire \slv_reg5_reg[7]_i_4_n_5 ;
  wire \slv_reg5_reg[7]_i_4_n_6 ;
  wire \slv_reg5_reg[7]_i_4_n_7 ;
  wire \slv_reg5_reg_n_0_[0] ;
  wire \slv_reg5_reg_n_0_[10] ;
  wire \slv_reg5_reg_n_0_[11] ;
  wire \slv_reg5_reg_n_0_[12] ;
  wire \slv_reg5_reg_n_0_[13] ;
  wire \slv_reg5_reg_n_0_[14] ;
  wire \slv_reg5_reg_n_0_[15] ;
  wire \slv_reg5_reg_n_0_[16] ;
  wire \slv_reg5_reg_n_0_[17] ;
  wire \slv_reg5_reg_n_0_[18] ;
  wire \slv_reg5_reg_n_0_[19] ;
  wire \slv_reg5_reg_n_0_[1] ;
  wire \slv_reg5_reg_n_0_[20] ;
  wire \slv_reg5_reg_n_0_[21] ;
  wire \slv_reg5_reg_n_0_[22] ;
  wire \slv_reg5_reg_n_0_[23] ;
  wire \slv_reg5_reg_n_0_[24] ;
  wire \slv_reg5_reg_n_0_[25] ;
  wire \slv_reg5_reg_n_0_[26] ;
  wire \slv_reg5_reg_n_0_[27] ;
  wire \slv_reg5_reg_n_0_[28] ;
  wire \slv_reg5_reg_n_0_[29] ;
  wire \slv_reg5_reg_n_0_[2] ;
  wire \slv_reg5_reg_n_0_[30] ;
  wire \slv_reg5_reg_n_0_[31] ;
  wire \slv_reg5_reg_n_0_[3] ;
  wire \slv_reg5_reg_n_0_[4] ;
  wire \slv_reg5_reg_n_0_[5] ;
  wire \slv_reg5_reg_n_0_[6] ;
  wire \slv_reg5_reg_n_0_[7] ;
  wire \slv_reg5_reg_n_0_[8] ;
  wire \slv_reg5_reg_n_0_[9] ;
  wire [1:0]slv_reg6;
  wire \slv_reg6[1]_i_1_n_0 ;
  wire [31:7]slv_reg7;
  wire \slv_reg7_reg_n_0_[0] ;
  wire \slv_reg7_reg_n_0_[10] ;
  wire \slv_reg7_reg_n_0_[11] ;
  wire \slv_reg7_reg_n_0_[12] ;
  wire \slv_reg7_reg_n_0_[13] ;
  wire \slv_reg7_reg_n_0_[14] ;
  wire \slv_reg7_reg_n_0_[15] ;
  wire \slv_reg7_reg_n_0_[16] ;
  wire \slv_reg7_reg_n_0_[17] ;
  wire \slv_reg7_reg_n_0_[18] ;
  wire \slv_reg7_reg_n_0_[19] ;
  wire \slv_reg7_reg_n_0_[1] ;
  wire \slv_reg7_reg_n_0_[20] ;
  wire \slv_reg7_reg_n_0_[21] ;
  wire \slv_reg7_reg_n_0_[22] ;
  wire \slv_reg7_reg_n_0_[23] ;
  wire \slv_reg7_reg_n_0_[24] ;
  wire \slv_reg7_reg_n_0_[25] ;
  wire \slv_reg7_reg_n_0_[26] ;
  wire \slv_reg7_reg_n_0_[27] ;
  wire \slv_reg7_reg_n_0_[28] ;
  wire \slv_reg7_reg_n_0_[29] ;
  wire \slv_reg7_reg_n_0_[2] ;
  wire \slv_reg7_reg_n_0_[30] ;
  wire \slv_reg7_reg_n_0_[31] ;
  wire \slv_reg7_reg_n_0_[3] ;
  wire \slv_reg7_reg_n_0_[4] ;
  wire \slv_reg7_reg_n_0_[5] ;
  wire \slv_reg7_reg_n_0_[6] ;
  wire \slv_reg7_reg_n_0_[7] ;
  wire \slv_reg7_reg_n_0_[8] ;
  wire \slv_reg7_reg_n_0_[9] ;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire \slv_reg8_reg_n_0_[0] ;
  wire \slv_reg8_reg_n_0_[10] ;
  wire \slv_reg8_reg_n_0_[11] ;
  wire \slv_reg8_reg_n_0_[12] ;
  wire \slv_reg8_reg_n_0_[13] ;
  wire \slv_reg8_reg_n_0_[14] ;
  wire \slv_reg8_reg_n_0_[15] ;
  wire \slv_reg8_reg_n_0_[16] ;
  wire \slv_reg8_reg_n_0_[17] ;
  wire \slv_reg8_reg_n_0_[18] ;
  wire \slv_reg8_reg_n_0_[19] ;
  wire \slv_reg8_reg_n_0_[1] ;
  wire \slv_reg8_reg_n_0_[20] ;
  wire \slv_reg8_reg_n_0_[21] ;
  wire \slv_reg8_reg_n_0_[22] ;
  wire \slv_reg8_reg_n_0_[23] ;
  wire \slv_reg8_reg_n_0_[24] ;
  wire \slv_reg8_reg_n_0_[25] ;
  wire \slv_reg8_reg_n_0_[26] ;
  wire \slv_reg8_reg_n_0_[27] ;
  wire \slv_reg8_reg_n_0_[28] ;
  wire \slv_reg8_reg_n_0_[29] ;
  wire \slv_reg8_reg_n_0_[2] ;
  wire \slv_reg8_reg_n_0_[30] ;
  wire \slv_reg8_reg_n_0_[31] ;
  wire \slv_reg8_reg_n_0_[3] ;
  wire \slv_reg8_reg_n_0_[4] ;
  wire \slv_reg8_reg_n_0_[5] ;
  wire \slv_reg8_reg_n_0_[6] ;
  wire \slv_reg8_reg_n_0_[7] ;
  wire \slv_reg8_reg_n_0_[8] ;
  wire \slv_reg8_reg_n_0_[9] ;
  wire [31:7]slv_reg9;
  wire \slv_reg9_reg_n_0_[0] ;
  wire \slv_reg9_reg_n_0_[10] ;
  wire \slv_reg9_reg_n_0_[11] ;
  wire \slv_reg9_reg_n_0_[12] ;
  wire \slv_reg9_reg_n_0_[13] ;
  wire \slv_reg9_reg_n_0_[14] ;
  wire \slv_reg9_reg_n_0_[15] ;
  wire \slv_reg9_reg_n_0_[16] ;
  wire \slv_reg9_reg_n_0_[17] ;
  wire \slv_reg9_reg_n_0_[18] ;
  wire \slv_reg9_reg_n_0_[19] ;
  wire \slv_reg9_reg_n_0_[1] ;
  wire \slv_reg9_reg_n_0_[20] ;
  wire \slv_reg9_reg_n_0_[21] ;
  wire \slv_reg9_reg_n_0_[22] ;
  wire \slv_reg9_reg_n_0_[23] ;
  wire \slv_reg9_reg_n_0_[24] ;
  wire \slv_reg9_reg_n_0_[25] ;
  wire \slv_reg9_reg_n_0_[26] ;
  wire \slv_reg9_reg_n_0_[27] ;
  wire \slv_reg9_reg_n_0_[28] ;
  wire \slv_reg9_reg_n_0_[29] ;
  wire \slv_reg9_reg_n_0_[2] ;
  wire \slv_reg9_reg_n_0_[30] ;
  wire \slv_reg9_reg_n_0_[31] ;
  wire \slv_reg9_reg_n_0_[3] ;
  wire \slv_reg9_reg_n_0_[4] ;
  wire \slv_reg9_reg_n_0_[5] ;
  wire \slv_reg9_reg_n_0_[6] ;
  wire \slv_reg9_reg_n_0_[7] ;
  wire \slv_reg9_reg_n_0_[8] ;
  wire \slv_reg9_reg_n_0_[9] ;
  wire slv_reg_rden;
  wire slv_reg_wren;
  wire \small_column_count[0]_i_1_n_0 ;
  wire \small_column_count[1]_i_1_n_0 ;
  wire \small_column_count[2]_i_1_n_0 ;
  wire \small_column_count[3]_i_1_n_0 ;
  wire \small_column_count[3]_i_2_n_0 ;
  wire \small_column_count[3]_i_3_n_0 ;
  wire \small_column_count_reg_n_0_[0] ;
  wire \small_column_count_reg_n_0_[1] ;
  wire \small_column_count_reg_n_0_[2] ;
  wire \small_column_count_reg_n_0_[3] ;
  wire \small_row_count[0]_i_1_n_0 ;
  wire \small_row_count[1]_i_1_n_0 ;
  wire \small_row_count[2]_i_1_n_0 ;
  wire \small_row_count[3]_i_1_n_0 ;
  wire \small_row_count[4]_i_1_n_0 ;
  wire \small_row_count[4]_i_2_n_0 ;
  wire \small_row_count[4]_i_3_n_0 ;
  wire \small_row_count[4]_i_4_n_0 ;
  wire \small_row_count_reg_n_0_[0] ;
  wire \small_row_count_reg_n_0_[1] ;
  wire \small_row_count_reg_n_0_[2] ;
  wire \small_row_count_reg_n_0_[3] ;
  wire \small_row_count_reg_n_0_[4] ;
  wire start1;
  wire start1_i_1_n_0;
  wire start1_i_2_n_0;
  wire start2;
  wire start3;
  wire startClear;
  wire startClear2;
  wire startClear2_i_1_n_0;
  wire startClear2_i_2_n_0;
  wire startClear2_i_3_n_0;
  wire startClear3;
  wire startClear3_i_1_n_0;
  wire startClear3_i_2_n_0;
  wire startClear3_i_3_n_0;
  wire startClear3_i_4_n_0;
  wire startClear3_reg_n_0;
  wire startClear4_i_1_n_0;
  wire startClear4_reg_n_0;
  wire startClear_i_1_n_0;
  wire startClear_reg_n_0;
  wire [6:6]transfer_length_offset;
  wire \transfer_length_offset[3]_i_1_n_0 ;
  wire \transfer_length_offset[5]_i_1_n_0 ;
  wire \transfer_length_offset[6]_i_1_n_0 ;
  wire \transfer_length_offset_reg_n_0_[3] ;
  wire \transfer_length_offset_reg_n_0_[5] ;
  wire \transfer_length_offset_reg_n_0_[6] ;
  wire [31:0]w1_addr;
  wire w1_awvalid;
  wire w1_bready;
  wire w1_wvalid;
  wire w2_awvalid;
  wire w2_bready;
  wire w2_wvalid;
  wire w3_awvalid;
  wire w3_bready;
  wire w3_wvalid;
  wire write_1_n_10;
  wire write_1_n_11;
  wire write_1_n_12;
  wire write_1_n_13;
  wire write_1_n_14;
  wire write_1_n_15;
  wire write_1_n_16;
  wire write_1_n_17;
  wire write_1_n_18;
  wire write_1_n_19;
  wire write_1_n_20;
  wire write_1_n_21;
  wire write_1_n_22;
  wire write_1_n_23;
  wire write_1_n_24;
  wire write_1_n_25;
  wire write_1_n_26;
  wire write_1_n_27;
  wire write_1_n_28;
  wire write_1_n_29;
  wire write_1_n_30;
  wire write_1_n_31;
  wire write_1_n_32;
  wire write_1_n_33;
  wire write_1_n_34;
  wire write_1_n_35;
  wire write_1_n_36;
  wire write_1_n_37;
  wire write_1_n_38;
  wire write_1_n_39;
  wire write_1_n_40;
  wire write_1_n_41;
  wire write_1_n_42;
  wire write_1_n_43;
  wire write_1_n_44;
  wire write_1_n_45;
  wire write_1_n_46;
  wire write_1_n_47;
  wire write_1_n_48;
  wire write_1_n_49;
  wire write_1_n_5;
  wire write_1_n_50;
  wire write_1_n_6;
  wire write_1_n_8;
  wire write_1_n_9;
  wire write_2_n_5;
  wire write_2_n_6;
  wire write_3_n_10;
  wire write_3_n_11;
  wire write_3_n_5;
  wire write_3_n_6;
  wire write_3_n_8;
  wire write_3_n_9;
  wire write_clear2_n_5;
  wire write_clear2_n_6;
  wire write_clear2_n_7;
  wire write_clear3_n_10;
  wire write_clear3_n_11;
  wire write_clear3_n_12;
  wire write_clear3_n_5;
  wire write_clear3_n_6;
  wire write_clear3_n_7;
  wire write_clear3_n_8;
  wire write_clear3_n_9;
  wire write_clear4_n_2;
  wire write_clear4_n_4;
  wire write_clear4_n_5;
  wire write_clear4_n_6;
  wire write_clear4_n_7;
  wire write_clear_n_5;
  wire write_clear_n_6;
  wire write_clear_n_7;
  wire [3:0]\NLW_M_AXI_AWADDR_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_M_AXI_AWADDR_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_M_AXI_AWADDR_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_M_AXI_AWADDR_reg[31]_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_M_AXI_AWADDR_reg[6]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_M_AXI_AWADDR_reg[6]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_S_AXI_S2MM_TDATA_reg[31]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_S_AXI_S2MM_TDATA_reg[31]_i_15_O_UNCONNECTED ;
  wire [3:0]\NLW_S_AXI_S2MM_TDATA_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_S_AXI_S2MM_TDATA_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_clearDelay2_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_clearDelay3_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_clearDelay4_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_clearDelay_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_delayCounter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_dma_init_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_dma_init_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_gray1_reg[11]_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_gray1_reg[11]_i_15_CO_UNCONNECTED ;
  wire [2:2]\NLW_gray1_reg[11]_i_16_CO_UNCONNECTED ;
  wire [3:3]\NLW_gray1_reg[11]_i_16_O_UNCONNECTED ;
  wire [3:3]\NLW_gray1_reg[11]_i_6_CO_UNCONNECTED ;
  wire [2:2]\NLW_gray1_reg[11]_i_62_CO_UNCONNECTED ;
  wire [3:3]\NLW_gray1_reg[11]_i_62_O_UNCONNECTED ;
  wire [2:2]\NLW_gray1_reg[11]_i_63_CO_UNCONNECTED ;
  wire [3:3]\NLW_gray1_reg[11]_i_63_O_UNCONNECTED ;
  wire [2:2]\NLW_gray1_reg[11]_i_65_CO_UNCONNECTED ;
  wire [3:3]\NLW_gray1_reg[11]_i_65_O_UNCONNECTED ;
  wire [3:3]\NLW_gray1_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_gray2_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_initS2MMClearSDelay_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_motion_detected_INST_0_i_1_O_UNCONNECTED;
  wire [3:0]NLW_motion_detected_INST_0_i_13_O_UNCONNECTED;
  wire [3:0]NLW_motion_detected_INST_0_i_2_O_UNCONNECTED;
  wire [3:0]NLW_motion_detected_INST_0_i_22_O_UNCONNECTED;
  wire [3:0]NLW_motion_detected_INST_0_i_3_O_UNCONNECTED;
  wire [3:0]NLW_motion_detected_INST_0_i_31_O_UNCONNECTED;
  wire [3:0]NLW_motion_detected_INST_0_i_4_O_UNCONNECTED;
  wire [3:0]NLW_motion_detected_INST_0_i_40_O_UNCONNECTED;
  wire [3:0]NLW_motion_detected_INST_0_i_49_O_UNCONNECTED;
  wire [3:0]NLW_motion_detected_INST_0_i_58_O_UNCONNECTED;
  wire [3:0]NLW_motion_detected_INST_0_i_67_O_UNCONNECTED;
  wire [3:0]NLW_motion_detected_INST_0_i_76_O_UNCONNECTED;
  wire [3:0]\NLW_nextState_reg[2]_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_nextState_reg[2]_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_nextState_reg[2]_i_34_O_UNCONNECTED ;
  wire [3:0]\NLW_nextState_reg[2]_i_43_O_UNCONNECTED ;
  wire [3:3]\NLW_overlayDelayCounter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pixel_word_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_row_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_row_count_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_row_count_reg[24]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_row_count_reg[24]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_slv_reg5_reg[31]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_slv_reg5_reg[31]_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_slv_reg5_reg[31]_i_35_O_UNCONNECTED ;
  wire [3:3]\NLW_slv_reg5_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_slv_reg5_reg[31]_i_7_O_UNCONNECTED ;
  wire [3:3]\NLW_slv_reg5_reg[31]_i_8_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[6]_i_10 
       (.I0(dma_base[3]),
        .I1(\transfer_length_offset_reg_n_0_[3] ),
        .O(addr0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[6]_i_4 
       (.I0(dma_base[6]),
        .I1(\transfer_length_offset_reg_n_0_[6] ),
        .O(\M_AXI_AWADDR[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[6]_i_5 
       (.I0(dma_base[5]),
        .I1(\transfer_length_offset_reg_n_0_[5] ),
        .O(\M_AXI_AWADDR[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[6]_i_6 
       (.I0(dma_base[4]),
        .I1(\transfer_length_offset_reg_n_0_[6] ),
        .O(\M_AXI_AWADDR[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[6]_i_7 
       (.I0(dma_base[3]),
        .I1(\transfer_length_offset_reg_n_0_[3] ),
        .O(\M_AXI_AWADDR[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[6]_i_8 
       (.I0(dma_base[6]),
        .I1(\transfer_length_offset_reg_n_0_[6] ),
        .O(\M_AXI_AWADDR[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \M_AXI_AWADDR[6]_i_9 
       (.I0(dma_base[4]),
        .I1(\transfer_length_offset_reg_n_0_[5] ),
        .O(\M_AXI_AWADDR[6]_i_9_n_0 ));
  FDRE \M_AXI_AWADDR_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_40),
        .Q(M_AXI_AWADDR[0]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_30),
        .Q(M_AXI_AWADDR[10]),
        .R(1'b0));
  CARRY4 \M_AXI_AWADDR_reg[10]_i_2 
       (.CI(\M_AXI_AWADDR_reg[6]_i_2_n_0 ),
        .CO({\M_AXI_AWADDR_reg[10]_i_2_n_0 ,\M_AXI_AWADDR_reg[10]_i_2_n_1 ,\M_AXI_AWADDR_reg[10]_i_2_n_2 ,\M_AXI_AWADDR_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr0[10:7]),
        .S(dma_base[10:7]));
  CARRY4 \M_AXI_AWADDR_reg[10]_i_3 
       (.CI(\M_AXI_AWADDR_reg[6]_i_3_n_0 ),
        .CO({\M_AXI_AWADDR_reg[10]_i_3_n_0 ,\M_AXI_AWADDR_reg[10]_i_3_n_1 ,\M_AXI_AWADDR_reg[10]_i_3_n_2 ,\M_AXI_AWADDR_reg[10]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr02_out[10:7]),
        .S(dma_base[10:7]));
  FDRE \M_AXI_AWADDR_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_29),
        .Q(M_AXI_AWADDR[11]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_28),
        .Q(M_AXI_AWADDR[12]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_27),
        .Q(M_AXI_AWADDR[13]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_26),
        .Q(M_AXI_AWADDR[14]),
        .R(1'b0));
  CARRY4 \M_AXI_AWADDR_reg[14]_i_2 
       (.CI(\M_AXI_AWADDR_reg[10]_i_3_n_0 ),
        .CO({\M_AXI_AWADDR_reg[14]_i_2_n_0 ,\M_AXI_AWADDR_reg[14]_i_2_n_1 ,\M_AXI_AWADDR_reg[14]_i_2_n_2 ,\M_AXI_AWADDR_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr02_out[14:11]),
        .S(dma_base[14:11]));
  CARRY4 \M_AXI_AWADDR_reg[14]_i_3 
       (.CI(\M_AXI_AWADDR_reg[10]_i_2_n_0 ),
        .CO({\M_AXI_AWADDR_reg[14]_i_3_n_0 ,\M_AXI_AWADDR_reg[14]_i_3_n_1 ,\M_AXI_AWADDR_reg[14]_i_3_n_2 ,\M_AXI_AWADDR_reg[14]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr0[14:11]),
        .S(dma_base[14:11]));
  FDRE \M_AXI_AWADDR_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_25),
        .Q(M_AXI_AWADDR[15]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_24),
        .Q(M_AXI_AWADDR[16]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_23),
        .Q(M_AXI_AWADDR[17]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_22),
        .Q(M_AXI_AWADDR[18]),
        .R(1'b0));
  CARRY4 \M_AXI_AWADDR_reg[18]_i_2 
       (.CI(\M_AXI_AWADDR_reg[14]_i_2_n_0 ),
        .CO({\M_AXI_AWADDR_reg[18]_i_2_n_0 ,\M_AXI_AWADDR_reg[18]_i_2_n_1 ,\M_AXI_AWADDR_reg[18]_i_2_n_2 ,\M_AXI_AWADDR_reg[18]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr02_out[18:15]),
        .S(dma_base[18:15]));
  CARRY4 \M_AXI_AWADDR_reg[18]_i_3 
       (.CI(\M_AXI_AWADDR_reg[14]_i_3_n_0 ),
        .CO({\M_AXI_AWADDR_reg[18]_i_3_n_0 ,\M_AXI_AWADDR_reg[18]_i_3_n_1 ,\M_AXI_AWADDR_reg[18]_i_3_n_2 ,\M_AXI_AWADDR_reg[18]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr0[18:15]),
        .S(dma_base[18:15]));
  FDRE \M_AXI_AWADDR_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_21),
        .Q(M_AXI_AWADDR[19]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_39),
        .Q(M_AXI_AWADDR[1]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_20),
        .Q(M_AXI_AWADDR[20]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_19),
        .Q(M_AXI_AWADDR[21]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_18),
        .Q(M_AXI_AWADDR[22]),
        .R(1'b0));
  CARRY4 \M_AXI_AWADDR_reg[22]_i_2 
       (.CI(\M_AXI_AWADDR_reg[18]_i_3_n_0 ),
        .CO({\M_AXI_AWADDR_reg[22]_i_2_n_0 ,\M_AXI_AWADDR_reg[22]_i_2_n_1 ,\M_AXI_AWADDR_reg[22]_i_2_n_2 ,\M_AXI_AWADDR_reg[22]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr0[22:19]),
        .S(dma_base[22:19]));
  CARRY4 \M_AXI_AWADDR_reg[22]_i_3 
       (.CI(\M_AXI_AWADDR_reg[18]_i_2_n_0 ),
        .CO({\M_AXI_AWADDR_reg[22]_i_3_n_0 ,\M_AXI_AWADDR_reg[22]_i_3_n_1 ,\M_AXI_AWADDR_reg[22]_i_3_n_2 ,\M_AXI_AWADDR_reg[22]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr02_out[22:19]),
        .S(dma_base[22:19]));
  FDRE \M_AXI_AWADDR_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_17),
        .Q(M_AXI_AWADDR[23]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_16),
        .Q(M_AXI_AWADDR[24]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_15),
        .Q(M_AXI_AWADDR[25]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_14),
        .Q(M_AXI_AWADDR[26]),
        .R(1'b0));
  CARRY4 \M_AXI_AWADDR_reg[26]_i_2 
       (.CI(\M_AXI_AWADDR_reg[22]_i_2_n_0 ),
        .CO({\M_AXI_AWADDR_reg[26]_i_2_n_0 ,\M_AXI_AWADDR_reg[26]_i_2_n_1 ,\M_AXI_AWADDR_reg[26]_i_2_n_2 ,\M_AXI_AWADDR_reg[26]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr0[26:23]),
        .S(dma_base[26:23]));
  CARRY4 \M_AXI_AWADDR_reg[26]_i_3 
       (.CI(\M_AXI_AWADDR_reg[22]_i_3_n_0 ),
        .CO({\M_AXI_AWADDR_reg[26]_i_3_n_0 ,\M_AXI_AWADDR_reg[26]_i_3_n_1 ,\M_AXI_AWADDR_reg[26]_i_3_n_2 ,\M_AXI_AWADDR_reg[26]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr02_out[26:23]),
        .S(dma_base[26:23]));
  FDRE \M_AXI_AWADDR_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_13),
        .Q(M_AXI_AWADDR[27]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_12),
        .Q(M_AXI_AWADDR[28]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_11),
        .Q(M_AXI_AWADDR[29]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_38),
        .Q(M_AXI_AWADDR[2]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_10),
        .Q(M_AXI_AWADDR[30]),
        .R(1'b0));
  CARRY4 \M_AXI_AWADDR_reg[30]_i_2 
       (.CI(\M_AXI_AWADDR_reg[26]_i_2_n_0 ),
        .CO({\M_AXI_AWADDR_reg[30]_i_2_n_0 ,\M_AXI_AWADDR_reg[30]_i_2_n_1 ,\M_AXI_AWADDR_reg[30]_i_2_n_2 ,\M_AXI_AWADDR_reg[30]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr0[30:27]),
        .S(dma_base[30:27]));
  CARRY4 \M_AXI_AWADDR_reg[30]_i_3 
       (.CI(\M_AXI_AWADDR_reg[26]_i_3_n_0 ),
        .CO({\M_AXI_AWADDR_reg[30]_i_3_n_0 ,\M_AXI_AWADDR_reg[30]_i_3_n_1 ,\M_AXI_AWADDR_reg[30]_i_3_n_2 ,\M_AXI_AWADDR_reg[30]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr02_out[30:27]),
        .S(dma_base[30:27]));
  FDRE \M_AXI_AWADDR_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_9),
        .Q(M_AXI_AWADDR[31]),
        .R(1'b0));
  CARRY4 \M_AXI_AWADDR_reg[31]_i_2 
       (.CI(\M_AXI_AWADDR_reg[30]_i_2_n_0 ),
        .CO(\NLW_M_AXI_AWADDR_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_M_AXI_AWADDR_reg[31]_i_2_O_UNCONNECTED [3:1],addr0[31]}),
        .S({1'b0,1'b0,1'b0,dma_base[31]}));
  CARRY4 \M_AXI_AWADDR_reg[31]_i_3 
       (.CI(\M_AXI_AWADDR_reg[30]_i_3_n_0 ),
        .CO(\NLW_M_AXI_AWADDR_reg[31]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_M_AXI_AWADDR_reg[31]_i_3_O_UNCONNECTED [3:1],addr02_out[31]}),
        .S({1'b0,1'b0,1'b0,dma_base[31]}));
  FDRE \M_AXI_AWADDR_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_37),
        .Q(M_AXI_AWADDR[3]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_36),
        .Q(M_AXI_AWADDR[4]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_35),
        .Q(M_AXI_AWADDR[5]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_34),
        .Q(M_AXI_AWADDR[6]),
        .R(1'b0));
  CARRY4 \M_AXI_AWADDR_reg[6]_i_2 
       (.CI(1'b0),
        .CO({\M_AXI_AWADDR_reg[6]_i_2_n_0 ,\M_AXI_AWADDR_reg[6]_i_2_n_1 ,\M_AXI_AWADDR_reg[6]_i_2_n_2 ,\M_AXI_AWADDR_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(dma_base[6:3]),
        .O({addr0[6:4],\NLW_M_AXI_AWADDR_reg[6]_i_2_O_UNCONNECTED [0]}),
        .S({\M_AXI_AWADDR[6]_i_4_n_0 ,\M_AXI_AWADDR[6]_i_5_n_0 ,\M_AXI_AWADDR[6]_i_6_n_0 ,\M_AXI_AWADDR[6]_i_7_n_0 }));
  CARRY4 \M_AXI_AWADDR_reg[6]_i_3 
       (.CI(1'b0),
        .CO({\M_AXI_AWADDR_reg[6]_i_3_n_0 ,\M_AXI_AWADDR_reg[6]_i_3_n_1 ,\M_AXI_AWADDR_reg[6]_i_3_n_2 ,\M_AXI_AWADDR_reg[6]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(dma_base[6:3]),
        .O({addr02_out[6:4],\NLW_M_AXI_AWADDR_reg[6]_i_3_O_UNCONNECTED [0]}),
        .S({\M_AXI_AWADDR[6]_i_8_n_0 ,dma_base[5],\M_AXI_AWADDR[6]_i_9_n_0 ,addr0[3]}));
  FDRE \M_AXI_AWADDR_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_33),
        .Q(M_AXI_AWADDR[7]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_32),
        .Q(M_AXI_AWADDR[8]),
        .R(1'b0));
  FDRE \M_AXI_AWADDR_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_31),
        .Q(M_AXI_AWADDR[9]),
        .R(1'b0));
  FDRE M_AXI_AWVALID_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_42),
        .Q(M_AXI_AWVALID),
        .R(1'b0));
  FDRE M_AXI_BREADY_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_3_n_10),
        .Q(M_AXI_BREADY),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF3FF5353F3FF5F5F)) 
    \M_AXI_WDATA[0]_i_2 
       (.I0(\slv_reg8_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(Q[1]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\M_AXI_WDATA[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[10]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[10] ),
        .I2(\slv_reg1_reg_n_0_[10] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[10] ),
        .O(\M_AXI_WDATA[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[11]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[11] ),
        .I2(\slv_reg1_reg_n_0_[11] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[11] ),
        .O(\M_AXI_WDATA[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3535FFFFF535F)) 
    \M_AXI_WDATA[12]_i_2 
       (.I0(\slv_reg8_reg_n_0_[12] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(\slv_reg0_reg_n_0_[12] ),
        .I4(Q[1]),
        .I5(\slv_reg1_reg_n_0_[12] ),
        .O(\M_AXI_WDATA[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[13]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[13] ),
        .I2(\slv_reg1_reg_n_0_[13] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[13] ),
        .O(\M_AXI_WDATA[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[14]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[14] ),
        .I2(\slv_reg1_reg_n_0_[14] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[14] ),
        .O(\M_AXI_WDATA[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[15]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[15] ),
        .I2(\slv_reg1_reg_n_0_[15] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[15] ),
        .O(\M_AXI_WDATA[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[16]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[16] ),
        .I2(\slv_reg1_reg_n_0_[16] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[16] ),
        .O(\M_AXI_WDATA[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3FF5353F3FF5F5F)) 
    \M_AXI_WDATA[17]_i_2 
       (.I0(\slv_reg8_reg_n_0_[17] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(\slv_reg1_reg_n_0_[17] ),
        .I4(Q[1]),
        .I5(\slv_reg0_reg_n_0_[17] ),
        .O(\M_AXI_WDATA[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3535FFFFF535F)) 
    \M_AXI_WDATA[18]_i_2 
       (.I0(\slv_reg8_reg_n_0_[18] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(\slv_reg0_reg_n_0_[18] ),
        .I4(Q[1]),
        .I5(\slv_reg1_reg_n_0_[18] ),
        .O(\M_AXI_WDATA[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3535FFFFF535F)) 
    \M_AXI_WDATA[19]_i_2 
       (.I0(\slv_reg8_reg_n_0_[19] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(\slv_reg0_reg_n_0_[19] ),
        .I4(Q[1]),
        .I5(\slv_reg1_reg_n_0_[19] ),
        .O(\M_AXI_WDATA[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[1]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[1] ),
        .I2(\slv_reg1_reg_n_0_[1] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[1] ),
        .O(\M_AXI_WDATA[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[20]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[20] ),
        .I2(\slv_reg1_reg_n_0_[20] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[20] ),
        .O(\M_AXI_WDATA[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[21]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[21] ),
        .I2(\slv_reg1_reg_n_0_[21] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[21] ),
        .O(\M_AXI_WDATA[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[22]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[22] ),
        .I2(\slv_reg1_reg_n_0_[22] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[22] ),
        .O(\M_AXI_WDATA[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[23]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[23] ),
        .I2(\slv_reg1_reg_n_0_[23] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[23] ),
        .O(\M_AXI_WDATA[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[24]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[24] ),
        .I2(\slv_reg1_reg_n_0_[24] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[24] ),
        .O(\M_AXI_WDATA[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[25]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[25] ),
        .I2(\slv_reg1_reg_n_0_[25] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[25] ),
        .O(\M_AXI_WDATA[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[26]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[26] ),
        .I2(\slv_reg1_reg_n_0_[26] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[26] ),
        .O(\M_AXI_WDATA[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[27]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[27] ),
        .I2(\slv_reg1_reg_n_0_[27] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[27] ),
        .O(\M_AXI_WDATA[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[28]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[28] ),
        .I2(\slv_reg1_reg_n_0_[28] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[28] ),
        .O(\M_AXI_WDATA[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[29]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[29] ),
        .I2(\slv_reg1_reg_n_0_[29] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[29] ),
        .O(\M_AXI_WDATA[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3FF5353F3FF5F5F)) 
    \M_AXI_WDATA[2]_i_5 
       (.I0(\slv_reg8_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(\slv_reg1_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(\M_AXI_WDATA[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[30]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .I2(\slv_reg1_reg_n_0_[30] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[30] ),
        .O(\M_AXI_WDATA[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C0CACA00000ACA0)) 
    \M_AXI_WDATA[31]_i_2 
       (.I0(\slv_reg8_reg_n_0_[31] ),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(\slv_reg0_reg_n_0_[31] ),
        .I4(Q[1]),
        .I5(\slv_reg1_reg_n_0_[31] ),
        .O(\M_AXI_WDATA[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[3]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[3] ),
        .I2(\slv_reg1_reg_n_0_[3] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[3] ),
        .O(\M_AXI_WDATA[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0088FFA0008800A0)) 
    \M_AXI_WDATA[4]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg1_reg_n_0_[4] ),
        .I2(\slv_reg0_reg_n_0_[4] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[4] ),
        .O(\M_AXI_WDATA[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[5]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[5] ),
        .I2(\slv_reg1_reg_n_0_[5] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[5] ),
        .O(\M_AXI_WDATA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[6]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[6] ),
        .I2(\slv_reg1_reg_n_0_[6] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[6] ),
        .O(\M_AXI_WDATA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[7]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[7] ),
        .I2(\slv_reg1_reg_n_0_[7] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[7] ),
        .O(\M_AXI_WDATA[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[8]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[8] ),
        .I2(\slv_reg1_reg_n_0_[8] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[8] ),
        .O(\M_AXI_WDATA[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0FF8800A00088)) 
    \M_AXI_WDATA[9]_i_1 
       (.I0(Q[0]),
        .I1(\slv_reg0_reg_n_0_[9] ),
        .I2(\slv_reg1_reg_n_0_[9] ),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\slv_reg8_reg_n_0_[9] ),
        .O(\M_AXI_WDATA[9]_i_1_n_0 ));
  FDRE \M_AXI_WDATA_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_2_n_6),
        .Q(M_AXI_WDATA[0]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[10]_i_1_n_0 ),
        .Q(M_AXI_WDATA[10]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[11]_i_1_n_0 ),
        .Q(M_AXI_WDATA[11]),
        .R(write_1_n_6));
  FDSE \M_AXI_WDATA_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_44),
        .Q(M_AXI_WDATA[12]),
        .S(start3));
  FDRE \M_AXI_WDATA_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[13]_i_1_n_0 ),
        .Q(M_AXI_WDATA[13]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[14]_i_1_n_0 ),
        .Q(M_AXI_WDATA[14]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[15]_i_1_n_0 ),
        .Q(M_AXI_WDATA[15]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[16]_i_1_n_0 ),
        .Q(M_AXI_WDATA[16]),
        .R(write_1_n_6));
  FDSE \M_AXI_WDATA_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_45),
        .Q(M_AXI_WDATA[17]),
        .S(start3));
  FDSE \M_AXI_WDATA_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_46),
        .Q(M_AXI_WDATA[18]),
        .S(start3));
  FDSE \M_AXI_WDATA_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_47),
        .Q(M_AXI_WDATA[19]),
        .S(start3));
  FDRE \M_AXI_WDATA_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[1]_i_1_n_0 ),
        .Q(M_AXI_WDATA[1]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[20]_i_1_n_0 ),
        .Q(M_AXI_WDATA[20]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[21]_i_1_n_0 ),
        .Q(M_AXI_WDATA[21]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[22]_i_1_n_0 ),
        .Q(M_AXI_WDATA[22]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[23]_i_1_n_0 ),
        .Q(M_AXI_WDATA[23]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[24]_i_1_n_0 ),
        .Q(M_AXI_WDATA[24]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[25]_i_1_n_0 ),
        .Q(M_AXI_WDATA[25]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[26]_i_1_n_0 ),
        .Q(M_AXI_WDATA[26]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[27]_i_1_n_0 ),
        .Q(M_AXI_WDATA[27]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[28]_i_1_n_0 ),
        .Q(M_AXI_WDATA[28]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[29]_i_1_n_0 ),
        .Q(M_AXI_WDATA[29]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_41),
        .Q(M_AXI_WDATA[2]),
        .R(1'b0));
  FDRE \M_AXI_WDATA_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[30]_i_1_n_0 ),
        .Q(M_AXI_WDATA[30]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[31]_i_2_n_0 ),
        .Q(M_AXI_WDATA[31]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[3]_i_1_n_0 ),
        .Q(M_AXI_WDATA[3]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[4]_i_1_n_0 ),
        .Q(M_AXI_WDATA[4]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[5]_i_1_n_0 ),
        .Q(M_AXI_WDATA[5]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[6]_i_1_n_0 ),
        .Q(M_AXI_WDATA[6]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[7]_i_1_n_0 ),
        .Q(M_AXI_WDATA[7]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[8]_i_1_n_0 ),
        .Q(M_AXI_WDATA[8]),
        .R(write_1_n_6));
  FDRE \M_AXI_WDATA_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\M_AXI_WDATA[9]_i_1_n_0 ),
        .Q(M_AXI_WDATA[9]),
        .R(write_1_n_6));
  FDRE \M_AXI_WSTRB_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(write_1_n_43),
        .Q(M_AXI_WSTRB),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFB)) 
    M_AXI_WVALID_i_3
       (.I0(startClear2),
        .I1(startClear4_reg_n_0),
        .I2(startClear3_reg_n_0),
        .O(M_AXI_WVALID_i_3_n_0));
  FDRE M_AXI_WVALID_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_3_n_9),
        .Q(M_AXI_WVALID),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h08F8)) 
    \S_AXI_S2MM_TDATA[31]_i_1 
       (.I0(S_AXI_S2MM_TDATA),
        .I1(p_0_in1_in),
        .I2(pixel_word_count1),
        .I3(\S_AXI_S2MM_TDATA_reg[31]_i_4_n_0 ),
        .O(\S_AXI_S2MM_TDATA[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_11 
       (.I0(\slv_reg9_reg_n_0_[23] ),
        .I1(\slv_reg9_reg_n_0_[22] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_12 
       (.I0(\slv_reg9_reg_n_0_[21] ),
        .I1(\slv_reg9_reg_n_0_[20] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_13 
       (.I0(\slv_reg9_reg_n_0_[19] ),
        .I1(\slv_reg9_reg_n_0_[18] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_14 
       (.I0(\slv_reg9_reg_n_0_[17] ),
        .I1(\slv_reg9_reg_n_0_[16] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_16 
       (.I0(\slv_reg9_reg_n_0_[15] ),
        .I1(\slv_reg9_reg_n_0_[14] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_17 
       (.I0(\slv_reg9_reg_n_0_[13] ),
        .I1(\slv_reg9_reg_n_0_[12] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_18 
       (.I0(\slv_reg9_reg_n_0_[11] ),
        .I1(\slv_reg9_reg_n_0_[10] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_19 
       (.I0(\slv_reg9_reg_n_0_[9] ),
        .I1(\slv_reg9_reg_n_0_[8] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \S_AXI_S2MM_TDATA[31]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(p_0_in1_in));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_20 
       (.I0(\slv_reg9_reg_n_0_[7] ),
        .I1(\slv_reg9_reg_n_0_[6] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_21 
       (.I0(\slv_reg9_reg_n_0_[5] ),
        .I1(\slv_reg9_reg_n_0_[4] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_22 
       (.I0(\slv_reg9_reg_n_0_[3] ),
        .I1(\slv_reg9_reg_n_0_[2] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_23 
       (.I0(\slv_reg9_reg_n_0_[1] ),
        .I1(\slv_reg9_reg_n_0_[0] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \S_AXI_S2MM_TDATA[31]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(\maxDiffCol[4]_i_2_n_0 ),
        .I4(S_AXI_S2MM_TREADY),
        .I5(finish_send),
        .O(pixel_word_count1));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_6 
       (.I0(\slv_reg9_reg_n_0_[31] ),
        .I1(\slv_reg9_reg_n_0_[30] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_7 
       (.I0(\slv_reg9_reg_n_0_[29] ),
        .I1(\slv_reg9_reg_n_0_[28] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_8 
       (.I0(\slv_reg9_reg_n_0_[27] ),
        .I1(\slv_reg9_reg_n_0_[26] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \S_AXI_S2MM_TDATA[31]_i_9 
       (.I0(\slv_reg9_reg_n_0_[25] ),
        .I1(\slv_reg9_reg_n_0_[24] ),
        .O(\S_AXI_S2MM_TDATA[31]_i_9_n_0 ));
  FDRE \S_AXI_S2MM_TDATA_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\S_AXI_S2MM_TDATA[31]_i_1_n_0 ),
        .Q(S_AXI_S2MM_TDATA),
        .R(1'b0));
  CARRY4 \S_AXI_S2MM_TDATA_reg[31]_i_10 
       (.CI(\S_AXI_S2MM_TDATA_reg[31]_i_15_n_0 ),
        .CO({\S_AXI_S2MM_TDATA_reg[31]_i_10_n_0 ,\S_AXI_S2MM_TDATA_reg[31]_i_10_n_1 ,\S_AXI_S2MM_TDATA_reg[31]_i_10_n_2 ,\S_AXI_S2MM_TDATA_reg[31]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_S_AXI_S2MM_TDATA_reg[31]_i_10_O_UNCONNECTED [3:0]),
        .S({\S_AXI_S2MM_TDATA[31]_i_16_n_0 ,\S_AXI_S2MM_TDATA[31]_i_17_n_0 ,\S_AXI_S2MM_TDATA[31]_i_18_n_0 ,\S_AXI_S2MM_TDATA[31]_i_19_n_0 }));
  CARRY4 \S_AXI_S2MM_TDATA_reg[31]_i_15 
       (.CI(1'b0),
        .CO({\S_AXI_S2MM_TDATA_reg[31]_i_15_n_0 ,\S_AXI_S2MM_TDATA_reg[31]_i_15_n_1 ,\S_AXI_S2MM_TDATA_reg[31]_i_15_n_2 ,\S_AXI_S2MM_TDATA_reg[31]_i_15_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_S_AXI_S2MM_TDATA_reg[31]_i_15_O_UNCONNECTED [3:0]),
        .S({\S_AXI_S2MM_TDATA[31]_i_20_n_0 ,\S_AXI_S2MM_TDATA[31]_i_21_n_0 ,\S_AXI_S2MM_TDATA[31]_i_22_n_0 ,\S_AXI_S2MM_TDATA[31]_i_23_n_0 }));
  CARRY4 \S_AXI_S2MM_TDATA_reg[31]_i_4 
       (.CI(\S_AXI_S2MM_TDATA_reg[31]_i_5_n_0 ),
        .CO({\S_AXI_S2MM_TDATA_reg[31]_i_4_n_0 ,\S_AXI_S2MM_TDATA_reg[31]_i_4_n_1 ,\S_AXI_S2MM_TDATA_reg[31]_i_4_n_2 ,\S_AXI_S2MM_TDATA_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_S_AXI_S2MM_TDATA_reg[31]_i_4_O_UNCONNECTED [3:0]),
        .S({\S_AXI_S2MM_TDATA[31]_i_6_n_0 ,\S_AXI_S2MM_TDATA[31]_i_7_n_0 ,\S_AXI_S2MM_TDATA[31]_i_8_n_0 ,\S_AXI_S2MM_TDATA[31]_i_9_n_0 }));
  CARRY4 \S_AXI_S2MM_TDATA_reg[31]_i_5 
       (.CI(\S_AXI_S2MM_TDATA_reg[31]_i_10_n_0 ),
        .CO({\S_AXI_S2MM_TDATA_reg[31]_i_5_n_0 ,\S_AXI_S2MM_TDATA_reg[31]_i_5_n_1 ,\S_AXI_S2MM_TDATA_reg[31]_i_5_n_2 ,\S_AXI_S2MM_TDATA_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_S_AXI_S2MM_TDATA_reg[31]_i_5_O_UNCONNECTED [3:0]),
        .S({\S_AXI_S2MM_TDATA[31]_i_11_n_0 ,\S_AXI_S2MM_TDATA[31]_i_12_n_0 ,\S_AXI_S2MM_TDATA[31]_i_13_n_0 ,\S_AXI_S2MM_TDATA[31]_i_14_n_0 }));
  LUT5 #(
    .INIT(32'h00010100)) 
    S_AXI_TREADY_INST_0
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(S_AXI_TREADY));
  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[2] 
       (.C(aclk),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[0]),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(aclk),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[1]),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(aclk),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[2]),
        .Q(axi_araddr[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[5] 
       (.C(aclk),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[3]),
        .Q(axi_araddr[5]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(aclk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[0]),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(aclk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[1]),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(aclk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[2]),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(aclk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[3]),
        .Q(p_0_in[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[0]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[0]_i_4_n_0 ),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg11[0]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[0] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(\slv_reg7_reg_n_0_[0] ),
        .I1(slv_reg6[0]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[0] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(dma_base[0]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[10]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[10]_i_4_n_0 ),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[10]_i_2 
       (.I0(\slv_reg8_reg_n_0_[10] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg9_reg_n_0_[10] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[10]_i_3 
       (.I0(\slv_reg7_reg_n_0_[10] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[10] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(\slv_reg3_reg_n_0_[10] ),
        .I1(dma_base[10]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[10] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[11]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[11]_i_4_n_0 ),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[11]_i_2 
       (.I0(\slv_reg8_reg_n_0_[11] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg9_reg_n_0_[11] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[11]_i_3 
       (.I0(\slv_reg7_reg_n_0_[11] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[11] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(\slv_reg3_reg_n_0_[11] ),
        .I1(dma_base[11]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[11] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[12]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[12]_i_2 
       (.I0(\slv_reg8_reg_n_0_[12] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg9_reg_n_0_[12] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[12]_i_3 
       (.I0(\slv_reg7_reg_n_0_[12] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[12] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(\slv_reg3_reg_n_0_[12] ),
        .I1(dma_base[12]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[12] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[13]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[13]_i_4_n_0 ),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[13]_i_2 
       (.I0(\slv_reg8_reg_n_0_[13] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg9_reg_n_0_[13] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[13]_i_3 
       (.I0(\slv_reg7_reg_n_0_[13] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[13] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(\slv_reg3_reg_n_0_[13] ),
        .I1(dma_base[13]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[13] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[14]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[14]_i_4_n_0 ),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[14]_i_2 
       (.I0(\slv_reg8_reg_n_0_[14] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg9_reg_n_0_[14] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[14]_i_3 
       (.I0(\slv_reg7_reg_n_0_[14] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[14] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(\slv_reg3_reg_n_0_[14] ),
        .I1(dma_base[14]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[14] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[15]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[15]_i_4_n_0 ),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[15]_i_2 
       (.I0(\slv_reg8_reg_n_0_[15] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg9_reg_n_0_[15] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[15]_i_3 
       (.I0(\slv_reg7_reg_n_0_[15] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[15] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(\slv_reg3_reg_n_0_[15] ),
        .I1(dma_base[15]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[15] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[16]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[16]_i_4_n_0 ),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[16]_i_2 
       (.I0(slv_reg11[16]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[16] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[16]_i_3 
       (.I0(\slv_reg7_reg_n_0_[16] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[16] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(\slv_reg3_reg_n_0_[16] ),
        .I1(dma_base[16]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[16] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[17]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[17]_i_4_n_0 ),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[17]_i_2 
       (.I0(slv_reg11[17]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[17] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[17]_i_3 
       (.I0(\slv_reg7_reg_n_0_[17] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[17] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(\slv_reg3_reg_n_0_[17] ),
        .I1(dma_base[17]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[17] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[18]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[18]_i_4_n_0 ),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg11[18]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[18] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[18]_i_3 
       (.I0(\slv_reg7_reg_n_0_[18] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[18] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(\slv_reg3_reg_n_0_[18] ),
        .I1(dma_base[18]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[18] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[19]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[19]_i_4_n_0 ),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg11[19]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[19] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[19]_i_3 
       (.I0(\slv_reg7_reg_n_0_[19] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[19] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(\slv_reg3_reg_n_0_[19] ),
        .I1(dma_base[19]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[19] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[1]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[1]_i_4_n_0 ),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg11[1]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[1] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(\slv_reg7_reg_n_0_[1] ),
        .I1(slv_reg6[1]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg5_reg_n_0_[1] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg4_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(\slv_reg3_reg_n_0_[1] ),
        .I1(dma_base[1]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[1] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[20]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[20]_i_4_n_0 ),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg11[20]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[20] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[20]_i_3 
       (.I0(\slv_reg7_reg_n_0_[20] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[20] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(\slv_reg3_reg_n_0_[20] ),
        .I1(dma_base[20]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[20] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[21]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[21]_i_4_n_0 ),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[21]_i_2 
       (.I0(slv_reg11[21]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[21] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[21]_i_3 
       (.I0(\slv_reg7_reg_n_0_[21] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[21] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(\slv_reg3_reg_n_0_[21] ),
        .I1(dma_base[21]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[21] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[22]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[22]_i_4_n_0 ),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg11[22]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[22] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[22]_i_3 
       (.I0(\slv_reg7_reg_n_0_[22] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[22] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(\slv_reg3_reg_n_0_[22] ),
        .I1(dma_base[22]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[22] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[23]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[23]_i_4_n_0 ),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg11[23]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[23] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[23]_i_3 
       (.I0(\slv_reg7_reg_n_0_[23] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[23] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(\slv_reg3_reg_n_0_[23] ),
        .I1(dma_base[23]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[23] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[24]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[24]_i_4_n_0 ),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg11[24]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[24] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[24]_i_3 
       (.I0(\slv_reg7_reg_n_0_[24] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[24] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_4 
       (.I0(\slv_reg3_reg_n_0_[24] ),
        .I1(dma_base[24]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[24] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[25]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[25]_i_4_n_0 ),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg11[25]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[25] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[25]_i_3 
       (.I0(\slv_reg7_reg_n_0_[25] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[25] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_4 
       (.I0(\slv_reg3_reg_n_0_[25] ),
        .I1(dma_base[25]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[25] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[26]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[26]_i_4_n_0 ),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg11[26]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[26] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[26]_i_3 
       (.I0(\slv_reg7_reg_n_0_[26] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[26] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_4 
       (.I0(\slv_reg3_reg_n_0_[26] ),
        .I1(dma_base[26]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[26] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[27]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[27]_i_4_n_0 ),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg11[27]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[27] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[27]_i_3 
       (.I0(\slv_reg7_reg_n_0_[27] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[27] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_4 
       (.I0(\slv_reg3_reg_n_0_[27] ),
        .I1(dma_base[27]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[27] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[28]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[28]_i_4_n_0 ),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg11[28]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[28] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[28]_i_3 
       (.I0(\slv_reg7_reg_n_0_[28] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[28] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_4 
       (.I0(\slv_reg3_reg_n_0_[28] ),
        .I1(dma_base[28]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[28] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[29]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[29]_i_4_n_0 ),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg11[29]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[29] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[29]_i_3 
       (.I0(\slv_reg7_reg_n_0_[29] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[29] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_4 
       (.I0(\slv_reg3_reg_n_0_[29] ),
        .I1(dma_base[29]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[29] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[2]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[2]_i_4_n_0 ),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg11[2]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[2] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[2]_i_3 
       (.I0(\slv_reg7_reg_n_0_[2] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[2] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(dma_base[2]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[2] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[30]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[30]_i_2 
       (.I0(slv_reg11[30]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[30] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[30]_i_3 
       (.I0(\slv_reg7_reg_n_0_[30] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[30] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_4 
       (.I0(\slv_reg3_reg_n_0_[30] ),
        .I1(dma_base[30]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[30] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[31]_i_4_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[31]_i_3 
       (.I0(slv_reg11[31]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[31] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[31]_i_4 
       (.I0(\slv_reg7_reg_n_0_[31] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[31] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_5 
       (.I0(\slv_reg3_reg_n_0_[31] ),
        .I1(dma_base[31]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[31] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[3]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[3]_i_4_n_0 ),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg11[3]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[3] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[3]_i_3 
       (.I0(\slv_reg7_reg_n_0_[3] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[3] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(\slv_reg3_reg_n_0_[3] ),
        .I1(dma_base[3]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[3] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[4]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[4]_i_4_n_0 ),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg11[4]),
        .I1(axi_araddr[3]),
        .I2(\slv_reg9_reg_n_0_[4] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg8_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[4]_i_3 
       (.I0(\slv_reg7_reg_n_0_[4] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[4] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(\slv_reg3_reg_n_0_[4] ),
        .I1(dma_base[4]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[4] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[5]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[5]_i_4_n_0 ),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[5]_i_2 
       (.I0(\slv_reg8_reg_n_0_[5] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg9_reg_n_0_[5] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[5]_i_3 
       (.I0(\slv_reg7_reg_n_0_[5] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[5] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_4 
       (.I0(\slv_reg3_reg_n_0_[5] ),
        .I1(dma_base[5]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[5] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[6]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[6]_i_4_n_0 ),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[6]_i_2 
       (.I0(\slv_reg8_reg_n_0_[6] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg9_reg_n_0_[6] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[6]_i_3 
       (.I0(\slv_reg7_reg_n_0_[6] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[6] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_4 
       (.I0(\slv_reg3_reg_n_0_[6] ),
        .I1(dma_base[6]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[6] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[7]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[7]_i_4_n_0 ),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[7]_i_2 
       (.I0(\slv_reg8_reg_n_0_[7] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg9_reg_n_0_[7] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[7]_i_3 
       (.I0(\slv_reg7_reg_n_0_[7] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[7] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(\slv_reg3_reg_n_0_[7] ),
        .I1(dma_base[7]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[7] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[8]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[8]_i_4_n_0 ),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[8]_i_2 
       (.I0(\slv_reg8_reg_n_0_[8] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg9_reg_n_0_[8] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[8]_i_3 
       (.I0(\slv_reg7_reg_n_0_[8] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[8] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(\slv_reg3_reg_n_0_[8] ),
        .I1(dma_base[8]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[8] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(axi_araddr[5]),
        .I2(\axi_rdata[9]_i_3_n_0 ),
        .I3(axi_araddr[4]),
        .I4(\axi_rdata[9]_i_4_n_0 ),
        .O(reg_data_out[9]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[9]_i_2 
       (.I0(\slv_reg8_reg_n_0_[9] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg9_reg_n_0_[9] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[9]_i_3 
       (.I0(\slv_reg7_reg_n_0_[9] ),
        .I1(axi_araddr[3]),
        .I2(\slv_reg5_reg_n_0_[9] ),
        .I3(axi_araddr[2]),
        .I4(\slv_reg4_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(\slv_reg3_reg_n_0_[9] ),
        .I1(dma_base[9]),
        .I2(axi_araddr[3]),
        .I3(\slv_reg1_reg_n_0_[9] ),
        .I4(axi_araddr[2]),
        .I5(\slv_reg0_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_4_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000400)) 
    \clearDelay2[0]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(startClear3));
  LUT1 #(
    .INIT(2'h1)) 
    \clearDelay2[0]_i_3 
       (.I0(clearDelay2_reg[0]),
        .O(\clearDelay2[0]_i_3_n_0 ));
  FDRE \clearDelay2_reg[0] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[0]_i_2_n_7 ),
        .Q(clearDelay2_reg[0]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay2_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clearDelay2_reg[0]_i_2_n_0 ,\clearDelay2_reg[0]_i_2_n_1 ,\clearDelay2_reg[0]_i_2_n_2 ,\clearDelay2_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clearDelay2_reg[0]_i_2_n_4 ,\clearDelay2_reg[0]_i_2_n_5 ,\clearDelay2_reg[0]_i_2_n_6 ,\clearDelay2_reg[0]_i_2_n_7 }),
        .S({clearDelay2_reg[3:1],\clearDelay2[0]_i_3_n_0 }));
  FDRE \clearDelay2_reg[10] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[8]_i_1_n_5 ),
        .Q(clearDelay2_reg[10]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[11] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[8]_i_1_n_4 ),
        .Q(clearDelay2_reg[11]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[12] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[12]_i_1_n_7 ),
        .Q(clearDelay2_reg[12]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay2_reg[12]_i_1 
       (.CI(\clearDelay2_reg[8]_i_1_n_0 ),
        .CO({\clearDelay2_reg[12]_i_1_n_0 ,\clearDelay2_reg[12]_i_1_n_1 ,\clearDelay2_reg[12]_i_1_n_2 ,\clearDelay2_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay2_reg[12]_i_1_n_4 ,\clearDelay2_reg[12]_i_1_n_5 ,\clearDelay2_reg[12]_i_1_n_6 ,\clearDelay2_reg[12]_i_1_n_7 }),
        .S(clearDelay2_reg[15:12]));
  FDRE \clearDelay2_reg[13] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[12]_i_1_n_6 ),
        .Q(clearDelay2_reg[13]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[14] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[12]_i_1_n_5 ),
        .Q(clearDelay2_reg[14]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[15] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[12]_i_1_n_4 ),
        .Q(clearDelay2_reg[15]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[16] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[16]_i_1_n_7 ),
        .Q(clearDelay2_reg[16]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay2_reg[16]_i_1 
       (.CI(\clearDelay2_reg[12]_i_1_n_0 ),
        .CO({\clearDelay2_reg[16]_i_1_n_0 ,\clearDelay2_reg[16]_i_1_n_1 ,\clearDelay2_reg[16]_i_1_n_2 ,\clearDelay2_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay2_reg[16]_i_1_n_4 ,\clearDelay2_reg[16]_i_1_n_5 ,\clearDelay2_reg[16]_i_1_n_6 ,\clearDelay2_reg[16]_i_1_n_7 }),
        .S(clearDelay2_reg[19:16]));
  FDRE \clearDelay2_reg[17] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[16]_i_1_n_6 ),
        .Q(clearDelay2_reg[17]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[18] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[16]_i_1_n_5 ),
        .Q(clearDelay2_reg[18]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[19] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[16]_i_1_n_4 ),
        .Q(clearDelay2_reg[19]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[1] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[0]_i_2_n_6 ),
        .Q(clearDelay2_reg[1]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[20] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[20]_i_1_n_7 ),
        .Q(clearDelay2_reg[20]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay2_reg[20]_i_1 
       (.CI(\clearDelay2_reg[16]_i_1_n_0 ),
        .CO({\clearDelay2_reg[20]_i_1_n_0 ,\clearDelay2_reg[20]_i_1_n_1 ,\clearDelay2_reg[20]_i_1_n_2 ,\clearDelay2_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay2_reg[20]_i_1_n_4 ,\clearDelay2_reg[20]_i_1_n_5 ,\clearDelay2_reg[20]_i_1_n_6 ,\clearDelay2_reg[20]_i_1_n_7 }),
        .S(clearDelay2_reg[23:20]));
  FDRE \clearDelay2_reg[21] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[20]_i_1_n_6 ),
        .Q(clearDelay2_reg[21]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[22] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[20]_i_1_n_5 ),
        .Q(clearDelay2_reg[22]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[23] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[20]_i_1_n_4 ),
        .Q(clearDelay2_reg[23]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[24] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[24]_i_1_n_7 ),
        .Q(clearDelay2_reg[24]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay2_reg[24]_i_1 
       (.CI(\clearDelay2_reg[20]_i_1_n_0 ),
        .CO({\clearDelay2_reg[24]_i_1_n_0 ,\clearDelay2_reg[24]_i_1_n_1 ,\clearDelay2_reg[24]_i_1_n_2 ,\clearDelay2_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay2_reg[24]_i_1_n_4 ,\clearDelay2_reg[24]_i_1_n_5 ,\clearDelay2_reg[24]_i_1_n_6 ,\clearDelay2_reg[24]_i_1_n_7 }),
        .S(clearDelay2_reg[27:24]));
  FDRE \clearDelay2_reg[25] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[24]_i_1_n_6 ),
        .Q(clearDelay2_reg[25]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[26] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[24]_i_1_n_5 ),
        .Q(clearDelay2_reg[26]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[27] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[24]_i_1_n_4 ),
        .Q(clearDelay2_reg[27]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[28] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[28]_i_1_n_7 ),
        .Q(clearDelay2_reg[28]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay2_reg[28]_i_1 
       (.CI(\clearDelay2_reg[24]_i_1_n_0 ),
        .CO({\NLW_clearDelay2_reg[28]_i_1_CO_UNCONNECTED [3],\clearDelay2_reg[28]_i_1_n_1 ,\clearDelay2_reg[28]_i_1_n_2 ,\clearDelay2_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay2_reg[28]_i_1_n_4 ,\clearDelay2_reg[28]_i_1_n_5 ,\clearDelay2_reg[28]_i_1_n_6 ,\clearDelay2_reg[28]_i_1_n_7 }),
        .S(clearDelay2_reg[31:28]));
  FDRE \clearDelay2_reg[29] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[28]_i_1_n_6 ),
        .Q(clearDelay2_reg[29]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[2] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[0]_i_2_n_5 ),
        .Q(clearDelay2_reg[2]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[30] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[28]_i_1_n_5 ),
        .Q(clearDelay2_reg[30]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[31] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[28]_i_1_n_4 ),
        .Q(clearDelay2_reg[31]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[3] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[0]_i_2_n_4 ),
        .Q(clearDelay2_reg[3]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[4] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[4]_i_1_n_7 ),
        .Q(clearDelay2_reg[4]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay2_reg[4]_i_1 
       (.CI(\clearDelay2_reg[0]_i_2_n_0 ),
        .CO({\clearDelay2_reg[4]_i_1_n_0 ,\clearDelay2_reg[4]_i_1_n_1 ,\clearDelay2_reg[4]_i_1_n_2 ,\clearDelay2_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay2_reg[4]_i_1_n_4 ,\clearDelay2_reg[4]_i_1_n_5 ,\clearDelay2_reg[4]_i_1_n_6 ,\clearDelay2_reg[4]_i_1_n_7 }),
        .S(clearDelay2_reg[7:4]));
  FDRE \clearDelay2_reg[5] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[4]_i_1_n_6 ),
        .Q(clearDelay2_reg[5]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[6] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[4]_i_1_n_5 ),
        .Q(clearDelay2_reg[6]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[7] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[4]_i_1_n_4 ),
        .Q(clearDelay2_reg[7]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay2_reg[8] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[8]_i_1_n_7 ),
        .Q(clearDelay2_reg[8]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay2_reg[8]_i_1 
       (.CI(\clearDelay2_reg[4]_i_1_n_0 ),
        .CO({\clearDelay2_reg[8]_i_1_n_0 ,\clearDelay2_reg[8]_i_1_n_1 ,\clearDelay2_reg[8]_i_1_n_2 ,\clearDelay2_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay2_reg[8]_i_1_n_4 ,\clearDelay2_reg[8]_i_1_n_5 ,\clearDelay2_reg[8]_i_1_n_6 ,\clearDelay2_reg[8]_i_1_n_7 }),
        .S(clearDelay2_reg[11:8]));
  FDRE \clearDelay2_reg[9] 
       (.C(aclk),
        .CE(startClear3),
        .D(\clearDelay2_reg[8]_i_1_n_6 ),
        .Q(clearDelay2_reg[9]),
        .R(start1_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    \clearDelay3[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[1]),
        .O(\clearDelay3[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clearDelay3[0]_i_3 
       (.I0(\clearDelay3_reg_n_0_[0] ),
        .O(\clearDelay3[0]_i_3_n_0 ));
  FDRE \clearDelay3_reg[0] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[0]_i_2_n_7 ),
        .Q(\clearDelay3_reg_n_0_[0] ),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay3_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clearDelay3_reg[0]_i_2_n_0 ,\clearDelay3_reg[0]_i_2_n_1 ,\clearDelay3_reg[0]_i_2_n_2 ,\clearDelay3_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clearDelay3_reg[0]_i_2_n_4 ,\clearDelay3_reg[0]_i_2_n_5 ,\clearDelay3_reg[0]_i_2_n_6 ,\clearDelay3_reg[0]_i_2_n_7 }),
        .S({\clearDelay3_reg_n_0_[3] ,\clearDelay3_reg_n_0_[2] ,\clearDelay3_reg_n_0_[1] ,\clearDelay3[0]_i_3_n_0 }));
  FDRE \clearDelay3_reg[10] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[8]_i_1_n_5 ),
        .Q(clearDelay3_reg[10]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[11] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[8]_i_1_n_4 ),
        .Q(clearDelay3_reg[11]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[12] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[12]_i_1_n_7 ),
        .Q(clearDelay3_reg[12]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay3_reg[12]_i_1 
       (.CI(\clearDelay3_reg[8]_i_1_n_0 ),
        .CO({\clearDelay3_reg[12]_i_1_n_0 ,\clearDelay3_reg[12]_i_1_n_1 ,\clearDelay3_reg[12]_i_1_n_2 ,\clearDelay3_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay3_reg[12]_i_1_n_4 ,\clearDelay3_reg[12]_i_1_n_5 ,\clearDelay3_reg[12]_i_1_n_6 ,\clearDelay3_reg[12]_i_1_n_7 }),
        .S(clearDelay3_reg[15:12]));
  FDRE \clearDelay3_reg[13] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[12]_i_1_n_6 ),
        .Q(clearDelay3_reg[13]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[14] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[12]_i_1_n_5 ),
        .Q(clearDelay3_reg[14]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[15] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[12]_i_1_n_4 ),
        .Q(clearDelay3_reg[15]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[16] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[16]_i_1_n_7 ),
        .Q(clearDelay3_reg[16]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay3_reg[16]_i_1 
       (.CI(\clearDelay3_reg[12]_i_1_n_0 ),
        .CO({\clearDelay3_reg[16]_i_1_n_0 ,\clearDelay3_reg[16]_i_1_n_1 ,\clearDelay3_reg[16]_i_1_n_2 ,\clearDelay3_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay3_reg[16]_i_1_n_4 ,\clearDelay3_reg[16]_i_1_n_5 ,\clearDelay3_reg[16]_i_1_n_6 ,\clearDelay3_reg[16]_i_1_n_7 }),
        .S(clearDelay3_reg[19:16]));
  FDRE \clearDelay3_reg[17] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[16]_i_1_n_6 ),
        .Q(clearDelay3_reg[17]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[18] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[16]_i_1_n_5 ),
        .Q(clearDelay3_reg[18]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[19] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[16]_i_1_n_4 ),
        .Q(clearDelay3_reg[19]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[1] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[0]_i_2_n_6 ),
        .Q(\clearDelay3_reg_n_0_[1] ),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[20] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[20]_i_1_n_7 ),
        .Q(clearDelay3_reg[20]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay3_reg[20]_i_1 
       (.CI(\clearDelay3_reg[16]_i_1_n_0 ),
        .CO({\clearDelay3_reg[20]_i_1_n_0 ,\clearDelay3_reg[20]_i_1_n_1 ,\clearDelay3_reg[20]_i_1_n_2 ,\clearDelay3_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay3_reg[20]_i_1_n_4 ,\clearDelay3_reg[20]_i_1_n_5 ,\clearDelay3_reg[20]_i_1_n_6 ,\clearDelay3_reg[20]_i_1_n_7 }),
        .S(clearDelay3_reg[23:20]));
  FDRE \clearDelay3_reg[21] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[20]_i_1_n_6 ),
        .Q(clearDelay3_reg[21]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[22] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[20]_i_1_n_5 ),
        .Q(clearDelay3_reg[22]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[23] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[20]_i_1_n_4 ),
        .Q(clearDelay3_reg[23]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[24] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[24]_i_1_n_7 ),
        .Q(clearDelay3_reg[24]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay3_reg[24]_i_1 
       (.CI(\clearDelay3_reg[20]_i_1_n_0 ),
        .CO({\clearDelay3_reg[24]_i_1_n_0 ,\clearDelay3_reg[24]_i_1_n_1 ,\clearDelay3_reg[24]_i_1_n_2 ,\clearDelay3_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay3_reg[24]_i_1_n_4 ,\clearDelay3_reg[24]_i_1_n_5 ,\clearDelay3_reg[24]_i_1_n_6 ,\clearDelay3_reg[24]_i_1_n_7 }),
        .S(clearDelay3_reg[27:24]));
  FDRE \clearDelay3_reg[25] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[24]_i_1_n_6 ),
        .Q(clearDelay3_reg[25]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[26] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[24]_i_1_n_5 ),
        .Q(clearDelay3_reg[26]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[27] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[24]_i_1_n_4 ),
        .Q(clearDelay3_reg[27]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[28] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[28]_i_1_n_7 ),
        .Q(clearDelay3_reg[28]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay3_reg[28]_i_1 
       (.CI(\clearDelay3_reg[24]_i_1_n_0 ),
        .CO({\NLW_clearDelay3_reg[28]_i_1_CO_UNCONNECTED [3],\clearDelay3_reg[28]_i_1_n_1 ,\clearDelay3_reg[28]_i_1_n_2 ,\clearDelay3_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay3_reg[28]_i_1_n_4 ,\clearDelay3_reg[28]_i_1_n_5 ,\clearDelay3_reg[28]_i_1_n_6 ,\clearDelay3_reg[28]_i_1_n_7 }),
        .S(clearDelay3_reg[31:28]));
  FDRE \clearDelay3_reg[29] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[28]_i_1_n_6 ),
        .Q(clearDelay3_reg[29]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[2] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[0]_i_2_n_5 ),
        .Q(\clearDelay3_reg_n_0_[2] ),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[30] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[28]_i_1_n_5 ),
        .Q(clearDelay3_reg[30]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[31] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[28]_i_1_n_4 ),
        .Q(clearDelay3_reg[31]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[3] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[0]_i_2_n_4 ),
        .Q(\clearDelay3_reg_n_0_[3] ),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[4] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[4]_i_1_n_7 ),
        .Q(clearDelay3_reg[4]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay3_reg[4]_i_1 
       (.CI(\clearDelay3_reg[0]_i_2_n_0 ),
        .CO({\clearDelay3_reg[4]_i_1_n_0 ,\clearDelay3_reg[4]_i_1_n_1 ,\clearDelay3_reg[4]_i_1_n_2 ,\clearDelay3_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay3_reg[4]_i_1_n_4 ,\clearDelay3_reg[4]_i_1_n_5 ,\clearDelay3_reg[4]_i_1_n_6 ,\clearDelay3_reg[4]_i_1_n_7 }),
        .S(clearDelay3_reg[7:4]));
  FDRE \clearDelay3_reg[5] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[4]_i_1_n_6 ),
        .Q(clearDelay3_reg[5]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[6] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[4]_i_1_n_5 ),
        .Q(clearDelay3_reg[6]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[7] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[4]_i_1_n_4 ),
        .Q(clearDelay3_reg[7]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay3_reg[8] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[8]_i_1_n_7 ),
        .Q(clearDelay3_reg[8]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay3_reg[8]_i_1 
       (.CI(\clearDelay3_reg[4]_i_1_n_0 ),
        .CO({\clearDelay3_reg[8]_i_1_n_0 ,\clearDelay3_reg[8]_i_1_n_1 ,\clearDelay3_reg[8]_i_1_n_2 ,\clearDelay3_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay3_reg[8]_i_1_n_4 ,\clearDelay3_reg[8]_i_1_n_5 ,\clearDelay3_reg[8]_i_1_n_6 ,\clearDelay3_reg[8]_i_1_n_7 }),
        .S(clearDelay3_reg[11:8]));
  FDRE \clearDelay3_reg[9] 
       (.C(aclk),
        .CE(\clearDelay3[0]_i_1_n_0 ),
        .D(\clearDelay3_reg[8]_i_1_n_6 ),
        .Q(clearDelay3_reg[9]),
        .R(start1_i_1_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \clearDelay4[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[1]),
        .O(\clearDelay4[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clearDelay4[0]_i_3 
       (.I0(clearDelay4_reg[0]),
        .O(\clearDelay4[0]_i_3_n_0 ));
  FDRE \clearDelay4_reg[0] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[0]_i_2_n_7 ),
        .Q(clearDelay4_reg[0]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay4_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clearDelay4_reg[0]_i_2_n_0 ,\clearDelay4_reg[0]_i_2_n_1 ,\clearDelay4_reg[0]_i_2_n_2 ,\clearDelay4_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clearDelay4_reg[0]_i_2_n_4 ,\clearDelay4_reg[0]_i_2_n_5 ,\clearDelay4_reg[0]_i_2_n_6 ,\clearDelay4_reg[0]_i_2_n_7 }),
        .S({clearDelay4_reg[3:1],\clearDelay4[0]_i_3_n_0 }));
  FDRE \clearDelay4_reg[10] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[8]_i_1_n_5 ),
        .Q(clearDelay4_reg[10]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[11] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[8]_i_1_n_4 ),
        .Q(clearDelay4_reg[11]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[12] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[12]_i_1_n_7 ),
        .Q(clearDelay4_reg[12]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay4_reg[12]_i_1 
       (.CI(\clearDelay4_reg[8]_i_1_n_0 ),
        .CO({\clearDelay4_reg[12]_i_1_n_0 ,\clearDelay4_reg[12]_i_1_n_1 ,\clearDelay4_reg[12]_i_1_n_2 ,\clearDelay4_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay4_reg[12]_i_1_n_4 ,\clearDelay4_reg[12]_i_1_n_5 ,\clearDelay4_reg[12]_i_1_n_6 ,\clearDelay4_reg[12]_i_1_n_7 }),
        .S(clearDelay4_reg[15:12]));
  FDRE \clearDelay4_reg[13] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[12]_i_1_n_6 ),
        .Q(clearDelay4_reg[13]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[14] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[12]_i_1_n_5 ),
        .Q(clearDelay4_reg[14]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[15] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[12]_i_1_n_4 ),
        .Q(clearDelay4_reg[15]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[16] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[16]_i_1_n_7 ),
        .Q(clearDelay4_reg[16]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay4_reg[16]_i_1 
       (.CI(\clearDelay4_reg[12]_i_1_n_0 ),
        .CO({\clearDelay4_reg[16]_i_1_n_0 ,\clearDelay4_reg[16]_i_1_n_1 ,\clearDelay4_reg[16]_i_1_n_2 ,\clearDelay4_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay4_reg[16]_i_1_n_4 ,\clearDelay4_reg[16]_i_1_n_5 ,\clearDelay4_reg[16]_i_1_n_6 ,\clearDelay4_reg[16]_i_1_n_7 }),
        .S(clearDelay4_reg[19:16]));
  FDRE \clearDelay4_reg[17] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[16]_i_1_n_6 ),
        .Q(clearDelay4_reg[17]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[18] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[16]_i_1_n_5 ),
        .Q(clearDelay4_reg[18]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[19] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[16]_i_1_n_4 ),
        .Q(clearDelay4_reg[19]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[1] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[0]_i_2_n_6 ),
        .Q(clearDelay4_reg[1]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[20] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[20]_i_1_n_7 ),
        .Q(clearDelay4_reg[20]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay4_reg[20]_i_1 
       (.CI(\clearDelay4_reg[16]_i_1_n_0 ),
        .CO({\clearDelay4_reg[20]_i_1_n_0 ,\clearDelay4_reg[20]_i_1_n_1 ,\clearDelay4_reg[20]_i_1_n_2 ,\clearDelay4_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay4_reg[20]_i_1_n_4 ,\clearDelay4_reg[20]_i_1_n_5 ,\clearDelay4_reg[20]_i_1_n_6 ,\clearDelay4_reg[20]_i_1_n_7 }),
        .S(clearDelay4_reg[23:20]));
  FDRE \clearDelay4_reg[21] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[20]_i_1_n_6 ),
        .Q(clearDelay4_reg[21]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[22] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[20]_i_1_n_5 ),
        .Q(clearDelay4_reg[22]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[23] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[20]_i_1_n_4 ),
        .Q(clearDelay4_reg[23]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[24] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[24]_i_1_n_7 ),
        .Q(clearDelay4_reg[24]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay4_reg[24]_i_1 
       (.CI(\clearDelay4_reg[20]_i_1_n_0 ),
        .CO({\clearDelay4_reg[24]_i_1_n_0 ,\clearDelay4_reg[24]_i_1_n_1 ,\clearDelay4_reg[24]_i_1_n_2 ,\clearDelay4_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay4_reg[24]_i_1_n_4 ,\clearDelay4_reg[24]_i_1_n_5 ,\clearDelay4_reg[24]_i_1_n_6 ,\clearDelay4_reg[24]_i_1_n_7 }),
        .S(clearDelay4_reg[27:24]));
  FDRE \clearDelay4_reg[25] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[24]_i_1_n_6 ),
        .Q(clearDelay4_reg[25]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[26] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[24]_i_1_n_5 ),
        .Q(clearDelay4_reg[26]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[27] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[24]_i_1_n_4 ),
        .Q(clearDelay4_reg[27]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[28] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[28]_i_1_n_7 ),
        .Q(clearDelay4_reg[28]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay4_reg[28]_i_1 
       (.CI(\clearDelay4_reg[24]_i_1_n_0 ),
        .CO({\NLW_clearDelay4_reg[28]_i_1_CO_UNCONNECTED [3],\clearDelay4_reg[28]_i_1_n_1 ,\clearDelay4_reg[28]_i_1_n_2 ,\clearDelay4_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay4_reg[28]_i_1_n_4 ,\clearDelay4_reg[28]_i_1_n_5 ,\clearDelay4_reg[28]_i_1_n_6 ,\clearDelay4_reg[28]_i_1_n_7 }),
        .S(clearDelay4_reg[31:28]));
  FDRE \clearDelay4_reg[29] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[28]_i_1_n_6 ),
        .Q(clearDelay4_reg[29]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[2] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[0]_i_2_n_5 ),
        .Q(clearDelay4_reg[2]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[30] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[28]_i_1_n_5 ),
        .Q(clearDelay4_reg[30]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[31] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[28]_i_1_n_4 ),
        .Q(clearDelay4_reg[31]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[3] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[0]_i_2_n_4 ),
        .Q(clearDelay4_reg[3]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[4] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[4]_i_1_n_7 ),
        .Q(clearDelay4_reg[4]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay4_reg[4]_i_1 
       (.CI(\clearDelay4_reg[0]_i_2_n_0 ),
        .CO({\clearDelay4_reg[4]_i_1_n_0 ,\clearDelay4_reg[4]_i_1_n_1 ,\clearDelay4_reg[4]_i_1_n_2 ,\clearDelay4_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay4_reg[4]_i_1_n_4 ,\clearDelay4_reg[4]_i_1_n_5 ,\clearDelay4_reg[4]_i_1_n_6 ,\clearDelay4_reg[4]_i_1_n_7 }),
        .S(clearDelay4_reg[7:4]));
  FDRE \clearDelay4_reg[5] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[4]_i_1_n_6 ),
        .Q(clearDelay4_reg[5]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[6] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[4]_i_1_n_5 ),
        .Q(clearDelay4_reg[6]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[7] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[4]_i_1_n_4 ),
        .Q(clearDelay4_reg[7]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay4_reg[8] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[8]_i_1_n_7 ),
        .Q(clearDelay4_reg[8]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay4_reg[8]_i_1 
       (.CI(\clearDelay4_reg[4]_i_1_n_0 ),
        .CO({\clearDelay4_reg[8]_i_1_n_0 ,\clearDelay4_reg[8]_i_1_n_1 ,\clearDelay4_reg[8]_i_1_n_2 ,\clearDelay4_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay4_reg[8]_i_1_n_4 ,\clearDelay4_reg[8]_i_1_n_5 ,\clearDelay4_reg[8]_i_1_n_6 ,\clearDelay4_reg[8]_i_1_n_7 }),
        .S(clearDelay4_reg[11:8]));
  FDRE \clearDelay4_reg[9] 
       (.C(aclk),
        .CE(\clearDelay4[0]_i_1_n_0 ),
        .D(\clearDelay4_reg[8]_i_1_n_6 ),
        .Q(clearDelay4_reg[9]),
        .R(start1_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    \clearDelay[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[1]),
        .O(startClear));
  LUT1 #(
    .INIT(2'h1)) 
    \clearDelay[0]_i_3 
       (.I0(\clearDelay_reg_n_0_[0] ),
        .O(\clearDelay[0]_i_3_n_0 ));
  FDRE \clearDelay_reg[0] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[0]_i_2_n_7 ),
        .Q(\clearDelay_reg_n_0_[0] ),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clearDelay_reg[0]_i_2_n_0 ,\clearDelay_reg[0]_i_2_n_1 ,\clearDelay_reg[0]_i_2_n_2 ,\clearDelay_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clearDelay_reg[0]_i_2_n_4 ,\clearDelay_reg[0]_i_2_n_5 ,\clearDelay_reg[0]_i_2_n_6 ,\clearDelay_reg[0]_i_2_n_7 }),
        .S({\clearDelay_reg_n_0_[3] ,\clearDelay_reg_n_0_[2] ,\clearDelay_reg_n_0_[1] ,\clearDelay[0]_i_3_n_0 }));
  FDRE \clearDelay_reg[10] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[8]_i_1_n_5 ),
        .Q(clearDelay_reg[10]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[11] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[8]_i_1_n_4 ),
        .Q(clearDelay_reg[11]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[12] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[12]_i_1_n_7 ),
        .Q(clearDelay_reg[12]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay_reg[12]_i_1 
       (.CI(\clearDelay_reg[8]_i_1_n_0 ),
        .CO({\clearDelay_reg[12]_i_1_n_0 ,\clearDelay_reg[12]_i_1_n_1 ,\clearDelay_reg[12]_i_1_n_2 ,\clearDelay_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay_reg[12]_i_1_n_4 ,\clearDelay_reg[12]_i_1_n_5 ,\clearDelay_reg[12]_i_1_n_6 ,\clearDelay_reg[12]_i_1_n_7 }),
        .S(clearDelay_reg[15:12]));
  FDRE \clearDelay_reg[13] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[12]_i_1_n_6 ),
        .Q(clearDelay_reg[13]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[14] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[12]_i_1_n_5 ),
        .Q(clearDelay_reg[14]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[15] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[12]_i_1_n_4 ),
        .Q(clearDelay_reg[15]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[16] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[16]_i_1_n_7 ),
        .Q(clearDelay_reg[16]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay_reg[16]_i_1 
       (.CI(\clearDelay_reg[12]_i_1_n_0 ),
        .CO({\clearDelay_reg[16]_i_1_n_0 ,\clearDelay_reg[16]_i_1_n_1 ,\clearDelay_reg[16]_i_1_n_2 ,\clearDelay_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay_reg[16]_i_1_n_4 ,\clearDelay_reg[16]_i_1_n_5 ,\clearDelay_reg[16]_i_1_n_6 ,\clearDelay_reg[16]_i_1_n_7 }),
        .S(clearDelay_reg[19:16]));
  FDRE \clearDelay_reg[17] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[16]_i_1_n_6 ),
        .Q(clearDelay_reg[17]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[18] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[16]_i_1_n_5 ),
        .Q(clearDelay_reg[18]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[19] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[16]_i_1_n_4 ),
        .Q(clearDelay_reg[19]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[1] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[0]_i_2_n_6 ),
        .Q(\clearDelay_reg_n_0_[1] ),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[20] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[20]_i_1_n_7 ),
        .Q(clearDelay_reg[20]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay_reg[20]_i_1 
       (.CI(\clearDelay_reg[16]_i_1_n_0 ),
        .CO({\clearDelay_reg[20]_i_1_n_0 ,\clearDelay_reg[20]_i_1_n_1 ,\clearDelay_reg[20]_i_1_n_2 ,\clearDelay_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay_reg[20]_i_1_n_4 ,\clearDelay_reg[20]_i_1_n_5 ,\clearDelay_reg[20]_i_1_n_6 ,\clearDelay_reg[20]_i_1_n_7 }),
        .S(clearDelay_reg[23:20]));
  FDRE \clearDelay_reg[21] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[20]_i_1_n_6 ),
        .Q(clearDelay_reg[21]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[22] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[20]_i_1_n_5 ),
        .Q(clearDelay_reg[22]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[23] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[20]_i_1_n_4 ),
        .Q(clearDelay_reg[23]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[24] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[24]_i_1_n_7 ),
        .Q(clearDelay_reg[24]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay_reg[24]_i_1 
       (.CI(\clearDelay_reg[20]_i_1_n_0 ),
        .CO({\clearDelay_reg[24]_i_1_n_0 ,\clearDelay_reg[24]_i_1_n_1 ,\clearDelay_reg[24]_i_1_n_2 ,\clearDelay_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay_reg[24]_i_1_n_4 ,\clearDelay_reg[24]_i_1_n_5 ,\clearDelay_reg[24]_i_1_n_6 ,\clearDelay_reg[24]_i_1_n_7 }),
        .S(clearDelay_reg[27:24]));
  FDRE \clearDelay_reg[25] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[24]_i_1_n_6 ),
        .Q(clearDelay_reg[25]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[26] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[24]_i_1_n_5 ),
        .Q(clearDelay_reg[26]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[27] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[24]_i_1_n_4 ),
        .Q(clearDelay_reg[27]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[28] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[28]_i_1_n_7 ),
        .Q(clearDelay_reg[28]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay_reg[28]_i_1 
       (.CI(\clearDelay_reg[24]_i_1_n_0 ),
        .CO({\NLW_clearDelay_reg[28]_i_1_CO_UNCONNECTED [3],\clearDelay_reg[28]_i_1_n_1 ,\clearDelay_reg[28]_i_1_n_2 ,\clearDelay_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay_reg[28]_i_1_n_4 ,\clearDelay_reg[28]_i_1_n_5 ,\clearDelay_reg[28]_i_1_n_6 ,\clearDelay_reg[28]_i_1_n_7 }),
        .S(clearDelay_reg[31:28]));
  FDRE \clearDelay_reg[29] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[28]_i_1_n_6 ),
        .Q(clearDelay_reg[29]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[2] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[0]_i_2_n_5 ),
        .Q(\clearDelay_reg_n_0_[2] ),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[30] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[28]_i_1_n_5 ),
        .Q(clearDelay_reg[30]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[31] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[28]_i_1_n_4 ),
        .Q(clearDelay_reg[31]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[3] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[0]_i_2_n_4 ),
        .Q(\clearDelay_reg_n_0_[3] ),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[4] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[4]_i_1_n_7 ),
        .Q(clearDelay_reg[4]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay_reg[4]_i_1 
       (.CI(\clearDelay_reg[0]_i_2_n_0 ),
        .CO({\clearDelay_reg[4]_i_1_n_0 ,\clearDelay_reg[4]_i_1_n_1 ,\clearDelay_reg[4]_i_1_n_2 ,\clearDelay_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay_reg[4]_i_1_n_4 ,\clearDelay_reg[4]_i_1_n_5 ,\clearDelay_reg[4]_i_1_n_6 ,\clearDelay_reg[4]_i_1_n_7 }),
        .S(clearDelay_reg[7:4]));
  FDRE \clearDelay_reg[5] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[4]_i_1_n_6 ),
        .Q(clearDelay_reg[5]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[6] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[4]_i_1_n_5 ),
        .Q(clearDelay_reg[6]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[7] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[4]_i_1_n_4 ),
        .Q(clearDelay_reg[7]),
        .R(start1_i_1_n_0));
  FDRE \clearDelay_reg[8] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[8]_i_1_n_7 ),
        .Q(clearDelay_reg[8]),
        .R(start1_i_1_n_0));
  CARRY4 \clearDelay_reg[8]_i_1 
       (.CI(\clearDelay_reg[4]_i_1_n_0 ),
        .CO({\clearDelay_reg[8]_i_1_n_0 ,\clearDelay_reg[8]_i_1_n_1 ,\clearDelay_reg[8]_i_1_n_2 ,\clearDelay_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clearDelay_reg[8]_i_1_n_4 ,\clearDelay_reg[8]_i_1_n_5 ,\clearDelay_reg[8]_i_1_n_6 ,\clearDelay_reg[8]_i_1_n_7 }),
        .S(clearDelay_reg[11:8]));
  FDRE \clearDelay_reg[9] 
       (.C(aclk),
        .CE(startClear),
        .D(\clearDelay_reg[8]_i_1_n_6 ),
        .Q(clearDelay_reg[9]),
        .R(start1_i_1_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    \column_count[0]_i_1 
       (.I0(\column_count_reg_n_0_[0] ),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .O(column_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6660)) 
    \column_count[1]_i_1 
       (.I0(\column_count_reg_n_0_[0] ),
        .I1(\column_count_reg_n_0_[1] ),
        .I2(S_AXI_TREADY),
        .I3(pixel_word_count1),
        .O(column_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0EE0E0E0)) 
    \column_count[2]_i_1 
       (.I0(pixel_word_count1),
        .I1(S_AXI_TREADY),
        .I2(\column_count_reg_n_0_[2] ),
        .I3(\column_count_reg_n_0_[1] ),
        .I4(\column_count_reg_n_0_[0] ),
        .O(column_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \column_count[3]_i_1 
       (.I0(\column_count[4]_i_3_n_0 ),
        .I1(\column_count_reg_n_0_[0] ),
        .I2(\column_count_reg_n_0_[1] ),
        .I3(\column_count_reg_n_0_[2] ),
        .I4(\column_count_reg_n_0_[3] ),
        .O(column_count[3]));
  LUT6 #(
    .INIT(64'h8080000080FF80FF)) 
    \column_count[4]_i_1 
       (.I0(\small_column_count_reg_n_0_[1] ),
        .I1(\small_column_count_reg_n_0_[3] ),
        .I2(\small_column_count_reg_n_0_[2] ),
        .I3(pixel_word_count1),
        .I4(S_AXI_TVALID),
        .I5(S_AXI_TREADY),
        .O(\column_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \column_count[4]_i_2 
       (.I0(\column_count[4]_i_3_n_0 ),
        .I1(\column_count_reg_n_0_[0] ),
        .I2(\column_count_reg_n_0_[3] ),
        .I3(\column_count_reg_n_0_[2] ),
        .I4(\column_count_reg_n_0_[1] ),
        .I5(\column_count_reg_n_0_[4] ),
        .O(column_count[4]));
  LUT6 #(
    .INIT(64'h5555555555555541)) 
    \column_count[4]_i_3 
       (.I0(pixel_word_count1),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\column_count[4]_i_3_n_0 ));
  FDRE \column_count_reg[0] 
       (.C(aclk),
        .CE(\column_count[4]_i_1_n_0 ),
        .D(column_count[0]),
        .Q(\column_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \column_count_reg[1] 
       (.C(aclk),
        .CE(\column_count[4]_i_1_n_0 ),
        .D(column_count[1]),
        .Q(\column_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \column_count_reg[2] 
       (.C(aclk),
        .CE(\column_count[4]_i_1_n_0 ),
        .D(column_count[2]),
        .Q(\column_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \column_count_reg[3] 
       (.C(aclk),
        .CE(\column_count[4]_i_1_n_0 ),
        .D(column_count[3]),
        .Q(\column_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \column_count_reg[4] 
       (.C(aclk),
        .CE(\column_count[4]_i_1_n_0 ),
        .D(column_count[4]),
        .Q(\column_count_reg_n_0_[4] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hBCBCBC00)) 
    \count[0]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(S_AXI_TVALID),
        .I3(S_AXI_TREADY),
        .I4(p_0_in1_in),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0EE0E0E0)) 
    \count[1]_i_1 
       (.I0(S_AXI_TREADY),
        .I1(p_0_in1_in),
        .I2(count[1]),
        .I3(count[0]),
        .I4(S_AXI_TVALID),
        .O(\count[1]_i_1_n_0 ));
  FDRE \count_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]),
        .R(1'b0));
  FDRE \currentState_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(nextState[0]),
        .Q(Q[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \currentState_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(nextState[1]),
        .Q(Q[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \currentState_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(nextState[2]),
        .Q(Q[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \currentState_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(nextState[3]),
        .Q(Q[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \currentState_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(nextState[4]),
        .Q(Q[4]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    \delayCounter[0]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[1]),
        .O(\delayCounter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delayCounter[0]_i_3 
       (.I0(delayCounter_reg[0]),
        .O(\delayCounter[0]_i_3_n_0 ));
  FDRE \delayCounter_reg[0] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[0]_i_2_n_7 ),
        .Q(delayCounter_reg[0]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  CARRY4 \delayCounter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\delayCounter_reg[0]_i_2_n_0 ,\delayCounter_reg[0]_i_2_n_1 ,\delayCounter_reg[0]_i_2_n_2 ,\delayCounter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\delayCounter_reg[0]_i_2_n_4 ,\delayCounter_reg[0]_i_2_n_5 ,\delayCounter_reg[0]_i_2_n_6 ,\delayCounter_reg[0]_i_2_n_7 }),
        .S({delayCounter_reg[3:1],\delayCounter[0]_i_3_n_0 }));
  FDRE \delayCounter_reg[10] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[8]_i_1_n_5 ),
        .Q(delayCounter_reg[10]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[11] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[8]_i_1_n_4 ),
        .Q(delayCounter_reg[11]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[12] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[12]_i_1_n_7 ),
        .Q(delayCounter_reg[12]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  CARRY4 \delayCounter_reg[12]_i_1 
       (.CI(\delayCounter_reg[8]_i_1_n_0 ),
        .CO({\delayCounter_reg[12]_i_1_n_0 ,\delayCounter_reg[12]_i_1_n_1 ,\delayCounter_reg[12]_i_1_n_2 ,\delayCounter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delayCounter_reg[12]_i_1_n_4 ,\delayCounter_reg[12]_i_1_n_5 ,\delayCounter_reg[12]_i_1_n_6 ,\delayCounter_reg[12]_i_1_n_7 }),
        .S(delayCounter_reg[15:12]));
  FDRE \delayCounter_reg[13] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[12]_i_1_n_6 ),
        .Q(delayCounter_reg[13]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[14] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[12]_i_1_n_5 ),
        .Q(delayCounter_reg[14]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[15] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[12]_i_1_n_4 ),
        .Q(delayCounter_reg[15]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[16] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[16]_i_1_n_7 ),
        .Q(delayCounter_reg[16]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  CARRY4 \delayCounter_reg[16]_i_1 
       (.CI(\delayCounter_reg[12]_i_1_n_0 ),
        .CO({\delayCounter_reg[16]_i_1_n_0 ,\delayCounter_reg[16]_i_1_n_1 ,\delayCounter_reg[16]_i_1_n_2 ,\delayCounter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delayCounter_reg[16]_i_1_n_4 ,\delayCounter_reg[16]_i_1_n_5 ,\delayCounter_reg[16]_i_1_n_6 ,\delayCounter_reg[16]_i_1_n_7 }),
        .S(delayCounter_reg[19:16]));
  FDRE \delayCounter_reg[17] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[16]_i_1_n_6 ),
        .Q(delayCounter_reg[17]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[18] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[16]_i_1_n_5 ),
        .Q(delayCounter_reg[18]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[19] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[16]_i_1_n_4 ),
        .Q(delayCounter_reg[19]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[1] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[0]_i_2_n_6 ),
        .Q(delayCounter_reg[1]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[20] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[20]_i_1_n_7 ),
        .Q(delayCounter_reg[20]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  CARRY4 \delayCounter_reg[20]_i_1 
       (.CI(\delayCounter_reg[16]_i_1_n_0 ),
        .CO({\delayCounter_reg[20]_i_1_n_0 ,\delayCounter_reg[20]_i_1_n_1 ,\delayCounter_reg[20]_i_1_n_2 ,\delayCounter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delayCounter_reg[20]_i_1_n_4 ,\delayCounter_reg[20]_i_1_n_5 ,\delayCounter_reg[20]_i_1_n_6 ,\delayCounter_reg[20]_i_1_n_7 }),
        .S(delayCounter_reg[23:20]));
  FDRE \delayCounter_reg[21] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[20]_i_1_n_6 ),
        .Q(delayCounter_reg[21]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[22] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[20]_i_1_n_5 ),
        .Q(delayCounter_reg[22]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[23] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[20]_i_1_n_4 ),
        .Q(delayCounter_reg[23]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[24] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[24]_i_1_n_7 ),
        .Q(delayCounter_reg[24]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  CARRY4 \delayCounter_reg[24]_i_1 
       (.CI(\delayCounter_reg[20]_i_1_n_0 ),
        .CO({\delayCounter_reg[24]_i_1_n_0 ,\delayCounter_reg[24]_i_1_n_1 ,\delayCounter_reg[24]_i_1_n_2 ,\delayCounter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delayCounter_reg[24]_i_1_n_4 ,\delayCounter_reg[24]_i_1_n_5 ,\delayCounter_reg[24]_i_1_n_6 ,\delayCounter_reg[24]_i_1_n_7 }),
        .S(delayCounter_reg[27:24]));
  FDRE \delayCounter_reg[25] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[24]_i_1_n_6 ),
        .Q(delayCounter_reg[25]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[26] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[24]_i_1_n_5 ),
        .Q(delayCounter_reg[26]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[27] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[24]_i_1_n_4 ),
        .Q(delayCounter_reg[27]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[28] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[28]_i_1_n_7 ),
        .Q(delayCounter_reg[28]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  CARRY4 \delayCounter_reg[28]_i_1 
       (.CI(\delayCounter_reg[24]_i_1_n_0 ),
        .CO({\NLW_delayCounter_reg[28]_i_1_CO_UNCONNECTED [3],\delayCounter_reg[28]_i_1_n_1 ,\delayCounter_reg[28]_i_1_n_2 ,\delayCounter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delayCounter_reg[28]_i_1_n_4 ,\delayCounter_reg[28]_i_1_n_5 ,\delayCounter_reg[28]_i_1_n_6 ,\delayCounter_reg[28]_i_1_n_7 }),
        .S(delayCounter_reg[31:28]));
  FDRE \delayCounter_reg[29] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[28]_i_1_n_6 ),
        .Q(delayCounter_reg[29]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[2] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[0]_i_2_n_5 ),
        .Q(delayCounter_reg[2]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[30] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[28]_i_1_n_5 ),
        .Q(delayCounter_reg[30]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[31] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[28]_i_1_n_4 ),
        .Q(delayCounter_reg[31]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[3] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[0]_i_2_n_4 ),
        .Q(delayCounter_reg[3]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[4] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[4]_i_1_n_7 ),
        .Q(delayCounter_reg[4]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  CARRY4 \delayCounter_reg[4]_i_1 
       (.CI(\delayCounter_reg[0]_i_2_n_0 ),
        .CO({\delayCounter_reg[4]_i_1_n_0 ,\delayCounter_reg[4]_i_1_n_1 ,\delayCounter_reg[4]_i_1_n_2 ,\delayCounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delayCounter_reg[4]_i_1_n_4 ,\delayCounter_reg[4]_i_1_n_5 ,\delayCounter_reg[4]_i_1_n_6 ,\delayCounter_reg[4]_i_1_n_7 }),
        .S(delayCounter_reg[7:4]));
  FDRE \delayCounter_reg[5] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[4]_i_1_n_6 ),
        .Q(delayCounter_reg[5]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[6] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[4]_i_1_n_5 ),
        .Q(delayCounter_reg[6]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[7] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[4]_i_1_n_4 ),
        .Q(delayCounter_reg[7]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  FDRE \delayCounter_reg[8] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[8]_i_1_n_7 ),
        .Q(delayCounter_reg[8]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  CARRY4 \delayCounter_reg[8]_i_1 
       (.CI(\delayCounter_reg[4]_i_1_n_0 ),
        .CO({\delayCounter_reg[8]_i_1_n_0 ,\delayCounter_reg[8]_i_1_n_1 ,\delayCounter_reg[8]_i_1_n_2 ,\delayCounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delayCounter_reg[8]_i_1_n_4 ,\delayCounter_reg[8]_i_1_n_5 ,\delayCounter_reg[8]_i_1_n_6 ,\delayCounter_reg[8]_i_1_n_7 }),
        .S(delayCounter_reg[11:8]));
  FDRE \delayCounter_reg[9] 
       (.C(aclk),
        .CE(\delayCounter[0]_i_1_n_0 ),
        .D(\delayCounter_reg[8]_i_1_n_6 ),
        .Q(delayCounter_reg[9]),
        .R(\slv_reg6[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    delay_S_AXI_TLAST_i_1
       (.I0(S_AXI_TLAST),
        .I1(aresetn),
        .O(delay_S_AXI_TLAST));
  FDRE delay_S_AXI_TLAST_reg
       (.C(aclk),
        .CE(1'b1),
        .D(delay_S_AXI_TLAST),
        .Q(delay_S_AXI_TLAST_reg_n_0),
        .R(1'b0));
  FDRE delay_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(S_AXI_TVALID),
        .Q(delay_tvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[10]_i_1 
       (.I0(dma_base[10]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[10]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[11]_i_1 
       (.I0(dma_base[11]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[11]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[12]_i_1 
       (.I0(dma_base[12]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[12]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[13]_i_1 
       (.I0(dma_base[13]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[13]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[14]_i_1 
       (.I0(dma_base[14]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[14]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[15]_i_1 
       (.I0(dma_base[15]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[15]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[16]_i_1 
       (.I0(dma_base[16]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[16]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[17]_i_1 
       (.I0(dma_base[17]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[17]),
        .O(p_1_in[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[18]_i_1 
       (.I0(dma_base[18]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[18]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[19]_i_1 
       (.I0(dma_base[19]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[19]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[20]_i_1 
       (.I0(dma_base[20]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[20]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[21]_i_1 
       (.I0(dma_base[21]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[21]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[22]_i_1 
       (.I0(dma_base[22]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[22]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[23]_i_1 
       (.I0(dma_base[23]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[23]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[24]_i_1 
       (.I0(dma_base[24]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[24]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[25]_i_1 
       (.I0(dma_base[25]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[25]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[26]_i_1 
       (.I0(dma_base[26]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[26]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[27]_i_1 
       (.I0(dma_base[27]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[27]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[28]_i_1 
       (.I0(dma_base[28]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[28]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[29]_i_1 
       (.I0(dma_base[29]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[29]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[30]_i_1 
       (.I0(dma_base[30]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[30]),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'h0000E522)) 
    \dma_init[31]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\dma_init[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[31]_i_2 
       (.I0(dma_base[31]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[31]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFBFFBFB)) 
    \dma_init[31]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\dma_init[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[3]_i_1 
       (.I0(dma_base[3]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[4]_i_1 
       (.I0(dma_base[4]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[5]_i_1 
       (.I0(dma_base[5]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[6]_i_1 
       (.I0(dma_base[6]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[6]),
        .O(p_1_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \dma_init[6]_i_3 
       (.I0(dma_base[5]),
        .O(\dma_init[6]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dma_init[6]_i_4 
       (.I0(dma_base[4]),
        .O(\dma_init[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[7]_i_1 
       (.I0(dma_base[7]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[8]_i_1 
       (.I0(dma_base[8]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dma_init[9]_i_1 
       (.I0(dma_base[9]),
        .I1(\dma_init[31]_i_3_n_0 ),
        .I2(data0[9]),
        .O(p_1_in[9]));
  FDRE \dma_init_reg[0] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(dma_base[0]),
        .Q(w1_addr[0]),
        .R(1'b0));
  FDRE \dma_init_reg[10] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(w1_addr[10]),
        .R(1'b0));
  CARRY4 \dma_init_reg[10]_i_2 
       (.CI(\dma_init_reg[6]_i_2_n_0 ),
        .CO({\dma_init_reg[10]_i_2_n_0 ,\dma_init_reg[10]_i_2_n_1 ,\dma_init_reg[10]_i_2_n_2 ,\dma_init_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[10:7]),
        .S(dma_base[10:7]));
  FDRE \dma_init_reg[11] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(w1_addr[11]),
        .R(1'b0));
  FDRE \dma_init_reg[12] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(w1_addr[12]),
        .R(1'b0));
  FDRE \dma_init_reg[13] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(w1_addr[13]),
        .R(1'b0));
  FDRE \dma_init_reg[14] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(w1_addr[14]),
        .R(1'b0));
  CARRY4 \dma_init_reg[14]_i_2 
       (.CI(\dma_init_reg[10]_i_2_n_0 ),
        .CO({\dma_init_reg[14]_i_2_n_0 ,\dma_init_reg[14]_i_2_n_1 ,\dma_init_reg[14]_i_2_n_2 ,\dma_init_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[14:11]),
        .S(dma_base[14:11]));
  FDRE \dma_init_reg[15] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(w1_addr[15]),
        .R(1'b0));
  FDRE \dma_init_reg[16] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(w1_addr[16]),
        .R(1'b0));
  FDRE \dma_init_reg[17] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(w1_addr[17]),
        .R(1'b0));
  FDRE \dma_init_reg[18] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(w1_addr[18]),
        .R(1'b0));
  CARRY4 \dma_init_reg[18]_i_2 
       (.CI(\dma_init_reg[14]_i_2_n_0 ),
        .CO({\dma_init_reg[18]_i_2_n_0 ,\dma_init_reg[18]_i_2_n_1 ,\dma_init_reg[18]_i_2_n_2 ,\dma_init_reg[18]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[18:15]),
        .S(dma_base[18:15]));
  FDRE \dma_init_reg[19] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(w1_addr[19]),
        .R(1'b0));
  FDRE \dma_init_reg[1] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(dma_base[1]),
        .Q(w1_addr[1]),
        .R(1'b0));
  FDRE \dma_init_reg[20] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(w1_addr[20]),
        .R(1'b0));
  FDRE \dma_init_reg[21] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(w1_addr[21]),
        .R(1'b0));
  FDRE \dma_init_reg[22] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(w1_addr[22]),
        .R(1'b0));
  CARRY4 \dma_init_reg[22]_i_2 
       (.CI(\dma_init_reg[18]_i_2_n_0 ),
        .CO({\dma_init_reg[22]_i_2_n_0 ,\dma_init_reg[22]_i_2_n_1 ,\dma_init_reg[22]_i_2_n_2 ,\dma_init_reg[22]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[22:19]),
        .S(dma_base[22:19]));
  FDRE \dma_init_reg[23] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(w1_addr[23]),
        .R(1'b0));
  FDRE \dma_init_reg[24] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(w1_addr[24]),
        .R(1'b0));
  FDRE \dma_init_reg[25] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[25]),
        .Q(w1_addr[25]),
        .R(1'b0));
  FDRE \dma_init_reg[26] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(w1_addr[26]),
        .R(1'b0));
  CARRY4 \dma_init_reg[26]_i_2 
       (.CI(\dma_init_reg[22]_i_2_n_0 ),
        .CO({\dma_init_reg[26]_i_2_n_0 ,\dma_init_reg[26]_i_2_n_1 ,\dma_init_reg[26]_i_2_n_2 ,\dma_init_reg[26]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[26:23]),
        .S(dma_base[26:23]));
  FDRE \dma_init_reg[27] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(w1_addr[27]),
        .R(1'b0));
  FDRE \dma_init_reg[28] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(w1_addr[28]),
        .R(1'b0));
  FDRE \dma_init_reg[29] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(w1_addr[29]),
        .R(1'b0));
  FDRE \dma_init_reg[2] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(dma_base[2]),
        .Q(w1_addr[2]),
        .R(1'b0));
  FDRE \dma_init_reg[30] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(w1_addr[30]),
        .R(1'b0));
  CARRY4 \dma_init_reg[30]_i_2 
       (.CI(\dma_init_reg[26]_i_2_n_0 ),
        .CO({\dma_init_reg[30]_i_2_n_0 ,\dma_init_reg[30]_i_2_n_1 ,\dma_init_reg[30]_i_2_n_2 ,\dma_init_reg[30]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[30:27]),
        .S(dma_base[30:27]));
  FDRE \dma_init_reg[31] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(w1_addr[31]),
        .R(1'b0));
  CARRY4 \dma_init_reg[31]_i_4 
       (.CI(\dma_init_reg[30]_i_2_n_0 ),
        .CO(\NLW_dma_init_reg[31]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dma_init_reg[31]_i_4_O_UNCONNECTED [3:1],data0[31]}),
        .S({1'b0,1'b0,1'b0,dma_base[31]}));
  FDRE \dma_init_reg[3] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(w1_addr[3]),
        .R(1'b0));
  FDRE \dma_init_reg[4] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(w1_addr[4]),
        .R(1'b0));
  FDRE \dma_init_reg[5] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(w1_addr[5]),
        .R(1'b0));
  FDRE \dma_init_reg[6] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(w1_addr[6]),
        .R(1'b0));
  CARRY4 \dma_init_reg[6]_i_2 
       (.CI(1'b0),
        .CO({\dma_init_reg[6]_i_2_n_0 ,\dma_init_reg[6]_i_2_n_1 ,\dma_init_reg[6]_i_2_n_2 ,\dma_init_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,dma_base[5:4],1'b0}),
        .O(data0[6:3]),
        .S({dma_base[6],\dma_init[6]_i_3_n_0 ,\dma_init[6]_i_4_n_0 ,dma_base[3]}));
  FDRE \dma_init_reg[7] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(w1_addr[7]),
        .R(1'b0));
  FDRE \dma_init_reg[8] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(w1_addr[8]),
        .R(1'b0));
  FDRE \dma_init_reg[9] 
       (.C(aclk),
        .CE(\dma_init[31]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(w1_addr[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA0A0A8A0)) 
    finish_send_i_1
       (.I0(p_0_in1_in),
        .I1(S_AXI_S2MM_TREADY),
        .I2(finish_send),
        .I3(finish_send_i_2_n_0),
        .I4(finish_send_i_3_n_0),
        .O(finish_send_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    finish_send_i_2
       (.I0(finish_send_i_4_n_0),
        .I1(pixel_word_count_reg[30]),
        .I2(pixel_word_count_reg[10]),
        .I3(pixel_word_count_reg[21]),
        .I4(pixel_word_count_reg[19]),
        .I5(finish_send_i_5_n_0),
        .O(finish_send_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    finish_send_i_3
       (.I0(finish_send_i_6_n_0),
        .I1(pixel_word_count_reg[15]),
        .I2(pixel_word_count_reg[28]),
        .I3(pixel_word_count_reg[23]),
        .I4(pixel_word_count_reg[3]),
        .I5(finish_send_i_7_n_0),
        .O(finish_send_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    finish_send_i_4
       (.I0(pixel_word_count_reg[12]),
        .I1(pixel_word_count_reg[9]),
        .I2(pixel_word_count_reg[17]),
        .I3(pixel_word_count_reg[2]),
        .O(finish_send_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    finish_send_i_5
       (.I0(pixel_word_count_reg[5]),
        .I1(pixel_word_count_reg[29]),
        .I2(pixel_word_count_reg[6]),
        .I3(pixel_word_count_reg[27]),
        .I4(finish_send_i_8_n_0),
        .O(finish_send_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    finish_send_i_6
       (.I0(pixel_word_count_reg[20]),
        .I1(pixel_word_count_reg[8]),
        .I2(pixel_word_count_reg[13]),
        .I3(pixel_word_count_reg[11]),
        .O(finish_send_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    finish_send_i_7
       (.I0(pixel_word_count_reg[1]),
        .I1(pixel_word_count_reg[16]),
        .I2(pixel_word_count_reg[0]),
        .I3(pixel_word_count_reg[22]),
        .I4(finish_send_i_9_n_0),
        .O(finish_send_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    finish_send_i_8
       (.I0(pixel_word_count_reg[25]),
        .I1(pixel_word_count_reg[7]),
        .I2(pixel_word_count_reg[31]),
        .I3(pixel_word_count_reg[24]),
        .O(finish_send_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    finish_send_i_9
       (.I0(pixel_word_count_reg[18]),
        .I1(pixel_word_count_reg[14]),
        .I2(pixel_word_count_reg[26]),
        .I3(pixel_word_count_reg[4]),
        .O(finish_send_i_9_n_0));
  FDRE finish_send_reg
       (.C(aclk),
        .CE(1'b1),
        .D(finish_send_i_1_n_0),
        .Q(finish_send),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE11E877887781EE1)) 
    \gray1[11]_i_10 
       (.I0(\gray1[11]_i_22_n_0 ),
        .I1(\gray1_reg[11]_i_16_n_0 ),
        .I2(\gray1_reg[11]_i_14_n_4 ),
        .I3(\gray1_reg[11]_i_15_n_4 ),
        .I4(\gray1_reg[11]_i_14_n_5 ),
        .I5(\gray1_reg[11]_i_15_n_5 ),
        .O(\gray1[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h414141D741D7D7D7)) 
    \gray1[11]_i_100 
       (.I0(\gray1[11]_i_117_n_0 ),
        .I1(rgb2[7]),
        .I2(rgb2[4]),
        .I3(rgb2[3]),
        .I4(rgb2[6]),
        .I5(rgb2[15]),
        .O(\gray1[11]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h828282EB82EBEBEB)) 
    \gray1[11]_i_101 
       (.I0(\gray1[11]_i_125_n_0 ),
        .I1(rgb2[31]),
        .I2(rgb2[28]),
        .I3(rgb2[27]),
        .I4(rgb2[30]),
        .I5(rgb1[7]),
        .O(\gray1[11]_i_101_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \gray1[11]_i_102 
       (.I0(rgb3[5]),
        .I1(rgb3[7]),
        .I2(rgb1[28]),
        .O(\gray1[11]_i_102_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gray1[11]_i_103 
       (.I0(rgb1[28]),
        .I1(rgb3[7]),
        .I2(rgb3[5]),
        .O(\gray1[11]_i_103_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gray1[11]_i_104 
       (.I0(rgb3[4]),
        .I1(rgb3[5]),
        .O(\gray1[11]_i_104_n_0 ));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    \gray1[11]_i_105 
       (.I0(rgb1[28]),
        .I1(rgb3[7]),
        .I2(rgb3[5]),
        .I3(rgb1[29]),
        .I4(rgb3[6]),
        .O(\gray1[11]_i_105_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \gray1[11]_i_106 
       (.I0(rgb3[5]),
        .I1(rgb3[7]),
        .I2(rgb1[28]),
        .I3(rgb3[6]),
        .I4(rgb1[27]),
        .O(\gray1[11]_i_106_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \gray1[11]_i_107 
       (.I0(rgb3[5]),
        .I1(rgb3[4]),
        .I2(rgb1[27]),
        .I3(rgb3[6]),
        .O(\gray1[11]_i_107_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gray1[11]_i_108 
       (.I0(rgb3[5]),
        .I1(rgb3[4]),
        .I2(rgb1[26]),
        .O(\gray1[11]_i_108_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h1700FF17)) 
    \gray1[11]_i_109 
       (.I0(rgb3[10]),
        .I1(rgb3[13]),
        .I2(rgb3[22]),
        .I3(\gray1[7]_i_55_n_0 ),
        .I4(\gray1[7]_i_54_n_0 ),
        .O(\gray1[11]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h6AA9955695566AA9)) 
    \gray1[11]_i_11 
       (.I0(\gray1[11]_i_7_n_0 ),
        .I1(\gray1_reg[11]_i_14_n_6 ),
        .I2(\gray1_reg[11]_i_16_n_0 ),
        .I3(\gray1_reg[11]_i_15_n_6 ),
        .I4(\gray1_reg[11]_i_15_n_5 ),
        .I5(\gray1_reg[11]_i_14_n_5 ),
        .O(\gray1[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \gray1[11]_i_110 
       (.I0(rgb3[29]),
        .I1(rgb3[31]),
        .I2(rgb3[20]),
        .O(\gray1[11]_i_110_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gray1[11]_i_111 
       (.I0(rgb3[19]),
        .I1(rgb3[30]),
        .O(\gray1[11]_i_111_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gray1[11]_i_112 
       (.I0(rgb3[28]),
        .I1(rgb3[29]),
        .O(\gray1[11]_i_112_n_0 ));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    \gray1[11]_i_113 
       (.I0(rgb3[20]),
        .I1(rgb3[31]),
        .I2(rgb3[29]),
        .I3(rgb3[21]),
        .I4(rgb3[30]),
        .O(\gray1[11]_i_113_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \gray1[11]_i_114 
       (.I0(rgb3[29]),
        .I1(rgb3[31]),
        .I2(rgb3[20]),
        .I3(\gray1[11]_i_111_n_0 ),
        .O(\gray1[11]_i_114_n_0 ));
  LUT4 #(
    .INIT(16'h6696)) 
    \gray1[11]_i_115 
       (.I0(rgb3[19]),
        .I1(rgb3[30]),
        .I2(rgb3[29]),
        .I3(rgb3[28]),
        .O(\gray1[11]_i_115_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gray1[11]_i_116 
       (.I0(rgb3[29]),
        .I1(rgb3[28]),
        .I2(rgb3[18]),
        .O(\gray1[11]_i_116_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \gray1[11]_i_117 
       (.I0(rgb2[2]),
        .I1(rgb2[5]),
        .I2(rgb2[14]),
        .I3(\gray1[7]_i_51_n_0 ),
        .I4(\gray1[7]_i_50_n_0 ),
        .O(\gray1[11]_i_117_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \gray1[11]_i_118 
       (.I0(rgb2[21]),
        .I1(rgb2[23]),
        .I2(rgb2[12]),
        .O(\gray1[11]_i_118_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gray1[11]_i_119 
       (.I0(rgb2[11]),
        .I1(rgb2[22]),
        .O(\gray1[11]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h6AA9955695566AA9)) 
    \gray1[11]_i_12 
       (.I0(\gray1[11]_i_8_n_0 ),
        .I1(\gray1_reg[11]_i_14_n_7 ),
        .I2(\gray1_reg[11]_i_16_n_0 ),
        .I3(\gray1_reg[11]_i_15_n_7 ),
        .I4(\gray1_reg[11]_i_15_n_6 ),
        .I5(\gray1_reg[11]_i_14_n_6 ),
        .O(\gray1[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gray1[11]_i_120 
       (.I0(rgb2[20]),
        .I1(rgb2[21]),
        .O(\gray1[11]_i_120_n_0 ));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    \gray1[11]_i_121 
       (.I0(rgb2[12]),
        .I1(rgb2[23]),
        .I2(rgb2[21]),
        .I3(rgb2[13]),
        .I4(rgb2[22]),
        .O(\gray1[11]_i_121_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \gray1[11]_i_122 
       (.I0(rgb2[21]),
        .I1(rgb2[23]),
        .I2(rgb2[12]),
        .I3(\gray1[11]_i_119_n_0 ),
        .O(\gray1[11]_i_122_n_0 ));
  LUT4 #(
    .INIT(16'h6696)) 
    \gray1[11]_i_123 
       (.I0(rgb2[11]),
        .I1(rgb2[22]),
        .I2(rgb2[21]),
        .I3(rgb2[20]),
        .O(\gray1[11]_i_123_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gray1[11]_i_124 
       (.I0(rgb2[21]),
        .I1(rgb2[20]),
        .I2(rgb2[10]),
        .O(\gray1[11]_i_124_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h1700FF17)) 
    \gray1[11]_i_125 
       (.I0(rgb2[26]),
        .I1(rgb2[29]),
        .I2(rgb1[6]),
        .I3(\gray1[7]_i_53_n_0 ),
        .I4(\gray1[7]_i_52_n_0 ),
        .O(\gray1[11]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'hD442422B2BBDBDD4)) 
    \gray1[11]_i_13 
       (.I0(\gray1_reg[11]_i_16_n_0 ),
        .I1(\gray1[11]_i_23_n_0 ),
        .I2(\gray1[11]_i_17_n_0 ),
        .I3(\gray1_reg[11]_i_18_n_4 ),
        .I4(\gray1_reg[11]_i_19_n_4 ),
        .I5(\gray1[11]_i_24_n_0 ),
        .O(\gray1[11]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hD4000000)) 
    \gray1[11]_i_17 
       (.I0(\gray1[11]_i_42_n_0 ),
        .I1(rgb1[21]),
        .I2(rgb1[20]),
        .I3(rgb1[22]),
        .I4(rgb1[23]),
        .O(\gray1[11]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[11]_i_2 
       (.I0(\gray1[31] [11]),
        .I1(grayResult[11]),
        .O(\gray1[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h24B4F0F0)) 
    \gray1[11]_i_20 
       (.I0(\gray1[11]_i_42_n_0 ),
        .I1(rgb1[21]),
        .I2(rgb1[23]),
        .I3(rgb1[20]),
        .I4(rgb1[22]),
        .O(\gray1[11]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF777F80008880)) 
    \gray1[11]_i_21 
       (.I0(rgb1[23]),
        .I1(rgb1[22]),
        .I2(rgb1[20]),
        .I3(rgb1[21]),
        .I4(\gray1[11]_i_42_n_0 ),
        .I5(\gray1[11]_i_59_n_0 ),
        .O(\gray1[11]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \gray1[11]_i_22 
       (.I0(\gray1_reg[11]_i_14_n_6 ),
        .I1(\gray1_reg[11]_i_16_n_0 ),
        .I2(\gray1_reg[11]_i_15_n_6 ),
        .O(\gray1[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBEEEE22828888)) 
    \gray1[11]_i_23 
       (.I0(\gray1_reg[11]_i_19_n_5 ),
        .I1(rgb1[23]),
        .I2(\gray1[11]_i_60_n_0 ),
        .I3(\gray1[11]_i_61_n_0 ),
        .I4(rgb1[22]),
        .I5(\gray1_reg[11]_i_18_n_5 ),
        .O(\gray1[11]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gray1[11]_i_24 
       (.I0(\gray1_reg[11]_i_15_n_7 ),
        .I1(\gray1_reg[11]_i_16_n_0 ),
        .I2(\gray1_reg[11]_i_14_n_7 ),
        .O(\gray1[11]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gray1[11]_i_25 
       (.I0(\gray1_reg[11]_i_62_n_0 ),
        .I1(\gray1_reg[11]_i_63_n_0 ),
        .O(\gray1[11]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gray1[11]_i_26 
       (.I0(\gray1_reg[11]_i_62_n_0 ),
        .I1(\gray1_reg[11]_i_63_n_0 ),
        .O(\gray1[11]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[11]_i_27 
       (.I0(\gray1_reg[11]_i_62_n_0 ),
        .I1(\gray1_reg[11]_i_63_n_0 ),
        .O(\gray1[11]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \gray1[11]_i_28 
       (.I0(\gray1_reg[11]_i_63_n_0 ),
        .I1(\gray1_reg[11]_i_62_n_0 ),
        .O(\gray1[11]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \gray1[11]_i_29 
       (.I0(\gray1_reg[11]_i_63_n_0 ),
        .I1(\gray1_reg[11]_i_62_n_0 ),
        .O(\gray1[11]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[11]_i_3 
       (.I0(\gray1[31] [10]),
        .I1(grayResult[10]),
        .O(\gray1[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \gray1[11]_i_30 
       (.I0(\gray1_reg[11]_i_63_n_0 ),
        .I1(\gray1_reg[11]_i_62_n_0 ),
        .O(\gray1[11]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \gray1[11]_i_31 
       (.I0(\gray1[11]_i_64_n_0 ),
        .I1(\gray1_reg[11]_i_63_n_0 ),
        .I2(\gray1_reg[11]_i_62_n_0 ),
        .O(\gray1[11]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gray1[11]_i_32 
       (.I0(\gray1_reg[11]_i_65_n_0 ),
        .O(\gray1[11]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gray1[11]_i_33 
       (.I0(\gray1_reg[11]_i_65_n_0 ),
        .O(\gray1[11]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gray1[11]_i_34 
       (.I0(\gray1_reg[11]_i_65_n_0 ),
        .O(\gray1[11]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gray1[11]_i_35 
       (.I0(\gray1_reg[11]_i_65_n_0 ),
        .O(\gray1[11]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \gray1[11]_i_36 
       (.I0(\gray1[11]_i_66_n_0 ),
        .I1(\gray1[11]_i_67_n_0 ),
        .I2(\gray1_reg[11]_i_65_n_0 ),
        .O(\gray1[11]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gray1[11]_i_37 
       (.I0(rgb1[6]),
        .I1(rgb1[15]),
        .O(\gray1[11]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gray1[11]_i_38 
       (.I0(rgb1[5]),
        .I1(rgb1[14]),
        .O(\gray1[11]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gray1[11]_i_39 
       (.I0(rgb1[7]),
        .O(\gray1[11]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[11]_i_4 
       (.I0(\gray1[31] [9]),
        .I1(grayResult[9]),
        .O(\gray1[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \gray1[11]_i_40 
       (.I0(rgb1[15]),
        .I1(rgb1[6]),
        .I2(rgb1[7]),
        .O(\gray1[11]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \gray1[11]_i_41 
       (.I0(rgb1[14]),
        .I1(rgb1[5]),
        .I2(rgb1[6]),
        .I3(rgb1[15]),
        .O(\gray1[11]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h828282EB82EBEBEB)) 
    \gray1[11]_i_42 
       (.I0(\gray1[7]_i_39_n_0 ),
        .I1(rgb1[23]),
        .I2(rgb1[20]),
        .I3(rgb1[19]),
        .I4(rgb1[22]),
        .I5(rgb1[31]),
        .O(\gray1[11]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \gray1[11]_i_43 
       (.I0(\gray1_reg[11]_i_63_n_5 ),
        .I1(\gray1_reg[11]_i_62_n_5 ),
        .I2(\gray1[11]_i_68_n_0 ),
        .O(\gray1[11]_i_43_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \gray1[11]_i_44 
       (.I0(\gray1_reg[11]_i_62_n_6 ),
        .I1(\gray1_reg[11]_i_63_n_6 ),
        .I2(\gray1[11]_i_69_n_0 ),
        .O(\gray1[11]_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \gray1[11]_i_45 
       (.I0(\gray1_reg[11]_i_63_n_7 ),
        .I1(\gray1[11]_i_70_n_0 ),
        .I2(\gray1_reg[11]_i_62_n_7 ),
        .O(\gray1[11]_i_45_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \gray1[11]_i_46 
       (.I0(\gray1_reg[11]_i_71_n_4 ),
        .I1(\gray1[11]_i_72_n_0 ),
        .I2(\gray1_reg[11]_i_73_n_4 ),
        .O(\gray1[11]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \gray1[11]_i_47 
       (.I0(\gray1[11]_i_43_n_0 ),
        .I1(\gray1_reg[11]_i_62_n_0 ),
        .I2(\gray1_reg[11]_i_63_n_0 ),
        .I3(\gray1[11]_i_64_n_0 ),
        .O(\gray1[11]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \gray1[11]_i_48 
       (.I0(\gray1_reg[11]_i_63_n_5 ),
        .I1(\gray1_reg[11]_i_62_n_5 ),
        .I2(\gray1[11]_i_68_n_0 ),
        .I3(\gray1[11]_i_44_n_0 ),
        .O(\gray1[11]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \gray1[11]_i_49 
       (.I0(\gray1_reg[11]_i_62_n_6 ),
        .I1(\gray1_reg[11]_i_63_n_6 ),
        .I2(\gray1[11]_i_69_n_0 ),
        .I3(\gray1[11]_i_45_n_0 ),
        .O(\gray1[11]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[11]_i_5 
       (.I0(\gray1[31] [8]),
        .I1(grayResult[8]),
        .O(\gray1[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \gray1[11]_i_50 
       (.I0(\gray1_reg[11]_i_63_n_7 ),
        .I1(\gray1[11]_i_70_n_0 ),
        .I2(\gray1_reg[11]_i_62_n_7 ),
        .I3(\gray1[11]_i_46_n_0 ),
        .O(\gray1[11]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \gray1[11]_i_51 
       (.I0(\gray1[11]_i_74_n_0 ),
        .I1(\gray1_reg[11]_i_65_n_5 ),
        .I2(\gray1[11]_i_75_n_0 ),
        .O(\gray1[11]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \gray1[11]_i_52 
       (.I0(\gray1_reg[11]_i_65_n_6 ),
        .I1(\gray1[11]_i_76_n_0 ),
        .I2(\gray1[11]_i_77_n_0 ),
        .O(\gray1[11]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h4D)) 
    \gray1[11]_i_53 
       (.I0(\gray1[11]_i_78_n_0 ),
        .I1(\gray1_reg[11]_i_65_n_7 ),
        .I2(\gray1[11]_i_79_n_0 ),
        .O(\gray1[11]_i_53_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    \gray1[11]_i_54 
       (.I0(\gray1[11]_i_80_n_0 ),
        .I1(\gray1_reg[11]_i_81_n_4 ),
        .I2(\gray1[11]_i_82_n_0 ),
        .O(\gray1[11]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \gray1[11]_i_55 
       (.I0(\gray1[11]_i_51_n_0 ),
        .I1(\gray1_reg[11]_i_65_n_0 ),
        .I2(\gray1[11]_i_67_n_0 ),
        .I3(\gray1[11]_i_66_n_0 ),
        .O(\gray1[11]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \gray1[11]_i_56 
       (.I0(\gray1[11]_i_74_n_0 ),
        .I1(\gray1_reg[11]_i_65_n_5 ),
        .I2(\gray1[11]_i_75_n_0 ),
        .I3(\gray1[11]_i_52_n_0 ),
        .O(\gray1[11]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \gray1[11]_i_57 
       (.I0(\gray1_reg[11]_i_65_n_6 ),
        .I1(\gray1[11]_i_76_n_0 ),
        .I2(\gray1[11]_i_77_n_0 ),
        .I3(\gray1[11]_i_53_n_0 ),
        .O(\gray1[11]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \gray1[11]_i_58 
       (.I0(\gray1[11]_i_78_n_0 ),
        .I1(\gray1_reg[11]_i_65_n_7 ),
        .I2(\gray1[11]_i_79_n_0 ),
        .I3(\gray1[11]_i_54_n_0 ),
        .O(\gray1[11]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[11]_i_59 
       (.I0(\gray1_reg[11]_i_19_n_4 ),
        .I1(\gray1_reg[11]_i_18_n_4 ),
        .O(\gray1[11]_i_59_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \gray1[11]_i_60 
       (.I0(rgb1[21]),
        .I1(rgb1[23]),
        .I2(rgb1[20]),
        .O(\gray1[11]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02203AA2)) 
    \gray1[11]_i_61 
       (.I0(rgb1[21]),
        .I1(\gray1[11]_i_83_n_0 ),
        .I2(rgb1[20]),
        .I3(rgb1[23]),
        .I4(\gray1[7]_i_39_n_0 ),
        .O(\gray1[11]_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hD0400000)) 
    \gray1[11]_i_64 
       (.I0(\gray1[11]_i_94_n_0 ),
        .I1(rgb3[13]),
        .I2(rgb3[15]),
        .I3(rgb3[12]),
        .I4(rgb3[14]),
        .O(\gray1[11]_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hD0400000)) 
    \gray1[11]_i_66 
       (.I0(\gray1[11]_i_100_n_0 ),
        .I1(rgb2[5]),
        .I2(rgb2[7]),
        .I3(rgb2[4]),
        .I4(rgb2[6]),
        .O(\gray1[11]_i_66_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD0400000)) 
    \gray1[11]_i_67 
       (.I0(\gray1[11]_i_101_n_0 ),
        .I1(rgb2[29]),
        .I2(rgb2[31]),
        .I3(rgb2[28]),
        .I4(rgb2[30]),
        .O(\gray1[11]_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h24B4F0F0)) 
    \gray1[11]_i_68 
       (.I0(\gray1[11]_i_94_n_0 ),
        .I1(rgb3[13]),
        .I2(rgb3[15]),
        .I3(rgb3[12]),
        .I4(rgb3[14]),
        .O(\gray1[11]_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAA556A)) 
    \gray1[11]_i_69 
       (.I0(rgb3[14]),
        .I1(rgb3[12]),
        .I2(rgb3[15]),
        .I3(rgb3[13]),
        .I4(\gray1[11]_i_94_n_0 ),
        .O(\gray1[11]_i_69_n_0 ));
  LUT5 #(
    .INIT(32'h60990090)) 
    \gray1[11]_i_7 
       (.I0(\gray1_reg[11]_i_14_n_6 ),
        .I1(\gray1_reg[11]_i_15_n_6 ),
        .I2(\gray1_reg[11]_i_15_n_7 ),
        .I3(\gray1_reg[11]_i_16_n_0 ),
        .I4(\gray1_reg[11]_i_14_n_7 ),
        .O(\gray1[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \gray1[11]_i_70 
       (.I0(rgb3[12]),
        .I1(rgb3[15]),
        .I2(rgb3[13]),
        .I3(\gray1[11]_i_94_n_0 ),
        .O(\gray1[11]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \gray1[11]_i_72 
       (.I0(rgb3[23]),
        .I1(rgb3[14]),
        .I2(rgb3[11]),
        .I3(rgb3[12]),
        .I4(rgb3[15]),
        .I5(\gray1[11]_i_109_n_0 ),
        .O(\gray1[11]_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h24B4F0F0)) 
    \gray1[11]_i_74 
       (.I0(\gray1[11]_i_100_n_0 ),
        .I1(rgb2[5]),
        .I2(rgb2[7]),
        .I3(rgb2[4]),
        .I4(rgb2[6]),
        .O(\gray1[11]_i_74_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h24B4F0F0)) 
    \gray1[11]_i_75 
       (.I0(\gray1[11]_i_101_n_0 ),
        .I1(rgb2[29]),
        .I2(rgb2[31]),
        .I3(rgb2[28]),
        .I4(rgb2[30]),
        .O(\gray1[11]_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6AAA556A)) 
    \gray1[11]_i_76 
       (.I0(rgb2[6]),
        .I1(rgb2[4]),
        .I2(rgb2[7]),
        .I3(rgb2[5]),
        .I4(\gray1[11]_i_100_n_0 ),
        .O(\gray1[11]_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h9555AA95)) 
    \gray1[11]_i_77 
       (.I0(rgb2[30]),
        .I1(rgb2[28]),
        .I2(rgb2[31]),
        .I3(rgb2[29]),
        .I4(\gray1[11]_i_101_n_0 ),
        .O(\gray1[11]_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \gray1[11]_i_78 
       (.I0(rgb2[4]),
        .I1(rgb2[7]),
        .I2(rgb2[5]),
        .I3(\gray1[11]_i_100_n_0 ),
        .O(\gray1[11]_i_78_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \gray1[11]_i_79 
       (.I0(rgb2[28]),
        .I1(rgb2[31]),
        .I2(rgb2[29]),
        .I3(\gray1[11]_i_101_n_0 ),
        .O(\gray1[11]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h6969690069000000)) 
    \gray1[11]_i_8 
       (.I0(\gray1_reg[11]_i_14_n_7 ),
        .I1(\gray1_reg[11]_i_16_n_0 ),
        .I2(\gray1_reg[11]_i_15_n_7 ),
        .I3(\gray1[11]_i_17_n_0 ),
        .I4(\gray1_reg[11]_i_18_n_4 ),
        .I5(\gray1_reg[11]_i_19_n_4 ),
        .O(\gray1[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \gray1[11]_i_80 
       (.I0(rgb2[15]),
        .I1(rgb2[6]),
        .I2(rgb2[3]),
        .I3(rgb2[4]),
        .I4(rgb2[7]),
        .I5(\gray1[11]_i_117_n_0 ),
        .O(\gray1[11]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \gray1[11]_i_82 
       (.I0(rgb1[7]),
        .I1(rgb2[30]),
        .I2(rgb2[27]),
        .I3(rgb2[28]),
        .I4(rgb2[31]),
        .I5(\gray1[11]_i_125_n_0 ),
        .O(\gray1[11]_i_82_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \gray1[11]_i_83 
       (.I0(rgb1[31]),
        .I1(rgb1[22]),
        .I2(rgb1[19]),
        .O(\gray1[11]_i_83_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gray1[11]_i_84 
       (.I0(rgb3[22]),
        .I1(rgb3[31]),
        .O(\gray1[11]_i_84_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gray1[11]_i_85 
       (.I0(rgb3[21]),
        .I1(rgb3[30]),
        .O(\gray1[11]_i_85_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gray1[11]_i_86 
       (.I0(rgb3[23]),
        .O(\gray1[11]_i_86_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \gray1[11]_i_87 
       (.I0(rgb3[31]),
        .I1(rgb3[22]),
        .I2(rgb3[23]),
        .O(\gray1[11]_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \gray1[11]_i_88 
       (.I0(rgb3[30]),
        .I1(rgb3[21]),
        .I2(rgb3[22]),
        .I3(rgb3[31]),
        .O(\gray1[11]_i_88_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gray1[11]_i_89 
       (.I0(rgb3[7]),
        .I1(rgb1[30]),
        .O(\gray1[11]_i_89_n_0 ));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    \gray1[11]_i_9 
       (.I0(\gray1_reg[11]_i_19_n_5 ),
        .I1(\gray1[11]_i_20_n_0 ),
        .I2(\gray1_reg[11]_i_18_n_5 ),
        .I3(\gray1_reg[11]_i_16_n_0 ),
        .I4(\gray1[11]_i_21_n_0 ),
        .O(\gray1[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gray1[11]_i_90 
       (.I0(rgb3[6]),
        .I1(rgb1[29]),
        .O(\gray1[11]_i_90_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gray1[11]_i_91 
       (.I0(rgb1[31]),
        .O(\gray1[11]_i_91_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \gray1[11]_i_92 
       (.I0(rgb1[30]),
        .I1(rgb3[7]),
        .I2(rgb1[31]),
        .O(\gray1[11]_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \gray1[11]_i_93 
       (.I0(rgb1[29]),
        .I1(rgb3[6]),
        .I2(rgb3[7]),
        .I3(rgb1[30]),
        .O(\gray1[11]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h828282EB82EBEBEB)) 
    \gray1[11]_i_94 
       (.I0(\gray1[11]_i_109_n_0 ),
        .I1(rgb3[15]),
        .I2(rgb3[12]),
        .I3(rgb3[11]),
        .I4(rgb3[14]),
        .I5(rgb3[23]),
        .O(\gray1[11]_i_94_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gray1[11]_i_95 
       (.I0(rgb2[14]),
        .I1(rgb2[23]),
        .O(\gray1[11]_i_95_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gray1[11]_i_96 
       (.I0(rgb2[13]),
        .I1(rgb2[22]),
        .O(\gray1[11]_i_96_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gray1[11]_i_97 
       (.I0(rgb2[15]),
        .O(\gray1[11]_i_97_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \gray1[11]_i_98 
       (.I0(rgb2[23]),
        .I1(rgb2[14]),
        .I2(rgb2[15]),
        .O(\gray1[11]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \gray1[11]_i_99 
       (.I0(rgb2[22]),
        .I1(rgb2[13]),
        .I2(rgb2[14]),
        .I3(rgb2[23]),
        .O(\gray1[11]_i_99_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \gray1[31]_i_1 
       (.I0(delay_tvalid),
        .I1(count[0]),
        .I2(count[1]),
        .I3(p_0_in13_in),
        .I4(start1_i_1_n_0),
        .O(\gray1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gray1[31]_i_2 
       (.I0(delay_tvalid),
        .I1(count[0]),
        .I2(count[1]),
        .I3(p_0_in13_in),
        .O(gray10));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \gray1[3]_i_11 
       (.I0(\gray1[3]_i_7_n_0 ),
        .I1(\gray1[7]_i_22_n_0 ),
        .I2(\gray1_reg[7]_i_18_n_5 ),
        .I3(\gray1_reg[7]_i_19_n_5 ),
        .I4(\gray1_reg[3]_i_10_n_4 ),
        .I5(\gray1[7]_i_23_n_0 ),
        .O(\gray1[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9699996999696966)) 
    \gray1[3]_i_12 
       (.I0(\gray1_reg[3]_i_10_n_5 ),
        .I1(\gray1[3]_i_15_n_0 ),
        .I2(\gray1[3]_i_16_n_0 ),
        .I3(\gray1_reg[7]_i_19_n_6 ),
        .I4(\gray1_reg[7]_i_18_n_6 ),
        .I5(\gray1_reg[3]_i_10_n_6 ),
        .O(\gray1[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h555569966996AAAA)) 
    \gray1[3]_i_13 
       (.I0(\gray1[3]_i_9_n_0 ),
        .I1(rgb1[29]),
        .I2(rgb1[20]),
        .I3(rgb1[17]),
        .I4(\gray1_reg[7]_i_19_n_7 ),
        .I5(\gray1_reg[7]_i_18_n_7 ),
        .O(\gray1[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gray1[3]_i_14 
       (.I0(\gray1_reg[7]_i_18_n_7 ),
        .I1(\gray1_reg[7]_i_19_n_7 ),
        .I2(rgb1[17]),
        .I3(rgb1[20]),
        .I4(rgb1[29]),
        .I5(\gray1_reg[3]_i_10_n_7 ),
        .O(\gray1[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gray1[3]_i_15 
       (.I0(\gray1_reg[7]_i_19_n_5 ),
        .I1(\gray1_reg[7]_i_18_n_5 ),
        .I2(\gray1[7]_i_22_n_0 ),
        .O(\gray1[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    \gray1[3]_i_16 
       (.I0(rgb1[30]),
        .I1(rgb1[21]),
        .I2(rgb1[18]),
        .I3(rgb1[17]),
        .I4(rgb1[20]),
        .I5(rgb1[29]),
        .O(\gray1[3]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hB2)) 
    \gray1[3]_i_17 
       (.I0(rgb1[13]),
        .I1(rgb1[15]),
        .I2(rgb1[4]),
        .O(\gray1[3]_i_17_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gray1[3]_i_18 
       (.I0(rgb1[3]),
        .I1(rgb1[14]),
        .O(\gray1[3]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gray1[3]_i_19 
       (.I0(rgb1[12]),
        .I1(rgb1[13]),
        .O(\gray1[3]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[3]_i_2 
       (.I0(\gray1[31] [3]),
        .I1(grayResult[3]),
        .O(\gray1[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    \gray1[3]_i_20 
       (.I0(rgb1[4]),
        .I1(rgb1[15]),
        .I2(rgb1[13]),
        .I3(rgb1[5]),
        .I4(rgb1[14]),
        .O(\gray1[3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \gray1[3]_i_21 
       (.I0(rgb1[13]),
        .I1(rgb1[15]),
        .I2(rgb1[4]),
        .I3(\gray1[3]_i_18_n_0 ),
        .O(\gray1[3]_i_21_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6696)) 
    \gray1[3]_i_22 
       (.I0(rgb1[3]),
        .I1(rgb1[14]),
        .I2(rgb1[13]),
        .I3(rgb1[12]),
        .O(\gray1[3]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gray1[3]_i_23 
       (.I0(rgb1[13]),
        .I1(rgb1[12]),
        .I2(rgb1[2]),
        .O(\gray1[3]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[3]_i_3 
       (.I0(\gray1[31] [2]),
        .I1(grayResult[2]),
        .O(\gray1[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[3]_i_4 
       (.I0(\gray1[31] [1]),
        .I1(grayResult[1]),
        .O(\gray1[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[3]_i_5 
       (.I0(\gray1[31] [0]),
        .I1(grayResult[0]),
        .O(\gray1[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    \gray1[3]_i_7 
       (.I0(\gray1_reg[3]_i_10_n_5 ),
        .I1(\gray1[3]_i_15_n_0 ),
        .I2(\gray1[3]_i_16_n_0 ),
        .I3(\gray1_reg[7]_i_18_n_6 ),
        .I4(\gray1_reg[7]_i_19_n_6 ),
        .O(\gray1[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \gray1[3]_i_8 
       (.I0(\gray1_reg[7]_i_19_n_6 ),
        .I1(\gray1_reg[7]_i_18_n_6 ),
        .I2(\gray1[3]_i_16_n_0 ),
        .I3(\gray1[3]_i_15_n_0 ),
        .I4(\gray1_reg[3]_i_10_n_5 ),
        .O(\gray1[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \gray1[3]_i_9 
       (.I0(\gray1_reg[7]_i_18_n_6 ),
        .I1(\gray1_reg[7]_i_19_n_6 ),
        .I2(\gray1[3]_i_16_n_0 ),
        .I3(\gray1_reg[3]_i_10_n_6 ),
        .O(\gray1[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hA880FEEA)) 
    \gray1[7]_i_10 
       (.I0(\gray1_reg[3]_i_10_n_4 ),
        .I1(\gray1_reg[7]_i_19_n_5 ),
        .I2(\gray1_reg[7]_i_18_n_5 ),
        .I3(\gray1[7]_i_22_n_0 ),
        .I4(\gray1[7]_i_23_n_0 ),
        .O(\gray1[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \gray1[7]_i_11 
       (.I0(\gray1[7]_i_7_n_0 ),
        .I1(\gray1_reg[11]_i_19_n_5 ),
        .I2(\gray1[11]_i_20_n_0 ),
        .I3(\gray1_reg[11]_i_18_n_5 ),
        .I4(\gray1_reg[11]_i_16_n_0 ),
        .I5(\gray1[11]_i_21_n_0 ),
        .O(\gray1[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gray1[7]_i_12 
       (.I0(\gray1[7]_i_8_n_0 ),
        .I1(\gray1[7]_i_15_n_0 ),
        .I2(\gray1_reg[11]_i_16_n_5 ),
        .I3(\gray1_reg[11]_i_19_n_5 ),
        .I4(\gray1_reg[11]_i_18_n_5 ),
        .I5(\gray1[11]_i_20_n_0 ),
        .O(\gray1[7]_i_12_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gray1[7]_i_13 
       (.I0(\gray1[7]_i_16_n_0 ),
        .I1(\gray1_reg[11]_i_16_n_6 ),
        .I2(\gray1[7]_i_17_n_0 ),
        .I3(\gray1[7]_i_9_n_0 ),
        .O(\gray1[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h718E8E718E71718E)) 
    \gray1[7]_i_14 
       (.I0(\gray1_reg[7]_i_18_n_4 ),
        .I1(\gray1_reg[7]_i_19_n_4 ),
        .I2(\gray1[7]_i_20_n_0 ),
        .I3(\gray1[7]_i_10_n_0 ),
        .I4(\gray1_reg[11]_i_16_n_7 ),
        .I5(\gray1[7]_i_21_n_0 ),
        .O(\gray1[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF6A566A560000)) 
    \gray1[7]_i_15 
       (.I0(rgb1[22]),
        .I1(\gray1[7]_i_24_n_0 ),
        .I2(rgb1[21]),
        .I3(\gray1[11]_i_42_n_0 ),
        .I4(\gray1_reg[11]_i_19_n_6 ),
        .I5(\gray1_reg[11]_i_18_n_6 ),
        .O(\gray1[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF6A956A950000)) 
    \gray1[7]_i_16 
       (.I0(rgb1[21]),
        .I1(rgb1[23]),
        .I2(rgb1[20]),
        .I3(\gray1[11]_i_42_n_0 ),
        .I4(\gray1_reg[11]_i_19_n_7 ),
        .I5(\gray1_reg[11]_i_18_n_7 ),
        .O(\gray1[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BD42B2BD4)) 
    \gray1[7]_i_17 
       (.I0(\gray1[11]_i_42_n_0 ),
        .I1(rgb1[21]),
        .I2(\gray1[7]_i_24_n_0 ),
        .I3(rgb1[22]),
        .I4(\gray1_reg[11]_i_18_n_6 ),
        .I5(\gray1_reg[11]_i_19_n_6 ),
        .O(\gray1[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[7]_i_2 
       (.I0(\gray1[31] [7]),
        .I1(grayResult[7]),
        .O(\gray1[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \gray1[7]_i_20 
       (.I0(rgb1[31]),
        .I1(rgb1[22]),
        .I2(rgb1[19]),
        .I3(rgb1[20]),
        .I4(rgb1[23]),
        .I5(\gray1[7]_i_39_n_0 ),
        .O(\gray1[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \gray1[7]_i_21 
       (.I0(\gray1_reg[11]_i_18_n_7 ),
        .I1(\gray1_reg[11]_i_19_n_7 ),
        .I2(\gray1[11]_i_42_n_0 ),
        .I3(rgb1[20]),
        .I4(rgb1[23]),
        .I5(rgb1[21]),
        .O(\gray1[7]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \gray1[7]_i_22 
       (.I0(\gray1[7]_i_40_n_0 ),
        .I1(\gray1[7]_i_41_n_0 ),
        .I2(rgb1[22]),
        .I3(rgb1[19]),
        .I4(rgb1[31]),
        .O(\gray1[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gray1[7]_i_23 
       (.I0(\gray1[7]_i_20_n_0 ),
        .I1(\gray1_reg[7]_i_19_n_4 ),
        .I2(\gray1_reg[7]_i_18_n_4 ),
        .O(\gray1[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gray1[7]_i_24 
       (.I0(rgb1[20]),
        .I1(rgb1[23]),
        .O(\gray1[7]_i_24_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gray1[7]_i_25 
       (.I0(\gray1[7]_i_42_n_0 ),
        .I1(\gray1_reg[11]_i_81_n_5 ),
        .I2(\gray1[7]_i_43_n_0 ),
        .O(\gray1[7]_i_25_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    \gray1[7]_i_26 
       (.I0(\gray1[7]_i_44_n_0 ),
        .I1(\gray1_reg[11]_i_81_n_6 ),
        .I2(\gray1[7]_i_45_n_0 ),
        .O(\gray1[7]_i_26_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \gray1[7]_i_27 
       (.I0(\gray1_reg[11]_i_81_n_7 ),
        .I1(\gray1[7]_i_46_n_0 ),
        .I2(rgb2[1]),
        .I3(rgb2[4]),
        .I4(rgb2[13]),
        .O(\gray1[7]_i_27_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gray1[7]_i_28 
       (.I0(\gray1[11]_i_80_n_0 ),
        .I1(\gray1_reg[11]_i_81_n_4 ),
        .I2(\gray1[11]_i_82_n_0 ),
        .I3(\gray1[7]_i_25_n_0 ),
        .O(\gray1[7]_i_28_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gray1[7]_i_29 
       (.I0(\gray1[7]_i_42_n_0 ),
        .I1(\gray1_reg[11]_i_81_n_5 ),
        .I2(\gray1[7]_i_43_n_0 ),
        .I3(\gray1[7]_i_26_n_0 ),
        .O(\gray1[7]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[7]_i_3 
       (.I0(\gray1[31] [6]),
        .I1(grayResult[6]),
        .O(\gray1[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gray1[7]_i_30 
       (.I0(\gray1[7]_i_44_n_0 ),
        .I1(\gray1_reg[11]_i_81_n_6 ),
        .I2(\gray1[7]_i_45_n_0 ),
        .I3(\gray1[7]_i_27_n_0 ),
        .O(\gray1[7]_i_30_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \gray1[7]_i_31 
       (.I0(\gray1_reg[11]_i_81_n_7 ),
        .I1(\gray1[7]_i_46_n_0 ),
        .I2(rgb2[1]),
        .I3(rgb2[4]),
        .I4(rgb2[13]),
        .O(\gray1[7]_i_31_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gray1[7]_i_32 
       (.I0(\gray1_reg[11]_i_71_n_5 ),
        .I1(\gray1_reg[11]_i_73_n_5 ),
        .I2(\gray1[7]_i_47_n_0 ),
        .O(\gray1[7]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hD4)) 
    \gray1[7]_i_33 
       (.I0(\gray1[7]_i_48_n_0 ),
        .I1(\gray1_reg[11]_i_73_n_6 ),
        .I2(\gray1_reg[11]_i_71_n_6 ),
        .O(\gray1[7]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \gray1[7]_i_34 
       (.I0(\gray1_reg[11]_i_73_n_7 ),
        .I1(rgb3[21]),
        .I2(rgb3[12]),
        .I3(rgb3[9]),
        .I4(\gray1_reg[11]_i_71_n_7 ),
        .O(\gray1[7]_i_34_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \gray1[7]_i_35 
       (.I0(\gray1_reg[11]_i_71_n_4 ),
        .I1(\gray1[11]_i_72_n_0 ),
        .I2(\gray1_reg[11]_i_73_n_4 ),
        .I3(\gray1[7]_i_32_n_0 ),
        .O(\gray1[7]_i_35_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gray1[7]_i_36 
       (.I0(\gray1_reg[11]_i_71_n_5 ),
        .I1(\gray1_reg[11]_i_73_n_5 ),
        .I2(\gray1[7]_i_47_n_0 ),
        .I3(\gray1[7]_i_33_n_0 ),
        .O(\gray1[7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \gray1[7]_i_37 
       (.I0(\gray1_reg[11]_i_71_n_7 ),
        .I1(\gray1[7]_i_49_n_0 ),
        .I2(\gray1_reg[11]_i_73_n_7 ),
        .I3(\gray1_reg[11]_i_73_n_6 ),
        .I4(\gray1[7]_i_48_n_0 ),
        .I5(\gray1_reg[11]_i_71_n_6 ),
        .O(\gray1[7]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gray1[7]_i_38 
       (.I0(\gray1_reg[11]_i_71_n_7 ),
        .I1(rgb3[9]),
        .I2(rgb3[12]),
        .I3(rgb3[21]),
        .I4(\gray1_reg[11]_i_73_n_7 ),
        .O(\gray1[7]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6900FF69)) 
    \gray1[7]_i_39 
       (.I0(rgb1[31]),
        .I1(rgb1[19]),
        .I2(rgb1[22]),
        .I3(\gray1[7]_i_41_n_0 ),
        .I4(\gray1[7]_i_40_n_0 ),
        .O(\gray1[7]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[7]_i_4 
       (.I0(\gray1[31] [5]),
        .I1(grayResult[5]),
        .O(\gray1[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9696960096000000)) 
    \gray1[7]_i_40 
       (.I0(rgb1[30]),
        .I1(rgb1[21]),
        .I2(rgb1[18]),
        .I3(rgb1[17]),
        .I4(rgb1[20]),
        .I5(rgb1[29]),
        .O(\gray1[7]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \gray1[7]_i_41 
       (.I0(rgb1[30]),
        .I1(rgb1[21]),
        .I2(rgb1[18]),
        .O(\gray1[7]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hA995566A)) 
    \gray1[7]_i_42 
       (.I0(\gray1[7]_i_50_n_0 ),
        .I1(rgb2[2]),
        .I2(rgb2[5]),
        .I3(rgb2[14]),
        .I4(\gray1[7]_i_51_n_0 ),
        .O(\gray1[7]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h66696999)) 
    \gray1[7]_i_43 
       (.I0(\gray1[7]_i_52_n_0 ),
        .I1(\gray1[7]_i_53_n_0 ),
        .I2(rgb1[6]),
        .I3(rgb2[29]),
        .I4(rgb2[26]),
        .O(\gray1[7]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \gray1[7]_i_44 
       (.I0(rgb2[1]),
        .I1(rgb2[4]),
        .I2(rgb2[13]),
        .I3(rgb2[14]),
        .I4(rgb2[2]),
        .I5(rgb2[5]),
        .O(\gray1[7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \gray1[7]_i_45 
       (.I0(rgb2[25]),
        .I1(rgb2[28]),
        .I2(rgb1[5]),
        .I3(rgb1[6]),
        .I4(rgb2[26]),
        .I5(rgb2[29]),
        .O(\gray1[7]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gray1[7]_i_46 
       (.I0(rgb2[25]),
        .I1(rgb2[28]),
        .I2(rgb1[5]),
        .O(\gray1[7]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h66696999)) 
    \gray1[7]_i_47 
       (.I0(\gray1[7]_i_54_n_0 ),
        .I1(\gray1[7]_i_55_n_0 ),
        .I2(rgb3[22]),
        .I3(rgb3[13]),
        .I4(rgb3[10]),
        .O(\gray1[7]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \gray1[7]_i_48 
       (.I0(rgb3[9]),
        .I1(rgb3[12]),
        .I2(rgb3[21]),
        .I3(rgb3[22]),
        .I4(rgb3[10]),
        .I5(rgb3[13]),
        .O(\gray1[7]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gray1[7]_i_49 
       (.I0(rgb3[9]),
        .I1(rgb3[12]),
        .I2(rgb3[21]),
        .O(\gray1[7]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray1[7]_i_5 
       (.I0(\gray1[31] [4]),
        .I1(grayResult[4]),
        .O(\gray1[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE80000E800E8E800)) 
    \gray1[7]_i_50 
       (.I0(rgb2[1]),
        .I1(rgb2[4]),
        .I2(rgb2[13]),
        .I3(rgb2[14]),
        .I4(rgb2[2]),
        .I5(rgb2[5]),
        .O(\gray1[7]_i_50_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gray1[7]_i_51 
       (.I0(rgb2[3]),
        .I1(rgb2[6]),
        .I2(rgb2[15]),
        .O(\gray1[7]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hE80000E800E8E800)) 
    \gray1[7]_i_52 
       (.I0(rgb2[25]),
        .I1(rgb2[28]),
        .I2(rgb1[5]),
        .I3(rgb1[6]),
        .I4(rgb2[26]),
        .I5(rgb2[29]),
        .O(\gray1[7]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gray1[7]_i_53 
       (.I0(rgb2[30]),
        .I1(rgb2[27]),
        .I2(rgb1[7]),
        .O(\gray1[7]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hE80000E800E8E800)) 
    \gray1[7]_i_54 
       (.I0(rgb3[9]),
        .I1(rgb3[12]),
        .I2(rgb3[21]),
        .I3(rgb3[22]),
        .I4(rgb3[10]),
        .I5(rgb3[13]),
        .O(\gray1[7]_i_54_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gray1[7]_i_55 
       (.I0(rgb3[14]),
        .I1(rgb3[11]),
        .I2(rgb3[23]),
        .O(\gray1[7]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \gray1[7]_i_7 
       (.I0(\gray1[7]_i_15_n_0 ),
        .I1(\gray1_reg[11]_i_19_n_5 ),
        .I2(\gray1_reg[11]_i_18_n_5 ),
        .I3(\gray1[11]_i_20_n_0 ),
        .I4(\gray1_reg[11]_i_16_n_5 ),
        .O(\gray1[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gray1[7]_i_8 
       (.I0(\gray1[7]_i_16_n_0 ),
        .I1(\gray1_reg[11]_i_16_n_6 ),
        .I2(\gray1[7]_i_17_n_0 ),
        .O(\gray1[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF8E8E00)) 
    \gray1[7]_i_9 
       (.I0(\gray1_reg[7]_i_18_n_4 ),
        .I1(\gray1_reg[7]_i_19_n_4 ),
        .I2(\gray1[7]_i_20_n_0 ),
        .I3(\gray1[7]_i_21_n_0 ),
        .I4(\gray1_reg[11]_i_16_n_7 ),
        .O(\gray1[7]_i_9_n_0 ));
  FDRE \gray1_reg[0] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[3]_i_1_n_7 ),
        .Q(\gray1[31] [0]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[10] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[11]_i_1_n_5 ),
        .Q(\gray1[31] [10]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[11] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[11]_i_1_n_4 ),
        .Q(\gray1[31] [11]),
        .R(\gray1[31]_i_1_n_0 ));
  CARRY4 \gray1_reg[11]_i_1 
       (.CI(\gray1_reg[7]_i_1_n_0 ),
        .CO({\gray1_reg[11]_i_1_n_0 ,\gray1_reg[11]_i_1_n_1 ,\gray1_reg[11]_i_1_n_2 ,\gray1_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray1[31] [11:8]),
        .O({\gray1_reg[11]_i_1_n_4 ,\gray1_reg[11]_i_1_n_5 ,\gray1_reg[11]_i_1_n_6 ,\gray1_reg[11]_i_1_n_7 }),
        .S({\gray1[11]_i_2_n_0 ,\gray1[11]_i_3_n_0 ,\gray1[11]_i_4_n_0 ,\gray1[11]_i_5_n_0 }));
  CARRY4 \gray1_reg[11]_i_14 
       (.CI(\gray1_reg[11]_i_18_n_0 ),
        .CO({\NLW_gray1_reg[11]_i_14_CO_UNCONNECTED [3],\gray1_reg[11]_i_14_n_1 ,\gray1_reg[11]_i_14_n_2 ,\gray1_reg[11]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\gray1[11]_i_25_n_0 ,\gray1[11]_i_26_n_0 ,\gray1[11]_i_27_n_0 }),
        .O({\gray1_reg[11]_i_14_n_4 ,\gray1_reg[11]_i_14_n_5 ,\gray1_reg[11]_i_14_n_6 ,\gray1_reg[11]_i_14_n_7 }),
        .S({\gray1[11]_i_28_n_0 ,\gray1[11]_i_29_n_0 ,\gray1[11]_i_30_n_0 ,\gray1[11]_i_31_n_0 }));
  CARRY4 \gray1_reg[11]_i_15 
       (.CI(\gray1_reg[11]_i_19_n_0 ),
        .CO({\NLW_gray1_reg[11]_i_15_CO_UNCONNECTED [3],\gray1_reg[11]_i_15_n_1 ,\gray1_reg[11]_i_15_n_2 ,\gray1_reg[11]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\gray1[11]_i_32_n_0 }),
        .O({\gray1_reg[11]_i_15_n_4 ,\gray1_reg[11]_i_15_n_5 ,\gray1_reg[11]_i_15_n_6 ,\gray1_reg[11]_i_15_n_7 }),
        .S({\gray1[11]_i_33_n_0 ,\gray1[11]_i_34_n_0 ,\gray1[11]_i_35_n_0 ,\gray1[11]_i_36_n_0 }));
  CARRY4 \gray1_reg[11]_i_16 
       (.CI(\gray1_reg[3]_i_10_n_0 ),
        .CO({\gray1_reg[11]_i_16_n_0 ,\NLW_gray1_reg[11]_i_16_CO_UNCONNECTED [2],\gray1_reg[11]_i_16_n_2 ,\gray1_reg[11]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rgb1[7],\gray1[11]_i_37_n_0 ,\gray1[11]_i_38_n_0 }),
        .O({\NLW_gray1_reg[11]_i_16_O_UNCONNECTED [3],\gray1_reg[11]_i_16_n_5 ,\gray1_reg[11]_i_16_n_6 ,\gray1_reg[11]_i_16_n_7 }),
        .S({1'b1,\gray1[11]_i_39_n_0 ,\gray1[11]_i_40_n_0 ,\gray1[11]_i_41_n_0 }));
  CARRY4 \gray1_reg[11]_i_18 
       (.CI(\gray1_reg[7]_i_19_n_0 ),
        .CO({\gray1_reg[11]_i_18_n_0 ,\gray1_reg[11]_i_18_n_1 ,\gray1_reg[11]_i_18_n_2 ,\gray1_reg[11]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray1[11]_i_43_n_0 ,\gray1[11]_i_44_n_0 ,\gray1[11]_i_45_n_0 ,\gray1[11]_i_46_n_0 }),
        .O({\gray1_reg[11]_i_18_n_4 ,\gray1_reg[11]_i_18_n_5 ,\gray1_reg[11]_i_18_n_6 ,\gray1_reg[11]_i_18_n_7 }),
        .S({\gray1[11]_i_47_n_0 ,\gray1[11]_i_48_n_0 ,\gray1[11]_i_49_n_0 ,\gray1[11]_i_50_n_0 }));
  CARRY4 \gray1_reg[11]_i_19 
       (.CI(\gray1_reg[7]_i_18_n_0 ),
        .CO({\gray1_reg[11]_i_19_n_0 ,\gray1_reg[11]_i_19_n_1 ,\gray1_reg[11]_i_19_n_2 ,\gray1_reg[11]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray1[11]_i_51_n_0 ,\gray1[11]_i_52_n_0 ,\gray1[11]_i_53_n_0 ,\gray1[11]_i_54_n_0 }),
        .O({\gray1_reg[11]_i_19_n_4 ,\gray1_reg[11]_i_19_n_5 ,\gray1_reg[11]_i_19_n_6 ,\gray1_reg[11]_i_19_n_7 }),
        .S({\gray1[11]_i_55_n_0 ,\gray1[11]_i_56_n_0 ,\gray1[11]_i_57_n_0 ,\gray1[11]_i_58_n_0 }));
  CARRY4 \gray1_reg[11]_i_6 
       (.CI(\gray1_reg[7]_i_6_n_0 ),
        .CO({\NLW_gray1_reg[11]_i_6_CO_UNCONNECTED [3],\gray1_reg[11]_i_6_n_1 ,\gray1_reg[11]_i_6_n_2 ,\gray1_reg[11]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\gray1[11]_i_7_n_0 ,\gray1[11]_i_8_n_0 ,\gray1[11]_i_9_n_0 }),
        .O(grayResult[11:8]),
        .S({\gray1[11]_i_10_n_0 ,\gray1[11]_i_11_n_0 ,\gray1[11]_i_12_n_0 ,\gray1[11]_i_13_n_0 }));
  CARRY4 \gray1_reg[11]_i_62 
       (.CI(\gray1_reg[11]_i_73_n_0 ),
        .CO({\gray1_reg[11]_i_62_n_0 ,\NLW_gray1_reg[11]_i_62_CO_UNCONNECTED [2],\gray1_reg[11]_i_62_n_2 ,\gray1_reg[11]_i_62_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rgb3[23],\gray1[11]_i_84_n_0 ,\gray1[11]_i_85_n_0 }),
        .O({\NLW_gray1_reg[11]_i_62_O_UNCONNECTED [3],\gray1_reg[11]_i_62_n_5 ,\gray1_reg[11]_i_62_n_6 ,\gray1_reg[11]_i_62_n_7 }),
        .S({1'b1,\gray1[11]_i_86_n_0 ,\gray1[11]_i_87_n_0 ,\gray1[11]_i_88_n_0 }));
  CARRY4 \gray1_reg[11]_i_63 
       (.CI(\gray1_reg[11]_i_71_n_0 ),
        .CO({\gray1_reg[11]_i_63_n_0 ,\NLW_gray1_reg[11]_i_63_CO_UNCONNECTED [2],\gray1_reg[11]_i_63_n_2 ,\gray1_reg[11]_i_63_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rgb1[31],\gray1[11]_i_89_n_0 ,\gray1[11]_i_90_n_0 }),
        .O({\NLW_gray1_reg[11]_i_63_O_UNCONNECTED [3],\gray1_reg[11]_i_63_n_5 ,\gray1_reg[11]_i_63_n_6 ,\gray1_reg[11]_i_63_n_7 }),
        .S({1'b1,\gray1[11]_i_91_n_0 ,\gray1[11]_i_92_n_0 ,\gray1[11]_i_93_n_0 }));
  CARRY4 \gray1_reg[11]_i_65 
       (.CI(\gray1_reg[11]_i_81_n_0 ),
        .CO({\gray1_reg[11]_i_65_n_0 ,\NLW_gray1_reg[11]_i_65_CO_UNCONNECTED [2],\gray1_reg[11]_i_65_n_2 ,\gray1_reg[11]_i_65_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rgb2[15],\gray1[11]_i_95_n_0 ,\gray1[11]_i_96_n_0 }),
        .O({\NLW_gray1_reg[11]_i_65_O_UNCONNECTED [3],\gray1_reg[11]_i_65_n_5 ,\gray1_reg[11]_i_65_n_6 ,\gray1_reg[11]_i_65_n_7 }),
        .S({1'b1,\gray1[11]_i_97_n_0 ,\gray1[11]_i_98_n_0 ,\gray1[11]_i_99_n_0 }));
  CARRY4 \gray1_reg[11]_i_71 
       (.CI(1'b0),
        .CO({\gray1_reg[11]_i_71_n_0 ,\gray1_reg[11]_i_71_n_1 ,\gray1_reg[11]_i_71_n_2 ,\gray1_reg[11]_i_71_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray1[11]_i_102_n_0 ,\gray1[11]_i_103_n_0 ,\gray1[11]_i_104_n_0 ,rgb1[26]}),
        .O({\gray1_reg[11]_i_71_n_4 ,\gray1_reg[11]_i_71_n_5 ,\gray1_reg[11]_i_71_n_6 ,\gray1_reg[11]_i_71_n_7 }),
        .S({\gray1[11]_i_105_n_0 ,\gray1[11]_i_106_n_0 ,\gray1[11]_i_107_n_0 ,\gray1[11]_i_108_n_0 }));
  CARRY4 \gray1_reg[11]_i_73 
       (.CI(1'b0),
        .CO({\gray1_reg[11]_i_73_n_0 ,\gray1_reg[11]_i_73_n_1 ,\gray1_reg[11]_i_73_n_2 ,\gray1_reg[11]_i_73_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray1[11]_i_110_n_0 ,\gray1[11]_i_111_n_0 ,\gray1[11]_i_112_n_0 ,rgb3[18]}),
        .O({\gray1_reg[11]_i_73_n_4 ,\gray1_reg[11]_i_73_n_5 ,\gray1_reg[11]_i_73_n_6 ,\gray1_reg[11]_i_73_n_7 }),
        .S({\gray1[11]_i_113_n_0 ,\gray1[11]_i_114_n_0 ,\gray1[11]_i_115_n_0 ,\gray1[11]_i_116_n_0 }));
  CARRY4 \gray1_reg[11]_i_81 
       (.CI(1'b0),
        .CO({\gray1_reg[11]_i_81_n_0 ,\gray1_reg[11]_i_81_n_1 ,\gray1_reg[11]_i_81_n_2 ,\gray1_reg[11]_i_81_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray1[11]_i_118_n_0 ,\gray1[11]_i_119_n_0 ,\gray1[11]_i_120_n_0 ,rgb2[10]}),
        .O({\gray1_reg[11]_i_81_n_4 ,\gray1_reg[11]_i_81_n_5 ,\gray1_reg[11]_i_81_n_6 ,\gray1_reg[11]_i_81_n_7 }),
        .S({\gray1[11]_i_121_n_0 ,\gray1[11]_i_122_n_0 ,\gray1[11]_i_123_n_0 ,\gray1[11]_i_124_n_0 }));
  FDRE \gray1_reg[12] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[15]_i_1_n_7 ),
        .Q(\gray1[31] [12]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[13] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[15]_i_1_n_6 ),
        .Q(\gray1[31] [13]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[14] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[15]_i_1_n_5 ),
        .Q(\gray1[31] [14]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[15] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[15]_i_1_n_4 ),
        .Q(\gray1[31] [15]),
        .R(\gray1[31]_i_1_n_0 ));
  CARRY4 \gray1_reg[15]_i_1 
       (.CI(\gray1_reg[11]_i_1_n_0 ),
        .CO({\gray1_reg[15]_i_1_n_0 ,\gray1_reg[15]_i_1_n_1 ,\gray1_reg[15]_i_1_n_2 ,\gray1_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gray1_reg[15]_i_1_n_4 ,\gray1_reg[15]_i_1_n_5 ,\gray1_reg[15]_i_1_n_6 ,\gray1_reg[15]_i_1_n_7 }),
        .S(\gray1[31] [15:12]));
  FDRE \gray1_reg[16] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[19]_i_1_n_7 ),
        .Q(\gray1[31] [16]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[17] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[19]_i_1_n_6 ),
        .Q(\gray1[31] [17]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[18] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[19]_i_1_n_5 ),
        .Q(\gray1[31] [18]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[19] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[19]_i_1_n_4 ),
        .Q(\gray1[31] [19]),
        .R(\gray1[31]_i_1_n_0 ));
  CARRY4 \gray1_reg[19]_i_1 
       (.CI(\gray1_reg[15]_i_1_n_0 ),
        .CO({\gray1_reg[19]_i_1_n_0 ,\gray1_reg[19]_i_1_n_1 ,\gray1_reg[19]_i_1_n_2 ,\gray1_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gray1_reg[19]_i_1_n_4 ,\gray1_reg[19]_i_1_n_5 ,\gray1_reg[19]_i_1_n_6 ,\gray1_reg[19]_i_1_n_7 }),
        .S(\gray1[31] [19:16]));
  FDRE \gray1_reg[1] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[3]_i_1_n_6 ),
        .Q(\gray1[31] [1]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[20] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[23]_i_1_n_7 ),
        .Q(\gray1[31] [20]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[21] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[23]_i_1_n_6 ),
        .Q(\gray1[31] [21]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[22] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[23]_i_1_n_5 ),
        .Q(\gray1[31] [22]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[23] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[23]_i_1_n_4 ),
        .Q(\gray1[31] [23]),
        .R(\gray1[31]_i_1_n_0 ));
  CARRY4 \gray1_reg[23]_i_1 
       (.CI(\gray1_reg[19]_i_1_n_0 ),
        .CO({\gray1_reg[23]_i_1_n_0 ,\gray1_reg[23]_i_1_n_1 ,\gray1_reg[23]_i_1_n_2 ,\gray1_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gray1_reg[23]_i_1_n_4 ,\gray1_reg[23]_i_1_n_5 ,\gray1_reg[23]_i_1_n_6 ,\gray1_reg[23]_i_1_n_7 }),
        .S(\gray1[31] [23:20]));
  FDRE \gray1_reg[24] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[27]_i_1_n_7 ),
        .Q(\gray1[31] [24]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[25] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[27]_i_1_n_6 ),
        .Q(\gray1[31] [25]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[26] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[27]_i_1_n_5 ),
        .Q(\gray1[31] [26]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[27] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[27]_i_1_n_4 ),
        .Q(\gray1[31] [27]),
        .R(\gray1[31]_i_1_n_0 ));
  CARRY4 \gray1_reg[27]_i_1 
       (.CI(\gray1_reg[23]_i_1_n_0 ),
        .CO({\gray1_reg[27]_i_1_n_0 ,\gray1_reg[27]_i_1_n_1 ,\gray1_reg[27]_i_1_n_2 ,\gray1_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gray1_reg[27]_i_1_n_4 ,\gray1_reg[27]_i_1_n_5 ,\gray1_reg[27]_i_1_n_6 ,\gray1_reg[27]_i_1_n_7 }),
        .S(\gray1[31] [27:24]));
  FDRE \gray1_reg[28] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[31]_i_3_n_7 ),
        .Q(\gray1[31] [28]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[29] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[31]_i_3_n_6 ),
        .Q(\gray1[31] [29]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[2] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[3]_i_1_n_5 ),
        .Q(\gray1[31] [2]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[30] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[31]_i_3_n_5 ),
        .Q(\gray1[31] [30]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[31] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[31]_i_3_n_4 ),
        .Q(\gray1[31] [31]),
        .R(\gray1[31]_i_1_n_0 ));
  CARRY4 \gray1_reg[31]_i_3 
       (.CI(\gray1_reg[27]_i_1_n_0 ),
        .CO({\NLW_gray1_reg[31]_i_3_CO_UNCONNECTED [3],\gray1_reg[31]_i_3_n_1 ,\gray1_reg[31]_i_3_n_2 ,\gray1_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gray1_reg[31]_i_3_n_4 ,\gray1_reg[31]_i_3_n_5 ,\gray1_reg[31]_i_3_n_6 ,\gray1_reg[31]_i_3_n_7 }),
        .S(\gray1[31] [31:28]));
  FDRE \gray1_reg[3] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[3]_i_1_n_4 ),
        .Q(\gray1[31] [3]),
        .R(\gray1[31]_i_1_n_0 ));
  CARRY4 \gray1_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gray1_reg[3]_i_1_n_0 ,\gray1_reg[3]_i_1_n_1 ,\gray1_reg[3]_i_1_n_2 ,\gray1_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray1[31] [3:0]),
        .O({\gray1_reg[3]_i_1_n_4 ,\gray1_reg[3]_i_1_n_5 ,\gray1_reg[3]_i_1_n_6 ,\gray1_reg[3]_i_1_n_7 }),
        .S({\gray1[3]_i_2_n_0 ,\gray1[3]_i_3_n_0 ,\gray1[3]_i_4_n_0 ,\gray1[3]_i_5_n_0 }));
  CARRY4 \gray1_reg[3]_i_10 
       (.CI(1'b0),
        .CO({\gray1_reg[3]_i_10_n_0 ,\gray1_reg[3]_i_10_n_1 ,\gray1_reg[3]_i_10_n_2 ,\gray1_reg[3]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray1[3]_i_17_n_0 ,\gray1[3]_i_18_n_0 ,\gray1[3]_i_19_n_0 ,rgb1[2]}),
        .O({\gray1_reg[3]_i_10_n_4 ,\gray1_reg[3]_i_10_n_5 ,\gray1_reg[3]_i_10_n_6 ,\gray1_reg[3]_i_10_n_7 }),
        .S({\gray1[3]_i_20_n_0 ,\gray1[3]_i_21_n_0 ,\gray1[3]_i_22_n_0 ,\gray1[3]_i_23_n_0 }));
  CARRY4 \gray1_reg[3]_i_6 
       (.CI(1'b0),
        .CO({\gray1_reg[3]_i_6_n_0 ,\gray1_reg[3]_i_6_n_1 ,\gray1_reg[3]_i_6_n_2 ,\gray1_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray1[3]_i_7_n_0 ,\gray1[3]_i_8_n_0 ,\gray1[3]_i_9_n_0 ,\gray1_reg[3]_i_10_n_7 }),
        .O(grayResult[3:0]),
        .S({\gray1[3]_i_11_n_0 ,\gray1[3]_i_12_n_0 ,\gray1[3]_i_13_n_0 ,\gray1[3]_i_14_n_0 }));
  FDRE \gray1_reg[4] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[7]_i_1_n_7 ),
        .Q(\gray1[31] [4]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[5] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[7]_i_1_n_6 ),
        .Q(\gray1[31] [5]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[6] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[7]_i_1_n_5 ),
        .Q(\gray1[31] [6]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[7] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[7]_i_1_n_4 ),
        .Q(\gray1[31] [7]),
        .R(\gray1[31]_i_1_n_0 ));
  CARRY4 \gray1_reg[7]_i_1 
       (.CI(\gray1_reg[3]_i_1_n_0 ),
        .CO({\gray1_reg[7]_i_1_n_0 ,\gray1_reg[7]_i_1_n_1 ,\gray1_reg[7]_i_1_n_2 ,\gray1_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray1[31] [7:4]),
        .O({\gray1_reg[7]_i_1_n_4 ,\gray1_reg[7]_i_1_n_5 ,\gray1_reg[7]_i_1_n_6 ,\gray1_reg[7]_i_1_n_7 }),
        .S({\gray1[7]_i_2_n_0 ,\gray1[7]_i_3_n_0 ,\gray1[7]_i_4_n_0 ,\gray1[7]_i_5_n_0 }));
  CARRY4 \gray1_reg[7]_i_18 
       (.CI(1'b0),
        .CO({\gray1_reg[7]_i_18_n_0 ,\gray1_reg[7]_i_18_n_1 ,\gray1_reg[7]_i_18_n_2 ,\gray1_reg[7]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray1[7]_i_25_n_0 ,\gray1[7]_i_26_n_0 ,\gray1[7]_i_27_n_0 ,1'b0}),
        .O({\gray1_reg[7]_i_18_n_4 ,\gray1_reg[7]_i_18_n_5 ,\gray1_reg[7]_i_18_n_6 ,\gray1_reg[7]_i_18_n_7 }),
        .S({\gray1[7]_i_28_n_0 ,\gray1[7]_i_29_n_0 ,\gray1[7]_i_30_n_0 ,\gray1[7]_i_31_n_0 }));
  CARRY4 \gray1_reg[7]_i_19 
       (.CI(1'b0),
        .CO({\gray1_reg[7]_i_19_n_0 ,\gray1_reg[7]_i_19_n_1 ,\gray1_reg[7]_i_19_n_2 ,\gray1_reg[7]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray1[7]_i_32_n_0 ,\gray1[7]_i_33_n_0 ,\gray1[7]_i_34_n_0 ,1'b0}),
        .O({\gray1_reg[7]_i_19_n_4 ,\gray1_reg[7]_i_19_n_5 ,\gray1_reg[7]_i_19_n_6 ,\gray1_reg[7]_i_19_n_7 }),
        .S({\gray1[7]_i_35_n_0 ,\gray1[7]_i_36_n_0 ,\gray1[7]_i_37_n_0 ,\gray1[7]_i_38_n_0 }));
  CARRY4 \gray1_reg[7]_i_6 
       (.CI(\gray1_reg[3]_i_6_n_0 ),
        .CO({\gray1_reg[7]_i_6_n_0 ,\gray1_reg[7]_i_6_n_1 ,\gray1_reg[7]_i_6_n_2 ,\gray1_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray1[7]_i_7_n_0 ,\gray1[7]_i_8_n_0 ,\gray1[7]_i_9_n_0 ,\gray1[7]_i_10_n_0 }),
        .O(grayResult[7:4]),
        .S({\gray1[7]_i_11_n_0 ,\gray1[7]_i_12_n_0 ,\gray1[7]_i_13_n_0 ,\gray1[7]_i_14_n_0 }));
  FDRE \gray1_reg[8] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[11]_i_1_n_7 ),
        .Q(\gray1[31] [8]),
        .R(\gray1[31]_i_1_n_0 ));
  FDRE \gray1_reg[9] 
       (.C(aclk),
        .CE(gray10),
        .D(\gray1_reg[11]_i_1_n_6 ),
        .Q(\gray1[31] [9]),
        .R(\gray1[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray2[11]_i_2 
       (.I0(\gray2[31] [11]),
        .I1(grayResult[11]),
        .O(\gray2[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray2[11]_i_3 
       (.I0(\gray2[31] [10]),
        .I1(grayResult[10]),
        .O(\gray2[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray2[11]_i_4 
       (.I0(\gray2[31] [9]),
        .I1(grayResult[9]),
        .O(\gray2[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray2[11]_i_5 
       (.I0(\gray2[31] [8]),
        .I1(grayResult[8]),
        .O(\gray2[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \gray2[31]_i_1 
       (.I0(delay_tvalid),
        .I1(count[0]),
        .I2(count[1]),
        .I3(p_0_in12_in),
        .I4(start1_i_1_n_0),
        .O(\gray2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gray2[31]_i_2 
       (.I0(delay_tvalid),
        .I1(count[0]),
        .I2(count[1]),
        .I3(p_0_in12_in),
        .O(gray20));
  LUT2 #(
    .INIT(4'h6)) 
    \gray2[3]_i_2 
       (.I0(\gray2[31] [3]),
        .I1(grayResult[3]),
        .O(\gray2[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray2[3]_i_3 
       (.I0(\gray2[31] [2]),
        .I1(grayResult[2]),
        .O(\gray2[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray2[3]_i_4 
       (.I0(\gray2[31] [1]),
        .I1(grayResult[1]),
        .O(\gray2[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray2[3]_i_5 
       (.I0(\gray2[31] [0]),
        .I1(grayResult[0]),
        .O(\gray2[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray2[7]_i_2 
       (.I0(\gray2[31] [7]),
        .I1(grayResult[7]),
        .O(\gray2[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray2[7]_i_3 
       (.I0(\gray2[31] [6]),
        .I1(grayResult[6]),
        .O(\gray2[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray2[7]_i_4 
       (.I0(\gray2[31] [5]),
        .I1(grayResult[5]),
        .O(\gray2[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray2[7]_i_5 
       (.I0(\gray2[31] [4]),
        .I1(grayResult[4]),
        .O(\gray2[7]_i_5_n_0 ));
  FDRE \gray2_reg[0] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[3]_i_1_n_7 ),
        .Q(\gray2[31] [0]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[10] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[11]_i_1_n_5 ),
        .Q(\gray2[31] [10]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[11] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[11]_i_1_n_4 ),
        .Q(\gray2[31] [11]),
        .R(\gray2[31]_i_1_n_0 ));
  CARRY4 \gray2_reg[11]_i_1 
       (.CI(\gray2_reg[7]_i_1_n_0 ),
        .CO({\gray2_reg[11]_i_1_n_0 ,\gray2_reg[11]_i_1_n_1 ,\gray2_reg[11]_i_1_n_2 ,\gray2_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray2[31] [11:8]),
        .O({\gray2_reg[11]_i_1_n_4 ,\gray2_reg[11]_i_1_n_5 ,\gray2_reg[11]_i_1_n_6 ,\gray2_reg[11]_i_1_n_7 }),
        .S({\gray2[11]_i_2_n_0 ,\gray2[11]_i_3_n_0 ,\gray2[11]_i_4_n_0 ,\gray2[11]_i_5_n_0 }));
  FDRE \gray2_reg[12] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[15]_i_1_n_7 ),
        .Q(\gray2[31] [12]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[13] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[15]_i_1_n_6 ),
        .Q(\gray2[31] [13]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[14] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[15]_i_1_n_5 ),
        .Q(\gray2[31] [14]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[15] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[15]_i_1_n_4 ),
        .Q(\gray2[31] [15]),
        .R(\gray2[31]_i_1_n_0 ));
  CARRY4 \gray2_reg[15]_i_1 
       (.CI(\gray2_reg[11]_i_1_n_0 ),
        .CO({\gray2_reg[15]_i_1_n_0 ,\gray2_reg[15]_i_1_n_1 ,\gray2_reg[15]_i_1_n_2 ,\gray2_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gray2_reg[15]_i_1_n_4 ,\gray2_reg[15]_i_1_n_5 ,\gray2_reg[15]_i_1_n_6 ,\gray2_reg[15]_i_1_n_7 }),
        .S(\gray2[31] [15:12]));
  FDRE \gray2_reg[16] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[19]_i_1_n_7 ),
        .Q(\gray2[31] [16]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[17] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[19]_i_1_n_6 ),
        .Q(\gray2[31] [17]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[18] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[19]_i_1_n_5 ),
        .Q(\gray2[31] [18]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[19] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[19]_i_1_n_4 ),
        .Q(\gray2[31] [19]),
        .R(\gray2[31]_i_1_n_0 ));
  CARRY4 \gray2_reg[19]_i_1 
       (.CI(\gray2_reg[15]_i_1_n_0 ),
        .CO({\gray2_reg[19]_i_1_n_0 ,\gray2_reg[19]_i_1_n_1 ,\gray2_reg[19]_i_1_n_2 ,\gray2_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gray2_reg[19]_i_1_n_4 ,\gray2_reg[19]_i_1_n_5 ,\gray2_reg[19]_i_1_n_6 ,\gray2_reg[19]_i_1_n_7 }),
        .S(\gray2[31] [19:16]));
  FDRE \gray2_reg[1] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[3]_i_1_n_6 ),
        .Q(\gray2[31] [1]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[20] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[23]_i_1_n_7 ),
        .Q(\gray2[31] [20]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[21] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[23]_i_1_n_6 ),
        .Q(\gray2[31] [21]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[22] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[23]_i_1_n_5 ),
        .Q(\gray2[31] [22]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[23] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[23]_i_1_n_4 ),
        .Q(\gray2[31] [23]),
        .R(\gray2[31]_i_1_n_0 ));
  CARRY4 \gray2_reg[23]_i_1 
       (.CI(\gray2_reg[19]_i_1_n_0 ),
        .CO({\gray2_reg[23]_i_1_n_0 ,\gray2_reg[23]_i_1_n_1 ,\gray2_reg[23]_i_1_n_2 ,\gray2_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gray2_reg[23]_i_1_n_4 ,\gray2_reg[23]_i_1_n_5 ,\gray2_reg[23]_i_1_n_6 ,\gray2_reg[23]_i_1_n_7 }),
        .S(\gray2[31] [23:20]));
  FDRE \gray2_reg[24] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[27]_i_1_n_7 ),
        .Q(\gray2[31] [24]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[25] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[27]_i_1_n_6 ),
        .Q(\gray2[31] [25]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[26] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[27]_i_1_n_5 ),
        .Q(\gray2[31] [26]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[27] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[27]_i_1_n_4 ),
        .Q(\gray2[31] [27]),
        .R(\gray2[31]_i_1_n_0 ));
  CARRY4 \gray2_reg[27]_i_1 
       (.CI(\gray2_reg[23]_i_1_n_0 ),
        .CO({\gray2_reg[27]_i_1_n_0 ,\gray2_reg[27]_i_1_n_1 ,\gray2_reg[27]_i_1_n_2 ,\gray2_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gray2_reg[27]_i_1_n_4 ,\gray2_reg[27]_i_1_n_5 ,\gray2_reg[27]_i_1_n_6 ,\gray2_reg[27]_i_1_n_7 }),
        .S(\gray2[31] [27:24]));
  FDRE \gray2_reg[28] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[31]_i_3_n_7 ),
        .Q(\gray2[31] [28]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[29] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[31]_i_3_n_6 ),
        .Q(\gray2[31] [29]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[2] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[3]_i_1_n_5 ),
        .Q(\gray2[31] [2]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[30] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[31]_i_3_n_5 ),
        .Q(\gray2[31] [30]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[31] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[31]_i_3_n_4 ),
        .Q(\gray2[31] [31]),
        .R(\gray2[31]_i_1_n_0 ));
  CARRY4 \gray2_reg[31]_i_3 
       (.CI(\gray2_reg[27]_i_1_n_0 ),
        .CO({\NLW_gray2_reg[31]_i_3_CO_UNCONNECTED [3],\gray2_reg[31]_i_3_n_1 ,\gray2_reg[31]_i_3_n_2 ,\gray2_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gray2_reg[31]_i_3_n_4 ,\gray2_reg[31]_i_3_n_5 ,\gray2_reg[31]_i_3_n_6 ,\gray2_reg[31]_i_3_n_7 }),
        .S(\gray2[31] [31:28]));
  FDRE \gray2_reg[3] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[3]_i_1_n_4 ),
        .Q(\gray2[31] [3]),
        .R(\gray2[31]_i_1_n_0 ));
  CARRY4 \gray2_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gray2_reg[3]_i_1_n_0 ,\gray2_reg[3]_i_1_n_1 ,\gray2_reg[3]_i_1_n_2 ,\gray2_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray2[31] [3:0]),
        .O({\gray2_reg[3]_i_1_n_4 ,\gray2_reg[3]_i_1_n_5 ,\gray2_reg[3]_i_1_n_6 ,\gray2_reg[3]_i_1_n_7 }),
        .S({\gray2[3]_i_2_n_0 ,\gray2[3]_i_3_n_0 ,\gray2[3]_i_4_n_0 ,\gray2[3]_i_5_n_0 }));
  FDRE \gray2_reg[4] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[7]_i_1_n_7 ),
        .Q(\gray2[31] [4]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[5] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[7]_i_1_n_6 ),
        .Q(\gray2[31] [5]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[6] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[7]_i_1_n_5 ),
        .Q(\gray2[31] [6]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[7] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[7]_i_1_n_4 ),
        .Q(\gray2[31] [7]),
        .R(\gray2[31]_i_1_n_0 ));
  CARRY4 \gray2_reg[7]_i_1 
       (.CI(\gray2_reg[3]_i_1_n_0 ),
        .CO({\gray2_reg[7]_i_1_n_0 ,\gray2_reg[7]_i_1_n_1 ,\gray2_reg[7]_i_1_n_2 ,\gray2_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray2[31] [7:4]),
        .O({\gray2_reg[7]_i_1_n_4 ,\gray2_reg[7]_i_1_n_5 ,\gray2_reg[7]_i_1_n_6 ,\gray2_reg[7]_i_1_n_7 }),
        .S({\gray2[7]_i_2_n_0 ,\gray2[7]_i_3_n_0 ,\gray2[7]_i_4_n_0 ,\gray2[7]_i_5_n_0 }));
  FDRE \gray2_reg[8] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[11]_i_1_n_7 ),
        .Q(\gray2[31] [8]),
        .R(\gray2[31]_i_1_n_0 ));
  FDRE \gray2_reg[9] 
       (.C(aclk),
        .CE(gray20),
        .D(\gray2_reg[11]_i_1_n_6 ),
        .Q(\gray2[31] [9]),
        .R(\gray2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \initS2MMClearSDelay[0]_i_1 
       (.I0(finish_send),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\initS2MMClearSDelay[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \initS2MMClearSDelay[0]_i_3 
       (.I0(\initS2MMClearSDelay_reg_n_0_[0] ),
        .O(\initS2MMClearSDelay[0]_i_3_n_0 ));
  FDRE \initS2MMClearSDelay_reg[0] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[0]_i_2_n_7 ),
        .Q(\initS2MMClearSDelay_reg_n_0_[0] ),
        .R(start1_i_1_n_0));
  CARRY4 \initS2MMClearSDelay_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\initS2MMClearSDelay_reg[0]_i_2_n_0 ,\initS2MMClearSDelay_reg[0]_i_2_n_1 ,\initS2MMClearSDelay_reg[0]_i_2_n_2 ,\initS2MMClearSDelay_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\initS2MMClearSDelay_reg[0]_i_2_n_4 ,\initS2MMClearSDelay_reg[0]_i_2_n_5 ,\initS2MMClearSDelay_reg[0]_i_2_n_6 ,\initS2MMClearSDelay_reg[0]_i_2_n_7 }),
        .S({\initS2MMClearSDelay_reg_n_0_[3] ,\initS2MMClearSDelay_reg_n_0_[2] ,\initS2MMClearSDelay_reg_n_0_[1] ,\initS2MMClearSDelay[0]_i_3_n_0 }));
  FDRE \initS2MMClearSDelay_reg[10] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[8]_i_1_n_5 ),
        .Q(initS2MMClearSDelay_reg[10]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[11] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[8]_i_1_n_4 ),
        .Q(initS2MMClearSDelay_reg[11]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[12] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[12]_i_1_n_7 ),
        .Q(initS2MMClearSDelay_reg[12]),
        .R(start1_i_1_n_0));
  CARRY4 \initS2MMClearSDelay_reg[12]_i_1 
       (.CI(\initS2MMClearSDelay_reg[8]_i_1_n_0 ),
        .CO({\initS2MMClearSDelay_reg[12]_i_1_n_0 ,\initS2MMClearSDelay_reg[12]_i_1_n_1 ,\initS2MMClearSDelay_reg[12]_i_1_n_2 ,\initS2MMClearSDelay_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\initS2MMClearSDelay_reg[12]_i_1_n_4 ,\initS2MMClearSDelay_reg[12]_i_1_n_5 ,\initS2MMClearSDelay_reg[12]_i_1_n_6 ,\initS2MMClearSDelay_reg[12]_i_1_n_7 }),
        .S(initS2MMClearSDelay_reg[15:12]));
  FDRE \initS2MMClearSDelay_reg[13] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[12]_i_1_n_6 ),
        .Q(initS2MMClearSDelay_reg[13]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[14] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[12]_i_1_n_5 ),
        .Q(initS2MMClearSDelay_reg[14]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[15] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[12]_i_1_n_4 ),
        .Q(initS2MMClearSDelay_reg[15]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[16] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[16]_i_1_n_7 ),
        .Q(initS2MMClearSDelay_reg[16]),
        .R(start1_i_1_n_0));
  CARRY4 \initS2MMClearSDelay_reg[16]_i_1 
       (.CI(\initS2MMClearSDelay_reg[12]_i_1_n_0 ),
        .CO({\initS2MMClearSDelay_reg[16]_i_1_n_0 ,\initS2MMClearSDelay_reg[16]_i_1_n_1 ,\initS2MMClearSDelay_reg[16]_i_1_n_2 ,\initS2MMClearSDelay_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\initS2MMClearSDelay_reg[16]_i_1_n_4 ,\initS2MMClearSDelay_reg[16]_i_1_n_5 ,\initS2MMClearSDelay_reg[16]_i_1_n_6 ,\initS2MMClearSDelay_reg[16]_i_1_n_7 }),
        .S(initS2MMClearSDelay_reg[19:16]));
  FDRE \initS2MMClearSDelay_reg[17] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[16]_i_1_n_6 ),
        .Q(initS2MMClearSDelay_reg[17]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[18] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[16]_i_1_n_5 ),
        .Q(initS2MMClearSDelay_reg[18]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[19] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[16]_i_1_n_4 ),
        .Q(initS2MMClearSDelay_reg[19]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[1] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[0]_i_2_n_6 ),
        .Q(\initS2MMClearSDelay_reg_n_0_[1] ),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[20] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[20]_i_1_n_7 ),
        .Q(initS2MMClearSDelay_reg[20]),
        .R(start1_i_1_n_0));
  CARRY4 \initS2MMClearSDelay_reg[20]_i_1 
       (.CI(\initS2MMClearSDelay_reg[16]_i_1_n_0 ),
        .CO({\initS2MMClearSDelay_reg[20]_i_1_n_0 ,\initS2MMClearSDelay_reg[20]_i_1_n_1 ,\initS2MMClearSDelay_reg[20]_i_1_n_2 ,\initS2MMClearSDelay_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\initS2MMClearSDelay_reg[20]_i_1_n_4 ,\initS2MMClearSDelay_reg[20]_i_1_n_5 ,\initS2MMClearSDelay_reg[20]_i_1_n_6 ,\initS2MMClearSDelay_reg[20]_i_1_n_7 }),
        .S(initS2MMClearSDelay_reg[23:20]));
  FDRE \initS2MMClearSDelay_reg[21] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[20]_i_1_n_6 ),
        .Q(initS2MMClearSDelay_reg[21]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[22] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[20]_i_1_n_5 ),
        .Q(initS2MMClearSDelay_reg[22]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[23] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[20]_i_1_n_4 ),
        .Q(initS2MMClearSDelay_reg[23]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[24] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[24]_i_1_n_7 ),
        .Q(initS2MMClearSDelay_reg[24]),
        .R(start1_i_1_n_0));
  CARRY4 \initS2MMClearSDelay_reg[24]_i_1 
       (.CI(\initS2MMClearSDelay_reg[20]_i_1_n_0 ),
        .CO({\initS2MMClearSDelay_reg[24]_i_1_n_0 ,\initS2MMClearSDelay_reg[24]_i_1_n_1 ,\initS2MMClearSDelay_reg[24]_i_1_n_2 ,\initS2MMClearSDelay_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\initS2MMClearSDelay_reg[24]_i_1_n_4 ,\initS2MMClearSDelay_reg[24]_i_1_n_5 ,\initS2MMClearSDelay_reg[24]_i_1_n_6 ,\initS2MMClearSDelay_reg[24]_i_1_n_7 }),
        .S(initS2MMClearSDelay_reg[27:24]));
  FDRE \initS2MMClearSDelay_reg[25] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[24]_i_1_n_6 ),
        .Q(initS2MMClearSDelay_reg[25]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[26] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[24]_i_1_n_5 ),
        .Q(initS2MMClearSDelay_reg[26]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[27] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[24]_i_1_n_4 ),
        .Q(initS2MMClearSDelay_reg[27]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[28] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[28]_i_1_n_7 ),
        .Q(initS2MMClearSDelay_reg[28]),
        .R(start1_i_1_n_0));
  CARRY4 \initS2MMClearSDelay_reg[28]_i_1 
       (.CI(\initS2MMClearSDelay_reg[24]_i_1_n_0 ),
        .CO({\NLW_initS2MMClearSDelay_reg[28]_i_1_CO_UNCONNECTED [3],\initS2MMClearSDelay_reg[28]_i_1_n_1 ,\initS2MMClearSDelay_reg[28]_i_1_n_2 ,\initS2MMClearSDelay_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\initS2MMClearSDelay_reg[28]_i_1_n_4 ,\initS2MMClearSDelay_reg[28]_i_1_n_5 ,\initS2MMClearSDelay_reg[28]_i_1_n_6 ,\initS2MMClearSDelay_reg[28]_i_1_n_7 }),
        .S(initS2MMClearSDelay_reg[31:28]));
  FDRE \initS2MMClearSDelay_reg[29] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[28]_i_1_n_6 ),
        .Q(initS2MMClearSDelay_reg[29]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[2] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[0]_i_2_n_5 ),
        .Q(\initS2MMClearSDelay_reg_n_0_[2] ),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[30] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[28]_i_1_n_5 ),
        .Q(initS2MMClearSDelay_reg[30]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[31] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[28]_i_1_n_4 ),
        .Q(initS2MMClearSDelay_reg[31]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[3] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[0]_i_2_n_4 ),
        .Q(\initS2MMClearSDelay_reg_n_0_[3] ),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[4] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[4]_i_1_n_7 ),
        .Q(initS2MMClearSDelay_reg[4]),
        .R(start1_i_1_n_0));
  CARRY4 \initS2MMClearSDelay_reg[4]_i_1 
       (.CI(\initS2MMClearSDelay_reg[0]_i_2_n_0 ),
        .CO({\initS2MMClearSDelay_reg[4]_i_1_n_0 ,\initS2MMClearSDelay_reg[4]_i_1_n_1 ,\initS2MMClearSDelay_reg[4]_i_1_n_2 ,\initS2MMClearSDelay_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\initS2MMClearSDelay_reg[4]_i_1_n_4 ,\initS2MMClearSDelay_reg[4]_i_1_n_5 ,\initS2MMClearSDelay_reg[4]_i_1_n_6 ,\initS2MMClearSDelay_reg[4]_i_1_n_7 }),
        .S(initS2MMClearSDelay_reg[7:4]));
  FDRE \initS2MMClearSDelay_reg[5] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[4]_i_1_n_6 ),
        .Q(initS2MMClearSDelay_reg[5]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[6] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[4]_i_1_n_5 ),
        .Q(initS2MMClearSDelay_reg[6]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[7] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[4]_i_1_n_4 ),
        .Q(initS2MMClearSDelay_reg[7]),
        .R(start1_i_1_n_0));
  FDRE \initS2MMClearSDelay_reg[8] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[8]_i_1_n_7 ),
        .Q(initS2MMClearSDelay_reg[8]),
        .R(start1_i_1_n_0));
  CARRY4 \initS2MMClearSDelay_reg[8]_i_1 
       (.CI(\initS2MMClearSDelay_reg[4]_i_1_n_0 ),
        .CO({\initS2MMClearSDelay_reg[8]_i_1_n_0 ,\initS2MMClearSDelay_reg[8]_i_1_n_1 ,\initS2MMClearSDelay_reg[8]_i_1_n_2 ,\initS2MMClearSDelay_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\initS2MMClearSDelay_reg[8]_i_1_n_4 ,\initS2MMClearSDelay_reg[8]_i_1_n_5 ,\initS2MMClearSDelay_reg[8]_i_1_n_6 ,\initS2MMClearSDelay_reg[8]_i_1_n_7 }),
        .S(initS2MMClearSDelay_reg[11:8]));
  FDRE \initS2MMClearSDelay_reg[9] 
       (.C(aclk),
        .CE(\initS2MMClearSDelay[0]_i_1_n_0 ),
        .D(\initS2MMClearSDelay_reg[8]_i_1_n_6 ),
        .Q(initS2MMClearSDelay_reg[9]),
        .R(start1_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000F8F0)) 
    m_handshake1_i_1
       (.I0(write_clear4_n_2),
        .I1(M_AXI_AWREADY),
        .I2(m_handshake1_11),
        .I3(startClear4_reg_n_0),
        .I4(m_handshake3),
        .O(m_handshake1_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000F8F0)) 
    m_handshake1_i_1__0
       (.I0(clear_awvalid3),
        .I1(M_AXI_AWREADY),
        .I2(m_handshake1_9),
        .I3(startClear3_reg_n_0),
        .I4(m_handshake3),
        .O(m_handshake1_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h0000F8F0)) 
    m_handshake1_i_1__1
       (.I0(clear_awvalid2),
        .I1(M_AXI_AWREADY),
        .I2(m_handshake1_7),
        .I3(startClear2),
        .I4(m_handshake3),
        .O(m_handshake1_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h0000F8F0)) 
    m_handshake1_i_1__2
       (.I0(clear_awvalid),
        .I1(M_AXI_AWREADY),
        .I2(m_handshake1_5),
        .I3(startClear_reg_n_0),
        .I4(m_handshake3),
        .O(m_handshake1_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h0000F8F0)) 
    m_handshake1_i_1__3
       (.I0(w3_awvalid),
        .I1(M_AXI_AWREADY),
        .I2(m_handshake1_3),
        .I3(start3),
        .I4(m_handshake3),
        .O(m_handshake1_i_1__3_n_0));
  LUT5 #(
    .INIT(32'h0000F8F0)) 
    m_handshake1_i_1__4
       (.I0(w2_awvalid),
        .I1(M_AXI_AWREADY),
        .I2(m_handshake1_1),
        .I3(start2),
        .I4(m_handshake3),
        .O(m_handshake1_i_1__4_n_0));
  LUT5 #(
    .INIT(32'h0000F8F0)) 
    m_handshake1_i_1__5
       (.I0(w1_awvalid),
        .I1(M_AXI_AWREADY),
        .I2(m_handshake1),
        .I3(start1),
        .I4(m_handshake3),
        .O(m_handshake1_i_1__5_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake2_i_1
       (.I0(m_handshake2_10),
        .I1(startClear4_reg_n_0),
        .I2(write_clear4_n_4),
        .I3(M_AXI_WREADY),
        .I4(m_handshake3),
        .O(m_handshake2_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake2_i_1__0
       (.I0(m_handshake2_8),
        .I1(startClear3_reg_n_0),
        .I2(clear_wvalid3),
        .I3(M_AXI_WREADY),
        .I4(m_handshake3),
        .O(m_handshake2_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake2_i_1__1
       (.I0(m_handshake2_6),
        .I1(startClear2),
        .I2(clear_wvalid2),
        .I3(M_AXI_WREADY),
        .I4(m_handshake3),
        .O(m_handshake2_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake2_i_1__2
       (.I0(m_handshake2_4),
        .I1(startClear_reg_n_0),
        .I2(clear_wvalid),
        .I3(M_AXI_WREADY),
        .I4(m_handshake3),
        .O(m_handshake2_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake2_i_1__3
       (.I0(m_handshake2_2),
        .I1(start3),
        .I2(w3_wvalid),
        .I3(M_AXI_WREADY),
        .I4(m_handshake3),
        .O(m_handshake2_i_1__3_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake2_i_1__4
       (.I0(m_handshake2_0),
        .I1(start2),
        .I2(w2_wvalid),
        .I3(M_AXI_WREADY),
        .I4(m_handshake3),
        .O(m_handshake2_i_1__4_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake2_i_1__5
       (.I0(m_handshake2),
        .I1(start1),
        .I2(w1_wvalid),
        .I3(M_AXI_WREADY),
        .I4(m_handshake3),
        .O(m_handshake2_i_1__5_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake3_i_1
       (.I0(write_clear4_n_5),
        .I1(startClear4_reg_n_0),
        .I2(M_AXI_BVALID),
        .I3(clear_bready4),
        .I4(m_handshake3),
        .O(m_handshake3_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake3_i_1__0
       (.I0(write_clear3_n_5),
        .I1(startClear3_reg_n_0),
        .I2(M_AXI_BVALID),
        .I3(clear_bready3),
        .I4(m_handshake3),
        .O(m_handshake3_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake3_i_1__1
       (.I0(write_clear2_n_5),
        .I1(startClear2),
        .I2(M_AXI_BVALID),
        .I3(clear_bready2),
        .I4(m_handshake3),
        .O(m_handshake3_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake3_i_1__2
       (.I0(write_clear_n_5),
        .I1(startClear_reg_n_0),
        .I2(M_AXI_BVALID),
        .I3(clear_bready),
        .I4(m_handshake3),
        .O(m_handshake3_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake3_i_1__3
       (.I0(write_3_n_5),
        .I1(start3),
        .I2(M_AXI_BVALID),
        .I3(w3_bready),
        .I4(m_handshake3),
        .O(m_handshake3_i_1__3_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake3_i_1__4
       (.I0(write_2_n_5),
        .I1(start2),
        .I2(M_AXI_BVALID),
        .I3(w2_bready),
        .I4(m_handshake3),
        .O(m_handshake3_i_1__4_n_0));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    m_handshake3_i_1__5
       (.I0(write_1_n_5),
        .I1(start1),
        .I2(M_AXI_BVALID),
        .I3(w1_bready),
        .I4(m_handshake3),
        .O(m_handshake3_i_1__5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \maxDiffCol[4]_i_1 
       (.I0(\maxDiffCol[4]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\maxDiffCol[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \maxDiffCol[4]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .O(\maxDiffCol[4]_i_2_n_0 ));
  FDRE \maxDiffCol_reg[0] 
       (.C(aclk),
        .CE(1'b0),
        .D(\column_count_reg_n_0_[0] ),
        .Q(maxDiffCol[0]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffCol_reg[1] 
       (.C(aclk),
        .CE(1'b0),
        .D(\column_count_reg_n_0_[1] ),
        .Q(maxDiffCol[1]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffCol_reg[2] 
       (.C(aclk),
        .CE(1'b0),
        .D(\column_count_reg_n_0_[2] ),
        .Q(maxDiffCol[2]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffCol_reg[3] 
       (.C(aclk),
        .CE(1'b0),
        .D(\column_count_reg_n_0_[3] ),
        .Q(maxDiffCol[3]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffCol_reg[4] 
       (.C(aclk),
        .CE(1'b0),
        .D(\column_count_reg_n_0_[4] ),
        .Q(maxDiffCol[4]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[0] 
       (.C(aclk),
        .CE(1'b0),
        .D(\row_count_reg_n_0_[0] ),
        .Q(maxDiffRow[0]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[10] 
       (.C(aclk),
        .CE(1'b0),
        .D(row_count_reg[10]),
        .Q(maxDiffRow[10]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[11] 
       (.C(aclk),
        .CE(1'b0),
        .D(row_count_reg[11]),
        .Q(maxDiffRow[11]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[12] 
       (.C(aclk),
        .CE(1'b0),
        .D(row_count_reg[12]),
        .Q(maxDiffRow[12]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[13] 
       (.C(aclk),
        .CE(1'b0),
        .D(row_count_reg[13]),
        .Q(maxDiffRow[13]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[14] 
       (.C(aclk),
        .CE(1'b0),
        .D(row_count_reg[14]),
        .Q(maxDiffRow[14]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[15] 
       (.C(aclk),
        .CE(1'b0),
        .D(row_count_reg[15]),
        .Q(maxDiffRow[15]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[1] 
       (.C(aclk),
        .CE(1'b0),
        .D(\row_count_reg_n_0_[1] ),
        .Q(maxDiffRow[1]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[2] 
       (.C(aclk),
        .CE(1'b0),
        .D(\row_count_reg_n_0_[2] ),
        .Q(maxDiffRow[2]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[3] 
       (.C(aclk),
        .CE(1'b0),
        .D(\row_count_reg_n_0_[3] ),
        .Q(maxDiffRow[3]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[4] 
       (.C(aclk),
        .CE(1'b0),
        .D(\row_count_reg_n_0_[4] ),
        .Q(maxDiffRow[4]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[5] 
       (.C(aclk),
        .CE(1'b0),
        .D(row_count_reg[5]),
        .Q(maxDiffRow[5]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[6] 
       (.C(aclk),
        .CE(1'b0),
        .D(row_count_reg[6]),
        .Q(maxDiffRow[6]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[7] 
       (.C(aclk),
        .CE(1'b0),
        .D(row_count_reg[7]),
        .Q(maxDiffRow[7]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[8] 
       (.C(aclk),
        .CE(1'b0),
        .D(row_count_reg[8]),
        .Q(maxDiffRow[8]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  FDRE \maxDiffRow_reg[9] 
       (.C(aclk),
        .CE(1'b0),
        .D(row_count_reg[9]),
        .Q(maxDiffRow[9]),
        .R(\maxDiffCol[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    motion_detected_INST_0
       (.I0(motion_detected_INST_0_i_1_n_0),
        .I1(motion_detected_INST_0_i_2_n_0),
        .I2(motion_detected_INST_0_i_3_n_0),
        .I3(finish_read1),
        .I4(finish_read2),
        .O(motion_detected));
  CARRY4 motion_detected_INST_0_i_1
       (.CI(motion_detected_INST_0_i_4_n_0),
        .CO({motion_detected_INST_0_i_1_n_0,motion_detected_INST_0_i_1_n_1,motion_detected_INST_0_i_1_n_2,motion_detected_INST_0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({motion_detected_INST_0_i_5_n_0,motion_detected_INST_0_i_6_n_0,motion_detected_INST_0_i_7_n_0,motion_detected_INST_0_i_8_n_0}),
        .O(NLW_motion_detected_INST_0_i_1_O_UNCONNECTED[3:0]),
        .S({motion_detected_INST_0_i_9_n_0,motion_detected_INST_0_i_10_n_0,motion_detected_INST_0_i_11_n_0,motion_detected_INST_0_i_12_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_10
       (.I0(\slv_reg5_reg[31]_i_8_n_6 ),
        .I1(\slv_reg4_reg_n_0_[29] ),
        .I2(\slv_reg5_reg[31]_i_8_n_7 ),
        .I3(\slv_reg4_reg_n_0_[28] ),
        .O(motion_detected_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_100
       (.I0(\gray2[31] [1]),
        .I1(\gray1[31] [1]),
        .I2(\gray2[31] [0]),
        .I3(\gray1[31] [0]),
        .O(motion_detected_INST_0_i_100_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_101
       (.I0(slv_reg50[7]),
        .I1(\slv_reg4_reg_n_0_[7] ),
        .I2(slv_reg50[6]),
        .I3(\slv_reg4_reg_n_0_[6] ),
        .O(motion_detected_INST_0_i_101_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_102
       (.I0(slv_reg50[5]),
        .I1(\slv_reg4_reg_n_0_[5] ),
        .I2(slv_reg50[4]),
        .I3(\slv_reg4_reg_n_0_[4] ),
        .O(motion_detected_INST_0_i_102_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_103
       (.I0(slv_reg50[3]),
        .I1(\slv_reg4_reg_n_0_[3] ),
        .I2(slv_reg50[2]),
        .I3(\slv_reg4_reg_n_0_[2] ),
        .O(motion_detected_INST_0_i_103_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_104
       (.I0(slv_reg50[1]),
        .I1(\slv_reg4_reg_n_0_[1] ),
        .I2(slv_reg50[0]),
        .I3(\slv_reg4_reg_n_0_[0] ),
        .O(motion_detected_INST_0_i_104_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_105
       (.I0(\slv_reg4_reg_n_0_[7] ),
        .I1(slv_reg50[7]),
        .I2(\slv_reg4_reg_n_0_[6] ),
        .I3(slv_reg50[6]),
        .O(motion_detected_INST_0_i_105_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_106
       (.I0(\slv_reg4_reg_n_0_[5] ),
        .I1(slv_reg50[5]),
        .I2(\slv_reg4_reg_n_0_[4] ),
        .I3(slv_reg50[4]),
        .O(motion_detected_INST_0_i_106_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_107
       (.I0(\slv_reg4_reg_n_0_[3] ),
        .I1(slv_reg50[3]),
        .I2(\slv_reg4_reg_n_0_[2] ),
        .I3(slv_reg50[2]),
        .O(motion_detected_INST_0_i_107_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_108
       (.I0(\slv_reg4_reg_n_0_[1] ),
        .I1(slv_reg50[1]),
        .I2(\slv_reg4_reg_n_0_[0] ),
        .I3(slv_reg50[0]),
        .O(motion_detected_INST_0_i_108_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_11
       (.I0(\slv_reg5_reg[27]_i_3_n_4 ),
        .I1(\slv_reg4_reg_n_0_[27] ),
        .I2(\slv_reg5_reg[27]_i_3_n_5 ),
        .I3(\slv_reg4_reg_n_0_[26] ),
        .O(motion_detected_INST_0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_12
       (.I0(\slv_reg5_reg[27]_i_3_n_6 ),
        .I1(\slv_reg4_reg_n_0_[25] ),
        .I2(\slv_reg5_reg[27]_i_3_n_7 ),
        .I3(\slv_reg4_reg_n_0_[24] ),
        .O(motion_detected_INST_0_i_12_n_0));
  CARRY4 motion_detected_INST_0_i_13
       (.CI(motion_detected_INST_0_i_40_n_0),
        .CO({motion_detected_INST_0_i_13_n_0,motion_detected_INST_0_i_13_n_1,motion_detected_INST_0_i_13_n_2,motion_detected_INST_0_i_13_n_3}),
        .CYINIT(1'b0),
        .DI({motion_detected_INST_0_i_41_n_0,motion_detected_INST_0_i_42_n_0,motion_detected_INST_0_i_43_n_0,motion_detected_INST_0_i_44_n_0}),
        .O(NLW_motion_detected_INST_0_i_13_O_UNCONNECTED[3:0]),
        .S({motion_detected_INST_0_i_45_n_0,motion_detected_INST_0_i_46_n_0,motion_detected_INST_0_i_47_n_0,motion_detected_INST_0_i_48_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_14
       (.I0(\gray2[31] [31]),
        .I1(\gray1[31] [31]),
        .I2(\gray1[31] [30]),
        .I3(\gray2[31] [30]),
        .O(motion_detected_INST_0_i_14_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_15
       (.I0(\gray1[31] [29]),
        .I1(\gray2[31] [29]),
        .I2(\gray1[31] [28]),
        .I3(\gray2[31] [28]),
        .O(motion_detected_INST_0_i_15_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_16
       (.I0(\gray1[31] [27]),
        .I1(\gray2[31] [27]),
        .I2(\gray1[31] [26]),
        .I3(\gray2[31] [26]),
        .O(motion_detected_INST_0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_17
       (.I0(\gray1[31] [25]),
        .I1(\gray2[31] [25]),
        .I2(\gray1[31] [24]),
        .I3(\gray2[31] [24]),
        .O(motion_detected_INST_0_i_17_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_18
       (.I0(\gray1[31] [31]),
        .I1(\gray2[31] [31]),
        .I2(\gray2[31] [30]),
        .I3(\gray1[31] [30]),
        .O(motion_detected_INST_0_i_18_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_19
       (.I0(\gray2[31] [29]),
        .I1(\gray1[31] [29]),
        .I2(\gray2[31] [28]),
        .I3(\gray1[31] [28]),
        .O(motion_detected_INST_0_i_19_n_0));
  CARRY4 motion_detected_INST_0_i_2
       (.CI(motion_detected_INST_0_i_13_n_0),
        .CO({motion_detected_INST_0_i_2_n_0,motion_detected_INST_0_i_2_n_1,motion_detected_INST_0_i_2_n_2,motion_detected_INST_0_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({motion_detected_INST_0_i_14_n_0,motion_detected_INST_0_i_15_n_0,motion_detected_INST_0_i_16_n_0,motion_detected_INST_0_i_17_n_0}),
        .O(NLW_motion_detected_INST_0_i_2_O_UNCONNECTED[3:0]),
        .S({motion_detected_INST_0_i_18_n_0,motion_detected_INST_0_i_19_n_0,motion_detected_INST_0_i_20_n_0,motion_detected_INST_0_i_21_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_20
       (.I0(\gray2[31] [27]),
        .I1(\gray1[31] [27]),
        .I2(\gray2[31] [26]),
        .I3(\gray1[31] [26]),
        .O(motion_detected_INST_0_i_20_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_21
       (.I0(\gray2[31] [25]),
        .I1(\gray1[31] [25]),
        .I2(\gray2[31] [24]),
        .I3(\gray1[31] [24]),
        .O(motion_detected_INST_0_i_21_n_0));
  CARRY4 motion_detected_INST_0_i_22
       (.CI(motion_detected_INST_0_i_49_n_0),
        .CO({motion_detected_INST_0_i_22_n_0,motion_detected_INST_0_i_22_n_1,motion_detected_INST_0_i_22_n_2,motion_detected_INST_0_i_22_n_3}),
        .CYINIT(1'b0),
        .DI({motion_detected_INST_0_i_50_n_0,motion_detected_INST_0_i_51_n_0,motion_detected_INST_0_i_52_n_0,motion_detected_INST_0_i_53_n_0}),
        .O(NLW_motion_detected_INST_0_i_22_O_UNCONNECTED[3:0]),
        .S({motion_detected_INST_0_i_54_n_0,motion_detected_INST_0_i_55_n_0,motion_detected_INST_0_i_56_n_0,motion_detected_INST_0_i_57_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_23
       (.I0(slv_reg50[31]),
        .I1(\slv_reg4_reg_n_0_[31] ),
        .I2(slv_reg50[30]),
        .I3(\slv_reg4_reg_n_0_[30] ),
        .O(motion_detected_INST_0_i_23_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_24
       (.I0(slv_reg50[29]),
        .I1(\slv_reg4_reg_n_0_[29] ),
        .I2(slv_reg50[28]),
        .I3(\slv_reg4_reg_n_0_[28] ),
        .O(motion_detected_INST_0_i_24_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_25
       (.I0(slv_reg50[27]),
        .I1(\slv_reg4_reg_n_0_[27] ),
        .I2(slv_reg50[26]),
        .I3(\slv_reg4_reg_n_0_[26] ),
        .O(motion_detected_INST_0_i_25_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_26
       (.I0(slv_reg50[25]),
        .I1(\slv_reg4_reg_n_0_[25] ),
        .I2(slv_reg50[24]),
        .I3(\slv_reg4_reg_n_0_[24] ),
        .O(motion_detected_INST_0_i_26_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_27
       (.I0(\slv_reg4_reg_n_0_[31] ),
        .I1(slv_reg50[31]),
        .I2(\slv_reg4_reg_n_0_[30] ),
        .I3(slv_reg50[30]),
        .O(motion_detected_INST_0_i_27_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_28
       (.I0(\slv_reg4_reg_n_0_[29] ),
        .I1(slv_reg50[29]),
        .I2(\slv_reg4_reg_n_0_[28] ),
        .I3(slv_reg50[28]),
        .O(motion_detected_INST_0_i_28_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_29
       (.I0(\slv_reg4_reg_n_0_[27] ),
        .I1(slv_reg50[27]),
        .I2(\slv_reg4_reg_n_0_[26] ),
        .I3(slv_reg50[26]),
        .O(motion_detected_INST_0_i_29_n_0));
  CARRY4 motion_detected_INST_0_i_3
       (.CI(motion_detected_INST_0_i_22_n_0),
        .CO({motion_detected_INST_0_i_3_n_0,motion_detected_INST_0_i_3_n_1,motion_detected_INST_0_i_3_n_2,motion_detected_INST_0_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({motion_detected_INST_0_i_23_n_0,motion_detected_INST_0_i_24_n_0,motion_detected_INST_0_i_25_n_0,motion_detected_INST_0_i_26_n_0}),
        .O(NLW_motion_detected_INST_0_i_3_O_UNCONNECTED[3:0]),
        .S({motion_detected_INST_0_i_27_n_0,motion_detected_INST_0_i_28_n_0,motion_detected_INST_0_i_29_n_0,motion_detected_INST_0_i_30_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_30
       (.I0(\slv_reg4_reg_n_0_[25] ),
        .I1(slv_reg50[25]),
        .I2(\slv_reg4_reg_n_0_[24] ),
        .I3(slv_reg50[24]),
        .O(motion_detected_INST_0_i_30_n_0));
  CARRY4 motion_detected_INST_0_i_31
       (.CI(motion_detected_INST_0_i_58_n_0),
        .CO({motion_detected_INST_0_i_31_n_0,motion_detected_INST_0_i_31_n_1,motion_detected_INST_0_i_31_n_2,motion_detected_INST_0_i_31_n_3}),
        .CYINIT(1'b0),
        .DI({motion_detected_INST_0_i_59_n_0,motion_detected_INST_0_i_60_n_0,motion_detected_INST_0_i_61_n_0,motion_detected_INST_0_i_62_n_0}),
        .O(NLW_motion_detected_INST_0_i_31_O_UNCONNECTED[3:0]),
        .S({motion_detected_INST_0_i_63_n_0,motion_detected_INST_0_i_64_n_0,motion_detected_INST_0_i_65_n_0,motion_detected_INST_0_i_66_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_32
       (.I0(\slv_reg4_reg_n_0_[23] ),
        .I1(\slv_reg5_reg[23]_i_4_n_4 ),
        .I2(\slv_reg5_reg[23]_i_4_n_5 ),
        .I3(\slv_reg4_reg_n_0_[22] ),
        .O(motion_detected_INST_0_i_32_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_33
       (.I0(\slv_reg4_reg_n_0_[21] ),
        .I1(\slv_reg5_reg[23]_i_4_n_6 ),
        .I2(\slv_reg5_reg[23]_i_4_n_7 ),
        .I3(\slv_reg4_reg_n_0_[20] ),
        .O(motion_detected_INST_0_i_33_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_34
       (.I0(\slv_reg4_reg_n_0_[19] ),
        .I1(\slv_reg5_reg[19]_i_3_n_4 ),
        .I2(\slv_reg5_reg[19]_i_3_n_5 ),
        .I3(\slv_reg4_reg_n_0_[18] ),
        .O(motion_detected_INST_0_i_34_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_35
       (.I0(\slv_reg4_reg_n_0_[17] ),
        .I1(\slv_reg5_reg[19]_i_3_n_6 ),
        .I2(\slv_reg5_reg[19]_i_3_n_7 ),
        .I3(\slv_reg4_reg_n_0_[16] ),
        .O(motion_detected_INST_0_i_35_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_36
       (.I0(\slv_reg5_reg[23]_i_4_n_4 ),
        .I1(\slv_reg4_reg_n_0_[23] ),
        .I2(\slv_reg5_reg[23]_i_4_n_5 ),
        .I3(\slv_reg4_reg_n_0_[22] ),
        .O(motion_detected_INST_0_i_36_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_37
       (.I0(\slv_reg5_reg[23]_i_4_n_6 ),
        .I1(\slv_reg4_reg_n_0_[21] ),
        .I2(\slv_reg5_reg[23]_i_4_n_7 ),
        .I3(\slv_reg4_reg_n_0_[20] ),
        .O(motion_detected_INST_0_i_37_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_38
       (.I0(\slv_reg5_reg[19]_i_3_n_4 ),
        .I1(\slv_reg4_reg_n_0_[19] ),
        .I2(\slv_reg5_reg[19]_i_3_n_5 ),
        .I3(\slv_reg4_reg_n_0_[18] ),
        .O(motion_detected_INST_0_i_38_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_39
       (.I0(\slv_reg5_reg[19]_i_3_n_6 ),
        .I1(\slv_reg4_reg_n_0_[17] ),
        .I2(\slv_reg5_reg[19]_i_3_n_7 ),
        .I3(\slv_reg4_reg_n_0_[16] ),
        .O(motion_detected_INST_0_i_39_n_0));
  CARRY4 motion_detected_INST_0_i_4
       (.CI(motion_detected_INST_0_i_31_n_0),
        .CO({motion_detected_INST_0_i_4_n_0,motion_detected_INST_0_i_4_n_1,motion_detected_INST_0_i_4_n_2,motion_detected_INST_0_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({motion_detected_INST_0_i_32_n_0,motion_detected_INST_0_i_33_n_0,motion_detected_INST_0_i_34_n_0,motion_detected_INST_0_i_35_n_0}),
        .O(NLW_motion_detected_INST_0_i_4_O_UNCONNECTED[3:0]),
        .S({motion_detected_INST_0_i_36_n_0,motion_detected_INST_0_i_37_n_0,motion_detected_INST_0_i_38_n_0,motion_detected_INST_0_i_39_n_0}));
  CARRY4 motion_detected_INST_0_i_40
       (.CI(motion_detected_INST_0_i_67_n_0),
        .CO({motion_detected_INST_0_i_40_n_0,motion_detected_INST_0_i_40_n_1,motion_detected_INST_0_i_40_n_2,motion_detected_INST_0_i_40_n_3}),
        .CYINIT(1'b0),
        .DI({motion_detected_INST_0_i_68_n_0,motion_detected_INST_0_i_69_n_0,motion_detected_INST_0_i_70_n_0,motion_detected_INST_0_i_71_n_0}),
        .O(NLW_motion_detected_INST_0_i_40_O_UNCONNECTED[3:0]),
        .S({motion_detected_INST_0_i_72_n_0,motion_detected_INST_0_i_73_n_0,motion_detected_INST_0_i_74_n_0,motion_detected_INST_0_i_75_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_41
       (.I0(\gray1[31] [23]),
        .I1(\gray2[31] [23]),
        .I2(\gray1[31] [22]),
        .I3(\gray2[31] [22]),
        .O(motion_detected_INST_0_i_41_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_42
       (.I0(\gray1[31] [21]),
        .I1(\gray2[31] [21]),
        .I2(\gray1[31] [20]),
        .I3(\gray2[31] [20]),
        .O(motion_detected_INST_0_i_42_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_43
       (.I0(\gray1[31] [19]),
        .I1(\gray2[31] [19]),
        .I2(\gray1[31] [18]),
        .I3(\gray2[31] [18]),
        .O(motion_detected_INST_0_i_43_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_44
       (.I0(\gray1[31] [17]),
        .I1(\gray2[31] [17]),
        .I2(\gray1[31] [16]),
        .I3(\gray2[31] [16]),
        .O(motion_detected_INST_0_i_44_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_45
       (.I0(\gray2[31] [23]),
        .I1(\gray1[31] [23]),
        .I2(\gray2[31] [22]),
        .I3(\gray1[31] [22]),
        .O(motion_detected_INST_0_i_45_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_46
       (.I0(\gray2[31] [21]),
        .I1(\gray1[31] [21]),
        .I2(\gray2[31] [20]),
        .I3(\gray1[31] [20]),
        .O(motion_detected_INST_0_i_46_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_47
       (.I0(\gray2[31] [19]),
        .I1(\gray1[31] [19]),
        .I2(\gray2[31] [18]),
        .I3(\gray1[31] [18]),
        .O(motion_detected_INST_0_i_47_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_48
       (.I0(\gray2[31] [17]),
        .I1(\gray1[31] [17]),
        .I2(\gray2[31] [16]),
        .I3(\gray1[31] [16]),
        .O(motion_detected_INST_0_i_48_n_0));
  CARRY4 motion_detected_INST_0_i_49
       (.CI(motion_detected_INST_0_i_76_n_0),
        .CO({motion_detected_INST_0_i_49_n_0,motion_detected_INST_0_i_49_n_1,motion_detected_INST_0_i_49_n_2,motion_detected_INST_0_i_49_n_3}),
        .CYINIT(1'b0),
        .DI({motion_detected_INST_0_i_77_n_0,motion_detected_INST_0_i_78_n_0,motion_detected_INST_0_i_79_n_0,motion_detected_INST_0_i_80_n_0}),
        .O(NLW_motion_detected_INST_0_i_49_O_UNCONNECTED[3:0]),
        .S({motion_detected_INST_0_i_81_n_0,motion_detected_INST_0_i_82_n_0,motion_detected_INST_0_i_83_n_0,motion_detected_INST_0_i_84_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_5
       (.I0(\slv_reg4_reg_n_0_[31] ),
        .I1(\slv_reg5_reg[31]_i_8_n_4 ),
        .I2(\slv_reg5_reg[31]_i_8_n_5 ),
        .I3(\slv_reg4_reg_n_0_[30] ),
        .O(motion_detected_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_50
       (.I0(slv_reg50[23]),
        .I1(\slv_reg4_reg_n_0_[23] ),
        .I2(slv_reg50[22]),
        .I3(\slv_reg4_reg_n_0_[22] ),
        .O(motion_detected_INST_0_i_50_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_51
       (.I0(slv_reg50[21]),
        .I1(\slv_reg4_reg_n_0_[21] ),
        .I2(slv_reg50[20]),
        .I3(\slv_reg4_reg_n_0_[20] ),
        .O(motion_detected_INST_0_i_51_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_52
       (.I0(slv_reg50[19]),
        .I1(\slv_reg4_reg_n_0_[19] ),
        .I2(slv_reg50[18]),
        .I3(\slv_reg4_reg_n_0_[18] ),
        .O(motion_detected_INST_0_i_52_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_53
       (.I0(slv_reg50[17]),
        .I1(\slv_reg4_reg_n_0_[17] ),
        .I2(slv_reg50[16]),
        .I3(\slv_reg4_reg_n_0_[16] ),
        .O(motion_detected_INST_0_i_53_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_54
       (.I0(\slv_reg4_reg_n_0_[23] ),
        .I1(slv_reg50[23]),
        .I2(\slv_reg4_reg_n_0_[22] ),
        .I3(slv_reg50[22]),
        .O(motion_detected_INST_0_i_54_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_55
       (.I0(\slv_reg4_reg_n_0_[21] ),
        .I1(slv_reg50[21]),
        .I2(\slv_reg4_reg_n_0_[20] ),
        .I3(slv_reg50[20]),
        .O(motion_detected_INST_0_i_55_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_56
       (.I0(\slv_reg4_reg_n_0_[19] ),
        .I1(slv_reg50[19]),
        .I2(\slv_reg4_reg_n_0_[18] ),
        .I3(slv_reg50[18]),
        .O(motion_detected_INST_0_i_56_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_57
       (.I0(\slv_reg4_reg_n_0_[17] ),
        .I1(slv_reg50[17]),
        .I2(\slv_reg4_reg_n_0_[16] ),
        .I3(slv_reg50[16]),
        .O(motion_detected_INST_0_i_57_n_0));
  CARRY4 motion_detected_INST_0_i_58
       (.CI(1'b0),
        .CO({motion_detected_INST_0_i_58_n_0,motion_detected_INST_0_i_58_n_1,motion_detected_INST_0_i_58_n_2,motion_detected_INST_0_i_58_n_3}),
        .CYINIT(1'b0),
        .DI({motion_detected_INST_0_i_85_n_0,motion_detected_INST_0_i_86_n_0,motion_detected_INST_0_i_87_n_0,motion_detected_INST_0_i_88_n_0}),
        .O(NLW_motion_detected_INST_0_i_58_O_UNCONNECTED[3:0]),
        .S({motion_detected_INST_0_i_89_n_0,motion_detected_INST_0_i_90_n_0,motion_detected_INST_0_i_91_n_0,motion_detected_INST_0_i_92_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_59
       (.I0(\slv_reg4_reg_n_0_[15] ),
        .I1(\slv_reg5_reg[15]_i_4_n_4 ),
        .I2(\slv_reg5_reg[15]_i_4_n_5 ),
        .I3(\slv_reg4_reg_n_0_[14] ),
        .O(motion_detected_INST_0_i_59_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_6
       (.I0(\slv_reg4_reg_n_0_[29] ),
        .I1(\slv_reg5_reg[31]_i_8_n_6 ),
        .I2(\slv_reg5_reg[31]_i_8_n_7 ),
        .I3(\slv_reg4_reg_n_0_[28] ),
        .O(motion_detected_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_60
       (.I0(\slv_reg4_reg_n_0_[13] ),
        .I1(\slv_reg5_reg[15]_i_4_n_6 ),
        .I2(\slv_reg5_reg[15]_i_4_n_7 ),
        .I3(\slv_reg4_reg_n_0_[12] ),
        .O(motion_detected_INST_0_i_60_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_61
       (.I0(\slv_reg4_reg_n_0_[11] ),
        .I1(\slv_reg5_reg[11]_i_3_n_4 ),
        .I2(\slv_reg5_reg[11]_i_3_n_5 ),
        .I3(\slv_reg4_reg_n_0_[10] ),
        .O(motion_detected_INST_0_i_61_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_62
       (.I0(\slv_reg4_reg_n_0_[9] ),
        .I1(\slv_reg5_reg[11]_i_3_n_6 ),
        .I2(\slv_reg5_reg[11]_i_3_n_7 ),
        .I3(\slv_reg4_reg_n_0_[8] ),
        .O(motion_detected_INST_0_i_62_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_63
       (.I0(\slv_reg5_reg[15]_i_4_n_4 ),
        .I1(\slv_reg4_reg_n_0_[15] ),
        .I2(\slv_reg5_reg[15]_i_4_n_5 ),
        .I3(\slv_reg4_reg_n_0_[14] ),
        .O(motion_detected_INST_0_i_63_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_64
       (.I0(\slv_reg5_reg[15]_i_4_n_6 ),
        .I1(\slv_reg4_reg_n_0_[13] ),
        .I2(\slv_reg5_reg[15]_i_4_n_7 ),
        .I3(\slv_reg4_reg_n_0_[12] ),
        .O(motion_detected_INST_0_i_64_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_65
       (.I0(\slv_reg5_reg[11]_i_3_n_4 ),
        .I1(\slv_reg4_reg_n_0_[11] ),
        .I2(\slv_reg5_reg[11]_i_3_n_5 ),
        .I3(\slv_reg4_reg_n_0_[10] ),
        .O(motion_detected_INST_0_i_65_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_66
       (.I0(\slv_reg5_reg[11]_i_3_n_6 ),
        .I1(\slv_reg4_reg_n_0_[9] ),
        .I2(\slv_reg5_reg[11]_i_3_n_7 ),
        .I3(\slv_reg4_reg_n_0_[8] ),
        .O(motion_detected_INST_0_i_66_n_0));
  CARRY4 motion_detected_INST_0_i_67
       (.CI(1'b0),
        .CO({motion_detected_INST_0_i_67_n_0,motion_detected_INST_0_i_67_n_1,motion_detected_INST_0_i_67_n_2,motion_detected_INST_0_i_67_n_3}),
        .CYINIT(1'b0),
        .DI({motion_detected_INST_0_i_93_n_0,motion_detected_INST_0_i_94_n_0,motion_detected_INST_0_i_95_n_0,motion_detected_INST_0_i_96_n_0}),
        .O(NLW_motion_detected_INST_0_i_67_O_UNCONNECTED[3:0]),
        .S({motion_detected_INST_0_i_97_n_0,motion_detected_INST_0_i_98_n_0,motion_detected_INST_0_i_99_n_0,motion_detected_INST_0_i_100_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_68
       (.I0(\gray1[31] [15]),
        .I1(\gray2[31] [15]),
        .I2(\gray1[31] [14]),
        .I3(\gray2[31] [14]),
        .O(motion_detected_INST_0_i_68_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_69
       (.I0(\gray1[31] [13]),
        .I1(\gray2[31] [13]),
        .I2(\gray1[31] [12]),
        .I3(\gray2[31] [12]),
        .O(motion_detected_INST_0_i_69_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_7
       (.I0(\slv_reg4_reg_n_0_[27] ),
        .I1(\slv_reg5_reg[27]_i_3_n_4 ),
        .I2(\slv_reg5_reg[27]_i_3_n_5 ),
        .I3(\slv_reg4_reg_n_0_[26] ),
        .O(motion_detected_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_70
       (.I0(\gray1[31] [11]),
        .I1(\gray2[31] [11]),
        .I2(\gray1[31] [10]),
        .I3(\gray2[31] [10]),
        .O(motion_detected_INST_0_i_70_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_71
       (.I0(\gray1[31] [9]),
        .I1(\gray2[31] [9]),
        .I2(\gray1[31] [8]),
        .I3(\gray2[31] [8]),
        .O(motion_detected_INST_0_i_71_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_72
       (.I0(\gray2[31] [15]),
        .I1(\gray1[31] [15]),
        .I2(\gray2[31] [14]),
        .I3(\gray1[31] [14]),
        .O(motion_detected_INST_0_i_72_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_73
       (.I0(\gray2[31] [13]),
        .I1(\gray1[31] [13]),
        .I2(\gray2[31] [12]),
        .I3(\gray1[31] [12]),
        .O(motion_detected_INST_0_i_73_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_74
       (.I0(\gray2[31] [11]),
        .I1(\gray1[31] [11]),
        .I2(\gray2[31] [10]),
        .I3(\gray1[31] [10]),
        .O(motion_detected_INST_0_i_74_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_75
       (.I0(\gray2[31] [9]),
        .I1(\gray1[31] [9]),
        .I2(\gray2[31] [8]),
        .I3(\gray1[31] [8]),
        .O(motion_detected_INST_0_i_75_n_0));
  CARRY4 motion_detected_INST_0_i_76
       (.CI(1'b0),
        .CO({motion_detected_INST_0_i_76_n_0,motion_detected_INST_0_i_76_n_1,motion_detected_INST_0_i_76_n_2,motion_detected_INST_0_i_76_n_3}),
        .CYINIT(1'b0),
        .DI({motion_detected_INST_0_i_101_n_0,motion_detected_INST_0_i_102_n_0,motion_detected_INST_0_i_103_n_0,motion_detected_INST_0_i_104_n_0}),
        .O(NLW_motion_detected_INST_0_i_76_O_UNCONNECTED[3:0]),
        .S({motion_detected_INST_0_i_105_n_0,motion_detected_INST_0_i_106_n_0,motion_detected_INST_0_i_107_n_0,motion_detected_INST_0_i_108_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_77
       (.I0(slv_reg50[15]),
        .I1(\slv_reg4_reg_n_0_[15] ),
        .I2(slv_reg50[14]),
        .I3(\slv_reg4_reg_n_0_[14] ),
        .O(motion_detected_INST_0_i_77_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_78
       (.I0(slv_reg50[13]),
        .I1(\slv_reg4_reg_n_0_[13] ),
        .I2(slv_reg50[12]),
        .I3(\slv_reg4_reg_n_0_[12] ),
        .O(motion_detected_INST_0_i_78_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_79
       (.I0(slv_reg50[11]),
        .I1(\slv_reg4_reg_n_0_[11] ),
        .I2(slv_reg50[10]),
        .I3(\slv_reg4_reg_n_0_[10] ),
        .O(motion_detected_INST_0_i_79_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_8
       (.I0(\slv_reg4_reg_n_0_[25] ),
        .I1(\slv_reg5_reg[27]_i_3_n_6 ),
        .I2(\slv_reg5_reg[27]_i_3_n_7 ),
        .I3(\slv_reg4_reg_n_0_[24] ),
        .O(motion_detected_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_80
       (.I0(slv_reg50[9]),
        .I1(\slv_reg4_reg_n_0_[9] ),
        .I2(slv_reg50[8]),
        .I3(\slv_reg4_reg_n_0_[8] ),
        .O(motion_detected_INST_0_i_80_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_81
       (.I0(\slv_reg4_reg_n_0_[15] ),
        .I1(slv_reg50[15]),
        .I2(\slv_reg4_reg_n_0_[14] ),
        .I3(slv_reg50[14]),
        .O(motion_detected_INST_0_i_81_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_82
       (.I0(\slv_reg4_reg_n_0_[13] ),
        .I1(slv_reg50[13]),
        .I2(\slv_reg4_reg_n_0_[12] ),
        .I3(slv_reg50[12]),
        .O(motion_detected_INST_0_i_82_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_83
       (.I0(\slv_reg4_reg_n_0_[11] ),
        .I1(slv_reg50[11]),
        .I2(\slv_reg4_reg_n_0_[10] ),
        .I3(slv_reg50[10]),
        .O(motion_detected_INST_0_i_83_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_84
       (.I0(\slv_reg4_reg_n_0_[9] ),
        .I1(slv_reg50[9]),
        .I2(\slv_reg4_reg_n_0_[8] ),
        .I3(slv_reg50[8]),
        .O(motion_detected_INST_0_i_84_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_85
       (.I0(\slv_reg4_reg_n_0_[7] ),
        .I1(\slv_reg5_reg[7]_i_4_n_4 ),
        .I2(\slv_reg5_reg[7]_i_4_n_5 ),
        .I3(\slv_reg4_reg_n_0_[6] ),
        .O(motion_detected_INST_0_i_85_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_86
       (.I0(\slv_reg4_reg_n_0_[5] ),
        .I1(\slv_reg5_reg[7]_i_4_n_6 ),
        .I2(\slv_reg5_reg[7]_i_4_n_7 ),
        .I3(\slv_reg4_reg_n_0_[4] ),
        .O(motion_detected_INST_0_i_86_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_87
       (.I0(\slv_reg4_reg_n_0_[3] ),
        .I1(\slv_reg5_reg[3]_i_3_n_4 ),
        .I2(\slv_reg5_reg[3]_i_3_n_5 ),
        .I3(\slv_reg4_reg_n_0_[2] ),
        .O(motion_detected_INST_0_i_87_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    motion_detected_INST_0_i_88
       (.I0(\slv_reg4_reg_n_0_[1] ),
        .I1(\slv_reg5_reg[3]_i_3_n_6 ),
        .I2(\slv_reg5_reg[3]_i_3_n_7 ),
        .I3(\slv_reg4_reg_n_0_[0] ),
        .O(motion_detected_INST_0_i_88_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_89
       (.I0(\slv_reg5_reg[7]_i_4_n_4 ),
        .I1(\slv_reg4_reg_n_0_[7] ),
        .I2(\slv_reg5_reg[7]_i_4_n_5 ),
        .I3(\slv_reg4_reg_n_0_[6] ),
        .O(motion_detected_INST_0_i_89_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_9
       (.I0(\slv_reg5_reg[31]_i_8_n_4 ),
        .I1(\slv_reg4_reg_n_0_[31] ),
        .I2(\slv_reg5_reg[31]_i_8_n_5 ),
        .I3(\slv_reg4_reg_n_0_[30] ),
        .O(motion_detected_INST_0_i_9_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_90
       (.I0(\slv_reg5_reg[7]_i_4_n_6 ),
        .I1(\slv_reg4_reg_n_0_[5] ),
        .I2(\slv_reg5_reg[7]_i_4_n_7 ),
        .I3(\slv_reg4_reg_n_0_[4] ),
        .O(motion_detected_INST_0_i_90_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_91
       (.I0(\slv_reg5_reg[3]_i_3_n_4 ),
        .I1(\slv_reg4_reg_n_0_[3] ),
        .I2(\slv_reg5_reg[3]_i_3_n_5 ),
        .I3(\slv_reg4_reg_n_0_[2] ),
        .O(motion_detected_INST_0_i_91_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_92
       (.I0(\slv_reg5_reg[3]_i_3_n_6 ),
        .I1(\slv_reg4_reg_n_0_[1] ),
        .I2(\slv_reg5_reg[3]_i_3_n_7 ),
        .I3(\slv_reg4_reg_n_0_[0] ),
        .O(motion_detected_INST_0_i_92_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_93
       (.I0(\gray1[31] [7]),
        .I1(\gray2[31] [7]),
        .I2(\gray1[31] [6]),
        .I3(\gray2[31] [6]),
        .O(motion_detected_INST_0_i_93_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_94
       (.I0(\gray1[31] [5]),
        .I1(\gray2[31] [5]),
        .I2(\gray1[31] [4]),
        .I3(\gray2[31] [4]),
        .O(motion_detected_INST_0_i_94_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_95
       (.I0(\gray1[31] [3]),
        .I1(\gray2[31] [3]),
        .I2(\gray1[31] [2]),
        .I3(\gray2[31] [2]),
        .O(motion_detected_INST_0_i_95_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    motion_detected_INST_0_i_96
       (.I0(\gray1[31] [1]),
        .I1(\gray2[31] [1]),
        .I2(\gray1[31] [0]),
        .I3(\gray2[31] [0]),
        .O(motion_detected_INST_0_i_96_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_97
       (.I0(\gray2[31] [7]),
        .I1(\gray1[31] [7]),
        .I2(\gray2[31] [6]),
        .I3(\gray1[31] [6]),
        .O(motion_detected_INST_0_i_97_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_98
       (.I0(\gray2[31] [5]),
        .I1(\gray1[31] [5]),
        .I2(\gray2[31] [4]),
        .I3(\gray1[31] [4]),
        .O(motion_detected_INST_0_i_98_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    motion_detected_INST_0_i_99
       (.I0(\gray2[31] [3]),
        .I1(\gray1[31] [3]),
        .I2(\gray2[31] [2]),
        .I3(\gray1[31] [2]),
        .O(motion_detected_INST_0_i_99_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextState_reg[0] 
       (.CLR(1'b0),
        .D(write_3_n_6),
        .G(\nextState_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextState[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[0]_i_10 
       (.I0(overlayDelayCounter_reg[31]),
        .I1(overlayDelayCounter_reg[12]),
        .I2(overlayDelayCounter_reg[15]),
        .I3(overlayDelayCounter_reg[10]),
        .O(\nextState_reg[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[0]_i_11 
       (.I0(overlayDelayCounter_reg[29]),
        .I1(overlayDelayCounter_reg[20]),
        .I2(overlayDelayCounter_reg[19]),
        .I3(overlayDelayCounter_reg[7]),
        .O(\nextState_reg[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[0]_i_12 
       (.I0(overlayDelayCounter_reg[24]),
        .I1(overlayDelayCounter_reg[23]),
        .I2(overlayDelayCounter_reg[26]),
        .I3(overlayDelayCounter_reg[16]),
        .O(\nextState_reg[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextState_reg[0]_i_13 
       (.I0(overlayDelayCounter_reg[30]),
        .I1(overlayDelayCounter_reg[25]),
        .I2(overlayDelayCounter_reg[8]),
        .I3(overlayDelayCounter_reg[21]),
        .I4(overlayDelayCounter_reg[13]),
        .I5(overlayDelayCounter_reg[14]),
        .O(\nextState_reg[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \nextState_reg[0]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\nextState_reg[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \nextState_reg[0]_i_5 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\nextState_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \nextState_reg[0]_i_7 
       (.I0(\nextState_reg[0]_i_8_n_0 ),
        .I1(\nextState_reg[0]_i_9_n_0 ),
        .I2(\nextState_reg[0]_i_10_n_0 ),
        .I3(\nextState_reg[0]_i_11_n_0 ),
        .I4(\nextState_reg[0]_i_12_n_0 ),
        .I5(\nextState_reg[0]_i_13_n_0 ),
        .O(\nextState_reg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \nextState_reg[0]_i_8 
       (.I0(overlayDelayCounter_reg[4]),
        .I1(overlayDelayCounter_reg[5]),
        .I2(overlayDelayCounter_reg[6]),
        .I3(overlayDelayCounter_reg[9]),
        .I4(overlayDelayCounter_reg[22]),
        .I5(overlayDelayCounter_reg[11]),
        .O(\nextState_reg[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \nextState_reg[0]_i_9 
       (.I0(overlayDelayCounter_reg[28]),
        .I1(overlayDelayCounter_reg[17]),
        .I2(overlayDelayCounter_reg[27]),
        .I3(overlayDelayCounter_reg[18]),
        .O(\nextState_reg[0]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextState_reg[1] 
       (.CLR(1'b0),
        .D(write_clear_n_6),
        .G(\nextState_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextState[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[1]_i_10 
       (.I0(clearDelay_reg[25]),
        .I1(clearDelay_reg[11]),
        .I2(clearDelay_reg[31]),
        .I3(clearDelay_reg[15]),
        .O(\nextState_reg[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \nextState_reg[1]_i_11 
       (.I0(clearDelay_reg[4]),
        .I1(clearDelay_reg[5]),
        .I2(clearDelay_reg[6]),
        .I3(clearDelay_reg[17]),
        .I4(clearDelay_reg[26]),
        .I5(clearDelay_reg[21]),
        .O(\nextState_reg[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextState_reg[1]_i_12 
       (.I0(\nextState_reg[1]_i_14_n_0 ),
        .I1(initS2MMClearSDelay_reg[18]),
        .I2(initS2MMClearSDelay_reg[17]),
        .I3(initS2MMClearSDelay_reg[19]),
        .I4(initS2MMClearSDelay_reg[9]),
        .I5(\nextState_reg[1]_i_15_n_0 ),
        .O(\nextState_reg[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextState_reg[1]_i_13 
       (.I0(\nextState_reg[1]_i_16_n_0 ),
        .I1(\nextState_reg[1]_i_17_n_0 ),
        .I2(initS2MMClearSDelay_reg[28]),
        .I3(initS2MMClearSDelay_reg[24]),
        .I4(initS2MMClearSDelay_reg[29]),
        .I5(initS2MMClearSDelay_reg[16]),
        .O(\nextState_reg[1]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[1]_i_14 
       (.I0(initS2MMClearSDelay_reg[26]),
        .I1(initS2MMClearSDelay_reg[25]),
        .I2(initS2MMClearSDelay_reg[22]),
        .I3(initS2MMClearSDelay_reg[12]),
        .O(\nextState_reg[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \nextState_reg[1]_i_15 
       (.I0(initS2MMClearSDelay_reg[4]),
        .I1(initS2MMClearSDelay_reg[5]),
        .I2(initS2MMClearSDelay_reg[6]),
        .I3(initS2MMClearSDelay_reg[10]),
        .I4(initS2MMClearSDelay_reg[14]),
        .I5(initS2MMClearSDelay_reg[8]),
        .O(\nextState_reg[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextState_reg[1]_i_16 
       (.I0(initS2MMClearSDelay_reg[30]),
        .I1(initS2MMClearSDelay_reg[23]),
        .I2(initS2MMClearSDelay_reg[21]),
        .I3(initS2MMClearSDelay_reg[27]),
        .I4(initS2MMClearSDelay_reg[7]),
        .I5(initS2MMClearSDelay_reg[15]),
        .O(\nextState_reg[1]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[1]_i_17 
       (.I0(initS2MMClearSDelay_reg[20]),
        .I1(initS2MMClearSDelay_reg[13]),
        .I2(initS2MMClearSDelay_reg[31]),
        .I3(initS2MMClearSDelay_reg[11]),
        .O(\nextState_reg[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextState_reg[1]_i_4 
       (.I0(\nextState_reg[1]_i_8_n_0 ),
        .I1(\nextState_reg[1]_i_9_n_0 ),
        .I2(clearDelay_reg[18]),
        .I3(clearDelay_reg[9]),
        .I4(clearDelay_reg[24]),
        .I5(clearDelay_reg[20]),
        .O(\nextState_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \nextState_reg[1]_i_5 
       (.I0(\nextState_reg[1]_i_10_n_0 ),
        .I1(clearDelay_reg[10]),
        .I2(clearDelay_reg[7]),
        .I3(clearDelay_reg[28]),
        .I4(clearDelay_reg[16]),
        .I5(\nextState_reg[1]_i_11_n_0 ),
        .O(\nextState_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h20202000FFFFFFFF)) 
    \nextState_reg[1]_i_6 
       (.I0(finish_send),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\nextState_reg[1]_i_12_n_0 ),
        .I4(\nextState_reg[1]_i_13_n_0 ),
        .I5(Q[3]),
        .O(\nextState_reg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextState_reg[1]_i_8 
       (.I0(clearDelay_reg[13]),
        .I1(clearDelay_reg[8]),
        .I2(clearDelay_reg[12]),
        .I3(clearDelay_reg[29]),
        .I4(clearDelay_reg[19]),
        .I5(clearDelay_reg[22]),
        .O(\nextState_reg[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[1]_i_9 
       (.I0(clearDelay_reg[27]),
        .I1(clearDelay_reg[23]),
        .I2(clearDelay_reg[30]),
        .I3(clearDelay_reg[14]),
        .O(\nextState_reg[1]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextState_reg[2] 
       (.CLR(1'b0),
        .D(write_clear2_n_6),
        .G(\nextState_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextState[2]));
  LUT4 #(
    .INIT(16'h0004)) 
    \nextState_reg[2]_i_10 
       (.I0(\nextState_reg[2]_i_16_n_0 ),
        .I1(\nextState_reg[2]_i_17_n_0 ),
        .I2(\nextState_reg[2]_i_18_n_0 ),
        .I3(\nextState_reg[2]_i_19_n_0 ),
        .O(\nextState_reg[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[2]_i_12 
       (.I0(clearDelay2_reg[24]),
        .I1(clearDelay2_reg[23]),
        .I2(clearDelay2_reg[26]),
        .I3(clearDelay2_reg[12]),
        .O(\nextState_reg[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \nextState_reg[2]_i_13 
       (.I0(clearDelay2_reg[4]),
        .I1(clearDelay2_reg[21]),
        .I2(clearDelay2_reg[6]),
        .I3(clearDelay2_reg[10]),
        .O(\nextState_reg[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[2]_i_15 
       (.I0(clearDelay2_reg[20]),
        .I1(clearDelay2_reg[9]),
        .I2(clearDelay2_reg[15]),
        .I3(clearDelay2_reg[8]),
        .O(\nextState_reg[2]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \nextState_reg[2]_i_16 
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(\slv_reg3_reg_n_0_[3] ),
        .I2(\slv_reg3_reg_n_0_[0] ),
        .I3(\slv_reg3_reg_n_0_[31] ),
        .I4(\nextState_reg[2]_i_21_n_0 ),
        .O(\nextState_reg[2]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \nextState_reg[2]_i_17 
       (.I0(\slv_reg3_reg_n_0_[8] ),
        .I1(\slv_reg3_reg_n_0_[11] ),
        .I2(\slv_reg3_reg_n_0_[9] ),
        .I3(\slv_reg3_reg_n_0_[10] ),
        .I4(\nextState_reg[2]_i_22_n_0 ),
        .O(\nextState_reg[2]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \nextState_reg[2]_i_18 
       (.I0(\slv_reg3_reg_n_0_[24] ),
        .I1(\slv_reg3_reg_n_0_[27] ),
        .I2(\slv_reg3_reg_n_0_[25] ),
        .I3(\slv_reg3_reg_n_0_[26] ),
        .I4(\nextState_reg[2]_i_23_n_0 ),
        .O(\nextState_reg[2]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \nextState_reg[2]_i_19 
       (.I0(\slv_reg3_reg_n_0_[16] ),
        .I1(\slv_reg3_reg_n_0_[19] ),
        .I2(\slv_reg3_reg_n_0_[17] ),
        .I3(\slv_reg3_reg_n_0_[18] ),
        .I4(\nextState_reg[2]_i_24_n_0 ),
        .O(\nextState_reg[2]_i_19_n_0 ));
  CARRY4 \nextState_reg[2]_i_20 
       (.CI(\nextState_reg[2]_i_25_n_0 ),
        .CO({nextState1,\nextState_reg[2]_i_20_n_1 ,\nextState_reg[2]_i_20_n_2 ,\nextState_reg[2]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\nextState_reg[2]_i_26_n_0 ,\nextState_reg[2]_i_27_n_0 ,\nextState_reg[2]_i_28_n_0 ,\nextState_reg[2]_i_29_n_0 }),
        .O(\NLW_nextState_reg[2]_i_20_O_UNCONNECTED [3:0]),
        .S({\nextState_reg[2]_i_30_n_0 ,\nextState_reg[2]_i_31_n_0 ,\nextState_reg[2]_i_32_n_0 ,\nextState_reg[2]_i_33_n_0 }));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[2]_i_21 
       (.I0(\slv_reg3_reg_n_0_[5] ),
        .I1(\slv_reg3_reg_n_0_[4] ),
        .I2(\slv_reg3_reg_n_0_[7] ),
        .I3(\slv_reg3_reg_n_0_[6] ),
        .O(\nextState_reg[2]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[2]_i_22 
       (.I0(\slv_reg3_reg_n_0_[13] ),
        .I1(\slv_reg3_reg_n_0_[12] ),
        .I2(\slv_reg3_reg_n_0_[15] ),
        .I3(\slv_reg3_reg_n_0_[14] ),
        .O(\nextState_reg[2]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \nextState_reg[2]_i_23 
       (.I0(\slv_reg3_reg_n_0_[1] ),
        .I1(\slv_reg3_reg_n_0_[30] ),
        .I2(\slv_reg3_reg_n_0_[29] ),
        .I3(\slv_reg3_reg_n_0_[28] ),
        .O(\nextState_reg[2]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[2]_i_24 
       (.I0(\slv_reg3_reg_n_0_[21] ),
        .I1(\slv_reg3_reg_n_0_[20] ),
        .I2(\slv_reg3_reg_n_0_[23] ),
        .I3(\slv_reg3_reg_n_0_[22] ),
        .O(\nextState_reg[2]_i_24_n_0 ));
  CARRY4 \nextState_reg[2]_i_25 
       (.CI(\nextState_reg[2]_i_34_n_0 ),
        .CO({\nextState_reg[2]_i_25_n_0 ,\nextState_reg[2]_i_25_n_1 ,\nextState_reg[2]_i_25_n_2 ,\nextState_reg[2]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({\nextState_reg[2]_i_35_n_0 ,\nextState_reg[2]_i_36_n_0 ,\nextState_reg[2]_i_37_n_0 ,\nextState_reg[2]_i_38_n_0 }),
        .O(\NLW_nextState_reg[2]_i_25_O_UNCONNECTED [3:0]),
        .S({\nextState_reg[2]_i_39_n_0 ,\nextState_reg[2]_i_40_n_0 ,\nextState_reg[2]_i_41_n_0 ,\nextState_reg[2]_i_42_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_26 
       (.I0(\slv_reg7_reg_n_0_[31] ),
        .I1(delayCounter_reg[31]),
        .I2(\slv_reg7_reg_n_0_[30] ),
        .I3(delayCounter_reg[30]),
        .O(\nextState_reg[2]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_27 
       (.I0(\slv_reg7_reg_n_0_[29] ),
        .I1(delayCounter_reg[29]),
        .I2(\slv_reg7_reg_n_0_[28] ),
        .I3(delayCounter_reg[28]),
        .O(\nextState_reg[2]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_28 
       (.I0(\slv_reg7_reg_n_0_[27] ),
        .I1(delayCounter_reg[27]),
        .I2(\slv_reg7_reg_n_0_[26] ),
        .I3(delayCounter_reg[26]),
        .O(\nextState_reg[2]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_29 
       (.I0(\slv_reg7_reg_n_0_[25] ),
        .I1(delayCounter_reg[25]),
        .I2(\slv_reg7_reg_n_0_[24] ),
        .I3(delayCounter_reg[24]),
        .O(\nextState_reg[2]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \nextState_reg[2]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\nextState_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_30 
       (.I0(delayCounter_reg[31]),
        .I1(\slv_reg7_reg_n_0_[31] ),
        .I2(delayCounter_reg[30]),
        .I3(\slv_reg7_reg_n_0_[30] ),
        .O(\nextState_reg[2]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_31 
       (.I0(delayCounter_reg[29]),
        .I1(\slv_reg7_reg_n_0_[29] ),
        .I2(delayCounter_reg[28]),
        .I3(\slv_reg7_reg_n_0_[28] ),
        .O(\nextState_reg[2]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_32 
       (.I0(delayCounter_reg[27]),
        .I1(\slv_reg7_reg_n_0_[27] ),
        .I2(delayCounter_reg[26]),
        .I3(\slv_reg7_reg_n_0_[26] ),
        .O(\nextState_reg[2]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_33 
       (.I0(delayCounter_reg[25]),
        .I1(\slv_reg7_reg_n_0_[25] ),
        .I2(delayCounter_reg[24]),
        .I3(\slv_reg7_reg_n_0_[24] ),
        .O(\nextState_reg[2]_i_33_n_0 ));
  CARRY4 \nextState_reg[2]_i_34 
       (.CI(\nextState_reg[2]_i_43_n_0 ),
        .CO({\nextState_reg[2]_i_34_n_0 ,\nextState_reg[2]_i_34_n_1 ,\nextState_reg[2]_i_34_n_2 ,\nextState_reg[2]_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({\nextState_reg[2]_i_44_n_0 ,\nextState_reg[2]_i_45_n_0 ,\nextState_reg[2]_i_46_n_0 ,\nextState_reg[2]_i_47_n_0 }),
        .O(\NLW_nextState_reg[2]_i_34_O_UNCONNECTED [3:0]),
        .S({\nextState_reg[2]_i_48_n_0 ,\nextState_reg[2]_i_49_n_0 ,\nextState_reg[2]_i_50_n_0 ,\nextState_reg[2]_i_51_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_35 
       (.I0(\slv_reg7_reg_n_0_[23] ),
        .I1(delayCounter_reg[23]),
        .I2(\slv_reg7_reg_n_0_[22] ),
        .I3(delayCounter_reg[22]),
        .O(\nextState_reg[2]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_36 
       (.I0(\slv_reg7_reg_n_0_[21] ),
        .I1(delayCounter_reg[21]),
        .I2(\slv_reg7_reg_n_0_[20] ),
        .I3(delayCounter_reg[20]),
        .O(\nextState_reg[2]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_37 
       (.I0(\slv_reg7_reg_n_0_[19] ),
        .I1(delayCounter_reg[19]),
        .I2(\slv_reg7_reg_n_0_[18] ),
        .I3(delayCounter_reg[18]),
        .O(\nextState_reg[2]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_38 
       (.I0(\slv_reg7_reg_n_0_[17] ),
        .I1(delayCounter_reg[17]),
        .I2(\slv_reg7_reg_n_0_[16] ),
        .I3(delayCounter_reg[16]),
        .O(\nextState_reg[2]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_39 
       (.I0(delayCounter_reg[23]),
        .I1(\slv_reg7_reg_n_0_[23] ),
        .I2(delayCounter_reg[22]),
        .I3(\slv_reg7_reg_n_0_[22] ),
        .O(\nextState_reg[2]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000044444440444)) 
    \nextState_reg[2]_i_4 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(motion_detected),
        .I3(finish_read2),
        .I4(Q[0]),
        .I5(\nextState_reg[2]_i_10_n_0 ),
        .O(\nextState_reg[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_40 
       (.I0(delayCounter_reg[21]),
        .I1(\slv_reg7_reg_n_0_[21] ),
        .I2(delayCounter_reg[20]),
        .I3(\slv_reg7_reg_n_0_[20] ),
        .O(\nextState_reg[2]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_41 
       (.I0(delayCounter_reg[19]),
        .I1(\slv_reg7_reg_n_0_[19] ),
        .I2(delayCounter_reg[18]),
        .I3(\slv_reg7_reg_n_0_[18] ),
        .O(\nextState_reg[2]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_42 
       (.I0(delayCounter_reg[17]),
        .I1(\slv_reg7_reg_n_0_[17] ),
        .I2(delayCounter_reg[16]),
        .I3(\slv_reg7_reg_n_0_[16] ),
        .O(\nextState_reg[2]_i_42_n_0 ));
  CARRY4 \nextState_reg[2]_i_43 
       (.CI(1'b0),
        .CO({\nextState_reg[2]_i_43_n_0 ,\nextState_reg[2]_i_43_n_1 ,\nextState_reg[2]_i_43_n_2 ,\nextState_reg[2]_i_43_n_3 }),
        .CYINIT(1'b1),
        .DI({\nextState_reg[2]_i_52_n_0 ,\nextState_reg[2]_i_53_n_0 ,\nextState_reg[2]_i_54_n_0 ,\nextState_reg[2]_i_55_n_0 }),
        .O(\NLW_nextState_reg[2]_i_43_O_UNCONNECTED [3:0]),
        .S({\nextState_reg[2]_i_56_n_0 ,\nextState_reg[2]_i_57_n_0 ,\nextState_reg[2]_i_58_n_0 ,\nextState_reg[2]_i_59_n_0 }));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_44 
       (.I0(\slv_reg7_reg_n_0_[15] ),
        .I1(delayCounter_reg[15]),
        .I2(\slv_reg7_reg_n_0_[14] ),
        .I3(delayCounter_reg[14]),
        .O(\nextState_reg[2]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_45 
       (.I0(\slv_reg7_reg_n_0_[13] ),
        .I1(delayCounter_reg[13]),
        .I2(\slv_reg7_reg_n_0_[12] ),
        .I3(delayCounter_reg[12]),
        .O(\nextState_reg[2]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_46 
       (.I0(\slv_reg7_reg_n_0_[11] ),
        .I1(delayCounter_reg[11]),
        .I2(\slv_reg7_reg_n_0_[10] ),
        .I3(delayCounter_reg[10]),
        .O(\nextState_reg[2]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_47 
       (.I0(\slv_reg7_reg_n_0_[9] ),
        .I1(delayCounter_reg[9]),
        .I2(\slv_reg7_reg_n_0_[8] ),
        .I3(delayCounter_reg[8]),
        .O(\nextState_reg[2]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_48 
       (.I0(delayCounter_reg[15]),
        .I1(\slv_reg7_reg_n_0_[15] ),
        .I2(delayCounter_reg[14]),
        .I3(\slv_reg7_reg_n_0_[14] ),
        .O(\nextState_reg[2]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_49 
       (.I0(delayCounter_reg[13]),
        .I1(\slv_reg7_reg_n_0_[13] ),
        .I2(delayCounter_reg[12]),
        .I3(\slv_reg7_reg_n_0_[12] ),
        .O(\nextState_reg[2]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_50 
       (.I0(delayCounter_reg[11]),
        .I1(\slv_reg7_reg_n_0_[11] ),
        .I2(delayCounter_reg[10]),
        .I3(\slv_reg7_reg_n_0_[10] ),
        .O(\nextState_reg[2]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_51 
       (.I0(delayCounter_reg[9]),
        .I1(\slv_reg7_reg_n_0_[9] ),
        .I2(delayCounter_reg[8]),
        .I3(\slv_reg7_reg_n_0_[8] ),
        .O(\nextState_reg[2]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_52 
       (.I0(\slv_reg7_reg_n_0_[7] ),
        .I1(delayCounter_reg[7]),
        .I2(\slv_reg7_reg_n_0_[6] ),
        .I3(delayCounter_reg[6]),
        .O(\nextState_reg[2]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_53 
       (.I0(\slv_reg7_reg_n_0_[5] ),
        .I1(delayCounter_reg[5]),
        .I2(\slv_reg7_reg_n_0_[4] ),
        .I3(delayCounter_reg[4]),
        .O(\nextState_reg[2]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_54 
       (.I0(\slv_reg7_reg_n_0_[3] ),
        .I1(delayCounter_reg[3]),
        .I2(\slv_reg7_reg_n_0_[2] ),
        .I3(delayCounter_reg[2]),
        .O(\nextState_reg[2]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \nextState_reg[2]_i_55 
       (.I0(\slv_reg7_reg_n_0_[1] ),
        .I1(delayCounter_reg[1]),
        .I2(\slv_reg7_reg_n_0_[0] ),
        .I3(delayCounter_reg[0]),
        .O(\nextState_reg[2]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_56 
       (.I0(delayCounter_reg[7]),
        .I1(\slv_reg7_reg_n_0_[7] ),
        .I2(delayCounter_reg[6]),
        .I3(\slv_reg7_reg_n_0_[6] ),
        .O(\nextState_reg[2]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_57 
       (.I0(delayCounter_reg[5]),
        .I1(\slv_reg7_reg_n_0_[5] ),
        .I2(delayCounter_reg[4]),
        .I3(\slv_reg7_reg_n_0_[4] ),
        .O(\nextState_reg[2]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_58 
       (.I0(delayCounter_reg[3]),
        .I1(\slv_reg7_reg_n_0_[3] ),
        .I2(delayCounter_reg[2]),
        .I3(\slv_reg7_reg_n_0_[2] ),
        .O(\nextState_reg[2]_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \nextState_reg[2]_i_59 
       (.I0(delayCounter_reg[1]),
        .I1(\slv_reg7_reg_n_0_[1] ),
        .I2(delayCounter_reg[0]),
        .I3(\slv_reg7_reg_n_0_[0] ),
        .O(\nextState_reg[2]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextState_reg[2]_i_6 
       (.I0(clearDelay2_reg[2]),
        .I1(clearDelay2_reg[7]),
        .I2(Q[0]),
        .I3(clearDelay2_reg[16]),
        .I4(\nextState_reg[2]_i_12_n_0 ),
        .I5(\nextState_reg[2]_i_13_n_0 ),
        .O(\nextState_reg[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \nextState_reg[2]_i_8 
       (.I0(clearDelay2_reg[19]),
        .I1(clearDelay2_reg[27]),
        .I2(clearDelay2_reg[13]),
        .I3(clearDelay2_reg[25]),
        .I4(\nextState_reg[2]_i_15_n_0 ),
        .O(\nextState_reg[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextState_reg[2]_i_9 
       (.I0(clearDelay2_reg[30]),
        .I1(clearDelay2_reg[11]),
        .I2(clearDelay2_reg[0]),
        .I3(clearDelay2_reg[22]),
        .I4(clearDelay2_reg[14]),
        .I5(clearDelay2_reg[17]),
        .O(\nextState_reg[2]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextState_reg[3] 
       (.CLR(1'b0),
        .D(write_clear3_n_7),
        .G(\nextState_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextState[3]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \nextState_reg[3]_i_10 
       (.I0(clearDelay4_reg[2]),
        .I1(clearDelay4_reg[3]),
        .I2(clearDelay4_reg[4]),
        .I3(clearDelay4_reg[6]),
        .I4(\nextState_reg[3]_i_14_n_0 ),
        .O(\nextState_reg[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \nextState_reg[3]_i_11 
       (.I0(clearDelay4_reg[10]),
        .I1(clearDelay4_reg[11]),
        .I2(clearDelay4_reg[8]),
        .I3(clearDelay4_reg[9]),
        .I4(\nextState_reg[3]_i_15_n_0 ),
        .O(\nextState_reg[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[3]_i_12 
       (.I0(clearDelay4_reg[21]),
        .I1(clearDelay4_reg[20]),
        .I2(clearDelay4_reg[23]),
        .I3(clearDelay4_reg[22]),
        .O(\nextState_reg[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[3]_i_13 
       (.I0(clearDelay4_reg[30]),
        .I1(clearDelay4_reg[31]),
        .I2(clearDelay4_reg[29]),
        .I3(clearDelay4_reg[28]),
        .O(\nextState_reg[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[3]_i_14 
       (.I0(clearDelay4_reg[5]),
        .I1(clearDelay4_reg[0]),
        .I2(clearDelay4_reg[7]),
        .I3(clearDelay4_reg[1]),
        .O(\nextState_reg[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[3]_i_15 
       (.I0(clearDelay4_reg[13]),
        .I1(clearDelay4_reg[12]),
        .I2(clearDelay4_reg[15]),
        .I3(clearDelay4_reg[14]),
        .O(\nextState_reg[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \nextState_reg[3]_i_3 
       (.I0(motion_detected),
        .I1(finish_read2),
        .I2(\nextState_reg[3]_i_6_n_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\nextState_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \nextState_reg[3]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[4]),
        .O(\nextState_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \nextState_reg[3]_i_6 
       (.I0(Q[4]),
        .I1(Q[1]),
        .O(\nextState_reg[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \nextState_reg[3]_i_8 
       (.I0(clearDelay4_reg[18]),
        .I1(clearDelay4_reg[19]),
        .I2(clearDelay4_reg[16]),
        .I3(clearDelay4_reg[17]),
        .I4(\nextState_reg[3]_i_12_n_0 ),
        .O(\nextState_reg[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \nextState_reg[3]_i_9 
       (.I0(clearDelay4_reg[26]),
        .I1(clearDelay4_reg[27]),
        .I2(clearDelay4_reg[24]),
        .I3(clearDelay4_reg[25]),
        .I4(\nextState_reg[3]_i_13_n_0 ),
        .O(\nextState_reg[3]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextState_reg[4] 
       (.CLR(1'b0),
        .D(write_clear3_n_6),
        .G(\nextState_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextState[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextState_reg[4]_i_10 
       (.I0(clearDelay3_reg[13]),
        .I1(clearDelay3_reg[8]),
        .I2(clearDelay3_reg[12]),
        .I3(clearDelay3_reg[29]),
        .I4(clearDelay3_reg[19]),
        .I5(clearDelay3_reg[22]),
        .O(\nextState_reg[4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[4]_i_11 
       (.I0(clearDelay3_reg[27]),
        .I1(clearDelay3_reg[23]),
        .I2(clearDelay3_reg[30]),
        .I3(clearDelay3_reg[14]),
        .O(\nextState_reg[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h5545455F)) 
    \nextState_reg[4]_i_2 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\nextState_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \nextState_reg[4]_i_6 
       (.I0(\nextState_reg[4]_i_8_n_0 ),
        .I1(clearDelay3_reg[10]),
        .I2(clearDelay3_reg[7]),
        .I3(clearDelay3_reg[28]),
        .I4(clearDelay3_reg[16]),
        .I5(\nextState_reg[4]_i_9_n_0 ),
        .O(\nextState_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \nextState_reg[4]_i_7 
       (.I0(\nextState_reg[4]_i_10_n_0 ),
        .I1(\nextState_reg[4]_i_11_n_0 ),
        .I2(clearDelay3_reg[18]),
        .I3(clearDelay3_reg[9]),
        .I4(clearDelay3_reg[24]),
        .I5(clearDelay3_reg[20]),
        .O(\nextState_reg[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[4]_i_8 
       (.I0(clearDelay3_reg[25]),
        .I1(clearDelay3_reg[11]),
        .I2(clearDelay3_reg[31]),
        .I3(clearDelay3_reg[15]),
        .O(\nextState_reg[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \nextState_reg[4]_i_9 
       (.I0(clearDelay3_reg[4]),
        .I1(clearDelay3_reg[5]),
        .I2(clearDelay3_reg[6]),
        .I3(clearDelay3_reg[17]),
        .I4(clearDelay3_reg[26]),
        .I5(clearDelay3_reg[21]),
        .O(\nextState_reg[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \overlayDelayCounter[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(transfer_length_offset));
  LUT1 #(
    .INIT(2'h1)) 
    \overlayDelayCounter[0]_i_3 
       (.I0(\overlayDelayCounter_reg_n_0_[0] ),
        .O(\overlayDelayCounter[0]_i_3_n_0 ));
  FDRE \overlayDelayCounter_reg[0] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[0]_i_2_n_7 ),
        .Q(\overlayDelayCounter_reg_n_0_[0] ),
        .R(start1_i_1_n_0));
  CARRY4 \overlayDelayCounter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\overlayDelayCounter_reg[0]_i_2_n_0 ,\overlayDelayCounter_reg[0]_i_2_n_1 ,\overlayDelayCounter_reg[0]_i_2_n_2 ,\overlayDelayCounter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\overlayDelayCounter_reg[0]_i_2_n_4 ,\overlayDelayCounter_reg[0]_i_2_n_5 ,\overlayDelayCounter_reg[0]_i_2_n_6 ,\overlayDelayCounter_reg[0]_i_2_n_7 }),
        .S({\overlayDelayCounter_reg_n_0_[3] ,\overlayDelayCounter_reg_n_0_[2] ,\overlayDelayCounter_reg_n_0_[1] ,\overlayDelayCounter[0]_i_3_n_0 }));
  FDRE \overlayDelayCounter_reg[10] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[8]_i_1_n_5 ),
        .Q(overlayDelayCounter_reg[10]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[11] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[8]_i_1_n_4 ),
        .Q(overlayDelayCounter_reg[11]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[12] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[12]_i_1_n_7 ),
        .Q(overlayDelayCounter_reg[12]),
        .R(start1_i_1_n_0));
  CARRY4 \overlayDelayCounter_reg[12]_i_1 
       (.CI(\overlayDelayCounter_reg[8]_i_1_n_0 ),
        .CO({\overlayDelayCounter_reg[12]_i_1_n_0 ,\overlayDelayCounter_reg[12]_i_1_n_1 ,\overlayDelayCounter_reg[12]_i_1_n_2 ,\overlayDelayCounter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\overlayDelayCounter_reg[12]_i_1_n_4 ,\overlayDelayCounter_reg[12]_i_1_n_5 ,\overlayDelayCounter_reg[12]_i_1_n_6 ,\overlayDelayCounter_reg[12]_i_1_n_7 }),
        .S(overlayDelayCounter_reg[15:12]));
  FDRE \overlayDelayCounter_reg[13] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[12]_i_1_n_6 ),
        .Q(overlayDelayCounter_reg[13]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[14] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[12]_i_1_n_5 ),
        .Q(overlayDelayCounter_reg[14]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[15] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[12]_i_1_n_4 ),
        .Q(overlayDelayCounter_reg[15]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[16] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[16]_i_1_n_7 ),
        .Q(overlayDelayCounter_reg[16]),
        .R(start1_i_1_n_0));
  CARRY4 \overlayDelayCounter_reg[16]_i_1 
       (.CI(\overlayDelayCounter_reg[12]_i_1_n_0 ),
        .CO({\overlayDelayCounter_reg[16]_i_1_n_0 ,\overlayDelayCounter_reg[16]_i_1_n_1 ,\overlayDelayCounter_reg[16]_i_1_n_2 ,\overlayDelayCounter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\overlayDelayCounter_reg[16]_i_1_n_4 ,\overlayDelayCounter_reg[16]_i_1_n_5 ,\overlayDelayCounter_reg[16]_i_1_n_6 ,\overlayDelayCounter_reg[16]_i_1_n_7 }),
        .S(overlayDelayCounter_reg[19:16]));
  FDRE \overlayDelayCounter_reg[17] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[16]_i_1_n_6 ),
        .Q(overlayDelayCounter_reg[17]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[18] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[16]_i_1_n_5 ),
        .Q(overlayDelayCounter_reg[18]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[19] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[16]_i_1_n_4 ),
        .Q(overlayDelayCounter_reg[19]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[1] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[0]_i_2_n_6 ),
        .Q(\overlayDelayCounter_reg_n_0_[1] ),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[20] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[20]_i_1_n_7 ),
        .Q(overlayDelayCounter_reg[20]),
        .R(start1_i_1_n_0));
  CARRY4 \overlayDelayCounter_reg[20]_i_1 
       (.CI(\overlayDelayCounter_reg[16]_i_1_n_0 ),
        .CO({\overlayDelayCounter_reg[20]_i_1_n_0 ,\overlayDelayCounter_reg[20]_i_1_n_1 ,\overlayDelayCounter_reg[20]_i_1_n_2 ,\overlayDelayCounter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\overlayDelayCounter_reg[20]_i_1_n_4 ,\overlayDelayCounter_reg[20]_i_1_n_5 ,\overlayDelayCounter_reg[20]_i_1_n_6 ,\overlayDelayCounter_reg[20]_i_1_n_7 }),
        .S(overlayDelayCounter_reg[23:20]));
  FDRE \overlayDelayCounter_reg[21] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[20]_i_1_n_6 ),
        .Q(overlayDelayCounter_reg[21]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[22] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[20]_i_1_n_5 ),
        .Q(overlayDelayCounter_reg[22]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[23] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[20]_i_1_n_4 ),
        .Q(overlayDelayCounter_reg[23]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[24] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[24]_i_1_n_7 ),
        .Q(overlayDelayCounter_reg[24]),
        .R(start1_i_1_n_0));
  CARRY4 \overlayDelayCounter_reg[24]_i_1 
       (.CI(\overlayDelayCounter_reg[20]_i_1_n_0 ),
        .CO({\overlayDelayCounter_reg[24]_i_1_n_0 ,\overlayDelayCounter_reg[24]_i_1_n_1 ,\overlayDelayCounter_reg[24]_i_1_n_2 ,\overlayDelayCounter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\overlayDelayCounter_reg[24]_i_1_n_4 ,\overlayDelayCounter_reg[24]_i_1_n_5 ,\overlayDelayCounter_reg[24]_i_1_n_6 ,\overlayDelayCounter_reg[24]_i_1_n_7 }),
        .S(overlayDelayCounter_reg[27:24]));
  FDRE \overlayDelayCounter_reg[25] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[24]_i_1_n_6 ),
        .Q(overlayDelayCounter_reg[25]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[26] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[24]_i_1_n_5 ),
        .Q(overlayDelayCounter_reg[26]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[27] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[24]_i_1_n_4 ),
        .Q(overlayDelayCounter_reg[27]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[28] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[28]_i_1_n_7 ),
        .Q(overlayDelayCounter_reg[28]),
        .R(start1_i_1_n_0));
  CARRY4 \overlayDelayCounter_reg[28]_i_1 
       (.CI(\overlayDelayCounter_reg[24]_i_1_n_0 ),
        .CO({\NLW_overlayDelayCounter_reg[28]_i_1_CO_UNCONNECTED [3],\overlayDelayCounter_reg[28]_i_1_n_1 ,\overlayDelayCounter_reg[28]_i_1_n_2 ,\overlayDelayCounter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\overlayDelayCounter_reg[28]_i_1_n_4 ,\overlayDelayCounter_reg[28]_i_1_n_5 ,\overlayDelayCounter_reg[28]_i_1_n_6 ,\overlayDelayCounter_reg[28]_i_1_n_7 }),
        .S(overlayDelayCounter_reg[31:28]));
  FDRE \overlayDelayCounter_reg[29] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[28]_i_1_n_6 ),
        .Q(overlayDelayCounter_reg[29]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[2] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[0]_i_2_n_5 ),
        .Q(\overlayDelayCounter_reg_n_0_[2] ),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[30] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[28]_i_1_n_5 ),
        .Q(overlayDelayCounter_reg[30]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[31] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[28]_i_1_n_4 ),
        .Q(overlayDelayCounter_reg[31]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[3] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[0]_i_2_n_4 ),
        .Q(\overlayDelayCounter_reg_n_0_[3] ),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[4] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[4]_i_1_n_7 ),
        .Q(overlayDelayCounter_reg[4]),
        .R(start1_i_1_n_0));
  CARRY4 \overlayDelayCounter_reg[4]_i_1 
       (.CI(\overlayDelayCounter_reg[0]_i_2_n_0 ),
        .CO({\overlayDelayCounter_reg[4]_i_1_n_0 ,\overlayDelayCounter_reg[4]_i_1_n_1 ,\overlayDelayCounter_reg[4]_i_1_n_2 ,\overlayDelayCounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\overlayDelayCounter_reg[4]_i_1_n_4 ,\overlayDelayCounter_reg[4]_i_1_n_5 ,\overlayDelayCounter_reg[4]_i_1_n_6 ,\overlayDelayCounter_reg[4]_i_1_n_7 }),
        .S(overlayDelayCounter_reg[7:4]));
  FDRE \overlayDelayCounter_reg[5] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[4]_i_1_n_6 ),
        .Q(overlayDelayCounter_reg[5]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[6] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[4]_i_1_n_5 ),
        .Q(overlayDelayCounter_reg[6]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[7] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[4]_i_1_n_4 ),
        .Q(overlayDelayCounter_reg[7]),
        .R(start1_i_1_n_0));
  FDRE \overlayDelayCounter_reg[8] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[8]_i_1_n_7 ),
        .Q(overlayDelayCounter_reg[8]),
        .R(start1_i_1_n_0));
  CARRY4 \overlayDelayCounter_reg[8]_i_1 
       (.CI(\overlayDelayCounter_reg[4]_i_1_n_0 ),
        .CO({\overlayDelayCounter_reg[8]_i_1_n_0 ,\overlayDelayCounter_reg[8]_i_1_n_1 ,\overlayDelayCounter_reg[8]_i_1_n_2 ,\overlayDelayCounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\overlayDelayCounter_reg[8]_i_1_n_4 ,\overlayDelayCounter_reg[8]_i_1_n_5 ,\overlayDelayCounter_reg[8]_i_1_n_6 ,\overlayDelayCounter_reg[8]_i_1_n_7 }),
        .S(overlayDelayCounter_reg[11:8]));
  FDRE \overlayDelayCounter_reg[9] 
       (.C(aclk),
        .CE(transfer_length_offset),
        .D(\overlayDelayCounter_reg[8]_i_1_n_6 ),
        .Q(overlayDelayCounter_reg[9]),
        .R(start1_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFF9)) 
    \pixel_word_count[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(pixel_word_count1),
        .O(\pixel_word_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pixel_word_count[0]_i_3 
       (.I0(pixel_word_count_reg[0]),
        .O(\pixel_word_count[0]_i_3_n_0 ));
  FDRE \pixel_word_count_reg[0] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[0]_i_2_n_7 ),
        .Q(pixel_word_count_reg[0]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  CARRY4 \pixel_word_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pixel_word_count_reg[0]_i_2_n_0 ,\pixel_word_count_reg[0]_i_2_n_1 ,\pixel_word_count_reg[0]_i_2_n_2 ,\pixel_word_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pixel_word_count_reg[0]_i_2_n_4 ,\pixel_word_count_reg[0]_i_2_n_5 ,\pixel_word_count_reg[0]_i_2_n_6 ,\pixel_word_count_reg[0]_i_2_n_7 }),
        .S({pixel_word_count_reg[3:1],\pixel_word_count[0]_i_3_n_0 }));
  FDRE \pixel_word_count_reg[10] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[8]_i_1_n_5 ),
        .Q(pixel_word_count_reg[10]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[11] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[8]_i_1_n_4 ),
        .Q(pixel_word_count_reg[11]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[12] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[12]_i_1_n_7 ),
        .Q(pixel_word_count_reg[12]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  CARRY4 \pixel_word_count_reg[12]_i_1 
       (.CI(\pixel_word_count_reg[8]_i_1_n_0 ),
        .CO({\pixel_word_count_reg[12]_i_1_n_0 ,\pixel_word_count_reg[12]_i_1_n_1 ,\pixel_word_count_reg[12]_i_1_n_2 ,\pixel_word_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_word_count_reg[12]_i_1_n_4 ,\pixel_word_count_reg[12]_i_1_n_5 ,\pixel_word_count_reg[12]_i_1_n_6 ,\pixel_word_count_reg[12]_i_1_n_7 }),
        .S(pixel_word_count_reg[15:12]));
  FDRE \pixel_word_count_reg[13] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[12]_i_1_n_6 ),
        .Q(pixel_word_count_reg[13]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[14] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[12]_i_1_n_5 ),
        .Q(pixel_word_count_reg[14]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[15] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[12]_i_1_n_4 ),
        .Q(pixel_word_count_reg[15]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[16] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[16]_i_1_n_7 ),
        .Q(pixel_word_count_reg[16]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  CARRY4 \pixel_word_count_reg[16]_i_1 
       (.CI(\pixel_word_count_reg[12]_i_1_n_0 ),
        .CO({\pixel_word_count_reg[16]_i_1_n_0 ,\pixel_word_count_reg[16]_i_1_n_1 ,\pixel_word_count_reg[16]_i_1_n_2 ,\pixel_word_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_word_count_reg[16]_i_1_n_4 ,\pixel_word_count_reg[16]_i_1_n_5 ,\pixel_word_count_reg[16]_i_1_n_6 ,\pixel_word_count_reg[16]_i_1_n_7 }),
        .S(pixel_word_count_reg[19:16]));
  FDRE \pixel_word_count_reg[17] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[16]_i_1_n_6 ),
        .Q(pixel_word_count_reg[17]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[18] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[16]_i_1_n_5 ),
        .Q(pixel_word_count_reg[18]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[19] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[16]_i_1_n_4 ),
        .Q(pixel_word_count_reg[19]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[1] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[0]_i_2_n_6 ),
        .Q(pixel_word_count_reg[1]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[20] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[20]_i_1_n_7 ),
        .Q(pixel_word_count_reg[20]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  CARRY4 \pixel_word_count_reg[20]_i_1 
       (.CI(\pixel_word_count_reg[16]_i_1_n_0 ),
        .CO({\pixel_word_count_reg[20]_i_1_n_0 ,\pixel_word_count_reg[20]_i_1_n_1 ,\pixel_word_count_reg[20]_i_1_n_2 ,\pixel_word_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_word_count_reg[20]_i_1_n_4 ,\pixel_word_count_reg[20]_i_1_n_5 ,\pixel_word_count_reg[20]_i_1_n_6 ,\pixel_word_count_reg[20]_i_1_n_7 }),
        .S(pixel_word_count_reg[23:20]));
  FDRE \pixel_word_count_reg[21] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[20]_i_1_n_6 ),
        .Q(pixel_word_count_reg[21]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[22] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[20]_i_1_n_5 ),
        .Q(pixel_word_count_reg[22]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[23] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[20]_i_1_n_4 ),
        .Q(pixel_word_count_reg[23]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[24] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[24]_i_1_n_7 ),
        .Q(pixel_word_count_reg[24]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  CARRY4 \pixel_word_count_reg[24]_i_1 
       (.CI(\pixel_word_count_reg[20]_i_1_n_0 ),
        .CO({\pixel_word_count_reg[24]_i_1_n_0 ,\pixel_word_count_reg[24]_i_1_n_1 ,\pixel_word_count_reg[24]_i_1_n_2 ,\pixel_word_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_word_count_reg[24]_i_1_n_4 ,\pixel_word_count_reg[24]_i_1_n_5 ,\pixel_word_count_reg[24]_i_1_n_6 ,\pixel_word_count_reg[24]_i_1_n_7 }),
        .S(pixel_word_count_reg[27:24]));
  FDRE \pixel_word_count_reg[25] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[24]_i_1_n_6 ),
        .Q(pixel_word_count_reg[25]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[26] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[24]_i_1_n_5 ),
        .Q(pixel_word_count_reg[26]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[27] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[24]_i_1_n_4 ),
        .Q(pixel_word_count_reg[27]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[28] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[28]_i_1_n_7 ),
        .Q(pixel_word_count_reg[28]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  CARRY4 \pixel_word_count_reg[28]_i_1 
       (.CI(\pixel_word_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_pixel_word_count_reg[28]_i_1_CO_UNCONNECTED [3],\pixel_word_count_reg[28]_i_1_n_1 ,\pixel_word_count_reg[28]_i_1_n_2 ,\pixel_word_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_word_count_reg[28]_i_1_n_4 ,\pixel_word_count_reg[28]_i_1_n_5 ,\pixel_word_count_reg[28]_i_1_n_6 ,\pixel_word_count_reg[28]_i_1_n_7 }),
        .S(pixel_word_count_reg[31:28]));
  FDRE \pixel_word_count_reg[29] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[28]_i_1_n_6 ),
        .Q(pixel_word_count_reg[29]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[2] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[0]_i_2_n_5 ),
        .Q(pixel_word_count_reg[2]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[30] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[28]_i_1_n_5 ),
        .Q(pixel_word_count_reg[30]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[31] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[28]_i_1_n_4 ),
        .Q(pixel_word_count_reg[31]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[3] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[0]_i_2_n_4 ),
        .Q(pixel_word_count_reg[3]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[4] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[4]_i_1_n_7 ),
        .Q(pixel_word_count_reg[4]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  CARRY4 \pixel_word_count_reg[4]_i_1 
       (.CI(\pixel_word_count_reg[0]_i_2_n_0 ),
        .CO({\pixel_word_count_reg[4]_i_1_n_0 ,\pixel_word_count_reg[4]_i_1_n_1 ,\pixel_word_count_reg[4]_i_1_n_2 ,\pixel_word_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_word_count_reg[4]_i_1_n_4 ,\pixel_word_count_reg[4]_i_1_n_5 ,\pixel_word_count_reg[4]_i_1_n_6 ,\pixel_word_count_reg[4]_i_1_n_7 }),
        .S(pixel_word_count_reg[7:4]));
  FDRE \pixel_word_count_reg[5] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[4]_i_1_n_6 ),
        .Q(pixel_word_count_reg[5]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[6] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[4]_i_1_n_5 ),
        .Q(pixel_word_count_reg[6]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[7] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[4]_i_1_n_4 ),
        .Q(pixel_word_count_reg[7]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  FDRE \pixel_word_count_reg[8] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[8]_i_1_n_7 ),
        .Q(pixel_word_count_reg[8]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  CARRY4 \pixel_word_count_reg[8]_i_1 
       (.CI(\pixel_word_count_reg[4]_i_1_n_0 ),
        .CO({\pixel_word_count_reg[8]_i_1_n_0 ,\pixel_word_count_reg[8]_i_1_n_1 ,\pixel_word_count_reg[8]_i_1_n_2 ,\pixel_word_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_word_count_reg[8]_i_1_n_4 ,\pixel_word_count_reg[8]_i_1_n_5 ,\pixel_word_count_reg[8]_i_1_n_6 ,\pixel_word_count_reg[8]_i_1_n_7 }),
        .S(pixel_word_count_reg[11:8]));
  FDRE \pixel_word_count_reg[9] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\pixel_word_count_reg[8]_i_1_n_6 ),
        .Q(pixel_word_count_reg[9]),
        .R(\pixel_word_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    receive_1_i_1
       (.I0(\gray1[31]_i_1_n_0 ),
        .I1(finish_read1),
        .I2(p_0_in13_in),
        .I3(delay_S_AXI_TLAST_reg_n_0),
        .O(receive_1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    receive_1_i_2
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(p_0_in13_in));
  FDRE receive_1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(receive_1_i_1_n_0),
        .Q(finish_read1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF444)) 
    receive_2_i_1
       (.I0(\gray2[31]_i_1_n_0 ),
        .I1(finish_read2),
        .I2(p_0_in12_in),
        .I3(delay_S_AXI_TLAST_reg_n_0),
        .O(receive_2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    receive_2_i_2
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(p_0_in12_in));
  FDRE receive_2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(receive_2_i_1_n_0),
        .Q(finish_read2),
        .R(1'b0));
  FDRE \rgb1_reg[12] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[12]),
        .Q(rgb1[12]),
        .R(1'b0));
  FDRE \rgb1_reg[13] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[13]),
        .Q(rgb1[13]),
        .R(1'b0));
  FDRE \rgb1_reg[14] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[14]),
        .Q(rgb1[14]),
        .R(1'b0));
  FDRE \rgb1_reg[15] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[15]),
        .Q(rgb1[15]),
        .R(1'b0));
  FDRE \rgb1_reg[17] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[17]),
        .Q(rgb1[17]),
        .R(1'b0));
  FDRE \rgb1_reg[18] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[18]),
        .Q(rgb1[18]),
        .R(1'b0));
  FDRE \rgb1_reg[19] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[19]),
        .Q(rgb1[19]),
        .R(1'b0));
  FDRE \rgb1_reg[20] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[20]),
        .Q(rgb1[20]),
        .R(1'b0));
  FDRE \rgb1_reg[21] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[21]),
        .Q(rgb1[21]),
        .R(1'b0));
  FDRE \rgb1_reg[22] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[22]),
        .Q(rgb1[22]),
        .R(1'b0));
  FDRE \rgb1_reg[23] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[23]),
        .Q(rgb1[23]),
        .R(1'b0));
  FDRE \rgb1_reg[26] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[26]),
        .Q(rgb1[26]),
        .R(1'b0));
  FDRE \rgb1_reg[27] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[27]),
        .Q(rgb1[27]),
        .R(1'b0));
  FDRE \rgb1_reg[28] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[28]),
        .Q(rgb1[28]),
        .R(1'b0));
  FDRE \rgb1_reg[29] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[29]),
        .Q(rgb1[29]),
        .R(1'b0));
  FDRE \rgb1_reg[2] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[2]),
        .Q(rgb1[2]),
        .R(1'b0));
  FDRE \rgb1_reg[30] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[30]),
        .Q(rgb1[30]),
        .R(1'b0));
  FDRE \rgb1_reg[31] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[31]),
        .Q(rgb1[31]),
        .R(1'b0));
  FDRE \rgb1_reg[3] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[3]),
        .Q(rgb1[3]),
        .R(1'b0));
  FDRE \rgb1_reg[4] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[4]),
        .Q(rgb1[4]),
        .R(1'b0));
  FDRE \rgb1_reg[5] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[5]),
        .Q(rgb1[5]),
        .R(1'b0));
  FDRE \rgb1_reg[6] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[6]),
        .Q(rgb1[6]),
        .R(1'b0));
  FDRE \rgb1_reg[7] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb2[7]),
        .Q(rgb1[7]),
        .R(1'b0));
  FDRE \rgb2_reg[10] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[10]),
        .Q(rgb2[10]),
        .R(1'b0));
  FDRE \rgb2_reg[11] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[11]),
        .Q(rgb2[11]),
        .R(1'b0));
  FDRE \rgb2_reg[12] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[12]),
        .Q(rgb2[12]),
        .R(1'b0));
  FDRE \rgb2_reg[13] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[13]),
        .Q(rgb2[13]),
        .R(1'b0));
  FDRE \rgb2_reg[14] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[14]),
        .Q(rgb2[14]),
        .R(1'b0));
  FDRE \rgb2_reg[15] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[15]),
        .Q(rgb2[15]),
        .R(1'b0));
  FDRE \rgb2_reg[17] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[17]),
        .Q(rgb2[17]),
        .R(1'b0));
  FDRE \rgb2_reg[18] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[18]),
        .Q(rgb2[18]),
        .R(1'b0));
  FDRE \rgb2_reg[19] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[19]),
        .Q(rgb2[19]),
        .R(1'b0));
  FDRE \rgb2_reg[1] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[1]),
        .Q(rgb2[1]),
        .R(1'b0));
  FDRE \rgb2_reg[20] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[20]),
        .Q(rgb2[20]),
        .R(1'b0));
  FDRE \rgb2_reg[21] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[21]),
        .Q(rgb2[21]),
        .R(1'b0));
  FDRE \rgb2_reg[22] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[22]),
        .Q(rgb2[22]),
        .R(1'b0));
  FDRE \rgb2_reg[23] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[23]),
        .Q(rgb2[23]),
        .R(1'b0));
  FDRE \rgb2_reg[25] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[25]),
        .Q(rgb2[25]),
        .R(1'b0));
  FDRE \rgb2_reg[26] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[26]),
        .Q(rgb2[26]),
        .R(1'b0));
  FDRE \rgb2_reg[27] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[27]),
        .Q(rgb2[27]),
        .R(1'b0));
  FDRE \rgb2_reg[28] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[28]),
        .Q(rgb2[28]),
        .R(1'b0));
  FDRE \rgb2_reg[29] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[29]),
        .Q(rgb2[29]),
        .R(1'b0));
  FDRE \rgb2_reg[2] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[2]),
        .Q(rgb2[2]),
        .R(1'b0));
  FDRE \rgb2_reg[30] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[30]),
        .Q(rgb2[30]),
        .R(1'b0));
  FDRE \rgb2_reg[31] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[31]),
        .Q(rgb2[31]),
        .R(1'b0));
  FDRE \rgb2_reg[3] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[3]),
        .Q(rgb2[3]),
        .R(1'b0));
  FDRE \rgb2_reg[4] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[4]),
        .Q(rgb2[4]),
        .R(1'b0));
  FDRE \rgb2_reg[5] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[5]),
        .Q(rgb2[5]),
        .R(1'b0));
  FDRE \rgb2_reg[6] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[6]),
        .Q(rgb2[6]),
        .R(1'b0));
  FDRE \rgb2_reg[7] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(rgb3[7]),
        .Q(rgb2[7]),
        .R(1'b0));
  FDRE \rgb3_reg[10] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[8]),
        .Q(rgb3[10]),
        .R(1'b0));
  FDRE \rgb3_reg[11] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[9]),
        .Q(rgb3[11]),
        .R(1'b0));
  FDRE \rgb3_reg[12] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[10]),
        .Q(rgb3[12]),
        .R(1'b0));
  FDRE \rgb3_reg[13] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[11]),
        .Q(rgb3[13]),
        .R(1'b0));
  FDRE \rgb3_reg[14] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[12]),
        .Q(rgb3[14]),
        .R(1'b0));
  FDRE \rgb3_reg[15] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[13]),
        .Q(rgb3[15]),
        .R(1'b0));
  FDRE \rgb3_reg[17] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[14]),
        .Q(rgb3[17]),
        .R(1'b0));
  FDRE \rgb3_reg[18] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[15]),
        .Q(rgb3[18]),
        .R(1'b0));
  FDRE \rgb3_reg[19] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[16]),
        .Q(rgb3[19]),
        .R(1'b0));
  FDRE \rgb3_reg[1] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[0]),
        .Q(rgb3[1]),
        .R(1'b0));
  FDRE \rgb3_reg[20] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[17]),
        .Q(rgb3[20]),
        .R(1'b0));
  FDRE \rgb3_reg[21] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[18]),
        .Q(rgb3[21]),
        .R(1'b0));
  FDRE \rgb3_reg[22] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[19]),
        .Q(rgb3[22]),
        .R(1'b0));
  FDRE \rgb3_reg[23] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[20]),
        .Q(rgb3[23]),
        .R(1'b0));
  FDRE \rgb3_reg[25] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[21]),
        .Q(rgb3[25]),
        .R(1'b0));
  FDRE \rgb3_reg[26] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[22]),
        .Q(rgb3[26]),
        .R(1'b0));
  FDRE \rgb3_reg[27] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[23]),
        .Q(rgb3[27]),
        .R(1'b0));
  FDRE \rgb3_reg[28] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[24]),
        .Q(rgb3[28]),
        .R(1'b0));
  FDRE \rgb3_reg[29] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[25]),
        .Q(rgb3[29]),
        .R(1'b0));
  FDRE \rgb3_reg[2] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[1]),
        .Q(rgb3[2]),
        .R(1'b0));
  FDRE \rgb3_reg[30] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[26]),
        .Q(rgb3[30]),
        .R(1'b0));
  FDRE \rgb3_reg[31] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[27]),
        .Q(rgb3[31]),
        .R(1'b0));
  FDRE \rgb3_reg[3] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[2]),
        .Q(rgb3[3]),
        .R(1'b0));
  FDRE \rgb3_reg[4] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[3]),
        .Q(rgb3[4]),
        .R(1'b0));
  FDRE \rgb3_reg[5] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[4]),
        .Q(rgb3[5]),
        .R(1'b0));
  FDRE \rgb3_reg[6] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[5]),
        .Q(rgb3[6]),
        .R(1'b0));
  FDRE \rgb3_reg[7] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[6]),
        .Q(rgb3[7]),
        .R(1'b0));
  FDRE \rgb3_reg[9] 
       (.C(aclk),
        .CE(S_AXI_TVALID),
        .D(S_AXI_TDATA[7]),
        .Q(rgb3[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[0]_i_2 
       (.I0(\row_count_reg_n_0_[3] ),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[3]),
        .O(\row_count[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[0]_i_3 
       (.I0(\row_count_reg_n_0_[2] ),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[2]),
        .O(\row_count[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[0]_i_4 
       (.I0(\row_count_reg_n_0_[1] ),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[1]),
        .O(\row_count[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h32)) 
    \row_count[0]_i_5 
       (.I0(pixel_word_count1),
        .I1(\row_count_reg_n_0_[0] ),
        .I2(S_AXI_TREADY),
        .O(\row_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[12]_i_2 
       (.I0(row_count_reg[15]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[15]),
        .O(\row_count[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[12]_i_3 
       (.I0(row_count_reg[14]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[14]),
        .O(\row_count[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[12]_i_4 
       (.I0(row_count_reg[13]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[13]),
        .O(\row_count[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[12]_i_5 
       (.I0(row_count_reg[12]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[12]),
        .O(\row_count[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[16]_i_2 
       (.I0(row_count_reg__0[19]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[19]),
        .O(\row_count[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[16]_i_3 
       (.I0(row_count_reg__0[18]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[18]),
        .O(\row_count[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[16]_i_4 
       (.I0(row_count_reg__0[17]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[17]),
        .O(\row_count[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[16]_i_5 
       (.I0(row_count_reg__0[16]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[16]),
        .O(\row_count[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[20]_i_2 
       (.I0(row_count_reg__0[23]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[23]),
        .O(\row_count[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[20]_i_3 
       (.I0(row_count_reg__0[22]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[22]),
        .O(\row_count[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[20]_i_4 
       (.I0(row_count_reg__0[21]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[21]),
        .O(\row_count[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[20]_i_5 
       (.I0(row_count_reg__0[20]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[20]),
        .O(\row_count[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[24]_i_2 
       (.I0(row_count_reg__0[26]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[26]),
        .O(\row_count[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[24]_i_3 
       (.I0(row_count_reg__0[25]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[25]),
        .O(\row_count[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[24]_i_4 
       (.I0(row_count_reg__0[24]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[24]),
        .O(\row_count[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[4]_i_2 
       (.I0(row_count_reg[7]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[7]),
        .O(\row_count[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[4]_i_3 
       (.I0(row_count_reg[6]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[6]),
        .O(\row_count[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[4]_i_4 
       (.I0(row_count_reg[5]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[5]),
        .O(\row_count[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[4]_i_5 
       (.I0(\row_count_reg_n_0_[4] ),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[4]),
        .O(\row_count[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[8]_i_2 
       (.I0(row_count_reg[11]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[11]),
        .O(\row_count[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[8]_i_3 
       (.I0(row_count_reg[10]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[10]),
        .O(\row_count[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[8]_i_4 
       (.I0(row_count_reg[9]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[9]),
        .O(\row_count[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \row_count[8]_i_5 
       (.I0(row_count_reg[8]),
        .I1(S_AXI_TREADY),
        .I2(pixel_word_count1),
        .I3(row_count0[8]),
        .O(\row_count[8]_i_5_n_0 ));
  FDRE \row_count_reg[0] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[0]_i_1_n_7 ),
        .Q(\row_count_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \row_count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\row_count_reg[0]_i_1_n_0 ,\row_count_reg[0]_i_1_n_1 ,\row_count_reg[0]_i_1_n_2 ,\row_count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,S_AXI_TREADY}),
        .O({\row_count_reg[0]_i_1_n_4 ,\row_count_reg[0]_i_1_n_5 ,\row_count_reg[0]_i_1_n_6 ,\row_count_reg[0]_i_1_n_7 }),
        .S({\row_count[0]_i_2_n_0 ,\row_count[0]_i_3_n_0 ,\row_count[0]_i_4_n_0 ,\row_count[0]_i_5_n_0 }));
  CARRY4 \row_count_reg[0]_i_6 
       (.CI(1'b0),
        .CO({\row_count_reg[0]_i_6_n_0 ,\row_count_reg[0]_i_6_n_1 ,\row_count_reg[0]_i_6_n_2 ,\row_count_reg[0]_i_6_n_3 }),
        .CYINIT(\row_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(row_count0[4:1]),
        .S({\row_count_reg_n_0_[4] ,\row_count_reg_n_0_[3] ,\row_count_reg_n_0_[2] ,\row_count_reg_n_0_[1] }));
  FDRE \row_count_reg[10] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[8]_i_1_n_5 ),
        .Q(row_count_reg[10]),
        .R(1'b0));
  FDRE \row_count_reg[11] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[8]_i_1_n_4 ),
        .Q(row_count_reg[11]),
        .R(1'b0));
  FDRE \row_count_reg[12] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[12]_i_1_n_7 ),
        .Q(row_count_reg[12]),
        .R(1'b0));
  CARRY4 \row_count_reg[12]_i_1 
       (.CI(\row_count_reg[8]_i_1_n_0 ),
        .CO({\row_count_reg[12]_i_1_n_0 ,\row_count_reg[12]_i_1_n_1 ,\row_count_reg[12]_i_1_n_2 ,\row_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_count_reg[12]_i_1_n_4 ,\row_count_reg[12]_i_1_n_5 ,\row_count_reg[12]_i_1_n_6 ,\row_count_reg[12]_i_1_n_7 }),
        .S({\row_count[12]_i_2_n_0 ,\row_count[12]_i_3_n_0 ,\row_count[12]_i_4_n_0 ,\row_count[12]_i_5_n_0 }));
  CARRY4 \row_count_reg[12]_i_6 
       (.CI(\row_count_reg[8]_i_6_n_0 ),
        .CO({\row_count_reg[12]_i_6_n_0 ,\row_count_reg[12]_i_6_n_1 ,\row_count_reg[12]_i_6_n_2 ,\row_count_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(row_count0[16:13]),
        .S({row_count_reg__0[16],row_count_reg[15:13]}));
  FDRE \row_count_reg[13] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[12]_i_1_n_6 ),
        .Q(row_count_reg[13]),
        .R(1'b0));
  FDRE \row_count_reg[14] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[12]_i_1_n_5 ),
        .Q(row_count_reg[14]),
        .R(1'b0));
  FDRE \row_count_reg[15] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[12]_i_1_n_4 ),
        .Q(row_count_reg[15]),
        .R(1'b0));
  FDRE \row_count_reg[16] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[16]_i_1_n_7 ),
        .Q(row_count_reg__0[16]),
        .R(1'b0));
  CARRY4 \row_count_reg[16]_i_1 
       (.CI(\row_count_reg[12]_i_1_n_0 ),
        .CO({\row_count_reg[16]_i_1_n_0 ,\row_count_reg[16]_i_1_n_1 ,\row_count_reg[16]_i_1_n_2 ,\row_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_count_reg[16]_i_1_n_4 ,\row_count_reg[16]_i_1_n_5 ,\row_count_reg[16]_i_1_n_6 ,\row_count_reg[16]_i_1_n_7 }),
        .S({\row_count[16]_i_2_n_0 ,\row_count[16]_i_3_n_0 ,\row_count[16]_i_4_n_0 ,\row_count[16]_i_5_n_0 }));
  CARRY4 \row_count_reg[16]_i_6 
       (.CI(\row_count_reg[12]_i_6_n_0 ),
        .CO({\row_count_reg[16]_i_6_n_0 ,\row_count_reg[16]_i_6_n_1 ,\row_count_reg[16]_i_6_n_2 ,\row_count_reg[16]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(row_count0[20:17]),
        .S(row_count_reg__0[20:17]));
  FDRE \row_count_reg[17] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[16]_i_1_n_6 ),
        .Q(row_count_reg__0[17]),
        .R(1'b0));
  FDRE \row_count_reg[18] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[16]_i_1_n_5 ),
        .Q(row_count_reg__0[18]),
        .R(1'b0));
  FDRE \row_count_reg[19] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[16]_i_1_n_4 ),
        .Q(row_count_reg__0[19]),
        .R(1'b0));
  FDRE \row_count_reg[1] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[0]_i_1_n_6 ),
        .Q(\row_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \row_count_reg[20] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[20]_i_1_n_7 ),
        .Q(row_count_reg__0[20]),
        .R(1'b0));
  CARRY4 \row_count_reg[20]_i_1 
       (.CI(\row_count_reg[16]_i_1_n_0 ),
        .CO({\row_count_reg[20]_i_1_n_0 ,\row_count_reg[20]_i_1_n_1 ,\row_count_reg[20]_i_1_n_2 ,\row_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_count_reg[20]_i_1_n_4 ,\row_count_reg[20]_i_1_n_5 ,\row_count_reg[20]_i_1_n_6 ,\row_count_reg[20]_i_1_n_7 }),
        .S({\row_count[20]_i_2_n_0 ,\row_count[20]_i_3_n_0 ,\row_count[20]_i_4_n_0 ,\row_count[20]_i_5_n_0 }));
  CARRY4 \row_count_reg[20]_i_6 
       (.CI(\row_count_reg[16]_i_6_n_0 ),
        .CO({\row_count_reg[20]_i_6_n_0 ,\row_count_reg[20]_i_6_n_1 ,\row_count_reg[20]_i_6_n_2 ,\row_count_reg[20]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(row_count0[24:21]),
        .S(row_count_reg__0[24:21]));
  FDRE \row_count_reg[21] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[20]_i_1_n_6 ),
        .Q(row_count_reg__0[21]),
        .R(1'b0));
  FDRE \row_count_reg[22] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[20]_i_1_n_5 ),
        .Q(row_count_reg__0[22]),
        .R(1'b0));
  FDRE \row_count_reg[23] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[20]_i_1_n_4 ),
        .Q(row_count_reg__0[23]),
        .R(1'b0));
  FDRE \row_count_reg[24] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[24]_i_1_n_7 ),
        .Q(row_count_reg__0[24]),
        .R(1'b0));
  CARRY4 \row_count_reg[24]_i_1 
       (.CI(\row_count_reg[20]_i_1_n_0 ),
        .CO({\NLW_row_count_reg[24]_i_1_CO_UNCONNECTED [3:2],\row_count_reg[24]_i_1_n_2 ,\row_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_row_count_reg[24]_i_1_O_UNCONNECTED [3],\row_count_reg[24]_i_1_n_5 ,\row_count_reg[24]_i_1_n_6 ,\row_count_reg[24]_i_1_n_7 }),
        .S({1'b0,\row_count[24]_i_2_n_0 ,\row_count[24]_i_3_n_0 ,\row_count[24]_i_4_n_0 }));
  CARRY4 \row_count_reg[24]_i_5 
       (.CI(\row_count_reg[20]_i_6_n_0 ),
        .CO({\NLW_row_count_reg[24]_i_5_CO_UNCONNECTED [3:1],\row_count_reg[24]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_row_count_reg[24]_i_5_O_UNCONNECTED [3:2],row_count0[26:25]}),
        .S({1'b0,1'b0,row_count_reg__0[26:25]}));
  FDRE \row_count_reg[25] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[24]_i_1_n_6 ),
        .Q(row_count_reg__0[25]),
        .R(1'b0));
  FDRE \row_count_reg[26] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[24]_i_1_n_5 ),
        .Q(row_count_reg__0[26]),
        .R(1'b0));
  FDRE \row_count_reg[2] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[0]_i_1_n_5 ),
        .Q(\row_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \row_count_reg[3] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[0]_i_1_n_4 ),
        .Q(\row_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \row_count_reg[4] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[4]_i_1_n_7 ),
        .Q(\row_count_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \row_count_reg[4]_i_1 
       (.CI(\row_count_reg[0]_i_1_n_0 ),
        .CO({\row_count_reg[4]_i_1_n_0 ,\row_count_reg[4]_i_1_n_1 ,\row_count_reg[4]_i_1_n_2 ,\row_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_count_reg[4]_i_1_n_4 ,\row_count_reg[4]_i_1_n_5 ,\row_count_reg[4]_i_1_n_6 ,\row_count_reg[4]_i_1_n_7 }),
        .S({\row_count[4]_i_2_n_0 ,\row_count[4]_i_3_n_0 ,\row_count[4]_i_4_n_0 ,\row_count[4]_i_5_n_0 }));
  CARRY4 \row_count_reg[4]_i_6 
       (.CI(\row_count_reg[0]_i_6_n_0 ),
        .CO({\row_count_reg[4]_i_6_n_0 ,\row_count_reg[4]_i_6_n_1 ,\row_count_reg[4]_i_6_n_2 ,\row_count_reg[4]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(row_count0[8:5]),
        .S(row_count_reg[8:5]));
  FDRE \row_count_reg[5] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[4]_i_1_n_6 ),
        .Q(row_count_reg[5]),
        .R(1'b0));
  FDRE \row_count_reg[6] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[4]_i_1_n_5 ),
        .Q(row_count_reg[6]),
        .R(1'b0));
  FDRE \row_count_reg[7] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[4]_i_1_n_4 ),
        .Q(row_count_reg[7]),
        .R(1'b0));
  FDRE \row_count_reg[8] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[8]_i_1_n_7 ),
        .Q(row_count_reg[8]),
        .R(1'b0));
  CARRY4 \row_count_reg[8]_i_1 
       (.CI(\row_count_reg[4]_i_1_n_0 ),
        .CO({\row_count_reg[8]_i_1_n_0 ,\row_count_reg[8]_i_1_n_1 ,\row_count_reg[8]_i_1_n_2 ,\row_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_count_reg[8]_i_1_n_4 ,\row_count_reg[8]_i_1_n_5 ,\row_count_reg[8]_i_1_n_6 ,\row_count_reg[8]_i_1_n_7 }),
        .S({\row_count[8]_i_2_n_0 ,\row_count[8]_i_3_n_0 ,\row_count[8]_i_4_n_0 ,\row_count[8]_i_5_n_0 }));
  CARRY4 \row_count_reg[8]_i_6 
       (.CI(\row_count_reg[4]_i_6_n_0 ),
        .CO({\row_count_reg[8]_i_6_n_0 ,\row_count_reg[8]_i_6_n_1 ,\row_count_reg[8]_i_6_n_2 ,\row_count_reg[8]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(row_count0[12:9]),
        .S(row_count_reg[12:9]));
  FDRE \row_count_reg[9] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_1_n_0 ),
        .D(\row_count_reg[8]_i_1_n_6 ),
        .Q(row_count_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \slv_reg0[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(slv_reg_wren),
        .I5(S_AXI_WSTRB[1]),
        .O(slv_reg0[15]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \slv_reg0[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(slv_reg_wren),
        .I5(S_AXI_WSTRB[2]),
        .O(slv_reg0[23]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \slv_reg0[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(slv_reg_wren),
        .I5(S_AXI_WSTRB[3]),
        .O(slv_reg0[31]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \slv_reg0[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(slv_reg_wren),
        .I5(S_AXI_WSTRB[0]),
        .O(slv_reg0[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(aclk),
        .CE(slv_reg0[7]),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(aclk),
        .CE(slv_reg0[15]),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(aclk),
        .CE(slv_reg0[15]),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(aclk),
        .CE(slv_reg0[15]),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(aclk),
        .CE(slv_reg0[15]),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(aclk),
        .CE(slv_reg0[15]),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(aclk),
        .CE(slv_reg0[15]),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(aclk),
        .CE(slv_reg0[23]),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(aclk),
        .CE(slv_reg0[23]),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(aclk),
        .CE(slv_reg0[23]),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(aclk),
        .CE(slv_reg0[23]),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(aclk),
        .CE(slv_reg0[7]),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(aclk),
        .CE(slv_reg0[23]),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(aclk),
        .CE(slv_reg0[23]),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(aclk),
        .CE(slv_reg0[23]),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(aclk),
        .CE(slv_reg0[23]),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(aclk),
        .CE(slv_reg0[31]),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(aclk),
        .CE(slv_reg0[31]),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(aclk),
        .CE(slv_reg0[31]),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(aclk),
        .CE(slv_reg0[31]),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(aclk),
        .CE(slv_reg0[31]),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(aclk),
        .CE(slv_reg0[31]),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(aclk),
        .CE(slv_reg0[7]),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(aclk),
        .CE(slv_reg0[31]),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(aclk),
        .CE(slv_reg0[31]),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(aclk),
        .CE(slv_reg0[7]),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(aclk),
        .CE(slv_reg0[7]),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(aclk),
        .CE(slv_reg0[7]),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(aclk),
        .CE(slv_reg0[7]),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(aclk),
        .CE(slv_reg0[7]),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(aclk),
        .CE(slv_reg0[15]),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(aclk),
        .CE(slv_reg0[15]),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg11_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffCol[0]),
        .Q(slv_reg11[0]),
        .R(1'b0));
  FDRE \slv_reg11_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[0]),
        .Q(slv_reg11[16]),
        .R(1'b0));
  FDRE \slv_reg11_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[1]),
        .Q(slv_reg11[17]),
        .R(1'b0));
  FDRE \slv_reg11_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[2]),
        .Q(slv_reg11[18]),
        .R(1'b0));
  FDRE \slv_reg11_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[3]),
        .Q(slv_reg11[19]),
        .R(1'b0));
  FDRE \slv_reg11_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffCol[1]),
        .Q(slv_reg11[1]),
        .R(1'b0));
  FDRE \slv_reg11_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[4]),
        .Q(slv_reg11[20]),
        .R(1'b0));
  FDRE \slv_reg11_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[5]),
        .Q(slv_reg11[21]),
        .R(1'b0));
  FDRE \slv_reg11_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[6]),
        .Q(slv_reg11[22]),
        .R(1'b0));
  FDRE \slv_reg11_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[7]),
        .Q(slv_reg11[23]),
        .R(1'b0));
  FDRE \slv_reg11_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[8]),
        .Q(slv_reg11[24]),
        .R(1'b0));
  FDRE \slv_reg11_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[9]),
        .Q(slv_reg11[25]),
        .R(1'b0));
  FDRE \slv_reg11_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[10]),
        .Q(slv_reg11[26]),
        .R(1'b0));
  FDRE \slv_reg11_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[11]),
        .Q(slv_reg11[27]),
        .R(1'b0));
  FDRE \slv_reg11_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[12]),
        .Q(slv_reg11[28]),
        .R(1'b0));
  FDRE \slv_reg11_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[13]),
        .Q(slv_reg11[29]),
        .R(1'b0));
  FDRE \slv_reg11_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffCol[2]),
        .Q(slv_reg11[2]),
        .R(1'b0));
  FDRE \slv_reg11_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[14]),
        .Q(slv_reg11[30]),
        .R(1'b0));
  FDRE \slv_reg11_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffRow[15]),
        .Q(slv_reg11[31]),
        .R(1'b0));
  FDRE \slv_reg11_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffCol[3]),
        .Q(slv_reg11[3]),
        .R(1'b0));
  FDRE \slv_reg11_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(maxDiffCol[4]),
        .Q(slv_reg11[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg1[15]_i_1 
       (.I0(S_AXI_WSTRB[1]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg1[23]_i_1 
       (.I0(S_AXI_WSTRB[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \slv_reg1[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(slv_reg_wren),
        .I2(S_AXI_WSTRB[3]),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg1[7]_i_1 
       (.I0(S_AXI_WSTRB[0]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \slv_reg2[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \slv_reg2[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \slv_reg2[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WVALID),
        .O(slv_reg_wren));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \slv_reg2[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(dma_base[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(dma_base[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(dma_base[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(dma_base[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(dma_base[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(dma_base[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(dma_base[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(dma_base[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(dma_base[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(dma_base[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(dma_base[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(dma_base[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(dma_base[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(dma_base[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(dma_base[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(dma_base[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(dma_base[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(dma_base[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(dma_base[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(dma_base[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(dma_base[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(dma_base[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(dma_base[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(dma_base[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(dma_base[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(dma_base[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(dma_base[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(dma_base[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(dma_base[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(dma_base[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(dma_base[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(dma_base[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \slv_reg3[15]_i_1 
       (.I0(S_AXI_WSTRB[1]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \slv_reg3[23]_i_1 
       (.I0(S_AXI_WSTRB[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg3[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(slv_reg_wren),
        .I2(S_AXI_WSTRB[3]),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \slv_reg3[7]_i_1 
       (.I0(S_AXI_WSTRB[0]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg3_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg3_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg3_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg3_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg4[15]_i_1 
       (.I0(p_0_in[3]),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren),
        .O(slv_reg4[15]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg4[23]_i_1 
       (.I0(p_0_in[3]),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren),
        .O(slv_reg4[23]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg4[31]_i_1 
       (.I0(p_0_in[3]),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren),
        .O(slv_reg4[31]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \slv_reg4[7]_i_1 
       (.I0(p_0_in[3]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(slv_reg_wren),
        .O(slv_reg4[7]));
  FDRE \slv_reg4_reg[0] 
       (.C(aclk),
        .CE(slv_reg4[7]),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg4_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(aclk),
        .CE(slv_reg4[15]),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg4_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(aclk),
        .CE(slv_reg4[15]),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg4_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(aclk),
        .CE(slv_reg4[15]),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg4_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(aclk),
        .CE(slv_reg4[15]),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg4_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(aclk),
        .CE(slv_reg4[15]),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg4_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(aclk),
        .CE(slv_reg4[15]),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg4_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(aclk),
        .CE(slv_reg4[23]),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg4_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(aclk),
        .CE(slv_reg4[23]),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg4_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(aclk),
        .CE(slv_reg4[23]),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg4_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(aclk),
        .CE(slv_reg4[23]),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg4_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(aclk),
        .CE(slv_reg4[7]),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg4_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(aclk),
        .CE(slv_reg4[23]),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg4_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(aclk),
        .CE(slv_reg4[23]),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg4_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(aclk),
        .CE(slv_reg4[23]),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg4_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(aclk),
        .CE(slv_reg4[23]),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg4_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(aclk),
        .CE(slv_reg4[31]),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg4_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(aclk),
        .CE(slv_reg4[31]),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg4_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(aclk),
        .CE(slv_reg4[31]),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg4_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(aclk),
        .CE(slv_reg4[31]),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg4_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(aclk),
        .CE(slv_reg4[31]),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg4_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(aclk),
        .CE(slv_reg4[31]),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg4_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(aclk),
        .CE(slv_reg4[7]),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg4_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(aclk),
        .CE(slv_reg4[31]),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg4_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(aclk),
        .CE(slv_reg4[31]),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg4_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(aclk),
        .CE(slv_reg4[7]),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg4_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(aclk),
        .CE(slv_reg4[7]),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg4_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(aclk),
        .CE(slv_reg4[7]),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg4_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(aclk),
        .CE(slv_reg4[7]),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg4_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(aclk),
        .CE(slv_reg4[7]),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg4_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(aclk),
        .CE(slv_reg4[15]),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg4_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(aclk),
        .CE(slv_reg4[15]),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg4_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[0]_i_1 
       (.I0(slv_reg50[0]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[3]_i_3_n_7 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[0]),
        .O(\slv_reg5[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[10]_i_1 
       (.I0(slv_reg50[10]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[11]_i_3_n_5 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[10]),
        .O(\slv_reg5[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[11]_i_1 
       (.I0(slv_reg50[11]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[11]_i_3_n_4 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[11]),
        .O(\slv_reg5[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[11]_i_10 
       (.I0(\gray2[31] [9]),
        .I1(\gray1[31] [9]),
        .O(\slv_reg5[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[11]_i_11 
       (.I0(\gray2[31] [8]),
        .I1(\gray1[31] [8]),
        .O(\slv_reg5[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[11]_i_4 
       (.I0(\gray1[31] [11]),
        .I1(\gray2[31] [11]),
        .O(\slv_reg5[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[11]_i_5 
       (.I0(\gray1[31] [10]),
        .I1(\gray2[31] [10]),
        .O(\slv_reg5[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[11]_i_6 
       (.I0(\gray1[31] [9]),
        .I1(\gray2[31] [9]),
        .O(\slv_reg5[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[11]_i_7 
       (.I0(\gray1[31] [8]),
        .I1(\gray2[31] [8]),
        .O(\slv_reg5[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[11]_i_8 
       (.I0(\gray2[31] [11]),
        .I1(\gray1[31] [11]),
        .O(\slv_reg5[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[11]_i_9 
       (.I0(\gray2[31] [10]),
        .I1(\gray1[31] [10]),
        .O(\slv_reg5[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[12]_i_1 
       (.I0(slv_reg50[12]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[15]_i_4_n_7 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[12]),
        .O(\slv_reg5[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[13]_i_1 
       (.I0(slv_reg50[13]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[15]_i_4_n_6 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[13]),
        .O(\slv_reg5[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[14]_i_1 
       (.I0(slv_reg50[14]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[15]_i_4_n_5 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[14]),
        .O(\slv_reg5[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAAAAAA)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg51),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg5[31]_i_5_n_0 ),
        .I4(p_0_in[3]),
        .I5(S_AXI_WSTRB[1]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[15]_i_10 
       (.I0(\gray2[31] [14]),
        .I1(\gray1[31] [14]),
        .O(\slv_reg5[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[15]_i_11 
       (.I0(\gray2[31] [13]),
        .I1(\gray1[31] [13]),
        .O(\slv_reg5[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[15]_i_12 
       (.I0(\gray2[31] [12]),
        .I1(\gray1[31] [12]),
        .O(\slv_reg5[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[15]_i_2 
       (.I0(slv_reg50[15]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[15]_i_4_n_4 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[15]),
        .O(\slv_reg5[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[15]_i_5 
       (.I0(\gray1[31] [15]),
        .I1(\gray2[31] [15]),
        .O(\slv_reg5[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[15]_i_6 
       (.I0(\gray1[31] [14]),
        .I1(\gray2[31] [14]),
        .O(\slv_reg5[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[15]_i_7 
       (.I0(\gray1[31] [13]),
        .I1(\gray2[31] [13]),
        .O(\slv_reg5[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[15]_i_8 
       (.I0(\gray1[31] [12]),
        .I1(\gray2[31] [12]),
        .O(\slv_reg5[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[15]_i_9 
       (.I0(\gray2[31] [15]),
        .I1(\gray1[31] [15]),
        .O(\slv_reg5[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[16]_i_1 
       (.I0(slv_reg50[16]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[19]_i_3_n_7 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[16]),
        .O(\slv_reg5[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[17]_i_1 
       (.I0(slv_reg50[17]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[19]_i_3_n_6 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[17]),
        .O(\slv_reg5[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[18]_i_1 
       (.I0(slv_reg50[18]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[19]_i_3_n_5 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[18]),
        .O(\slv_reg5[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[19]_i_1 
       (.I0(slv_reg50[19]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[19]_i_3_n_4 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[19]),
        .O(\slv_reg5[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[19]_i_10 
       (.I0(\gray2[31] [17]),
        .I1(\gray1[31] [17]),
        .O(\slv_reg5[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[19]_i_11 
       (.I0(\gray2[31] [16]),
        .I1(\gray1[31] [16]),
        .O(\slv_reg5[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[19]_i_4 
       (.I0(\gray2[31] [19]),
        .I1(\gray1[31] [19]),
        .O(\slv_reg5[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[19]_i_5 
       (.I0(\gray2[31] [18]),
        .I1(\gray1[31] [18]),
        .O(\slv_reg5[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[19]_i_6 
       (.I0(\gray2[31] [17]),
        .I1(\gray1[31] [17]),
        .O(\slv_reg5[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[19]_i_7 
       (.I0(\gray2[31] [16]),
        .I1(\gray1[31] [16]),
        .O(\slv_reg5[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[19]_i_8 
       (.I0(\gray2[31] [19]),
        .I1(\gray1[31] [19]),
        .O(\slv_reg5[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[19]_i_9 
       (.I0(\gray2[31] [18]),
        .I1(\gray1[31] [18]),
        .O(\slv_reg5[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[1]_i_1 
       (.I0(slv_reg50[1]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[3]_i_3_n_6 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[1]),
        .O(\slv_reg5[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[20]_i_1 
       (.I0(slv_reg50[20]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[23]_i_4_n_7 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[20]),
        .O(\slv_reg5[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[21]_i_1 
       (.I0(slv_reg50[21]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[23]_i_4_n_6 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[21]),
        .O(\slv_reg5[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[22]_i_1 
       (.I0(slv_reg50[22]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[23]_i_4_n_5 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[22]),
        .O(\slv_reg5[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAAAAAA)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg51),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg5[31]_i_5_n_0 ),
        .I4(p_0_in[3]),
        .I5(S_AXI_WSTRB[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[23]_i_10 
       (.I0(\gray2[31] [22]),
        .I1(\gray1[31] [22]),
        .O(\slv_reg5[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[23]_i_11 
       (.I0(\gray2[31] [21]),
        .I1(\gray1[31] [21]),
        .O(\slv_reg5[23]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[23]_i_12 
       (.I0(\gray2[31] [20]),
        .I1(\gray1[31] [20]),
        .O(\slv_reg5[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[23]_i_2 
       (.I0(slv_reg50[23]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[23]_i_4_n_4 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[23]),
        .O(\slv_reg5[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[23]_i_5 
       (.I0(\gray2[31] [23]),
        .I1(\gray1[31] [23]),
        .O(\slv_reg5[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[23]_i_6 
       (.I0(\gray2[31] [22]),
        .I1(\gray1[31] [22]),
        .O(\slv_reg5[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[23]_i_7 
       (.I0(\gray2[31] [21]),
        .I1(\gray1[31] [21]),
        .O(\slv_reg5[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[23]_i_8 
       (.I0(\gray2[31] [20]),
        .I1(\gray1[31] [20]),
        .O(\slv_reg5[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[23]_i_9 
       (.I0(\gray2[31] [23]),
        .I1(\gray1[31] [23]),
        .O(\slv_reg5[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[24]_i_1 
       (.I0(slv_reg50[24]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[27]_i_3_n_7 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[24]),
        .O(\slv_reg5[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[25]_i_1 
       (.I0(slv_reg50[25]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[27]_i_3_n_6 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[25]),
        .O(\slv_reg5[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[26]_i_1 
       (.I0(slv_reg50[26]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[27]_i_3_n_5 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[26]),
        .O(\slv_reg5[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[27]_i_1 
       (.I0(slv_reg50[27]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[27]_i_3_n_4 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[27]),
        .O(\slv_reg5[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[27]_i_10 
       (.I0(\gray2[31] [25]),
        .I1(\gray1[31] [25]),
        .O(\slv_reg5[27]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[27]_i_11 
       (.I0(\gray2[31] [24]),
        .I1(\gray1[31] [24]),
        .O(\slv_reg5[27]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[27]_i_4 
       (.I0(\gray2[31] [27]),
        .I1(\gray1[31] [27]),
        .O(\slv_reg5[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[27]_i_5 
       (.I0(\gray2[31] [26]),
        .I1(\gray1[31] [26]),
        .O(\slv_reg5[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[27]_i_6 
       (.I0(\gray2[31] [25]),
        .I1(\gray1[31] [25]),
        .O(\slv_reg5[27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[27]_i_7 
       (.I0(\gray2[31] [24]),
        .I1(\gray1[31] [24]),
        .O(\slv_reg5[27]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[27]_i_8 
       (.I0(\gray2[31] [27]),
        .I1(\gray1[31] [27]),
        .O(\slv_reg5[27]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[27]_i_9 
       (.I0(\gray2[31] [26]),
        .I1(\gray1[31] [26]),
        .O(\slv_reg5[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[28]_i_1 
       (.I0(slv_reg50[28]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[31]_i_8_n_7 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[28]),
        .O(\slv_reg5[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[29]_i_1 
       (.I0(slv_reg50[29]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[31]_i_8_n_6 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[29]),
        .O(\slv_reg5[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[2]_i_1 
       (.I0(slv_reg50[2]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[3]_i_3_n_5 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[2]),
        .O(\slv_reg5[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[30]_i_1 
       (.I0(slv_reg50[30]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[31]_i_8_n_5 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[30]),
        .O(\slv_reg5[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \slv_reg5[31]_i_1 
       (.I0(finish_read1),
        .I1(finish_read2),
        .I2(aresetn),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[31]_i_10 
       (.I0(\gray2[31] [30]),
        .I1(\gray1[31] [30]),
        .O(\slv_reg5[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[31]_i_11 
       (.I0(\gray2[31] [29]),
        .I1(\gray1[31] [29]),
        .O(\slv_reg5[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[31]_i_12 
       (.I0(\gray2[31] [28]),
        .I1(\gray1[31] [28]),
        .O(\slv_reg5[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \slv_reg5[31]_i_14 
       (.I0(\gray2[31] [31]),
        .I1(\gray1[31] [31]),
        .I2(\gray1[31] [30]),
        .I3(\gray2[31] [30]),
        .O(\slv_reg5[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_15 
       (.I0(\gray1[31] [29]),
        .I1(\gray2[31] [29]),
        .I2(\gray1[31] [28]),
        .I3(\gray2[31] [28]),
        .O(\slv_reg5[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_16 
       (.I0(\gray1[31] [27]),
        .I1(\gray2[31] [27]),
        .I2(\gray1[31] [26]),
        .I3(\gray2[31] [26]),
        .O(\slv_reg5[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_17 
       (.I0(\gray1[31] [25]),
        .I1(\gray2[31] [25]),
        .I2(\gray1[31] [24]),
        .I3(\gray2[31] [24]),
        .O(\slv_reg5[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_18 
       (.I0(\gray1[31] [31]),
        .I1(\gray2[31] [31]),
        .I2(\gray2[31] [30]),
        .I3(\gray1[31] [30]),
        .O(\slv_reg5[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_19 
       (.I0(\gray2[31] [29]),
        .I1(\gray1[31] [29]),
        .I2(\gray2[31] [28]),
        .I3(\gray1[31] [28]),
        .O(\slv_reg5[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \slv_reg5[31]_i_2 
       (.I0(slv_reg51),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .I4(S_AXI_WSTRB[3]),
        .I5(\slv_reg5[31]_i_5_n_0 ),
        .O(\slv_reg5[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_20 
       (.I0(\gray2[31] [27]),
        .I1(\gray1[31] [27]),
        .I2(\gray2[31] [26]),
        .I3(\gray1[31] [26]),
        .O(\slv_reg5[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_21 
       (.I0(\gray2[31] [25]),
        .I1(\gray1[31] [25]),
        .I2(\gray2[31] [24]),
        .I3(\gray1[31] [24]),
        .O(\slv_reg5[31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[31]_i_22 
       (.I0(\gray1[31] [31]),
        .I1(\gray2[31] [31]),
        .O(\slv_reg5[31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[31]_i_23 
       (.I0(\gray2[31] [30]),
        .I1(\gray1[31] [30]),
        .O(\slv_reg5[31]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[31]_i_24 
       (.I0(\gray2[31] [29]),
        .I1(\gray1[31] [29]),
        .O(\slv_reg5[31]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[31]_i_25 
       (.I0(\gray2[31] [28]),
        .I1(\gray1[31] [28]),
        .O(\slv_reg5[31]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_27 
       (.I0(\gray1[31] [23]),
        .I1(\gray2[31] [23]),
        .I2(\gray1[31] [22]),
        .I3(\gray2[31] [22]),
        .O(\slv_reg5[31]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_28 
       (.I0(\gray1[31] [21]),
        .I1(\gray2[31] [21]),
        .I2(\gray1[31] [20]),
        .I3(\gray2[31] [20]),
        .O(\slv_reg5[31]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_29 
       (.I0(\gray1[31] [19]),
        .I1(\gray2[31] [19]),
        .I2(\gray1[31] [18]),
        .I3(\gray2[31] [18]),
        .O(\slv_reg5[31]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[31]_i_3 
       (.I0(slv_reg50[31]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[31]_i_8_n_4 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[31]),
        .O(\slv_reg5[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_30 
       (.I0(\gray1[31] [17]),
        .I1(\gray2[31] [17]),
        .I2(\gray1[31] [16]),
        .I3(\gray2[31] [16]),
        .O(\slv_reg5[31]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_31 
       (.I0(\gray2[31] [23]),
        .I1(\gray1[31] [23]),
        .I2(\gray2[31] [22]),
        .I3(\gray1[31] [22]),
        .O(\slv_reg5[31]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_32 
       (.I0(\gray2[31] [21]),
        .I1(\gray1[31] [21]),
        .I2(\gray2[31] [20]),
        .I3(\gray1[31] [20]),
        .O(\slv_reg5[31]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_33 
       (.I0(\gray2[31] [19]),
        .I1(\gray1[31] [19]),
        .I2(\gray2[31] [18]),
        .I3(\gray1[31] [18]),
        .O(\slv_reg5[31]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_34 
       (.I0(\gray2[31] [17]),
        .I1(\gray1[31] [17]),
        .I2(\gray2[31] [16]),
        .I3(\gray1[31] [16]),
        .O(\slv_reg5[31]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_36 
       (.I0(\gray1[31] [15]),
        .I1(\gray2[31] [15]),
        .I2(\gray1[31] [14]),
        .I3(\gray2[31] [14]),
        .O(\slv_reg5[31]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_37 
       (.I0(\gray1[31] [13]),
        .I1(\gray2[31] [13]),
        .I2(\gray1[31] [12]),
        .I3(\gray2[31] [12]),
        .O(\slv_reg5[31]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_38 
       (.I0(\gray1[31] [11]),
        .I1(\gray2[31] [11]),
        .I2(\gray1[31] [10]),
        .I3(\gray2[31] [10]),
        .O(\slv_reg5[31]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_39 
       (.I0(\gray1[31] [9]),
        .I1(\gray2[31] [9]),
        .I2(\gray1[31] [8]),
        .I3(\gray2[31] [8]),
        .O(\slv_reg5[31]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg5[31]_i_4 
       (.I0(finish_read2),
        .I1(finish_read1),
        .O(slv_reg51));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_40 
       (.I0(\gray2[31] [15]),
        .I1(\gray1[31] [15]),
        .I2(\gray2[31] [14]),
        .I3(\gray1[31] [14]),
        .O(\slv_reg5[31]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_41 
       (.I0(\gray2[31] [13]),
        .I1(\gray1[31] [13]),
        .I2(\gray2[31] [12]),
        .I3(\gray1[31] [12]),
        .O(\slv_reg5[31]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_42 
       (.I0(\gray2[31] [11]),
        .I1(\gray1[31] [11]),
        .I2(\gray2[31] [10]),
        .I3(\gray1[31] [10]),
        .O(\slv_reg5[31]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_43 
       (.I0(\gray2[31] [9]),
        .I1(\gray1[31] [9]),
        .I2(\gray2[31] [8]),
        .I3(\gray1[31] [8]),
        .O(\slv_reg5[31]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_44 
       (.I0(\gray1[31] [7]),
        .I1(\gray2[31] [7]),
        .I2(\gray1[31] [6]),
        .I3(\gray2[31] [6]),
        .O(\slv_reg5[31]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_45 
       (.I0(\gray1[31] [5]),
        .I1(\gray2[31] [5]),
        .I2(\gray1[31] [4]),
        .I3(\gray2[31] [4]),
        .O(\slv_reg5[31]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_46 
       (.I0(\gray1[31] [3]),
        .I1(\gray2[31] [3]),
        .I2(\gray1[31] [2]),
        .I3(\gray2[31] [2]),
        .O(\slv_reg5[31]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \slv_reg5[31]_i_47 
       (.I0(\gray1[31] [1]),
        .I1(\gray2[31] [1]),
        .I2(\gray1[31] [0]),
        .I3(\gray2[31] [0]),
        .O(\slv_reg5[31]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_48 
       (.I0(\gray2[31] [7]),
        .I1(\gray1[31] [7]),
        .I2(\gray2[31] [6]),
        .I3(\gray1[31] [6]),
        .O(\slv_reg5[31]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_49 
       (.I0(\gray2[31] [5]),
        .I1(\gray1[31] [5]),
        .I2(\gray2[31] [4]),
        .I3(\gray1[31] [4]),
        .O(\slv_reg5[31]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg5[31]_i_5 
       (.I0(p_0_in[0]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_AWVALID),
        .O(\slv_reg5[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_50 
       (.I0(\gray2[31] [3]),
        .I1(\gray1[31] [3]),
        .I2(\gray2[31] [2]),
        .I3(\gray1[31] [2]),
        .O(\slv_reg5[31]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \slv_reg5[31]_i_51 
       (.I0(\gray2[31] [1]),
        .I1(\gray1[31] [1]),
        .I2(\gray2[31] [0]),
        .I3(\gray1[31] [0]),
        .O(\slv_reg5[31]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[31]_i_9 
       (.I0(\gray1[31] [31]),
        .I1(\gray2[31] [31]),
        .O(\slv_reg5[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[3]_i_1 
       (.I0(slv_reg50[3]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[3]_i_3_n_4 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[3]),
        .O(\slv_reg5[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[3]_i_10 
       (.I0(\gray2[31] [1]),
        .I1(\gray1[31] [1]),
        .O(\slv_reg5[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[3]_i_11 
       (.I0(\gray2[31] [0]),
        .I1(\gray1[31] [0]),
        .O(\slv_reg5[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[3]_i_4 
       (.I0(\gray1[31] [3]),
        .I1(\gray2[31] [3]),
        .O(\slv_reg5[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[3]_i_5 
       (.I0(\gray1[31] [2]),
        .I1(\gray2[31] [2]),
        .O(\slv_reg5[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[3]_i_6 
       (.I0(\gray1[31] [1]),
        .I1(\gray2[31] [1]),
        .O(\slv_reg5[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[3]_i_7 
       (.I0(\gray1[31] [0]),
        .I1(\gray2[31] [0]),
        .O(\slv_reg5[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[3]_i_8 
       (.I0(\gray2[31] [3]),
        .I1(\gray1[31] [3]),
        .O(\slv_reg5[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[3]_i_9 
       (.I0(\gray2[31] [2]),
        .I1(\gray1[31] [2]),
        .O(\slv_reg5[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[4]_i_1 
       (.I0(slv_reg50[4]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[7]_i_4_n_7 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[4]),
        .O(\slv_reg5[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[5]_i_1 
       (.I0(slv_reg50[5]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[7]_i_4_n_6 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[5]),
        .O(\slv_reg5[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[6]_i_1 
       (.I0(slv_reg50[6]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[7]_i_4_n_5 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[6]),
        .O(\slv_reg5[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAAAAAA)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg51),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg5[31]_i_5_n_0 ),
        .I4(p_0_in[3]),
        .I5(S_AXI_WSTRB[0]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[7]_i_10 
       (.I0(\gray2[31] [6]),
        .I1(\gray1[31] [6]),
        .O(\slv_reg5[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[7]_i_11 
       (.I0(\gray2[31] [5]),
        .I1(\gray1[31] [5]),
        .O(\slv_reg5[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[7]_i_12 
       (.I0(\gray2[31] [4]),
        .I1(\gray1[31] [4]),
        .O(\slv_reg5[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[7]_i_2 
       (.I0(slv_reg50[7]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[7]_i_4_n_4 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[7]),
        .O(\slv_reg5[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[7]_i_5 
       (.I0(\gray1[31] [7]),
        .I1(\gray2[31] [7]),
        .O(\slv_reg5[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[7]_i_6 
       (.I0(\gray1[31] [6]),
        .I1(\gray2[31] [6]),
        .O(\slv_reg5[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[7]_i_7 
       (.I0(\gray1[31] [5]),
        .I1(\gray2[31] [5]),
        .O(\slv_reg5[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[7]_i_8 
       (.I0(\gray1[31] [4]),
        .I1(\gray2[31] [4]),
        .O(\slv_reg5[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \slv_reg5[7]_i_9 
       (.I0(\gray2[31] [7]),
        .I1(\gray1[31] [7]),
        .O(\slv_reg5[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[8]_i_1 
       (.I0(slv_reg50[8]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[11]_i_3_n_7 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[8]),
        .O(\slv_reg5[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \slv_reg5[9]_i_1 
       (.I0(slv_reg50[9]),
        .I1(\slv_reg5_reg[31]_i_7_n_0 ),
        .I2(\slv_reg5_reg[11]_i_3_n_6 ),
        .I3(finish_read2),
        .I4(finish_read1),
        .I5(S_AXI_WDATA[9]),
        .O(\slv_reg5[9]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[0]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[0] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[10] 
       (.C(aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[10]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[10] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[11] 
       (.C(aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[11]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[11] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  CARRY4 \slv_reg5_reg[11]_i_2 
       (.CI(\slv_reg5_reg[7]_i_3_n_0 ),
        .CO({\slv_reg5_reg[11]_i_2_n_0 ,\slv_reg5_reg[11]_i_2_n_1 ,\slv_reg5_reg[11]_i_2_n_2 ,\slv_reg5_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray1[31] [11:8]),
        .O(slv_reg50[11:8]),
        .S({\slv_reg5[11]_i_4_n_0 ,\slv_reg5[11]_i_5_n_0 ,\slv_reg5[11]_i_6_n_0 ,\slv_reg5[11]_i_7_n_0 }));
  CARRY4 \slv_reg5_reg[11]_i_3 
       (.CI(\slv_reg5_reg[7]_i_4_n_0 ),
        .CO({\slv_reg5_reg[11]_i_3_n_0 ,\slv_reg5_reg[11]_i_3_n_1 ,\slv_reg5_reg[11]_i_3_n_2 ,\slv_reg5_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray2[31] [11:8]),
        .O({\slv_reg5_reg[11]_i_3_n_4 ,\slv_reg5_reg[11]_i_3_n_5 ,\slv_reg5_reg[11]_i_3_n_6 ,\slv_reg5_reg[11]_i_3_n_7 }),
        .S({\slv_reg5[11]_i_8_n_0 ,\slv_reg5[11]_i_9_n_0 ,\slv_reg5[11]_i_10_n_0 ,\slv_reg5[11]_i_11_n_0 }));
  FDRE \slv_reg5_reg[12] 
       (.C(aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[12]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[12] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[13] 
       (.C(aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[13]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[13] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[14] 
       (.C(aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[14]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[14] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[15] 
       (.C(aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[15]_i_2_n_0 ),
        .Q(\slv_reg5_reg_n_0_[15] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  CARRY4 \slv_reg5_reg[15]_i_3 
       (.CI(\slv_reg5_reg[11]_i_2_n_0 ),
        .CO({\slv_reg5_reg[15]_i_3_n_0 ,\slv_reg5_reg[15]_i_3_n_1 ,\slv_reg5_reg[15]_i_3_n_2 ,\slv_reg5_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray1[31] [15:12]),
        .O(slv_reg50[15:12]),
        .S({\slv_reg5[15]_i_5_n_0 ,\slv_reg5[15]_i_6_n_0 ,\slv_reg5[15]_i_7_n_0 ,\slv_reg5[15]_i_8_n_0 }));
  CARRY4 \slv_reg5_reg[15]_i_4 
       (.CI(\slv_reg5_reg[11]_i_3_n_0 ),
        .CO({\slv_reg5_reg[15]_i_4_n_0 ,\slv_reg5_reg[15]_i_4_n_1 ,\slv_reg5_reg[15]_i_4_n_2 ,\slv_reg5_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray2[31] [15:12]),
        .O({\slv_reg5_reg[15]_i_4_n_4 ,\slv_reg5_reg[15]_i_4_n_5 ,\slv_reg5_reg[15]_i_4_n_6 ,\slv_reg5_reg[15]_i_4_n_7 }),
        .S({\slv_reg5[15]_i_9_n_0 ,\slv_reg5[15]_i_10_n_0 ,\slv_reg5[15]_i_11_n_0 ,\slv_reg5[15]_i_12_n_0 }));
  FDRE \slv_reg5_reg[16] 
       (.C(aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[16]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[16] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[17] 
       (.C(aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[17]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[17] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[18] 
       (.C(aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[18]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[18] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[19] 
       (.C(aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[19]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[19] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  CARRY4 \slv_reg5_reg[19]_i_2 
       (.CI(\slv_reg5_reg[15]_i_3_n_0 ),
        .CO({\slv_reg5_reg[19]_i_2_n_0 ,\slv_reg5_reg[19]_i_2_n_1 ,\slv_reg5_reg[19]_i_2_n_2 ,\slv_reg5_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray1[31] [19:16]),
        .O(slv_reg50[19:16]),
        .S({\slv_reg5[19]_i_4_n_0 ,\slv_reg5[19]_i_5_n_0 ,\slv_reg5[19]_i_6_n_0 ,\slv_reg5[19]_i_7_n_0 }));
  CARRY4 \slv_reg5_reg[19]_i_3 
       (.CI(\slv_reg5_reg[15]_i_4_n_0 ),
        .CO({\slv_reg5_reg[19]_i_3_n_0 ,\slv_reg5_reg[19]_i_3_n_1 ,\slv_reg5_reg[19]_i_3_n_2 ,\slv_reg5_reg[19]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray2[31] [19:16]),
        .O({\slv_reg5_reg[19]_i_3_n_4 ,\slv_reg5_reg[19]_i_3_n_5 ,\slv_reg5_reg[19]_i_3_n_6 ,\slv_reg5_reg[19]_i_3_n_7 }),
        .S({\slv_reg5[19]_i_8_n_0 ,\slv_reg5[19]_i_9_n_0 ,\slv_reg5[19]_i_10_n_0 ,\slv_reg5[19]_i_11_n_0 }));
  FDRE \slv_reg5_reg[1] 
       (.C(aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[1]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[1] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[20] 
       (.C(aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[20]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[20] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[21] 
       (.C(aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[21]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[21] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[22] 
       (.C(aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[22]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[22] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[23] 
       (.C(aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(\slv_reg5[23]_i_2_n_0 ),
        .Q(\slv_reg5_reg_n_0_[23] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  CARRY4 \slv_reg5_reg[23]_i_3 
       (.CI(\slv_reg5_reg[19]_i_2_n_0 ),
        .CO({\slv_reg5_reg[23]_i_3_n_0 ,\slv_reg5_reg[23]_i_3_n_1 ,\slv_reg5_reg[23]_i_3_n_2 ,\slv_reg5_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray1[31] [23:20]),
        .O(slv_reg50[23:20]),
        .S({\slv_reg5[23]_i_5_n_0 ,\slv_reg5[23]_i_6_n_0 ,\slv_reg5[23]_i_7_n_0 ,\slv_reg5[23]_i_8_n_0 }));
  CARRY4 \slv_reg5_reg[23]_i_4 
       (.CI(\slv_reg5_reg[19]_i_3_n_0 ),
        .CO({\slv_reg5_reg[23]_i_4_n_0 ,\slv_reg5_reg[23]_i_4_n_1 ,\slv_reg5_reg[23]_i_4_n_2 ,\slv_reg5_reg[23]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray2[31] [23:20]),
        .O({\slv_reg5_reg[23]_i_4_n_4 ,\slv_reg5_reg[23]_i_4_n_5 ,\slv_reg5_reg[23]_i_4_n_6 ,\slv_reg5_reg[23]_i_4_n_7 }),
        .S({\slv_reg5[23]_i_9_n_0 ,\slv_reg5[23]_i_10_n_0 ,\slv_reg5[23]_i_11_n_0 ,\slv_reg5[23]_i_12_n_0 }));
  FDRE \slv_reg5_reg[24] 
       (.C(aclk),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(\slv_reg5[24]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[24] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[25] 
       (.C(aclk),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(\slv_reg5[25]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[25] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[26] 
       (.C(aclk),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(\slv_reg5[26]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[26] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[27] 
       (.C(aclk),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(\slv_reg5[27]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[27] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  CARRY4 \slv_reg5_reg[27]_i_2 
       (.CI(\slv_reg5_reg[23]_i_3_n_0 ),
        .CO({\slv_reg5_reg[27]_i_2_n_0 ,\slv_reg5_reg[27]_i_2_n_1 ,\slv_reg5_reg[27]_i_2_n_2 ,\slv_reg5_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray1[31] [27:24]),
        .O(slv_reg50[27:24]),
        .S({\slv_reg5[27]_i_4_n_0 ,\slv_reg5[27]_i_5_n_0 ,\slv_reg5[27]_i_6_n_0 ,\slv_reg5[27]_i_7_n_0 }));
  CARRY4 \slv_reg5_reg[27]_i_3 
       (.CI(\slv_reg5_reg[23]_i_4_n_0 ),
        .CO({\slv_reg5_reg[27]_i_3_n_0 ,\slv_reg5_reg[27]_i_3_n_1 ,\slv_reg5_reg[27]_i_3_n_2 ,\slv_reg5_reg[27]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray2[31] [27:24]),
        .O({\slv_reg5_reg[27]_i_3_n_4 ,\slv_reg5_reg[27]_i_3_n_5 ,\slv_reg5_reg[27]_i_3_n_6 ,\slv_reg5_reg[27]_i_3_n_7 }),
        .S({\slv_reg5[27]_i_8_n_0 ,\slv_reg5[27]_i_9_n_0 ,\slv_reg5[27]_i_10_n_0 ,\slv_reg5[27]_i_11_n_0 }));
  FDRE \slv_reg5_reg[28] 
       (.C(aclk),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(\slv_reg5[28]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[28] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[29] 
       (.C(aclk),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(\slv_reg5[29]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[29] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[2] 
       (.C(aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[2]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[2] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[30] 
       (.C(aclk),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(\slv_reg5[30]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[30] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[31] 
       (.C(aclk),
        .CE(\slv_reg5[31]_i_2_n_0 ),
        .D(\slv_reg5[31]_i_3_n_0 ),
        .Q(\slv_reg5_reg_n_0_[31] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  CARRY4 \slv_reg5_reg[31]_i_13 
       (.CI(\slv_reg5_reg[31]_i_26_n_0 ),
        .CO({\slv_reg5_reg[31]_i_13_n_0 ,\slv_reg5_reg[31]_i_13_n_1 ,\slv_reg5_reg[31]_i_13_n_2 ,\slv_reg5_reg[31]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg5[31]_i_27_n_0 ,\slv_reg5[31]_i_28_n_0 ,\slv_reg5[31]_i_29_n_0 ,\slv_reg5[31]_i_30_n_0 }),
        .O(\NLW_slv_reg5_reg[31]_i_13_O_UNCONNECTED [3:0]),
        .S({\slv_reg5[31]_i_31_n_0 ,\slv_reg5[31]_i_32_n_0 ,\slv_reg5[31]_i_33_n_0 ,\slv_reg5[31]_i_34_n_0 }));
  CARRY4 \slv_reg5_reg[31]_i_26 
       (.CI(\slv_reg5_reg[31]_i_35_n_0 ),
        .CO({\slv_reg5_reg[31]_i_26_n_0 ,\slv_reg5_reg[31]_i_26_n_1 ,\slv_reg5_reg[31]_i_26_n_2 ,\slv_reg5_reg[31]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg5[31]_i_36_n_0 ,\slv_reg5[31]_i_37_n_0 ,\slv_reg5[31]_i_38_n_0 ,\slv_reg5[31]_i_39_n_0 }),
        .O(\NLW_slv_reg5_reg[31]_i_26_O_UNCONNECTED [3:0]),
        .S({\slv_reg5[31]_i_40_n_0 ,\slv_reg5[31]_i_41_n_0 ,\slv_reg5[31]_i_42_n_0 ,\slv_reg5[31]_i_43_n_0 }));
  CARRY4 \slv_reg5_reg[31]_i_35 
       (.CI(1'b0),
        .CO({\slv_reg5_reg[31]_i_35_n_0 ,\slv_reg5_reg[31]_i_35_n_1 ,\slv_reg5_reg[31]_i_35_n_2 ,\slv_reg5_reg[31]_i_35_n_3 }),
        .CYINIT(1'b1),
        .DI({\slv_reg5[31]_i_44_n_0 ,\slv_reg5[31]_i_45_n_0 ,\slv_reg5[31]_i_46_n_0 ,\slv_reg5[31]_i_47_n_0 }),
        .O(\NLW_slv_reg5_reg[31]_i_35_O_UNCONNECTED [3:0]),
        .S({\slv_reg5[31]_i_48_n_0 ,\slv_reg5[31]_i_49_n_0 ,\slv_reg5[31]_i_50_n_0 ,\slv_reg5[31]_i_51_n_0 }));
  CARRY4 \slv_reg5_reg[31]_i_6 
       (.CI(\slv_reg5_reg[27]_i_2_n_0 ),
        .CO({\NLW_slv_reg5_reg[31]_i_6_CO_UNCONNECTED [3],\slv_reg5_reg[31]_i_6_n_1 ,\slv_reg5_reg[31]_i_6_n_2 ,\slv_reg5_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\gray1[31] [30:28]}),
        .O(slv_reg50[31:28]),
        .S({\slv_reg5[31]_i_9_n_0 ,\slv_reg5[31]_i_10_n_0 ,\slv_reg5[31]_i_11_n_0 ,\slv_reg5[31]_i_12_n_0 }));
  CARRY4 \slv_reg5_reg[31]_i_7 
       (.CI(\slv_reg5_reg[31]_i_13_n_0 ),
        .CO({\slv_reg5_reg[31]_i_7_n_0 ,\slv_reg5_reg[31]_i_7_n_1 ,\slv_reg5_reg[31]_i_7_n_2 ,\slv_reg5_reg[31]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg5[31]_i_14_n_0 ,\slv_reg5[31]_i_15_n_0 ,\slv_reg5[31]_i_16_n_0 ,\slv_reg5[31]_i_17_n_0 }),
        .O(\NLW_slv_reg5_reg[31]_i_7_O_UNCONNECTED [3:0]),
        .S({\slv_reg5[31]_i_18_n_0 ,\slv_reg5[31]_i_19_n_0 ,\slv_reg5[31]_i_20_n_0 ,\slv_reg5[31]_i_21_n_0 }));
  CARRY4 \slv_reg5_reg[31]_i_8 
       (.CI(\slv_reg5_reg[27]_i_3_n_0 ),
        .CO({\NLW_slv_reg5_reg[31]_i_8_CO_UNCONNECTED [3],\slv_reg5_reg[31]_i_8_n_1 ,\slv_reg5_reg[31]_i_8_n_2 ,\slv_reg5_reg[31]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\gray2[31] [30:28]}),
        .O({\slv_reg5_reg[31]_i_8_n_4 ,\slv_reg5_reg[31]_i_8_n_5 ,\slv_reg5_reg[31]_i_8_n_6 ,\slv_reg5_reg[31]_i_8_n_7 }),
        .S({\slv_reg5[31]_i_22_n_0 ,\slv_reg5[31]_i_23_n_0 ,\slv_reg5[31]_i_24_n_0 ,\slv_reg5[31]_i_25_n_0 }));
  FDRE \slv_reg5_reg[3] 
       (.C(aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[3]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[3] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  CARRY4 \slv_reg5_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\slv_reg5_reg[3]_i_2_n_0 ,\slv_reg5_reg[3]_i_2_n_1 ,\slv_reg5_reg[3]_i_2_n_2 ,\slv_reg5_reg[3]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI(\gray1[31] [3:0]),
        .O(slv_reg50[3:0]),
        .S({\slv_reg5[3]_i_4_n_0 ,\slv_reg5[3]_i_5_n_0 ,\slv_reg5[3]_i_6_n_0 ,\slv_reg5[3]_i_7_n_0 }));
  CARRY4 \slv_reg5_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\slv_reg5_reg[3]_i_3_n_0 ,\slv_reg5_reg[3]_i_3_n_1 ,\slv_reg5_reg[3]_i_3_n_2 ,\slv_reg5_reg[3]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI(\gray2[31] [3:0]),
        .O({\slv_reg5_reg[3]_i_3_n_4 ,\slv_reg5_reg[3]_i_3_n_5 ,\slv_reg5_reg[3]_i_3_n_6 ,\slv_reg5_reg[3]_i_3_n_7 }),
        .S({\slv_reg5[3]_i_8_n_0 ,\slv_reg5[3]_i_9_n_0 ,\slv_reg5[3]_i_10_n_0 ,\slv_reg5[3]_i_11_n_0 }));
  FDRE \slv_reg5_reg[4] 
       (.C(aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[4]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[4] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[5] 
       (.C(aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[5]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[5] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[6] 
       (.C(aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[6]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[6] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[7] 
       (.C(aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(\slv_reg5[7]_i_2_n_0 ),
        .Q(\slv_reg5_reg_n_0_[7] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  CARRY4 \slv_reg5_reg[7]_i_3 
       (.CI(\slv_reg5_reg[3]_i_2_n_0 ),
        .CO({\slv_reg5_reg[7]_i_3_n_0 ,\slv_reg5_reg[7]_i_3_n_1 ,\slv_reg5_reg[7]_i_3_n_2 ,\slv_reg5_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray1[31] [7:4]),
        .O(slv_reg50[7:4]),
        .S({\slv_reg5[7]_i_5_n_0 ,\slv_reg5[7]_i_6_n_0 ,\slv_reg5[7]_i_7_n_0 ,\slv_reg5[7]_i_8_n_0 }));
  CARRY4 \slv_reg5_reg[7]_i_4 
       (.CI(\slv_reg5_reg[3]_i_3_n_0 ),
        .CO({\slv_reg5_reg[7]_i_4_n_0 ,\slv_reg5_reg[7]_i_4_n_1 ,\slv_reg5_reg[7]_i_4_n_2 ,\slv_reg5_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(\gray2[31] [7:4]),
        .O({\slv_reg5_reg[7]_i_4_n_4 ,\slv_reg5_reg[7]_i_4_n_5 ,\slv_reg5_reg[7]_i_4_n_6 ,\slv_reg5_reg[7]_i_4_n_7 }),
        .S({\slv_reg5[7]_i_9_n_0 ,\slv_reg5[7]_i_10_n_0 ,\slv_reg5[7]_i_11_n_0 ,\slv_reg5[7]_i_12_n_0 }));
  FDRE \slv_reg5_reg[8] 
       (.C(aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[8]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[8] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[9] 
       (.C(aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(\slv_reg5[9]_i_1_n_0 ),
        .Q(\slv_reg5_reg_n_0_[9] ),
        .R(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \slv_reg6[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[0]),
        .O(\slv_reg6[1]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(motion_detected),
        .Q(slv_reg6[0]),
        .R(1'b0));
  FDRE \slv_reg6_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\slv_reg6[1]_i_1_n_0 ),
        .Q(slv_reg6[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \slv_reg7[15]_i_1 
       (.I0(S_AXI_WSTRB[1]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(slv_reg7[15]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \slv_reg7[23]_i_1 
       (.I0(S_AXI_WSTRB[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(slv_reg7[23]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \slv_reg7[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(slv_reg_wren),
        .I2(S_AXI_WSTRB[3]),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(slv_reg7[31]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \slv_reg7[7]_i_1 
       (.I0(S_AXI_WSTRB[0]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(slv_reg_wren),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(slv_reg7[7]));
  FDRE \slv_reg7_reg[0] 
       (.C(aclk),
        .CE(slv_reg7[7]),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg7_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(aclk),
        .CE(slv_reg7[15]),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg7_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(aclk),
        .CE(slv_reg7[15]),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg7_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(aclk),
        .CE(slv_reg7[15]),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg7_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(aclk),
        .CE(slv_reg7[15]),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg7_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(aclk),
        .CE(slv_reg7[15]),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg7_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(aclk),
        .CE(slv_reg7[15]),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg7_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(aclk),
        .CE(slv_reg7[23]),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg7_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(aclk),
        .CE(slv_reg7[23]),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg7_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(aclk),
        .CE(slv_reg7[23]),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg7_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(aclk),
        .CE(slv_reg7[23]),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg7_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(aclk),
        .CE(slv_reg7[7]),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg7_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(aclk),
        .CE(slv_reg7[23]),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg7_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(aclk),
        .CE(slv_reg7[23]),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg7_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(aclk),
        .CE(slv_reg7[23]),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg7_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(aclk),
        .CE(slv_reg7[23]),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg7_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(aclk),
        .CE(slv_reg7[31]),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg7_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(aclk),
        .CE(slv_reg7[31]),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg7_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(aclk),
        .CE(slv_reg7[31]),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg7_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(aclk),
        .CE(slv_reg7[31]),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg7_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(aclk),
        .CE(slv_reg7[31]),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg7_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(aclk),
        .CE(slv_reg7[31]),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg7_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(aclk),
        .CE(slv_reg7[7]),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg7_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(aclk),
        .CE(slv_reg7[31]),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg7_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(aclk),
        .CE(slv_reg7[31]),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg7_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(aclk),
        .CE(slv_reg7[7]),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg7_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(aclk),
        .CE(slv_reg7[7]),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg7_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(aclk),
        .CE(slv_reg7[7]),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg7_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(aclk),
        .CE(slv_reg7[7]),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg7_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(aclk),
        .CE(slv_reg7[7]),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg7_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(aclk),
        .CE(slv_reg7[15]),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg7_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(aclk),
        .CE(slv_reg7[15]),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg7_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \slv_reg8[15]_i_1 
       (.I0(p_0_in[0]),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(slv_reg_wren),
        .I5(p_0_in[3]),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \slv_reg8[23]_i_1 
       (.I0(p_0_in[0]),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(slv_reg_wren),
        .I5(p_0_in[3]),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \slv_reg8[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(slv_reg_wren),
        .I5(p_0_in[3]),
        .O(\slv_reg8[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \slv_reg8[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(slv_reg_wren),
        .I5(p_0_in[3]),
        .O(\slv_reg8[7]_i_1_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg8_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[10] 
       (.C(aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg8_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[11] 
       (.C(aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg8_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[12] 
       (.C(aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg8_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[13] 
       (.C(aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg8_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[14] 
       (.C(aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg8_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[15] 
       (.C(aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg8_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[16] 
       (.C(aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg8_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[17] 
       (.C(aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg8_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[18] 
       (.C(aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg8_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[19] 
       (.C(aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg8_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[1] 
       (.C(aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg8_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[20] 
       (.C(aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg8_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[21] 
       (.C(aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg8_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[22] 
       (.C(aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg8_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[23] 
       (.C(aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg8_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[24] 
       (.C(aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg8_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[25] 
       (.C(aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg8_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[26] 
       (.C(aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg8_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[27] 
       (.C(aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg8_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[28] 
       (.C(aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg8_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[29] 
       (.C(aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg8_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[2] 
       (.C(aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg8_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[30] 
       (.C(aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg8_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[31] 
       (.C(aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg8_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[3] 
       (.C(aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg8_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[4] 
       (.C(aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg8_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[5] 
       (.C(aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg8_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[6] 
       (.C(aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg8_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[7] 
       (.C(aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg8_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[8] 
       (.C(aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg8_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg8_reg[9] 
       (.C(aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg8_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \slv_reg9[15]_i_1 
       (.I0(p_0_in[0]),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(slv_reg_wren),
        .I5(p_0_in[3]),
        .O(slv_reg9[15]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \slv_reg9[23]_i_1 
       (.I0(p_0_in[0]),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(slv_reg_wren),
        .I5(p_0_in[3]),
        .O(slv_reg9[23]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \slv_reg9[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(slv_reg_wren),
        .I5(p_0_in[3]),
        .O(slv_reg9[31]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \slv_reg9[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(slv_reg_wren),
        .I5(p_0_in[3]),
        .O(slv_reg9[7]));
  FDRE \slv_reg9_reg[0] 
       (.C(aclk),
        .CE(slv_reg9[7]),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg9_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[10] 
       (.C(aclk),
        .CE(slv_reg9[15]),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg9_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[11] 
       (.C(aclk),
        .CE(slv_reg9[15]),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg9_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[12] 
       (.C(aclk),
        .CE(slv_reg9[15]),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg9_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[13] 
       (.C(aclk),
        .CE(slv_reg9[15]),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg9_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[14] 
       (.C(aclk),
        .CE(slv_reg9[15]),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg9_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[15] 
       (.C(aclk),
        .CE(slv_reg9[15]),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg9_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[16] 
       (.C(aclk),
        .CE(slv_reg9[23]),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg9_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[17] 
       (.C(aclk),
        .CE(slv_reg9[23]),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg9_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[18] 
       (.C(aclk),
        .CE(slv_reg9[23]),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg9_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[19] 
       (.C(aclk),
        .CE(slv_reg9[23]),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg9_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[1] 
       (.C(aclk),
        .CE(slv_reg9[7]),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg9_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[20] 
       (.C(aclk),
        .CE(slv_reg9[23]),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg9_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[21] 
       (.C(aclk),
        .CE(slv_reg9[23]),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg9_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[22] 
       (.C(aclk),
        .CE(slv_reg9[23]),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg9_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[23] 
       (.C(aclk),
        .CE(slv_reg9[23]),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg9_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[24] 
       (.C(aclk),
        .CE(slv_reg9[31]),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg9_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[25] 
       (.C(aclk),
        .CE(slv_reg9[31]),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg9_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[26] 
       (.C(aclk),
        .CE(slv_reg9[31]),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg9_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[27] 
       (.C(aclk),
        .CE(slv_reg9[31]),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg9_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[28] 
       (.C(aclk),
        .CE(slv_reg9[31]),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg9_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[29] 
       (.C(aclk),
        .CE(slv_reg9[31]),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg9_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[2] 
       (.C(aclk),
        .CE(slv_reg9[7]),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg9_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[30] 
       (.C(aclk),
        .CE(slv_reg9[31]),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg9_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[31] 
       (.C(aclk),
        .CE(slv_reg9[31]),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg9_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[3] 
       (.C(aclk),
        .CE(slv_reg9[7]),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg9_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[4] 
       (.C(aclk),
        .CE(slv_reg9[7]),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg9_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[5] 
       (.C(aclk),
        .CE(slv_reg9[7]),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg9_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[6] 
       (.C(aclk),
        .CE(slv_reg9[7]),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg9_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[7] 
       (.C(aclk),
        .CE(slv_reg9[7]),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg9_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[8] 
       (.C(aclk),
        .CE(slv_reg9[15]),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg9_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg9_reg[9] 
       (.C(aclk),
        .CE(slv_reg9[15]),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg9_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \small_column_count[0]_i_1 
       (.I0(\small_column_count_reg_n_0_[0] ),
        .O(\small_column_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \small_column_count[1]_i_1 
       (.I0(\small_column_count_reg_n_0_[0] ),
        .I1(\small_column_count_reg_n_0_[1] ),
        .O(\small_column_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \small_column_count[2]_i_1 
       (.I0(\small_column_count_reg_n_0_[2] ),
        .I1(\small_column_count_reg_n_0_[1] ),
        .I2(\small_column_count_reg_n_0_[0] ),
        .O(\small_column_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80008000C000FFFF)) 
    \small_column_count[3]_i_1 
       (.I0(S_AXI_TVALID),
        .I1(\small_column_count_reg_n_0_[1] ),
        .I2(\small_column_count_reg_n_0_[3] ),
        .I3(\small_column_count_reg_n_0_[2] ),
        .I4(pixel_word_count1),
        .I5(S_AXI_TREADY),
        .O(\small_column_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEB)) 
    \small_column_count[3]_i_2 
       (.I0(S_AXI_TVALID),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\small_column_count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \small_column_count[3]_i_3 
       (.I0(\small_column_count_reg_n_0_[3] ),
        .I1(\small_column_count_reg_n_0_[0] ),
        .I2(\small_column_count_reg_n_0_[1] ),
        .I3(\small_column_count_reg_n_0_[2] ),
        .O(\small_column_count[3]_i_3_n_0 ));
  FDRE \small_column_count_reg[0] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\small_column_count[0]_i_1_n_0 ),
        .Q(\small_column_count_reg_n_0_[0] ),
        .R(\small_column_count[3]_i_1_n_0 ));
  FDRE \small_column_count_reg[1] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\small_column_count[1]_i_1_n_0 ),
        .Q(\small_column_count_reg_n_0_[1] ),
        .R(\small_column_count[3]_i_1_n_0 ));
  FDRE \small_column_count_reg[2] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\small_column_count[2]_i_1_n_0 ),
        .Q(\small_column_count_reg_n_0_[2] ),
        .R(\small_column_count[3]_i_1_n_0 ));
  FDRE \small_column_count_reg[3] 
       (.C(aclk),
        .CE(\small_column_count[3]_i_2_n_0 ),
        .D(\small_column_count[3]_i_3_n_0 ),
        .Q(\small_column_count_reg_n_0_[3] ),
        .R(\small_column_count[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \small_row_count[0]_i_1 
       (.I0(\small_row_count_reg_n_0_[0] ),
        .O(\small_row_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \small_row_count[1]_i_1 
       (.I0(\small_row_count_reg_n_0_[0] ),
        .I1(\small_row_count_reg_n_0_[1] ),
        .O(\small_row_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \small_row_count[2]_i_1 
       (.I0(\small_row_count_reg_n_0_[2] ),
        .I1(\small_row_count_reg_n_0_[1] ),
        .I2(\small_row_count_reg_n_0_[0] ),
        .O(\small_row_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \small_row_count[3]_i_1 
       (.I0(\small_row_count_reg_n_0_[3] ),
        .I1(\small_row_count_reg_n_0_[2] ),
        .I2(\small_row_count_reg_n_0_[0] ),
        .I3(\small_row_count_reg_n_0_[1] ),
        .O(\small_row_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888088808880AAAA)) 
    \small_row_count[4]_i_1 
       (.I0(\small_row_count[4]_i_2_n_0 ),
        .I1(\small_row_count_reg_n_0_[4] ),
        .I2(\small_row_count_reg_n_0_[3] ),
        .I3(\small_row_count_reg_n_0_[2] ),
        .I4(pixel_word_count1),
        .I5(S_AXI_TREADY),
        .O(\small_row_count[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h808080AA)) 
    \small_row_count[4]_i_2 
       (.I0(\column_count[4]_i_1_n_0 ),
        .I1(\small_row_count[4]_i_4_n_0 ),
        .I2(\column_count_reg_n_0_[4] ),
        .I3(pixel_word_count1),
        .I4(S_AXI_TREADY),
        .O(\small_row_count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hC00080AA)) 
    \small_row_count[4]_i_3 
       (.I0(\small_row_count_reg_n_0_[4] ),
        .I1(\small_row_count_reg_n_0_[1] ),
        .I2(\small_row_count_reg_n_0_[0] ),
        .I3(\small_row_count_reg_n_0_[2] ),
        .I4(\small_row_count_reg_n_0_[3] ),
        .O(\small_row_count[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \small_row_count[4]_i_4 
       (.I0(\column_count_reg_n_0_[0] ),
        .I1(\column_count_reg_n_0_[3] ),
        .I2(\column_count_reg_n_0_[2] ),
        .I3(\column_count_reg_n_0_[1] ),
        .O(\small_row_count[4]_i_4_n_0 ));
  FDRE \small_row_count_reg[0] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_2_n_0 ),
        .D(\small_row_count[0]_i_1_n_0 ),
        .Q(\small_row_count_reg_n_0_[0] ),
        .R(\small_row_count[4]_i_1_n_0 ));
  FDRE \small_row_count_reg[1] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_2_n_0 ),
        .D(\small_row_count[1]_i_1_n_0 ),
        .Q(\small_row_count_reg_n_0_[1] ),
        .R(\small_row_count[4]_i_1_n_0 ));
  FDRE \small_row_count_reg[2] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_2_n_0 ),
        .D(\small_row_count[2]_i_1_n_0 ),
        .Q(\small_row_count_reg_n_0_[2] ),
        .R(\small_row_count[4]_i_1_n_0 ));
  FDRE \small_row_count_reg[3] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_2_n_0 ),
        .D(\small_row_count[3]_i_1_n_0 ),
        .Q(\small_row_count_reg_n_0_[3] ),
        .R(\small_row_count[4]_i_1_n_0 ));
  FDRE \small_row_count_reg[4] 
       (.C(aclk),
        .CE(\small_row_count[4]_i_2_n_0 ),
        .D(\small_row_count[4]_i_3_n_0 ),
        .Q(\small_row_count_reg_n_0_[4] ),
        .R(\small_row_count[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    start1_i_1
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(start1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFEFBEF00001104)) 
    start1_i_2
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(start1),
        .O(start1_i_2_n_0));
  FDRE start1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(start1_i_2_n_0),
        .Q(start1),
        .R(start1_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000022200020)) 
    startClear2_i_1
       (.I0(startClear2_i_2_n_0),
        .I1(startClear),
        .I2(startClear2),
        .I3(startClear2_i_3_n_0),
        .I4(startClear3),
        .I5(start1_i_1_n_0),
        .O(startClear2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFDBFFFB)) 
    startClear2_i_2
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(startClear2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h20103000)) 
    startClear2_i_3
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(startClear2_i_3_n_0));
  FDRE startClear2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(startClear2_i_1_n_0),
        .Q(startClear2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000A220022)) 
    startClear3_i_1
       (.I0(startClear3_i_2_n_0),
        .I1(Q[0]),
        .I2(\slv_reg6[1]_i_1_n_0 ),
        .I3(startClear3_i_3_n_0),
        .I4(startClear3_reg_n_0),
        .I5(startClear3_i_4_n_0),
        .O(startClear3_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FDFFF3FF)) 
    startClear3_i_2
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(start1_i_1_n_0),
        .O(startClear3_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    startClear3_i_3
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(startClear3_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    startClear3_i_4
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(startClear3_i_4_n_0));
  FDRE startClear3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(startClear3_i_1_n_0),
        .Q(startClear3_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000022002220)) 
    startClear4_i_1
       (.I0(startClear3_i_2_n_0),
        .I1(startClear3_i_4_n_0),
        .I2(startClear4_reg_n_0),
        .I3(\clearDelay4[0]_i_1_n_0 ),
        .I4(\slv_reg6[1]_i_1_n_0 ),
        .I5(\clearDelay3[0]_i_1_n_0 ),
        .O(startClear4_i_1_n_0));
  FDRE startClear4_reg
       (.C(aclk),
        .CE(1'b1),
        .D(startClear4_i_1_n_0),
        .Q(startClear4_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFEBCFFB02000000)) 
    startClear_i_1
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(startClear_reg_n_0),
        .O(startClear_i_1_n_0));
  FDRE startClear_reg
       (.C(aclk),
        .CE(1'b1),
        .D(startClear_i_1_n_0),
        .Q(startClear_reg_n_0),
        .R(start1_i_1_n_0));
  LUT6 #(
    .INIT(64'h4051440400110004)) 
    \transfer_length_offset[3]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\transfer_length_offset_reg_n_0_[3] ),
        .O(\transfer_length_offset[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4051440000110000)) 
    \transfer_length_offset[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\transfer_length_offset_reg_n_0_[5] ),
        .O(\transfer_length_offset[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040440400000004)) 
    \transfer_length_offset[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\transfer_length_offset_reg_n_0_[6] ),
        .O(\transfer_length_offset[6]_i_1_n_0 ));
  FDRE \transfer_length_offset_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\transfer_length_offset[3]_i_1_n_0 ),
        .Q(\transfer_length_offset_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \transfer_length_offset_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\transfer_length_offset[5]_i_1_n_0 ),
        .Q(\transfer_length_offset_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \transfer_length_offset_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\transfer_length_offset[6]_i_1_n_0 ),
        .Q(\transfer_length_offset_reg_n_0_[6] ),
        .R(1'b0));
  hdmi_motion_detection_0_0_write_DMA write_1
       (.D({write_1_n_9,write_1_n_10,write_1_n_11,write_1_n_12,write_1_n_13,write_1_n_14,write_1_n_15,write_1_n_16,write_1_n_17,write_1_n_18,write_1_n_19,write_1_n_20,write_1_n_21,write_1_n_22,write_1_n_23,write_1_n_24,write_1_n_25,write_1_n_26,write_1_n_27,write_1_n_28,write_1_n_29,write_1_n_30,write_1_n_31,write_1_n_32,write_1_n_33,write_1_n_34,write_1_n_35,write_1_n_36,write_1_n_37,write_1_n_38,write_1_n_39,write_1_n_40}),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_AWVALID_reg(write_1_n_42),
        .M_AXI_BREADY_reg(write_1_n_8),
        .M_AXI_BREADY_reg_0(write_1_n_49),
        .M_AXI_BVALID(M_AXI_BVALID),
        .\M_AXI_WDATA_reg[12] (write_1_n_44),
        .\M_AXI_WDATA_reg[17] (write_1_n_45),
        .\M_AXI_WDATA_reg[18] (write_1_n_46),
        .\M_AXI_WDATA_reg[19] (write_1_n_47),
        .\M_AXI_WDATA_reg[2] (write_1_n_41),
        .\M_AXI_WDATA_reg[31] (write_1_n_5),
        .\M_AXI_WDATA_reg[31]_0 (write_1_n_6),
        .M_AXI_WREADY(M_AXI_WREADY),
        .\M_AXI_WSTRB_reg[3] (write_1_n_43),
        .M_AXI_WVALID_reg(write_1_n_48),
        .Q(Q),
        .aclk(aclk),
        .addr0(addr0[31:4]),
        .addr02_out(addr02_out),
        .aresetn(aresetn),
        .clear_awvalid(clear_awvalid),
        .clear_bready(clear_bready),
        .clear_wvalid(clear_wvalid),
        .\dma_init_reg[31] (w1_addr),
        .m_awvalid_reg_0(write_1_n_50),
        .m_awvalid_reg_1(m_handshake1_i_1__5_n_0),
        .m_awvalid_reg_2(write_clear4_n_7),
        .m_handshake1(m_handshake1),
        .m_handshake1_1(m_handshake1_1),
        .m_handshake1_reg_0(start3),
        .m_handshake2(m_handshake2),
        .m_handshake2_0(m_handshake2_0),
        .m_handshake2_reg_0(m_handshake2_i_1__5_n_0),
        .m_handshake3(m_handshake3),
        .m_handshake3_reg_0(m_handshake3_i_1__5_n_0),
        .m_handshake3_reg_1(write_2_n_5),
        .\slv_reg2_reg[3] (dma_base[3:0]),
        .\slv_reg8_reg[12] (\M_AXI_WDATA[12]_i_2_n_0 ),
        .\slv_reg8_reg[17] (\M_AXI_WDATA[17]_i_2_n_0 ),
        .\slv_reg8_reg[18] (\M_AXI_WDATA[18]_i_2_n_0 ),
        .\slv_reg8_reg[19] (\M_AXI_WDATA[19]_i_2_n_0 ),
        .\slv_reg8_reg[2] (\M_AXI_WDATA[2]_i_5_n_0 ),
        .start1_reg(start1),
        .start2(start2),
        .startClear2(startClear2),
        .startClear3_reg(startClear3_reg_n_0),
        .startClear4_reg(startClear4_reg_n_0),
        .startClear_reg(startClear_reg_n_0),
        .\transfer_length_offset_reg[3] (\transfer_length_offset_reg_n_0_[3] ),
        .w1_awvalid(w1_awvalid),
        .w1_bready(w1_bready),
        .w1_wvalid(w1_wvalid),
        .w2_awvalid(w2_awvalid),
        .w2_bready(w2_bready),
        .w2_wvalid(w2_wvalid),
        .w3_awvalid(w3_awvalid));
  hdmi_motion_detection_0_0_write_DMA_0 write_2
       (.D(write_2_n_6),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WREADY(M_AXI_WREADY),
        .Q({Q[4],Q[2]}),
        .aclk(aclk),
        .\currentState_reg[0] (write_1_n_50),
        .m_awvalid_reg_0(m_handshake1_i_1__4_n_0),
        .m_bready_reg_0(write_2_n_5),
        .m_handshake1(m_handshake1_1),
        .m_handshake1_reg_0(start2),
        .m_handshake2(m_handshake2_0),
        .m_handshake2_reg_0(m_handshake2_i_1__4_n_0),
        .m_handshake3_reg_0(m_handshake3_i_1__4_n_0),
        .\slv_reg8_reg[0] (\M_AXI_WDATA[0]_i_2_n_0 ),
        .start1_reg(start1),
        .start3(start3),
        .w2_awvalid(w2_awvalid),
        .w2_bready(w2_bready),
        .w2_wvalid(w2_wvalid));
  hdmi_motion_detection_0_0_write_DMA_1 write_3
       (.CO(nextState1),
        .D(write_3_n_6),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_BREADY_reg(write_3_n_10),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WVALID_reg(write_3_n_9),
        .Q(Q),
        .aclk(aclk),
        .clear_bready4(clear_bready4),
        .\currentState_reg[0] (write_1_n_50),
        .\currentState_reg[1] (write_3_n_11),
        .\currentState_reg[1]_0 (\nextState_reg[3]_i_5_n_0 ),
        .\currentState_reg[2] (write_3_n_8),
        .\currentState_reg[2]_0 (\nextState_reg[0]_i_5_n_0 ),
        .\currentState_reg[3] (\nextState_reg[0]_i_3_n_0 ),
        .\currentState_reg[3]_0 (write_clear3_n_9),
        .done(done),
        .finish_send_reg(\nextState_reg[1]_i_6_n_0 ),
        .m_awvalid_reg_0(m_handshake1_i_1__3_n_0),
        .m_bready_reg_0(write_3_n_5),
        .m_bready_reg_1(write_1_n_49),
        .m_bready_reg_2(write_clear3_n_11),
        .m_handshake1(m_handshake1_3),
        .m_handshake1_reg_0(start3),
        .m_handshake2(m_handshake2_2),
        .m_handshake2_reg_0(m_handshake2_i_1__3_n_0),
        .m_handshake3_reg_0(m_handshake3_i_1__3_n_0),
        .m_wvalid_reg_0(write_1_n_48),
        .m_wvalid_reg_1(write_clear4_n_4),
        .m_wvalid_reg_2(write_clear3_n_12),
        .\overlayDelayCounter_reg[4] (\nextState_reg[0]_i_7_n_0 ),
        .receive_1_reg(motion_detected),
        .receive_1_reg_0(finish_read1),
        .receive_2_reg(finish_read2),
        .\slv_reg3_reg[0] (\slv_reg3_reg_n_0_[0] ),
        .\slv_reg3_reg[2] (\nextState_reg[2]_i_10_n_0 ),
        .startClear2_reg(M_AXI_WVALID_i_3_n_0),
        .w3_awvalid(w3_awvalid),
        .w3_bready(w3_bready),
        .w3_wvalid(w3_wvalid));
  hdmi_motion_detection_0_0_write_DMA_2 write_clear
       (.D(write_clear_n_6),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WREADY(M_AXI_WREADY),
        .Q(Q[2]),
        .aclk(aclk),
        .\clearDelay_reg[10] (\nextState_reg[1]_i_5_n_0 ),
        .\clearDelay_reg[18] (\nextState_reg[1]_i_4_n_0 ),
        .clear_awvalid(clear_awvalid),
        .clear_bready(clear_bready),
        .clear_wvalid(clear_wvalid),
        .\currentState_reg[0] (write_1_n_50),
        .\currentState_reg[1] (write_clear_n_7),
        .\currentState_reg[2] (write_clear3_n_8),
        .\currentState_reg[4] (write_3_n_11),
        .m_awvalid_reg_0(m_handshake1_i_1__2_n_0),
        .m_bready_reg_0(write_clear_n_5),
        .m_handshake1(m_handshake1_5),
        .m_handshake2(m_handshake2_4),
        .m_handshake2_reg_0(m_handshake2_i_1__2_n_0),
        .m_handshake3_reg_0(m_handshake3_i_1__2_n_0),
        .startClear_reg(startClear_reg_n_0));
  hdmi_motion_detection_0_0_write_DMA_3 write_clear2
       (.D(write_clear2_n_6),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WREADY(M_AXI_WREADY),
        .Q({Q[4],Q[2:0]}),
        .aclk(aclk),
        .clearDelay2_reg({clearDelay2_reg[31],clearDelay2_reg[29:28],clearDelay2_reg[18],clearDelay2_reg[5],clearDelay2_reg[3],clearDelay2_reg[1]}),
        .\clearDelay2_reg[19] (\nextState_reg[2]_i_8_n_0 ),
        .\clearDelay2_reg[30] (\nextState_reg[2]_i_9_n_0 ),
        .clearDelay2_reg_2_sp_1(\nextState_reg[2]_i_6_n_0 ),
        .clear_awvalid2(clear_awvalid2),
        .clear_bready2(clear_bready2),
        .clear_wvalid2(clear_wvalid2),
        .\currentState_reg[0] (write_clear3_n_10),
        .\currentState_reg[0]_0 (write_1_n_50),
        .\currentState_reg[3] (write_clear2_n_7),
        .\currentState_reg[3]_0 (\nextState_reg[2]_i_3_n_0 ),
        .\currentState_reg[3]_1 (\nextState_reg[2]_i_4_n_0 ),
        .m_awvalid_reg_0(m_handshake1_i_1__1_n_0),
        .m_bready_reg_0(write_clear2_n_5),
        .m_handshake1(m_handshake1_7),
        .m_handshake2(m_handshake2_6),
        .m_handshake2_reg_0(m_handshake2_i_1__1_n_0),
        .m_handshake3_reg_0(m_handshake3_i_1__1_n_0),
        .startClear2(startClear2));
  hdmi_motion_detection_0_0_write_DMA_4 write_clear3
       (.D({write_clear3_n_6,write_clear3_n_7}),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_BREADY_reg(write_clear3_n_11),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WVALID_reg(write_clear3_n_12),
        .Q(Q),
        .aclk(aclk),
        .\clearDelay3_reg[10] (\nextState_reg[4]_i_6_n_0 ),
        .\clearDelay3_reg[18] (\nextState_reg[4]_i_7_n_0 ),
        .clear_awvalid3(clear_awvalid3),
        .clear_bready2(clear_bready2),
        .clear_bready3(clear_bready3),
        .clear_wvalid2(clear_wvalid2),
        .clear_wvalid3(clear_wvalid3),
        .\currentState_reg[0] (write_clear3_n_9),
        .\currentState_reg[0]_0 (write_1_n_50),
        .\currentState_reg[1] (\nextState_reg[3]_i_5_n_0 ),
        .\currentState_reg[2] (write_clear3_n_10),
        .\currentState_reg[2]_0 (write_3_n_8),
        .\currentState_reg[3] (write_clear3_n_8),
        .\currentState_reg[4] (write_clear2_n_7),
        .done(done),
        .m_awvalid_reg_0(m_handshake1_i_1__0_n_0),
        .m_bready_reg_0(write_clear3_n_5),
        .m_handshake1(m_handshake1_9),
        .m_handshake1_reg_0(write_clear4_n_6),
        .m_handshake2(m_handshake2_8),
        .m_handshake2_reg_0(m_handshake2_i_1__0_n_0),
        .m_handshake3_reg_0(m_handshake3_i_1__0_n_0),
        .m_handshake3_reg_1(write_clear_n_7),
        .receive_1_reg(finish_read1),
        .receive_2_reg(\nextState_reg[3]_i_3_n_0 ),
        .startClear2(startClear2),
        .startClear3_reg(startClear3_reg_n_0),
        .startClear_reg(write_1_n_8));
  hdmi_motion_detection_0_0_write_DMA_5 write_clear4
       (.M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_AWVALID_reg(write_clear4_n_7),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WREADY(M_AXI_WREADY),
        .aclk(aclk),
        .\clearDelay4_reg[10] (\nextState_reg[3]_i_11_n_0 ),
        .\clearDelay4_reg[18] (\nextState_reg[3]_i_8_n_0 ),
        .\clearDelay4_reg[26] (\nextState_reg[3]_i_9_n_0 ),
        .\clearDelay4_reg[2] (\nextState_reg[3]_i_10_n_0 ),
        .clear_awvalid2(clear_awvalid2),
        .clear_awvalid3(clear_awvalid3),
        .clear_bready4(clear_bready4),
        .\currentState_reg[0] (write_1_n_50),
        .\currentState_reg[3] (write_clear4_n_6),
        .m_awvalid_reg_0(write_clear4_n_2),
        .m_awvalid_reg_1(m_handshake1_i_1_n_0),
        .m_bready_reg_0(write_clear4_n_5),
        .m_handshake1(m_handshake1_11),
        .m_handshake2(m_handshake2_10),
        .m_handshake2_reg_0(m_handshake2_i_1_n_0),
        .m_handshake3_reg_0(m_handshake3_i_1_n_0),
        .m_wvalid_reg_0(write_clear4_n_4),
        .startClear2(startClear2),
        .startClear3_reg(startClear3_reg_n_0),
        .startClear4_reg(startClear4_reg_n_0));
endmodule

(* ORIG_REF_NAME = "write_DMA" *) 
module hdmi_motion_detection_0_0_write_DMA
   (w1_bready,
    m_handshake1,
    w1_awvalid,
    m_handshake2,
    w1_wvalid,
    \M_AXI_WDATA_reg[31] ,
    \M_AXI_WDATA_reg[31]_0 ,
    start2,
    M_AXI_BREADY_reg,
    D,
    \M_AXI_WDATA_reg[2] ,
    M_AXI_AWVALID_reg,
    \M_AXI_WSTRB_reg[3] ,
    \M_AXI_WDATA_reg[12] ,
    \M_AXI_WDATA_reg[17] ,
    \M_AXI_WDATA_reg[18] ,
    \M_AXI_WDATA_reg[19] ,
    M_AXI_WVALID_reg,
    M_AXI_BREADY_reg_0,
    m_awvalid_reg_0,
    m_handshake3,
    aclk,
    m_awvalid_reg_1,
    m_handshake2_reg_0,
    m_handshake3_reg_0,
    m_handshake1_reg_0,
    Q,
    \slv_reg8_reg[2] ,
    start1_reg,
    startClear_reg,
    addr0,
    addr02_out,
    \dma_init_reg[31] ,
    startClear3_reg,
    startClear2,
    m_awvalid_reg_2,
    w3_awvalid,
    \slv_reg2_reg[3] ,
    \transfer_length_offset_reg[3] ,
    startClear4_reg,
    m_handshake3_reg_1,
    m_handshake2_0,
    m_handshake1_1,
    clear_awvalid,
    w2_awvalid,
    \slv_reg8_reg[12] ,
    \slv_reg8_reg[17] ,
    \slv_reg8_reg[18] ,
    \slv_reg8_reg[19] ,
    clear_wvalid,
    w2_wvalid,
    clear_bready,
    w2_bready,
    aresetn,
    M_AXI_AWREADY,
    M_AXI_WREADY,
    M_AXI_BVALID);
  output w1_bready;
  output m_handshake1;
  output w1_awvalid;
  output m_handshake2;
  output w1_wvalid;
  output \M_AXI_WDATA_reg[31] ;
  output \M_AXI_WDATA_reg[31]_0 ;
  output start2;
  output M_AXI_BREADY_reg;
  output [31:0]D;
  output [0:0]\M_AXI_WDATA_reg[2] ;
  output M_AXI_AWVALID_reg;
  output \M_AXI_WSTRB_reg[3] ;
  output \M_AXI_WDATA_reg[12] ;
  output \M_AXI_WDATA_reg[17] ;
  output \M_AXI_WDATA_reg[18] ;
  output \M_AXI_WDATA_reg[19] ;
  output M_AXI_WVALID_reg;
  output M_AXI_BREADY_reg_0;
  output m_awvalid_reg_0;
  output m_handshake3;
  input aclk;
  input m_awvalid_reg_1;
  input m_handshake2_reg_0;
  input m_handshake3_reg_0;
  input m_handshake1_reg_0;
  input [4:0]Q;
  input \slv_reg8_reg[2] ;
  input start1_reg;
  input startClear_reg;
  input [27:0]addr0;
  input [27:0]addr02_out;
  input [31:0]\dma_init_reg[31] ;
  input startClear3_reg;
  input startClear2;
  input m_awvalid_reg_2;
  input w3_awvalid;
  input [3:0]\slv_reg2_reg[3] ;
  input \transfer_length_offset_reg[3] ;
  input startClear4_reg;
  input m_handshake3_reg_1;
  input m_handshake2_0;
  input m_handshake1_1;
  input clear_awvalid;
  input w2_awvalid;
  input \slv_reg8_reg[12] ;
  input \slv_reg8_reg[17] ;
  input \slv_reg8_reg[18] ;
  input \slv_reg8_reg[19] ;
  input clear_wvalid;
  input w2_wvalid;
  input clear_bready;
  input w2_bready;
  input aresetn;
  input M_AXI_AWREADY;
  input M_AXI_WREADY;
  input M_AXI_BVALID;

  wire [31:0]D;
  wire \M_AXI_AWADDR[31]_i_4_n_0 ;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID_i_3_n_0;
  wire M_AXI_AWVALID_i_4_n_0;
  wire M_AXI_AWVALID_reg;
  wire M_AXI_BREADY_reg;
  wire M_AXI_BREADY_reg_0;
  wire M_AXI_BVALID;
  wire \M_AXI_WDATA[2]_i_2_n_0 ;
  wire \M_AXI_WDATA[2]_i_3_n_0 ;
  wire \M_AXI_WDATA[2]_i_4_n_0 ;
  wire \M_AXI_WDATA_reg[12] ;
  wire \M_AXI_WDATA_reg[17] ;
  wire \M_AXI_WDATA_reg[18] ;
  wire \M_AXI_WDATA_reg[19] ;
  wire [0:0]\M_AXI_WDATA_reg[2] ;
  wire \M_AXI_WDATA_reg[31] ;
  wire \M_AXI_WDATA_reg[31]_0 ;
  wire M_AXI_WREADY;
  wire \M_AXI_WSTRB_reg[3] ;
  wire M_AXI_WVALID_reg;
  wire [4:0]Q;
  wire aclk;
  wire [27:0]addr0;
  wire [27:0]addr02_out;
  wire aresetn;
  wire clear_awvalid;
  wire clear_bready;
  wire clear_wvalid;
  wire [31:0]\dma_init_reg[31] ;
  wire m_awvalid_i_1__5_n_0;
  wire m_awvalid_reg_0;
  wire m_awvalid_reg_1;
  wire m_awvalid_reg_2;
  wire m_bready_i_1__5_n_0;
  wire m_handshake1;
  wire m_handshake1_1;
  wire m_handshake1_reg_0;
  wire m_handshake2;
  wire m_handshake2_0;
  wire m_handshake2_reg_0;
  wire m_handshake3;
  wire m_handshake3_reg_0;
  wire m_handshake3_reg_1;
  wire m_wvalid_i_1__5_n_0;
  wire [3:0]\slv_reg2_reg[3] ;
  wire \slv_reg8_reg[12] ;
  wire \slv_reg8_reg[17] ;
  wire \slv_reg8_reg[18] ;
  wire \slv_reg8_reg[19] ;
  wire \slv_reg8_reg[2] ;
  wire start1_reg;
  wire start2;
  wire startClear2;
  wire startClear3_reg;
  wire startClear4_reg;
  wire startClear_reg;
  wire \transfer_length_offset_reg[3] ;
  wire w1_awvalid;
  wire w1_bready;
  wire w1_wvalid;
  wire w2_awvalid;
  wire w2_bready;
  wire w2_wvalid;
  wire w3_awvalid;

  LUT5 #(
    .INIT(32'hE0FFE0E0)) 
    \M_AXI_AWADDR[0]_i_1 
       (.I0(start2),
        .I1(m_handshake1_reg_0),
        .I2(\slv_reg2_reg[3] [0]),
        .I3(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I4(\dma_init_reg[31] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[10]_i_1 
       (.I0(addr0[6]),
        .I1(start2),
        .I2(addr02_out[6]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \M_AXI_AWADDR[11]_i_1 
       (.I0(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I1(\dma_init_reg[31] [11]),
        .I2(addr02_out[7]),
        .I3(start2),
        .I4(m_handshake1_reg_0),
        .I5(addr0[7]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \M_AXI_AWADDR[12]_i_1 
       (.I0(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I1(\dma_init_reg[31] [12]),
        .I2(addr02_out[8]),
        .I3(start2),
        .I4(m_handshake1_reg_0),
        .I5(addr0[8]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \M_AXI_AWADDR[13]_i_1 
       (.I0(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I1(\dma_init_reg[31] [13]),
        .I2(addr02_out[9]),
        .I3(start2),
        .I4(m_handshake1_reg_0),
        .I5(addr0[9]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \M_AXI_AWADDR[14]_i_1 
       (.I0(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I1(\dma_init_reg[31] [14]),
        .I2(addr02_out[10]),
        .I3(start2),
        .I4(m_handshake1_reg_0),
        .I5(addr0[10]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \M_AXI_AWADDR[15]_i_1 
       (.I0(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I1(\dma_init_reg[31] [15]),
        .I2(addr02_out[11]),
        .I3(start2),
        .I4(m_handshake1_reg_0),
        .I5(addr0[11]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \M_AXI_AWADDR[16]_i_1 
       (.I0(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I1(\dma_init_reg[31] [16]),
        .I2(addr02_out[12]),
        .I3(start2),
        .I4(m_handshake1_reg_0),
        .I5(addr0[12]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[17]_i_1 
       (.I0(addr0[13]),
        .I1(start2),
        .I2(addr02_out[13]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \M_AXI_AWADDR[18]_i_1 
       (.I0(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I1(\dma_init_reg[31] [18]),
        .I2(addr02_out[14]),
        .I3(start2),
        .I4(m_handshake1_reg_0),
        .I5(addr0[14]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[19]_i_1 
       (.I0(addr0[15]),
        .I1(start2),
        .I2(addr02_out[15]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [19]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hE0FFE0E0)) 
    \M_AXI_AWADDR[1]_i_1 
       (.I0(start2),
        .I1(m_handshake1_reg_0),
        .I2(\slv_reg2_reg[3] [1]),
        .I3(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I4(\dma_init_reg[31] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[20]_i_1 
       (.I0(addr0[16]),
        .I1(start2),
        .I2(addr02_out[16]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [20]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[21]_i_1 
       (.I0(addr0[17]),
        .I1(start2),
        .I2(addr02_out[17]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [21]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[22]_i_1 
       (.I0(addr0[18]),
        .I1(start2),
        .I2(addr02_out[18]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \M_AXI_AWADDR[23]_i_1 
       (.I0(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I1(\dma_init_reg[31] [23]),
        .I2(addr02_out[19]),
        .I3(start2),
        .I4(m_handshake1_reg_0),
        .I5(addr0[19]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[24]_i_1 
       (.I0(addr0[20]),
        .I1(start2),
        .I2(addr02_out[20]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [24]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[25]_i_1 
       (.I0(addr0[21]),
        .I1(start2),
        .I2(addr02_out[21]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [25]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[26]_i_1 
       (.I0(addr0[22]),
        .I1(start2),
        .I2(addr02_out[22]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [26]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \M_AXI_AWADDR[27]_i_1 
       (.I0(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I1(\dma_init_reg[31] [27]),
        .I2(addr02_out[23]),
        .I3(start2),
        .I4(m_handshake1_reg_0),
        .I5(addr0[23]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[28]_i_1 
       (.I0(addr0[24]),
        .I1(start2),
        .I2(addr02_out[24]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [28]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[29]_i_1 
       (.I0(addr0[25]),
        .I1(start2),
        .I2(addr02_out[25]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [29]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hE0FFE0E0)) 
    \M_AXI_AWADDR[2]_i_1 
       (.I0(start2),
        .I1(m_handshake1_reg_0),
        .I2(\slv_reg2_reg[3] [2]),
        .I3(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I4(\dma_init_reg[31] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[30]_i_1 
       (.I0(addr0[26]),
        .I1(start2),
        .I2(addr02_out[26]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [30]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[31]_i_1 
       (.I0(addr0[27]),
        .I1(start2),
        .I2(addr02_out[27]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [31]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \M_AXI_AWADDR[31]_i_4 
       (.I0(startClear2),
        .I1(startClear3_reg),
        .I2(startClear4_reg),
        .I3(start1_reg),
        .I4(startClear_reg),
        .I5(\M_AXI_WDATA[2]_i_2_n_0 ),
        .O(\M_AXI_AWADDR[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0EE0FFFF0EE00EE0)) 
    \M_AXI_AWADDR[3]_i_1 
       (.I0(start2),
        .I1(m_handshake1_reg_0),
        .I2(\slv_reg2_reg[3] [3]),
        .I3(\transfer_length_offset_reg[3] ),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \M_AXI_AWADDR[4]_i_1 
       (.I0(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I1(\dma_init_reg[31] [4]),
        .I2(addr02_out[0]),
        .I3(start2),
        .I4(m_handshake1_reg_0),
        .I5(addr0[0]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[5]_i_1 
       (.I0(addr0[1]),
        .I1(start2),
        .I2(addr02_out[1]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[6]_i_1 
       (.I0(addr0[2]),
        .I1(start2),
        .I2(addr02_out[2]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \M_AXI_AWADDR[7]_i_1 
       (.I0(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I1(\dma_init_reg[31] [7]),
        .I2(addr02_out[3]),
        .I3(start2),
        .I4(m_handshake1_reg_0),
        .I5(addr0[3]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[8]_i_1 
       (.I0(addr0[4]),
        .I1(start2),
        .I2(addr02_out[4]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC0AAC0)) 
    \M_AXI_AWADDR[9]_i_1 
       (.I0(addr0[5]),
        .I1(start2),
        .I2(addr02_out[5]),
        .I3(m_handshake1_reg_0),
        .I4(\M_AXI_AWADDR[31]_i_4_n_0 ),
        .I5(\dma_init_reg[31] [9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFFF444F4)) 
    M_AXI_AWVALID_i_1
       (.I0(m_awvalid_reg_2),
        .I1(M_AXI_AWVALID_i_3_n_0),
        .I2(M_AXI_AWVALID_i_4_n_0),
        .I3(m_handshake1_reg_0),
        .I4(w3_awvalid),
        .O(M_AXI_AWVALID_reg));
  LUT6 #(
    .INIT(64'h0000000000001555)) 
    M_AXI_AWVALID_i_3
       (.I0(m_handshake1_reg_0),
        .I1(m_handshake1),
        .I2(m_handshake2),
        .I3(\M_AXI_WDATA_reg[31] ),
        .I4(startClear_reg),
        .I5(start1_reg),
        .O(M_AXI_AWVALID_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF0880000F088)) 
    M_AXI_AWVALID_i_4
       (.I0(startClear_reg),
        .I1(clear_awvalid),
        .I2(w1_awvalid),
        .I3(start1_reg),
        .I4(start2),
        .I5(w2_awvalid),
        .O(M_AXI_AWVALID_i_4_n_0));
  LUT6 #(
    .INIT(64'h30353F3530303F30)) 
    M_AXI_BREADY_i_2
       (.I0(clear_bready),
        .I1(w2_bready),
        .I2(start2),
        .I3(start1_reg),
        .I4(w1_bready),
        .I5(startClear_reg),
        .O(M_AXI_BREADY_reg_0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \M_AXI_WDATA[12]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(m_handshake1),
        .I3(m_handshake2),
        .I4(\M_AXI_WDATA_reg[31] ),
        .I5(\slv_reg8_reg[12] ),
        .O(\M_AXI_WDATA_reg[12] ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \M_AXI_WDATA[17]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(m_handshake1),
        .I3(m_handshake2),
        .I4(\M_AXI_WDATA_reg[31] ),
        .I5(\slv_reg8_reg[17] ),
        .O(\M_AXI_WDATA_reg[17] ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \M_AXI_WDATA[18]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(m_handshake1),
        .I3(m_handshake2),
        .I4(\M_AXI_WDATA_reg[31] ),
        .I5(\slv_reg8_reg[18] ),
        .O(\M_AXI_WDATA_reg[18] ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \M_AXI_WDATA[19]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(m_handshake1),
        .I3(m_handshake2),
        .I4(\M_AXI_WDATA_reg[31] ),
        .I5(\slv_reg8_reg[19] ),
        .O(\M_AXI_WDATA_reg[19] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \M_AXI_WDATA[2]_i_1 
       (.I0(\M_AXI_WDATA[2]_i_2_n_0 ),
        .I1(startClear_reg),
        .I2(start1_reg),
        .I3(startClear3_reg),
        .I4(startClear2),
        .I5(\M_AXI_WDATA[2]_i_3_n_0 ),
        .O(\M_AXI_WDATA_reg[2] ));
  LUT6 #(
    .INIT(64'h007F7F7F7F7F7F7F)) 
    \M_AXI_WDATA[2]_i_2 
       (.I0(\M_AXI_WDATA_reg[31] ),
        .I1(m_handshake2),
        .I2(m_handshake1),
        .I3(m_handshake3_reg_1),
        .I4(m_handshake2_0),
        .I5(m_handshake1_1),
        .O(\M_AXI_WDATA[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0404045504040404)) 
    \M_AXI_WDATA[2]_i_3 
       (.I0(m_handshake1_reg_0),
        .I1(\M_AXI_WDATA[2]_i_4_n_0 ),
        .I2(\slv_reg8_reg[2] ),
        .I3(start2),
        .I4(start1_reg),
        .I5(startClear_reg),
        .O(\M_AXI_WDATA[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \M_AXI_WDATA[2]_i_4 
       (.I0(\M_AXI_WDATA_reg[31] ),
        .I1(m_handshake2),
        .I2(m_handshake1),
        .I3(Q[4]),
        .I4(Q[2]),
        .O(\M_AXI_WDATA[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \M_AXI_WDATA[31]_i_1 
       (.I0(m_handshake1_reg_0),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(m_handshake1),
        .I4(m_handshake2),
        .I5(\M_AXI_WDATA_reg[31] ),
        .O(\M_AXI_WDATA_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \M_AXI_WSTRB[3]_i_1 
       (.I0(\M_AXI_WDATA[2]_i_2_n_0 ),
        .I1(startClear2),
        .I2(startClear3_reg),
        .I3(startClear4_reg),
        .I4(start1_reg),
        .I5(startClear_reg),
        .O(\M_AXI_WSTRB_reg[3] ));
  LUT6 #(
    .INIT(64'h30353F3530303F30)) 
    M_AXI_WVALID_i_2
       (.I0(clear_wvalid),
        .I1(w2_wvalid),
        .I2(start2),
        .I3(start1_reg),
        .I4(w1_wvalid),
        .I5(startClear_reg),
        .O(M_AXI_WVALID_reg));
  LUT5 #(
    .INIT(32'h00001555)) 
    M_AXI_WVALID_i_5
       (.I0(startClear_reg),
        .I1(m_handshake1),
        .I2(m_handshake2),
        .I3(\M_AXI_WDATA_reg[31] ),
        .I4(start1_reg),
        .O(M_AXI_BREADY_reg));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_awvalid_i_1__5
       (.I0(start1_reg),
        .I1(m_handshake1),
        .I2(w1_awvalid),
        .I3(M_AXI_AWREADY),
        .I4(m_awvalid_reg_0),
        .O(m_awvalid_i_1__5_n_0));
  FDRE m_awvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_i_1__5_n_0),
        .Q(w1_awvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_bready_i_1__5
       (.I0(start1_reg),
        .I1(\M_AXI_WDATA_reg[31] ),
        .I2(w1_bready),
        .I3(M_AXI_BVALID),
        .I4(m_awvalid_reg_0),
        .O(m_bready_i_1__5_n_0));
  LUT6 #(
    .INIT(64'h00000000E2520000)) 
    m_bready_i_2
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(aresetn),
        .I5(Q[4]),
        .O(m_awvalid_reg_0));
  FDRE m_bready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_bready_i_1__5_n_0),
        .Q(w1_bready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF3F7FBFFFFF3FBFF)) 
    m_handshake1_i_2
       (.I0(Q[2]),
        .I1(aresetn),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(m_handshake3));
  FDRE m_handshake1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_reg_1),
        .Q(m_handshake1),
        .R(1'b0));
  FDRE m_handshake2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake2_reg_0),
        .Q(m_handshake2),
        .R(1'b0));
  FDRE m_handshake3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake3_reg_0),
        .Q(\M_AXI_WDATA_reg[31] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_wvalid_i_1__5
       (.I0(start1_reg),
        .I1(m_handshake2),
        .I2(w1_wvalid),
        .I3(M_AXI_WREADY),
        .I4(m_awvalid_reg_0),
        .O(m_wvalid_i_1__5_n_0));
  FDRE m_wvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_wvalid_i_1__5_n_0),
        .Q(w1_wvalid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    start2_INST_0
       (.I0(m_handshake1),
        .I1(m_handshake2),
        .I2(\M_AXI_WDATA_reg[31] ),
        .O(start2));
endmodule

(* ORIG_REF_NAME = "write_DMA" *) 
module hdmi_motion_detection_0_0_write_DMA_0
   (w2_bready,
    m_handshake1,
    w2_awvalid,
    m_handshake2,
    w2_wvalid,
    m_bready_reg_0,
    D,
    start3,
    aclk,
    m_awvalid_reg_0,
    m_handshake2_reg_0,
    m_handshake3_reg_0,
    Q,
    m_handshake1_reg_0,
    \slv_reg8_reg[0] ,
    start1_reg,
    M_AXI_AWREADY,
    \currentState_reg[0] ,
    M_AXI_WREADY,
    M_AXI_BVALID);
  output w2_bready;
  output m_handshake1;
  output w2_awvalid;
  output m_handshake2;
  output w2_wvalid;
  output m_bready_reg_0;
  output [0:0]D;
  output start3;
  input aclk;
  input m_awvalid_reg_0;
  input m_handshake2_reg_0;
  input m_handshake3_reg_0;
  input [1:0]Q;
  input m_handshake1_reg_0;
  input \slv_reg8_reg[0] ;
  input start1_reg;
  input M_AXI_AWREADY;
  input \currentState_reg[0] ;
  input M_AXI_WREADY;
  input M_AXI_BVALID;

  wire [0:0]D;
  wire M_AXI_AWREADY;
  wire M_AXI_BVALID;
  wire M_AXI_WREADY;
  wire [1:0]Q;
  wire aclk;
  wire \currentState_reg[0] ;
  wire m_awvalid_i_1__4_n_0;
  wire m_awvalid_reg_0;
  wire m_bready_i_1__4_n_0;
  wire m_bready_reg_0;
  wire m_handshake1;
  wire m_handshake1_reg_0;
  wire m_handshake2;
  wire m_handshake2_reg_0;
  wire m_handshake3_reg_0;
  wire m_wvalid_i_1__4_n_0;
  wire \slv_reg8_reg[0] ;
  wire start1_reg;
  wire start3;
  wire w2_awvalid;
  wire w2_bready;
  wire w2_wvalid;

  LUT6 #(
    .INIT(64'h0055015500000100)) 
    \M_AXI_WDATA[0]_i_1 
       (.I0(start3),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(m_handshake1_reg_0),
        .I4(\slv_reg8_reg[0] ),
        .I5(start1_reg),
        .O(D));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_awvalid_i_1__4
       (.I0(m_handshake1_reg_0),
        .I1(m_handshake1),
        .I2(w2_awvalid),
        .I3(M_AXI_AWREADY),
        .I4(\currentState_reg[0] ),
        .O(m_awvalid_i_1__4_n_0));
  FDRE m_awvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_i_1__4_n_0),
        .Q(w2_awvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_bready_i_1__4
       (.I0(m_handshake1_reg_0),
        .I1(m_bready_reg_0),
        .I2(w2_bready),
        .I3(M_AXI_BVALID),
        .I4(\currentState_reg[0] ),
        .O(m_bready_i_1__4_n_0));
  FDRE m_bready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_bready_i_1__4_n_0),
        .Q(w2_bready),
        .R(1'b0));
  FDRE m_handshake1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_reg_0),
        .Q(m_handshake1),
        .R(1'b0));
  FDRE m_handshake2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake2_reg_0),
        .Q(m_handshake2),
        .R(1'b0));
  FDRE m_handshake3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake3_reg_0),
        .Q(m_bready_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_wvalid_i_1__4
       (.I0(m_handshake1_reg_0),
        .I1(m_handshake2),
        .I2(w2_wvalid),
        .I3(M_AXI_WREADY),
        .I4(\currentState_reg[0] ),
        .O(m_wvalid_i_1__4_n_0));
  FDRE m_wvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_wvalid_i_1__4_n_0),
        .Q(w2_wvalid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    start3_INST_0
       (.I0(m_handshake1),
        .I1(m_handshake2),
        .I2(m_bready_reg_0),
        .O(start3));
endmodule

(* ORIG_REF_NAME = "write_DMA" *) 
module hdmi_motion_detection_0_0_write_DMA_1
   (w3_bready,
    m_handshake1,
    w3_awvalid,
    m_handshake2,
    w3_wvalid,
    m_bready_reg_0,
    D,
    done,
    \currentState_reg[2] ,
    M_AXI_WVALID_reg,
    M_AXI_BREADY_reg,
    \currentState_reg[1] ,
    aclk,
    m_awvalid_reg_0,
    m_handshake2_reg_0,
    m_handshake3_reg_0,
    Q,
    \currentState_reg[3] ,
    \currentState_reg[3]_0 ,
    receive_2_reg,
    \slv_reg3_reg[2] ,
    \currentState_reg[2]_0 ,
    receive_1_reg,
    \slv_reg3_reg[0] ,
    \overlayDelayCounter_reg[4] ,
    \currentState_reg[1]_0 ,
    CO,
    receive_1_reg_0,
    m_handshake1_reg_0,
    m_wvalid_reg_0,
    startClear2_reg,
    m_wvalid_reg_1,
    m_wvalid_reg_2,
    m_bready_reg_1,
    clear_bready4,
    m_bready_reg_2,
    finish_send_reg,
    M_AXI_AWREADY,
    \currentState_reg[0] ,
    M_AXI_WREADY,
    M_AXI_BVALID);
  output w3_bready;
  output m_handshake1;
  output w3_awvalid;
  output m_handshake2;
  output w3_wvalid;
  output m_bready_reg_0;
  output [0:0]D;
  output done;
  output \currentState_reg[2] ;
  output M_AXI_WVALID_reg;
  output M_AXI_BREADY_reg;
  output \currentState_reg[1] ;
  input aclk;
  input m_awvalid_reg_0;
  input m_handshake2_reg_0;
  input m_handshake3_reg_0;
  input [4:0]Q;
  input \currentState_reg[3] ;
  input \currentState_reg[3]_0 ;
  input receive_2_reg;
  input \slv_reg3_reg[2] ;
  input \currentState_reg[2]_0 ;
  input [0:0]receive_1_reg;
  input [0:0]\slv_reg3_reg[0] ;
  input \overlayDelayCounter_reg[4] ;
  input \currentState_reg[1]_0 ;
  input [0:0]CO;
  input receive_1_reg_0;
  input m_handshake1_reg_0;
  input m_wvalid_reg_0;
  input startClear2_reg;
  input m_wvalid_reg_1;
  input m_wvalid_reg_2;
  input m_bready_reg_1;
  input clear_bready4;
  input m_bready_reg_2;
  input finish_send_reg;
  input M_AXI_AWREADY;
  input \currentState_reg[0] ;
  input M_AXI_WREADY;
  input M_AXI_BVALID;

  wire [0:0]CO;
  wire [0:0]D;
  wire M_AXI_AWREADY;
  wire M_AXI_BREADY_reg;
  wire M_AXI_BVALID;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID_reg;
  wire [4:0]Q;
  wire aclk;
  wire clear_bready4;
  wire \currentState_reg[0] ;
  wire \currentState_reg[1] ;
  wire \currentState_reg[1]_0 ;
  wire \currentState_reg[2] ;
  wire \currentState_reg[2]_0 ;
  wire \currentState_reg[3] ;
  wire \currentState_reg[3]_0 ;
  wire done;
  wire finish_send_reg;
  wire m_awvalid_i_1__3_n_0;
  wire m_awvalid_reg_0;
  wire m_bready_i_1__3_n_0;
  wire m_bready_reg_0;
  wire m_bready_reg_1;
  wire m_bready_reg_2;
  wire m_handshake1;
  wire m_handshake1_reg_0;
  wire m_handshake2;
  wire m_handshake2_reg_0;
  wire m_handshake3_reg_0;
  wire m_wvalid_i_1__3_n_0;
  wire m_wvalid_reg_0;
  wire m_wvalid_reg_1;
  wire m_wvalid_reg_2;
  wire \nextState_reg[0]_i_2_n_0 ;
  wire \nextState_reg[0]_i_6_n_0 ;
  wire \nextState_reg[1]_i_7_n_0 ;
  wire \overlayDelayCounter_reg[4] ;
  wire [0:0]receive_1_reg;
  wire receive_1_reg_0;
  wire receive_2_reg;
  wire [0:0]\slv_reg3_reg[0] ;
  wire \slv_reg3_reg[2] ;
  wire startClear2_reg;
  wire w3_awvalid;
  wire w3_bready;
  wire w3_wvalid;

  LUT6 #(
    .INIT(64'h8B8B8B8B888B8888)) 
    M_AXI_BREADY_i_1
       (.I0(w3_bready),
        .I1(m_handshake1_reg_0),
        .I2(m_bready_reg_1),
        .I3(startClear2_reg),
        .I4(clear_bready4),
        .I5(m_bready_reg_2),
        .O(M_AXI_BREADY_reg));
  LUT6 #(
    .INIT(64'h8B8B8B8B888B8888)) 
    M_AXI_WVALID_i_1
       (.I0(w3_wvalid),
        .I1(m_handshake1_reg_0),
        .I2(m_wvalid_reg_0),
        .I3(startClear2_reg),
        .I4(m_wvalid_reg_1),
        .I5(m_wvalid_reg_2),
        .O(M_AXI_WVALID_reg));
  LUT3 #(
    .INIT(8'h80)) 
    done_INST_0
       (.I0(m_handshake1),
        .I1(m_handshake2),
        .I2(m_bready_reg_0),
        .O(done));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_awvalid_i_1__3
       (.I0(m_handshake1_reg_0),
        .I1(m_handshake1),
        .I2(w3_awvalid),
        .I3(M_AXI_AWREADY),
        .I4(\currentState_reg[0] ),
        .O(m_awvalid_i_1__3_n_0));
  FDRE m_awvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_i_1__3_n_0),
        .Q(w3_awvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_bready_i_1__3
       (.I0(m_handshake1_reg_0),
        .I1(m_bready_reg_0),
        .I2(w3_bready),
        .I3(M_AXI_BVALID),
        .I4(\currentState_reg[0] ),
        .O(m_bready_i_1__3_n_0));
  FDRE m_bready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_bready_i_1__3_n_0),
        .Q(w3_bready),
        .R(1'b0));
  FDRE m_handshake1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_reg_0),
        .Q(m_handshake1),
        .R(1'b0));
  FDRE m_handshake2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake2_reg_0),
        .Q(m_handshake2),
        .R(1'b0));
  FDRE m_handshake3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake3_reg_0),
        .Q(m_bready_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_wvalid_i_1__3
       (.I0(m_handshake1_reg_0),
        .I1(m_handshake2),
        .I2(w3_wvalid),
        .I3(M_AXI_WREADY),
        .I4(\currentState_reg[0] ),
        .O(m_wvalid_i_1__3_n_0));
  FDRE m_wvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_wvalid_i_1__3_n_0),
        .Q(w3_wvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCCCF055CCCCFF55)) 
    \nextState_reg[0]_i_1 
       (.I0(\nextState_reg[0]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\currentState_reg[3] ),
        .I3(Q[1]),
        .I4(Q[4]),
        .I5(\currentState_reg[3]_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'h00000000CFFFC5FF)) 
    \nextState_reg[0]_i_2 
       (.I0(receive_2_reg),
        .I1(\slv_reg3_reg[2] ),
        .I2(Q[0]),
        .I3(\currentState_reg[2]_0 ),
        .I4(receive_1_reg),
        .I5(\nextState_reg[0]_i_6_n_0 ),
        .O(\nextState_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CFCC22EE)) 
    \nextState_reg[0]_i_6 
       (.I0(\slv_reg3_reg[0] ),
        .I1(Q[0]),
        .I2(\overlayDelayCounter_reg[4] ),
        .I3(done),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\nextState_reg[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFCF2)) 
    \nextState_reg[1]_i_3 
       (.I0(finish_send_reg),
        .I1(\nextState_reg[1]_i_7_n_0 ),
        .I2(Q[4]),
        .I3(Q[1]),
        .O(\currentState_reg[1] ));
  LUT6 #(
    .INIT(64'h5155555555555555)) 
    \nextState_reg[1]_i_7 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(m_handshake1),
        .I4(m_handshake2),
        .I5(m_bready_reg_0),
        .O(\nextState_reg[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEEEAEAAAEEE)) 
    \nextState_reg[2]_i_11 
       (.I0(\currentState_reg[1]_0 ),
        .I1(\nextState_reg[1]_i_7_n_0 ),
        .I2(CO),
        .I3(Q[2]),
        .I4(receive_1_reg_0),
        .I5(Q[0]),
        .O(\currentState_reg[2] ));
endmodule

(* ORIG_REF_NAME = "write_DMA" *) 
module hdmi_motion_detection_0_0_write_DMA_2
   (clear_bready,
    m_handshake1,
    clear_awvalid,
    m_handshake2,
    clear_wvalid,
    m_bready_reg_0,
    D,
    \currentState_reg[1] ,
    aclk,
    m_awvalid_reg_0,
    m_handshake2_reg_0,
    m_handshake3_reg_0,
    Q,
    \currentState_reg[2] ,
    \currentState_reg[4] ,
    \clearDelay_reg[18] ,
    \clearDelay_reg[10] ,
    startClear_reg,
    M_AXI_AWREADY,
    \currentState_reg[0] ,
    M_AXI_WREADY,
    M_AXI_BVALID);
  output clear_bready;
  output m_handshake1;
  output clear_awvalid;
  output m_handshake2;
  output clear_wvalid;
  output m_bready_reg_0;
  output [0:0]D;
  output \currentState_reg[1] ;
  input aclk;
  input m_awvalid_reg_0;
  input m_handshake2_reg_0;
  input m_handshake3_reg_0;
  input [0:0]Q;
  input \currentState_reg[2] ;
  input \currentState_reg[4] ;
  input \clearDelay_reg[18] ;
  input \clearDelay_reg[10] ;
  input startClear_reg;
  input M_AXI_AWREADY;
  input \currentState_reg[0] ;
  input M_AXI_WREADY;
  input M_AXI_BVALID;

  wire [0:0]D;
  wire M_AXI_AWREADY;
  wire M_AXI_BVALID;
  wire M_AXI_WREADY;
  wire [0:0]Q;
  wire aclk;
  wire \clearDelay_reg[10] ;
  wire \clearDelay_reg[18] ;
  wire clear_awvalid;
  wire clear_bready;
  wire clear_wvalid;
  wire \currentState_reg[0] ;
  wire \currentState_reg[1] ;
  wire \currentState_reg[2] ;
  wire \currentState_reg[4] ;
  wire m_awvalid_i_1__2_n_0;
  wire m_awvalid_reg_0;
  wire m_bready_i_1__2_n_0;
  wire m_bready_reg_0;
  wire m_handshake1;
  wire m_handshake2;
  wire m_handshake2_reg_0;
  wire m_handshake3_reg_0;
  wire m_wvalid_i_1__2_n_0;
  wire startClear_reg;

  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_awvalid_i_1__2
       (.I0(startClear_reg),
        .I1(m_handshake1),
        .I2(clear_awvalid),
        .I3(M_AXI_AWREADY),
        .I4(\currentState_reg[0] ),
        .O(m_awvalid_i_1__2_n_0));
  FDRE m_awvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_i_1__2_n_0),
        .Q(clear_awvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_bready_i_1__2
       (.I0(startClear_reg),
        .I1(m_bready_reg_0),
        .I2(clear_bready),
        .I3(M_AXI_BVALID),
        .I4(\currentState_reg[0] ),
        .O(m_bready_i_1__2_n_0));
  FDRE m_bready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_bready_i_1__2_n_0),
        .Q(clear_bready),
        .R(1'b0));
  FDRE m_handshake1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_reg_0),
        .Q(m_handshake1),
        .R(1'b0));
  FDRE m_handshake2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake2_reg_0),
        .Q(m_handshake2),
        .R(1'b0));
  FDRE m_handshake3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake3_reg_0),
        .Q(m_bready_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_wvalid_i_1__2
       (.I0(startClear_reg),
        .I1(m_handshake2),
        .I2(clear_wvalid),
        .I3(M_AXI_WREADY),
        .I4(\currentState_reg[0] ),
        .O(m_wvalid_i_1__2_n_0));
  FDRE m_wvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_wvalid_i_1__2_n_0),
        .Q(clear_wvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFD0)) 
    \nextState_reg[1]_i_1 
       (.I0(\currentState_reg[1] ),
        .I1(Q),
        .I2(\currentState_reg[2] ),
        .I3(\currentState_reg[4] ),
        .O(D));
  LUT5 #(
    .INIT(32'h80008080)) 
    \nextState_reg[1]_i_2 
       (.I0(m_bready_reg_0),
        .I1(m_handshake2),
        .I2(m_handshake1),
        .I3(\clearDelay_reg[18] ),
        .I4(\clearDelay_reg[10] ),
        .O(\currentState_reg[1] ));
endmodule

(* ORIG_REF_NAME = "write_DMA" *) 
module hdmi_motion_detection_0_0_write_DMA_3
   (clear_bready2,
    m_handshake1,
    clear_awvalid2,
    m_handshake2,
    clear_wvalid2,
    m_bready_reg_0,
    D,
    \currentState_reg[3] ,
    aclk,
    m_awvalid_reg_0,
    m_handshake2_reg_0,
    m_handshake3_reg_0,
    \currentState_reg[3]_0 ,
    \currentState_reg[3]_1 ,
    Q,
    \currentState_reg[0] ,
    clearDelay2_reg_2_sp_1,
    \clearDelay2_reg[19] ,
    \clearDelay2_reg[30] ,
    clearDelay2_reg,
    startClear2,
    M_AXI_AWREADY,
    \currentState_reg[0]_0 ,
    M_AXI_WREADY,
    M_AXI_BVALID);
  output clear_bready2;
  output m_handshake1;
  output clear_awvalid2;
  output m_handshake2;
  output clear_wvalid2;
  output m_bready_reg_0;
  output [0:0]D;
  output \currentState_reg[3] ;
  input aclk;
  input m_awvalid_reg_0;
  input m_handshake2_reg_0;
  input m_handshake3_reg_0;
  input \currentState_reg[3]_0 ;
  input \currentState_reg[3]_1 ;
  input [3:0]Q;
  input \currentState_reg[0] ;
  input clearDelay2_reg_2_sp_1;
  input \clearDelay2_reg[19] ;
  input \clearDelay2_reg[30] ;
  input [6:0]clearDelay2_reg;
  input startClear2;
  input M_AXI_AWREADY;
  input \currentState_reg[0]_0 ;
  input M_AXI_WREADY;
  input M_AXI_BVALID;

  wire [0:0]D;
  wire M_AXI_AWREADY;
  wire M_AXI_BVALID;
  wire M_AXI_WREADY;
  wire [3:0]Q;
  wire aclk;
  wire [6:0]clearDelay2_reg;
  wire \clearDelay2_reg[19] ;
  wire \clearDelay2_reg[30] ;
  wire clearDelay2_reg_2_sn_1;
  wire clear_awvalid2;
  wire clear_bready2;
  wire clear_wvalid2;
  wire \currentState_reg[0] ;
  wire \currentState_reg[0]_0 ;
  wire \currentState_reg[3] ;
  wire \currentState_reg[3]_0 ;
  wire \currentState_reg[3]_1 ;
  wire m_awvalid_i_1__1_n_0;
  wire m_awvalid_reg_0;
  wire m_bready_i_1__1_n_0;
  wire m_bready_reg_0;
  wire m_handshake1;
  wire m_handshake2;
  wire m_handshake2_reg_0;
  wire m_handshake3_reg_0;
  wire m_wvalid_i_1__1_n_0;
  wire \nextState_reg[2]_i_14_n_0 ;
  wire \nextState_reg[2]_i_2_n_0 ;
  wire \nextState_reg[2]_i_7_n_0 ;
  wire startClear2;

  assign clearDelay2_reg_2_sn_1 = clearDelay2_reg_2_sp_1;
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_awvalid_i_1__1
       (.I0(startClear2),
        .I1(m_handshake1),
        .I2(clear_awvalid2),
        .I3(M_AXI_AWREADY),
        .I4(\currentState_reg[0]_0 ),
        .O(m_awvalid_i_1__1_n_0));
  FDRE m_awvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_i_1__1_n_0),
        .Q(clear_awvalid2),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_bready_i_1__1
       (.I0(startClear2),
        .I1(m_bready_reg_0),
        .I2(clear_bready2),
        .I3(M_AXI_BVALID),
        .I4(\currentState_reg[0]_0 ),
        .O(m_bready_i_1__1_n_0));
  FDRE m_bready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_bready_i_1__1_n_0),
        .Q(clear_bready2),
        .R(1'b0));
  FDRE m_handshake1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_reg_0),
        .Q(m_handshake1),
        .R(1'b0));
  FDRE m_handshake2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake2_reg_0),
        .Q(m_handshake2),
        .R(1'b0));
  FDRE m_handshake3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake3_reg_0),
        .Q(m_bready_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_wvalid_i_1__1
       (.I0(startClear2),
        .I1(m_handshake2),
        .I2(clear_wvalid2),
        .I3(M_AXI_WREADY),
        .I4(\currentState_reg[0]_0 ),
        .O(m_wvalid_i_1__1_n_0));
  FDRE m_wvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_wvalid_i_1__1_n_0),
        .Q(clear_wvalid2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F2)) 
    \nextState_reg[2]_i_1 
       (.I0(\nextState_reg[2]_i_2_n_0 ),
        .I1(\currentState_reg[3]_0 ),
        .I2(\currentState_reg[3]_1 ),
        .I3(Q[1]),
        .I4(\currentState_reg[0] ),
        .I5(Q[3]),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \nextState_reg[2]_i_14 
       (.I0(clearDelay2_reg[0]),
        .I1(clearDelay2_reg[2]),
        .I2(m_handshake1),
        .I3(m_handshake2),
        .I4(m_bready_reg_0),
        .I5(clearDelay2_reg[1]),
        .O(\nextState_reg[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \nextState_reg[2]_i_2 
       (.I0(clearDelay2_reg_2_sn_1),
        .I1(\nextState_reg[2]_i_7_n_0 ),
        .I2(\clearDelay2_reg[19] ),
        .I3(\clearDelay2_reg[30] ),
        .O(\nextState_reg[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \nextState_reg[2]_i_7 
       (.I0(\nextState_reg[2]_i_14_n_0 ),
        .I1(clearDelay2_reg[4]),
        .I2(clearDelay2_reg[6]),
        .I3(clearDelay2_reg[3]),
        .I4(clearDelay2_reg[5]),
        .O(\nextState_reg[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h27002727)) 
    \nextState_reg[4]_i_4 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\nextState_reg[2]_i_2_n_0 ),
        .I4(Q[2]),
        .O(\currentState_reg[3] ));
endmodule

(* ORIG_REF_NAME = "write_DMA" *) 
module hdmi_motion_detection_0_0_write_DMA_4
   (clear_bready3,
    m_handshake1,
    clear_awvalid3,
    m_handshake2,
    clear_wvalid3,
    m_bready_reg_0,
    D,
    \currentState_reg[3] ,
    \currentState_reg[0] ,
    \currentState_reg[2] ,
    M_AXI_BREADY_reg,
    M_AXI_WVALID_reg,
    aclk,
    m_awvalid_reg_0,
    m_handshake2_reg_0,
    m_handshake3_reg_0,
    Q,
    receive_2_reg,
    \currentState_reg[4] ,
    m_handshake1_reg_0,
    \currentState_reg[1] ,
    receive_1_reg,
    done,
    m_handshake3_reg_1,
    \currentState_reg[2]_0 ,
    \clearDelay3_reg[10] ,
    \clearDelay3_reg[18] ,
    startClear3_reg,
    startClear2,
    clear_bready2,
    startClear_reg,
    clear_wvalid2,
    M_AXI_AWREADY,
    \currentState_reg[0]_0 ,
    M_AXI_WREADY,
    M_AXI_BVALID);
  output clear_bready3;
  output m_handshake1;
  output clear_awvalid3;
  output m_handshake2;
  output clear_wvalid3;
  output m_bready_reg_0;
  output [1:0]D;
  output \currentState_reg[3] ;
  output \currentState_reg[0] ;
  output \currentState_reg[2] ;
  output M_AXI_BREADY_reg;
  output M_AXI_WVALID_reg;
  input aclk;
  input m_awvalid_reg_0;
  input m_handshake2_reg_0;
  input m_handshake3_reg_0;
  input [4:0]Q;
  input receive_2_reg;
  input \currentState_reg[4] ;
  input m_handshake1_reg_0;
  input \currentState_reg[1] ;
  input receive_1_reg;
  input done;
  input m_handshake3_reg_1;
  input \currentState_reg[2]_0 ;
  input \clearDelay3_reg[10] ;
  input \clearDelay3_reg[18] ;
  input startClear3_reg;
  input startClear2;
  input clear_bready2;
  input startClear_reg;
  input clear_wvalid2;
  input M_AXI_AWREADY;
  input \currentState_reg[0]_0 ;
  input M_AXI_WREADY;
  input M_AXI_BVALID;

  wire [1:0]D;
  wire M_AXI_AWREADY;
  wire M_AXI_BREADY_reg;
  wire M_AXI_BVALID;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID_reg;
  wire [4:0]Q;
  wire aclk;
  wire \clearDelay3_reg[10] ;
  wire \clearDelay3_reg[18] ;
  wire clear_awvalid3;
  wire clear_bready2;
  wire clear_bready3;
  wire clear_wvalid2;
  wire clear_wvalid3;
  wire \currentState_reg[0] ;
  wire \currentState_reg[0]_0 ;
  wire \currentState_reg[1] ;
  wire \currentState_reg[2] ;
  wire \currentState_reg[2]_0 ;
  wire \currentState_reg[3] ;
  wire \currentState_reg[4] ;
  wire done;
  wire m_awvalid_i_1__0_n_0;
  wire m_awvalid_reg_0;
  wire m_bready_i_1__0_n_0;
  wire m_bready_reg_0;
  wire m_handshake1;
  wire m_handshake1_reg_0;
  wire m_handshake2;
  wire m_handshake2_reg_0;
  wire m_handshake3_reg_0;
  wire m_handshake3_reg_1;
  wire m_wvalid_i_1__0_n_0;
  wire \nextState_reg[4]_i_3_n_0 ;
  wire \nextState_reg[4]_i_5_n_0 ;
  wire receive_1_reg;
  wire receive_2_reg;
  wire startClear2;
  wire startClear3_reg;
  wire startClear_reg;

  LUT5 #(
    .INIT(32'hF808FFFF)) 
    M_AXI_BREADY_i_3
       (.I0(clear_bready3),
        .I1(startClear3_reg),
        .I2(startClear2),
        .I3(clear_bready2),
        .I4(startClear_reg),
        .O(M_AXI_BREADY_reg));
  LUT5 #(
    .INIT(32'hF808FFFF)) 
    M_AXI_WVALID_i_4
       (.I0(clear_wvalid3),
        .I1(startClear3_reg),
        .I2(startClear2),
        .I3(clear_wvalid2),
        .I4(startClear_reg),
        .O(M_AXI_WVALID_reg));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_awvalid_i_1__0
       (.I0(startClear3_reg),
        .I1(m_handshake1),
        .I2(clear_awvalid3),
        .I3(M_AXI_AWREADY),
        .I4(\currentState_reg[0]_0 ),
        .O(m_awvalid_i_1__0_n_0));
  FDRE m_awvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_i_1__0_n_0),
        .Q(clear_awvalid3),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_bready_i_1__0
       (.I0(startClear3_reg),
        .I1(m_bready_reg_0),
        .I2(clear_bready3),
        .I3(M_AXI_BVALID),
        .I4(\currentState_reg[0]_0 ),
        .O(m_bready_i_1__0_n_0));
  FDRE m_bready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_bready_i_1__0_n_0),
        .Q(clear_bready3),
        .R(1'b0));
  FDRE m_handshake1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_reg_0),
        .Q(m_handshake1),
        .R(1'b0));
  FDRE m_handshake2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake2_reg_0),
        .Q(m_handshake2),
        .R(1'b0));
  FDRE m_handshake3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake3_reg_0),
        .Q(m_bready_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_wvalid_i_1__0
       (.I0(startClear3_reg),
        .I1(m_handshake2),
        .I2(clear_wvalid3),
        .I3(M_AXI_WREADY),
        .I4(\currentState_reg[0]_0 ),
        .O(m_wvalid_i_1__0_n_0));
  FDRE m_wvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_wvalid_i_1__0_n_0),
        .Q(clear_wvalid3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00008888FF008F8F)) 
    \nextState_reg[0]_i_4 
       (.I0(\nextState_reg[4]_i_5_n_0 ),
        .I1(Q[3]),
        .I2(receive_1_reg),
        .I3(done),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\currentState_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000EFFFE0FF)) 
    \nextState_reg[2]_i_5 
       (.I0(Q[0]),
        .I1(\nextState_reg[4]_i_5_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(m_handshake3_reg_1),
        .I5(\currentState_reg[2]_0 ),
        .O(\currentState_reg[2] ));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \nextState_reg[3]_i_1 
       (.I0(\currentState_reg[3] ),
        .I1(Q[4]),
        .I2(receive_2_reg),
        .I3(\currentState_reg[4] ),
        .I4(Q[3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00000000FD5D0000)) 
    \nextState_reg[3]_i_2 
       (.I0(Q[2]),
        .I1(\nextState_reg[4]_i_5_n_0 ),
        .I2(Q[0]),
        .I3(m_handshake1_reg_0),
        .I4(Q[3]),
        .I5(\currentState_reg[1] ),
        .O(\currentState_reg[3] ));
  LUT5 #(
    .INIT(32'h000B0000)) 
    \nextState_reg[4]_i_1 
       (.I0(\nextState_reg[4]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\currentState_reg[4] ),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h02)) 
    \nextState_reg[4]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\nextState_reg[4]_i_5_n_0 ),
        .O(\nextState_reg[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7F7FFF7F)) 
    \nextState_reg[4]_i_5 
       (.I0(m_bready_reg_0),
        .I1(m_handshake2),
        .I2(m_handshake1),
        .I3(\clearDelay3_reg[10] ),
        .I4(\clearDelay3_reg[18] ),
        .O(\nextState_reg[4]_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "write_DMA" *) 
module hdmi_motion_detection_0_0_write_DMA_5
   (clear_bready4,
    m_handshake1,
    m_awvalid_reg_0,
    m_handshake2,
    m_wvalid_reg_0,
    m_bready_reg_0,
    \currentState_reg[3] ,
    M_AXI_AWVALID_reg,
    aclk,
    m_awvalid_reg_1,
    m_handshake2_reg_0,
    m_handshake3_reg_0,
    \clearDelay4_reg[18] ,
    \clearDelay4_reg[26] ,
    \clearDelay4_reg[2] ,
    \clearDelay4_reg[10] ,
    startClear4_reg,
    clear_awvalid3,
    startClear3_reg,
    startClear2,
    clear_awvalid2,
    M_AXI_AWREADY,
    \currentState_reg[0] ,
    M_AXI_WREADY,
    M_AXI_BVALID);
  output clear_bready4;
  output m_handshake1;
  output m_awvalid_reg_0;
  output m_handshake2;
  output m_wvalid_reg_0;
  output m_bready_reg_0;
  output \currentState_reg[3] ;
  output M_AXI_AWVALID_reg;
  input aclk;
  input m_awvalid_reg_1;
  input m_handshake2_reg_0;
  input m_handshake3_reg_0;
  input \clearDelay4_reg[18] ;
  input \clearDelay4_reg[26] ;
  input \clearDelay4_reg[2] ;
  input \clearDelay4_reg[10] ;
  input startClear4_reg;
  input clear_awvalid3;
  input startClear3_reg;
  input startClear2;
  input clear_awvalid2;
  input M_AXI_AWREADY;
  input \currentState_reg[0] ;
  input M_AXI_WREADY;
  input M_AXI_BVALID;

  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID_reg;
  wire M_AXI_BVALID;
  wire M_AXI_WREADY;
  wire aclk;
  wire \clearDelay4_reg[10] ;
  wire \clearDelay4_reg[18] ;
  wire \clearDelay4_reg[26] ;
  wire \clearDelay4_reg[2] ;
  wire clear_awvalid2;
  wire clear_awvalid3;
  wire clear_bready4;
  wire \currentState_reg[0] ;
  wire \currentState_reg[3] ;
  wire m_awvalid_i_1_n_0;
  wire m_awvalid_reg_0;
  wire m_awvalid_reg_1;
  wire m_bready_i_1_n_0;
  wire m_bready_reg_0;
  wire m_handshake1;
  wire m_handshake2;
  wire m_handshake2_reg_0;
  wire m_handshake3_reg_0;
  wire m_wvalid_i_1_n_0;
  wire m_wvalid_reg_0;
  wire \nextState_reg[3]_i_7_n_0 ;
  wire startClear2;
  wire startClear3_reg;
  wire startClear4_reg;

  LUT6 #(
    .INIT(64'h00000F77FFFF0F77)) 
    M_AXI_AWVALID_i_2
       (.I0(m_awvalid_reg_0),
        .I1(startClear4_reg),
        .I2(clear_awvalid3),
        .I3(startClear3_reg),
        .I4(startClear2),
        .I5(clear_awvalid2),
        .O(M_AXI_AWVALID_reg));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_awvalid_i_1
       (.I0(startClear4_reg),
        .I1(m_handshake1),
        .I2(m_awvalid_reg_0),
        .I3(M_AXI_AWREADY),
        .I4(\currentState_reg[0] ),
        .O(m_awvalid_i_1_n_0));
  FDRE m_awvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_i_1_n_0),
        .Q(m_awvalid_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_bready_i_1
       (.I0(startClear4_reg),
        .I1(m_bready_reg_0),
        .I2(clear_bready4),
        .I3(M_AXI_BVALID),
        .I4(\currentState_reg[0] ),
        .O(m_bready_i_1_n_0));
  FDRE m_bready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_bready_i_1_n_0),
        .Q(clear_bready4),
        .R(1'b0));
  FDRE m_handshake1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_awvalid_reg_1),
        .Q(m_handshake1),
        .R(1'b0));
  FDRE m_handshake2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake2_reg_0),
        .Q(m_handshake2),
        .R(1'b0));
  FDRE m_handshake3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_handshake3_reg_0),
        .Q(m_bready_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD2F20000)) 
    m_wvalid_i_1
       (.I0(startClear4_reg),
        .I1(m_handshake2),
        .I2(m_wvalid_reg_0),
        .I3(M_AXI_WREADY),
        .I4(\currentState_reg[0] ),
        .O(m_wvalid_i_1_n_0));
  FDRE m_wvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_wvalid_i_1_n_0),
        .Q(m_wvalid_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \nextState_reg[3]_i_4 
       (.I0(\nextState_reg[3]_i_7_n_0 ),
        .I1(\clearDelay4_reg[18] ),
        .I2(\clearDelay4_reg[26] ),
        .I3(\clearDelay4_reg[2] ),
        .I4(\clearDelay4_reg[10] ),
        .O(\currentState_reg[3] ));
  LUT3 #(
    .INIT(8'h80)) 
    \nextState_reg[3]_i_7 
       (.I0(m_handshake1),
        .I1(m_handshake2),
        .I2(m_bready_reg_0),
        .O(\nextState_reg[3]_i_7_n_0 ));
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
