-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Mar 26 12:46:01 2019
-- Host        : DESKTOP-GD2UNUH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_motion_detection_0_0/hdmi_motion_detection_0_0_stub.vhdl
-- Design      : hdmi_motion_detection_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hdmi_motion_detection_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    S_AXI_TVALID : in STD_LOGIC;
    S_AXI_TLAST : in STD_LOGIC;
    S_AXI_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_TREADY : out STD_LOGIC;
    S_AXI_S2MM_TVALID : out STD_LOGIC;
    S_AXI_S2MM_TLAST : out STD_LOGIC;
    S_AXI_S2MM_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_S2MM_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_S2MM_TREADY : in STD_LOGIC;
    state : out STD_LOGIC_VECTOR ( 4 downto 0 );
    finish_read1 : out STD_LOGIC;
    finish_read2 : out STD_LOGIC;
    gray1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gray2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    done : out STD_LOGIC;
    start1 : out STD_LOGIC;
    start2 : out STD_LOGIC;
    start3 : out STD_LOGIC;
    dma_base : out STD_LOGIC_VECTOR ( 31 downto 0 );
    motion_detected : out STD_LOGIC
  );

end hdmi_motion_detection_0_0;

architecture stub of hdmi_motion_detection_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,S_AXI_AWADDR[31:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[31:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,M_AXI_ARADDR[31:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RDATA[31:0],M_AXI_RRESP[1:0],M_AXI_RVALID,M_AXI_RREADY,M_AXI_AWADDR[31:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WDATA[31:0],M_AXI_WSTRB[3:0],M_AXI_WVALID,M_AXI_WREADY,M_AXI_BRESP,M_AXI_BVALID,M_AXI_BREADY,S_AXI_TVALID,S_AXI_TLAST,S_AXI_TDATA[31:0],S_AXI_TKEEP[3:0],S_AXI_TREADY,S_AXI_S2MM_TVALID,S_AXI_S2MM_TLAST,S_AXI_S2MM_TDATA[31:0],S_AXI_S2MM_TKEEP[3:0],S_AXI_S2MM_TREADY,state[4:0],finish_read1,finish_read2,gray1[31:0],gray2[31:0],done,start1,start2,start3,dma_base[31:0],motion_detected";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "motion_v1_0,Vivado 2018.2";
begin
end;
