-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Mar 26 12:46:01 2019
-- Host        : DESKTOP-GD2UNUH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Tristan/Documents/Nexys-Video-HDMI-master/proj/Nexys-Video-HDMI-master.srcs/sources_1/bd/hdmi/ip/hdmi_motion_detection_0_0/hdmi_motion_detection_0_0_sim_netlist.vhdl
-- Design      : hdmi_motion_detection_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_motion_detection_0_0_write_DMA is
  port (
    w1_bready : out STD_LOGIC;
    m_handshake1 : out STD_LOGIC;
    w1_awvalid : out STD_LOGIC;
    m_handshake2 : out STD_LOGIC;
    w1_wvalid : out STD_LOGIC;
    \M_AXI_WDATA_reg[31]\ : out STD_LOGIC;
    \M_AXI_WDATA_reg[31]_0\ : out STD_LOGIC;
    start2 : out STD_LOGIC;
    M_AXI_BREADY_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \M_AXI_WDATA_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWVALID_reg : out STD_LOGIC;
    \M_AXI_WSTRB_reg[3]\ : out STD_LOGIC;
    \M_AXI_WDATA_reg[12]\ : out STD_LOGIC;
    \M_AXI_WDATA_reg[17]\ : out STD_LOGIC;
    \M_AXI_WDATA_reg[18]\ : out STD_LOGIC;
    \M_AXI_WDATA_reg[19]\ : out STD_LOGIC;
    M_AXI_WVALID_reg : out STD_LOGIC;
    M_AXI_BREADY_reg_0 : out STD_LOGIC;
    m_awvalid_reg_0 : out STD_LOGIC;
    m_handshake3 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_awvalid_reg_1 : in STD_LOGIC;
    m_handshake2_reg_0 : in STD_LOGIC;
    m_handshake3_reg_0 : in STD_LOGIC;
    m_handshake1_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \slv_reg8_reg[2]\ : in STD_LOGIC;
    start1_reg : in STD_LOGIC;
    startClear_reg : in STD_LOGIC;
    addr0 : in STD_LOGIC_VECTOR ( 27 downto 0 );
    addr02_out : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \dma_init_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    startClear3_reg : in STD_LOGIC;
    startClear2 : in STD_LOGIC;
    m_awvalid_reg_2 : in STD_LOGIC;
    w3_awvalid : in STD_LOGIC;
    \slv_reg2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \transfer_length_offset_reg[3]\ : in STD_LOGIC;
    startClear4_reg : in STD_LOGIC;
    m_handshake3_reg_1 : in STD_LOGIC;
    m_handshake2_0 : in STD_LOGIC;
    m_handshake1_1 : in STD_LOGIC;
    clear_awvalid : in STD_LOGIC;
    w2_awvalid : in STD_LOGIC;
    \slv_reg8_reg[12]\ : in STD_LOGIC;
    \slv_reg8_reg[17]\ : in STD_LOGIC;
    \slv_reg8_reg[18]\ : in STD_LOGIC;
    \slv_reg8_reg[19]\ : in STD_LOGIC;
    clear_wvalid : in STD_LOGIC;
    w2_wvalid : in STD_LOGIC;
    clear_bready : in STD_LOGIC;
    w2_bready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_motion_detection_0_0_write_DMA : entity is "write_DMA";
end hdmi_motion_detection_0_0_write_DMA;

architecture STRUCTURE of hdmi_motion_detection_0_0_write_DMA is
  signal \M_AXI_AWADDR[31]_i_4_n_0\ : STD_LOGIC;
  signal M_AXI_AWVALID_i_3_n_0 : STD_LOGIC;
  signal M_AXI_AWVALID_i_4_n_0 : STD_LOGIC;
  signal \M_AXI_WDATA[2]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[2]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[2]_i_4_n_0\ : STD_LOGIC;
  signal \^m_axi_wdata_reg[31]\ : STD_LOGIC;
  signal \m_awvalid_i_1__5_n_0\ : STD_LOGIC;
  signal \^m_awvalid_reg_0\ : STD_LOGIC;
  signal \m_bready_i_1__5_n_0\ : STD_LOGIC;
  signal \^m_handshake1\ : STD_LOGIC;
  signal \^m_handshake2\ : STD_LOGIC;
  signal \m_wvalid_i_1__5_n_0\ : STD_LOGIC;
  signal \^start2\ : STD_LOGIC;
  signal \^w1_awvalid\ : STD_LOGIC;
  signal \^w1_bready\ : STD_LOGIC;
  signal \^w1_wvalid\ : STD_LOGIC;
begin
  \M_AXI_WDATA_reg[31]\ <= \^m_axi_wdata_reg[31]\;
  m_awvalid_reg_0 <= \^m_awvalid_reg_0\;
  m_handshake1 <= \^m_handshake1\;
  m_handshake2 <= \^m_handshake2\;
  start2 <= \^start2\;
  w1_awvalid <= \^w1_awvalid\;
  w1_bready <= \^w1_bready\;
  w1_wvalid <= \^w1_wvalid\;
\M_AXI_AWADDR[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE0E0"
    )
        port map (
      I0 => \^start2\,
      I1 => m_handshake1_reg_0,
      I2 => \slv_reg2_reg[3]\(0),
      I3 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I4 => \dma_init_reg[31]\(0),
      O => D(0)
    );
\M_AXI_AWADDR[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(6),
      I1 => \^start2\,
      I2 => addr02_out(6),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(10),
      O => D(10)
    );
\M_AXI_AWADDR[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I1 => \dma_init_reg[31]\(11),
      I2 => addr02_out(7),
      I3 => \^start2\,
      I4 => m_handshake1_reg_0,
      I5 => addr0(7),
      O => D(11)
    );
\M_AXI_AWADDR[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I1 => \dma_init_reg[31]\(12),
      I2 => addr02_out(8),
      I3 => \^start2\,
      I4 => m_handshake1_reg_0,
      I5 => addr0(8),
      O => D(12)
    );
\M_AXI_AWADDR[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I1 => \dma_init_reg[31]\(13),
      I2 => addr02_out(9),
      I3 => \^start2\,
      I4 => m_handshake1_reg_0,
      I5 => addr0(9),
      O => D(13)
    );
\M_AXI_AWADDR[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I1 => \dma_init_reg[31]\(14),
      I2 => addr02_out(10),
      I3 => \^start2\,
      I4 => m_handshake1_reg_0,
      I5 => addr0(10),
      O => D(14)
    );
\M_AXI_AWADDR[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I1 => \dma_init_reg[31]\(15),
      I2 => addr02_out(11),
      I3 => \^start2\,
      I4 => m_handshake1_reg_0,
      I5 => addr0(11),
      O => D(15)
    );
\M_AXI_AWADDR[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I1 => \dma_init_reg[31]\(16),
      I2 => addr02_out(12),
      I3 => \^start2\,
      I4 => m_handshake1_reg_0,
      I5 => addr0(12),
      O => D(16)
    );
\M_AXI_AWADDR[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(13),
      I1 => \^start2\,
      I2 => addr02_out(13),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(17),
      O => D(17)
    );
\M_AXI_AWADDR[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I1 => \dma_init_reg[31]\(18),
      I2 => addr02_out(14),
      I3 => \^start2\,
      I4 => m_handshake1_reg_0,
      I5 => addr0(14),
      O => D(18)
    );
\M_AXI_AWADDR[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(15),
      I1 => \^start2\,
      I2 => addr02_out(15),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(19),
      O => D(19)
    );
\M_AXI_AWADDR[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE0E0"
    )
        port map (
      I0 => \^start2\,
      I1 => m_handshake1_reg_0,
      I2 => \slv_reg2_reg[3]\(1),
      I3 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I4 => \dma_init_reg[31]\(1),
      O => D(1)
    );
\M_AXI_AWADDR[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(16),
      I1 => \^start2\,
      I2 => addr02_out(16),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(20),
      O => D(20)
    );
\M_AXI_AWADDR[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(17),
      I1 => \^start2\,
      I2 => addr02_out(17),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(21),
      O => D(21)
    );
\M_AXI_AWADDR[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(18),
      I1 => \^start2\,
      I2 => addr02_out(18),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(22),
      O => D(22)
    );
\M_AXI_AWADDR[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I1 => \dma_init_reg[31]\(23),
      I2 => addr02_out(19),
      I3 => \^start2\,
      I4 => m_handshake1_reg_0,
      I5 => addr0(19),
      O => D(23)
    );
\M_AXI_AWADDR[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(20),
      I1 => \^start2\,
      I2 => addr02_out(20),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(24),
      O => D(24)
    );
\M_AXI_AWADDR[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(21),
      I1 => \^start2\,
      I2 => addr02_out(21),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(25),
      O => D(25)
    );
\M_AXI_AWADDR[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(22),
      I1 => \^start2\,
      I2 => addr02_out(22),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(26),
      O => D(26)
    );
\M_AXI_AWADDR[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I1 => \dma_init_reg[31]\(27),
      I2 => addr02_out(23),
      I3 => \^start2\,
      I4 => m_handshake1_reg_0,
      I5 => addr0(23),
      O => D(27)
    );
\M_AXI_AWADDR[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(24),
      I1 => \^start2\,
      I2 => addr02_out(24),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(28),
      O => D(28)
    );
\M_AXI_AWADDR[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(25),
      I1 => \^start2\,
      I2 => addr02_out(25),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(29),
      O => D(29)
    );
\M_AXI_AWADDR[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE0E0"
    )
        port map (
      I0 => \^start2\,
      I1 => m_handshake1_reg_0,
      I2 => \slv_reg2_reg[3]\(2),
      I3 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I4 => \dma_init_reg[31]\(2),
      O => D(2)
    );
\M_AXI_AWADDR[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(26),
      I1 => \^start2\,
      I2 => addr02_out(26),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(30),
      O => D(30)
    );
\M_AXI_AWADDR[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(27),
      I1 => \^start2\,
      I2 => addr02_out(27),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(31),
      O => D(31)
    );
\M_AXI_AWADDR[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => startClear2,
      I1 => startClear3_reg,
      I2 => startClear4_reg,
      I3 => start1_reg,
      I4 => startClear_reg,
      I5 => \M_AXI_WDATA[2]_i_2_n_0\,
      O => \M_AXI_AWADDR[31]_i_4_n_0\
    );
\M_AXI_AWADDR[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EE0FFFF0EE00EE0"
    )
        port map (
      I0 => \^start2\,
      I1 => m_handshake1_reg_0,
      I2 => \slv_reg2_reg[3]\(3),
      I3 => \transfer_length_offset_reg[3]\,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(3),
      O => D(3)
    );
\M_AXI_AWADDR[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I1 => \dma_init_reg[31]\(4),
      I2 => addr02_out(0),
      I3 => \^start2\,
      I4 => m_handshake1_reg_0,
      I5 => addr0(0),
      O => D(4)
    );
\M_AXI_AWADDR[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(1),
      I1 => \^start2\,
      I2 => addr02_out(1),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(5),
      O => D(5)
    );
\M_AXI_AWADDR[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(2),
      I1 => \^start2\,
      I2 => addr02_out(2),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(6),
      O => D(6)
    );
\M_AXI_AWADDR[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4444444F444"
    )
        port map (
      I0 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I1 => \dma_init_reg[31]\(7),
      I2 => addr02_out(3),
      I3 => \^start2\,
      I4 => m_handshake1_reg_0,
      I5 => addr0(3),
      O => D(7)
    );
\M_AXI_AWADDR[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(4),
      I1 => \^start2\,
      I2 => addr02_out(4),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(8),
      O => D(8)
    );
\M_AXI_AWADDR[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC0AAC0"
    )
        port map (
      I0 => addr0(5),
      I1 => \^start2\,
      I2 => addr02_out(5),
      I3 => m_handshake1_reg_0,
      I4 => \M_AXI_AWADDR[31]_i_4_n_0\,
      I5 => \dma_init_reg[31]\(9),
      O => D(9)
    );
M_AXI_AWVALID_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF444F4"
    )
        port map (
      I0 => m_awvalid_reg_2,
      I1 => M_AXI_AWVALID_i_3_n_0,
      I2 => M_AXI_AWVALID_i_4_n_0,
      I3 => m_handshake1_reg_0,
      I4 => w3_awvalid,
      O => M_AXI_AWVALID_reg
    );
M_AXI_AWVALID_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001555"
    )
        port map (
      I0 => m_handshake1_reg_0,
      I1 => \^m_handshake1\,
      I2 => \^m_handshake2\,
      I3 => \^m_axi_wdata_reg[31]\,
      I4 => startClear_reg,
      I5 => start1_reg,
      O => M_AXI_AWVALID_i_3_n_0
    );
M_AXI_AWVALID_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0880000F088"
    )
        port map (
      I0 => startClear_reg,
      I1 => clear_awvalid,
      I2 => \^w1_awvalid\,
      I3 => start1_reg,
      I4 => \^start2\,
      I5 => w2_awvalid,
      O => M_AXI_AWVALID_i_4_n_0
    );
M_AXI_BREADY_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30353F3530303F30"
    )
        port map (
      I0 => clear_bready,
      I1 => w2_bready,
      I2 => \^start2\,
      I3 => start1_reg,
      I4 => \^w1_bready\,
      I5 => startClear_reg,
      O => M_AXI_BREADY_reg_0
    );
\M_AXI_WDATA[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(4),
      I2 => \^m_handshake1\,
      I3 => \^m_handshake2\,
      I4 => \^m_axi_wdata_reg[31]\,
      I5 => \slv_reg8_reg[12]\,
      O => \M_AXI_WDATA_reg[12]\
    );
\M_AXI_WDATA[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(4),
      I2 => \^m_handshake1\,
      I3 => \^m_handshake2\,
      I4 => \^m_axi_wdata_reg[31]\,
      I5 => \slv_reg8_reg[17]\,
      O => \M_AXI_WDATA_reg[17]\
    );
\M_AXI_WDATA[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(4),
      I2 => \^m_handshake1\,
      I3 => \^m_handshake2\,
      I4 => \^m_axi_wdata_reg[31]\,
      I5 => \slv_reg8_reg[18]\,
      O => \M_AXI_WDATA_reg[18]\
    );
\M_AXI_WDATA[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(4),
      I2 => \^m_handshake1\,
      I3 => \^m_handshake2\,
      I4 => \^m_axi_wdata_reg[31]\,
      I5 => \slv_reg8_reg[19]\,
      O => \M_AXI_WDATA_reg[19]\
    );
\M_AXI_WDATA[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000200"
    )
        port map (
      I0 => \M_AXI_WDATA[2]_i_2_n_0\,
      I1 => startClear_reg,
      I2 => start1_reg,
      I3 => startClear3_reg,
      I4 => startClear2,
      I5 => \M_AXI_WDATA[2]_i_3_n_0\,
      O => \M_AXI_WDATA_reg[2]\(0)
    );
\M_AXI_WDATA[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F7F7F7F7F7F7F"
    )
        port map (
      I0 => \^m_axi_wdata_reg[31]\,
      I1 => \^m_handshake2\,
      I2 => \^m_handshake1\,
      I3 => m_handshake3_reg_1,
      I4 => m_handshake2_0,
      I5 => m_handshake1_1,
      O => \M_AXI_WDATA[2]_i_2_n_0\
    );
\M_AXI_WDATA[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404045504040404"
    )
        port map (
      I0 => m_handshake1_reg_0,
      I1 => \M_AXI_WDATA[2]_i_4_n_0\,
      I2 => \slv_reg8_reg[2]\,
      I3 => \^start2\,
      I4 => start1_reg,
      I5 => startClear_reg,
      O => \M_AXI_WDATA[2]_i_3_n_0\
    );
\M_AXI_WDATA[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^m_axi_wdata_reg[31]\,
      I1 => \^m_handshake2\,
      I2 => \^m_handshake1\,
      I3 => Q(4),
      I4 => Q(2),
      O => \M_AXI_WDATA[2]_i_4_n_0\
    );
\M_AXI_WDATA[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => m_handshake1_reg_0,
      I1 => Q(2),
      I2 => Q(4),
      I3 => \^m_handshake1\,
      I4 => \^m_handshake2\,
      I5 => \^m_axi_wdata_reg[31]\,
      O => \M_AXI_WDATA_reg[31]_0\
    );
\M_AXI_WSTRB[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \M_AXI_WDATA[2]_i_2_n_0\,
      I1 => startClear2,
      I2 => startClear3_reg,
      I3 => startClear4_reg,
      I4 => start1_reg,
      I5 => startClear_reg,
      O => \M_AXI_WSTRB_reg[3]\
    );
M_AXI_WVALID_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30353F3530303F30"
    )
        port map (
      I0 => clear_wvalid,
      I1 => w2_wvalid,
      I2 => \^start2\,
      I3 => start1_reg,
      I4 => \^w1_wvalid\,
      I5 => startClear_reg,
      O => M_AXI_WVALID_reg
    );
M_AXI_WVALID_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001555"
    )
        port map (
      I0 => startClear_reg,
      I1 => \^m_handshake1\,
      I2 => \^m_handshake2\,
      I3 => \^m_axi_wdata_reg[31]\,
      I4 => start1_reg,
      O => M_AXI_BREADY_reg
    );
\m_awvalid_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => start1_reg,
      I1 => \^m_handshake1\,
      I2 => \^w1_awvalid\,
      I3 => M_AXI_AWREADY,
      I4 => \^m_awvalid_reg_0\,
      O => \m_awvalid_i_1__5_n_0\
    );
m_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_awvalid_i_1__5_n_0\,
      Q => \^w1_awvalid\,
      R => '0'
    );
\m_bready_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => start1_reg,
      I1 => \^m_axi_wdata_reg[31]\,
      I2 => \^w1_bready\,
      I3 => M_AXI_BVALID,
      I4 => \^m_awvalid_reg_0\,
      O => \m_bready_i_1__5_n_0\
    );
m_bready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2520000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => aresetn,
      I5 => Q(4),
      O => \^m_awvalid_reg_0\
    );
m_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_bready_i_1__5_n_0\,
      Q => \^w1_bready\,
      R => '0'
    );
m_handshake1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F7FBFFFFF3FBFF"
    )
        port map (
      I0 => Q(2),
      I1 => aresetn,
      I2 => Q(4),
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(1),
      O => m_handshake3
    );
m_handshake1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_awvalid_reg_1,
      Q => \^m_handshake1\,
      R => '0'
    );
m_handshake2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake2_reg_0,
      Q => \^m_handshake2\,
      R => '0'
    );
m_handshake3_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake3_reg_0,
      Q => \^m_axi_wdata_reg[31]\,
      R => '0'
    );
\m_wvalid_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => start1_reg,
      I1 => \^m_handshake2\,
      I2 => \^w1_wvalid\,
      I3 => M_AXI_WREADY,
      I4 => \^m_awvalid_reg_0\,
      O => \m_wvalid_i_1__5_n_0\
    );
m_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_wvalid_i_1__5_n_0\,
      Q => \^w1_wvalid\,
      R => '0'
    );
start2_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m_handshake1\,
      I1 => \^m_handshake2\,
      I2 => \^m_axi_wdata_reg[31]\,
      O => \^start2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_motion_detection_0_0_write_DMA_0 is
  port (
    w2_bready : out STD_LOGIC;
    m_handshake1 : out STD_LOGIC;
    w2_awvalid : out STD_LOGIC;
    m_handshake2 : out STD_LOGIC;
    w2_wvalid : out STD_LOGIC;
    m_bready_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    start3 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_awvalid_reg_0 : in STD_LOGIC;
    m_handshake2_reg_0 : in STD_LOGIC;
    m_handshake3_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_handshake1_reg_0 : in STD_LOGIC;
    \slv_reg8_reg[0]\ : in STD_LOGIC;
    start1_reg : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    \currentState_reg[0]\ : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_motion_detection_0_0_write_DMA_0 : entity is "write_DMA";
end hdmi_motion_detection_0_0_write_DMA_0;

architecture STRUCTURE of hdmi_motion_detection_0_0_write_DMA_0 is
  signal \m_awvalid_i_1__4_n_0\ : STD_LOGIC;
  signal \m_bready_i_1__4_n_0\ : STD_LOGIC;
  signal \^m_bready_reg_0\ : STD_LOGIC;
  signal \^m_handshake1\ : STD_LOGIC;
  signal \^m_handshake2\ : STD_LOGIC;
  signal \m_wvalid_i_1__4_n_0\ : STD_LOGIC;
  signal \^start3\ : STD_LOGIC;
  signal \^w2_awvalid\ : STD_LOGIC;
  signal \^w2_bready\ : STD_LOGIC;
  signal \^w2_wvalid\ : STD_LOGIC;
begin
  m_bready_reg_0 <= \^m_bready_reg_0\;
  m_handshake1 <= \^m_handshake1\;
  m_handshake2 <= \^m_handshake2\;
  start3 <= \^start3\;
  w2_awvalid <= \^w2_awvalid\;
  w2_bready <= \^w2_bready\;
  w2_wvalid <= \^w2_wvalid\;
\M_AXI_WDATA[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055015500000100"
    )
        port map (
      I0 => \^start3\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => m_handshake1_reg_0,
      I4 => \slv_reg8_reg[0]\,
      I5 => start1_reg,
      O => D(0)
    );
\m_awvalid_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => m_handshake1_reg_0,
      I1 => \^m_handshake1\,
      I2 => \^w2_awvalid\,
      I3 => M_AXI_AWREADY,
      I4 => \currentState_reg[0]\,
      O => \m_awvalid_i_1__4_n_0\
    );
m_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_awvalid_i_1__4_n_0\,
      Q => \^w2_awvalid\,
      R => '0'
    );
\m_bready_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => m_handshake1_reg_0,
      I1 => \^m_bready_reg_0\,
      I2 => \^w2_bready\,
      I3 => M_AXI_BVALID,
      I4 => \currentState_reg[0]\,
      O => \m_bready_i_1__4_n_0\
    );
m_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_bready_i_1__4_n_0\,
      Q => \^w2_bready\,
      R => '0'
    );
m_handshake1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_awvalid_reg_0,
      Q => \^m_handshake1\,
      R => '0'
    );
m_handshake2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake2_reg_0,
      Q => \^m_handshake2\,
      R => '0'
    );
m_handshake3_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake3_reg_0,
      Q => \^m_bready_reg_0\,
      R => '0'
    );
\m_wvalid_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => m_handshake1_reg_0,
      I1 => \^m_handshake2\,
      I2 => \^w2_wvalid\,
      I3 => M_AXI_WREADY,
      I4 => \currentState_reg[0]\,
      O => \m_wvalid_i_1__4_n_0\
    );
m_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_wvalid_i_1__4_n_0\,
      Q => \^w2_wvalid\,
      R => '0'
    );
start3_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m_handshake1\,
      I1 => \^m_handshake2\,
      I2 => \^m_bready_reg_0\,
      O => \^start3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_motion_detection_0_0_write_DMA_1 is
  port (
    w3_bready : out STD_LOGIC;
    m_handshake1 : out STD_LOGIC;
    w3_awvalid : out STD_LOGIC;
    m_handshake2 : out STD_LOGIC;
    w3_wvalid : out STD_LOGIC;
    m_bready_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    done : out STD_LOGIC;
    \currentState_reg[2]\ : out STD_LOGIC;
    M_AXI_WVALID_reg : out STD_LOGIC;
    M_AXI_BREADY_reg : out STD_LOGIC;
    \currentState_reg[1]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_awvalid_reg_0 : in STD_LOGIC;
    m_handshake2_reg_0 : in STD_LOGIC;
    m_handshake3_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \currentState_reg[3]\ : in STD_LOGIC;
    \currentState_reg[3]_0\ : in STD_LOGIC;
    receive_2_reg : in STD_LOGIC;
    \slv_reg3_reg[2]\ : in STD_LOGIC;
    \currentState_reg[2]_0\ : in STD_LOGIC;
    receive_1_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg3_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \overlayDelayCounter_reg[4]\ : in STD_LOGIC;
    \currentState_reg[1]_0\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    receive_1_reg_0 : in STD_LOGIC;
    m_handshake1_reg_0 : in STD_LOGIC;
    m_wvalid_reg_0 : in STD_LOGIC;
    startClear2_reg : in STD_LOGIC;
    m_wvalid_reg_1 : in STD_LOGIC;
    m_wvalid_reg_2 : in STD_LOGIC;
    m_bready_reg_1 : in STD_LOGIC;
    clear_bready4 : in STD_LOGIC;
    m_bready_reg_2 : in STD_LOGIC;
    finish_send_reg : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    \currentState_reg[0]\ : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_motion_detection_0_0_write_DMA_1 : entity is "write_DMA";
end hdmi_motion_detection_0_0_write_DMA_1;

architecture STRUCTURE of hdmi_motion_detection_0_0_write_DMA_1 is
  signal \^done\ : STD_LOGIC;
  signal \m_awvalid_i_1__3_n_0\ : STD_LOGIC;
  signal \m_bready_i_1__3_n_0\ : STD_LOGIC;
  signal \^m_bready_reg_0\ : STD_LOGIC;
  signal \^m_handshake1\ : STD_LOGIC;
  signal \^m_handshake2\ : STD_LOGIC;
  signal \m_wvalid_i_1__3_n_0\ : STD_LOGIC;
  signal \nextState_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \nextState_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \^w3_awvalid\ : STD_LOGIC;
  signal \^w3_bready\ : STD_LOGIC;
  signal \^w3_wvalid\ : STD_LOGIC;
begin
  done <= \^done\;
  m_bready_reg_0 <= \^m_bready_reg_0\;
  m_handshake1 <= \^m_handshake1\;
  m_handshake2 <= \^m_handshake2\;
  w3_awvalid <= \^w3_awvalid\;
  w3_bready <= \^w3_bready\;
  w3_wvalid <= \^w3_wvalid\;
M_AXI_BREADY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8B8B888B8888"
    )
        port map (
      I0 => \^w3_bready\,
      I1 => m_handshake1_reg_0,
      I2 => m_bready_reg_1,
      I3 => startClear2_reg,
      I4 => clear_bready4,
      I5 => m_bready_reg_2,
      O => M_AXI_BREADY_reg
    );
M_AXI_WVALID_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8B8B888B8888"
    )
        port map (
      I0 => \^w3_wvalid\,
      I1 => m_handshake1_reg_0,
      I2 => m_wvalid_reg_0,
      I3 => startClear2_reg,
      I4 => m_wvalid_reg_1,
      I5 => m_wvalid_reg_2,
      O => M_AXI_WVALID_reg
    );
done_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m_handshake1\,
      I1 => \^m_handshake2\,
      I2 => \^m_bready_reg_0\,
      O => \^done\
    );
\m_awvalid_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => m_handshake1_reg_0,
      I1 => \^m_handshake1\,
      I2 => \^w3_awvalid\,
      I3 => M_AXI_AWREADY,
      I4 => \currentState_reg[0]\,
      O => \m_awvalid_i_1__3_n_0\
    );
m_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_awvalid_i_1__3_n_0\,
      Q => \^w3_awvalid\,
      R => '0'
    );
\m_bready_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => m_handshake1_reg_0,
      I1 => \^m_bready_reg_0\,
      I2 => \^w3_bready\,
      I3 => M_AXI_BVALID,
      I4 => \currentState_reg[0]\,
      O => \m_bready_i_1__3_n_0\
    );
m_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_bready_i_1__3_n_0\,
      Q => \^w3_bready\,
      R => '0'
    );
m_handshake1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_awvalid_reg_0,
      Q => \^m_handshake1\,
      R => '0'
    );
m_handshake2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake2_reg_0,
      Q => \^m_handshake2\,
      R => '0'
    );
m_handshake3_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake3_reg_0,
      Q => \^m_bready_reg_0\,
      R => '0'
    );
\m_wvalid_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => m_handshake1_reg_0,
      I1 => \^m_handshake2\,
      I2 => \^w3_wvalid\,
      I3 => M_AXI_WREADY,
      I4 => \currentState_reg[0]\,
      O => \m_wvalid_i_1__3_n_0\
    );
m_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_wvalid_i_1__3_n_0\,
      Q => \^w3_wvalid\,
      R => '0'
    );
\nextState_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCF055CCCCFF55"
    )
        port map (
      I0 => \nextState_reg[0]_i_2_n_0\,
      I1 => Q(0),
      I2 => \currentState_reg[3]\,
      I3 => Q(1),
      I4 => Q(4),
      I5 => \currentState_reg[3]_0\,
      O => D(0)
    );
\nextState_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CFFFC5FF"
    )
        port map (
      I0 => receive_2_reg,
      I1 => \slv_reg3_reg[2]\,
      I2 => Q(0),
      I3 => \currentState_reg[2]_0\,
      I4 => receive_1_reg(0),
      I5 => \nextState_reg[0]_i_6_n_0\,
      O => \nextState_reg[0]_i_2_n_0\
    );
\nextState_reg[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CFCC22EE"
    )
        port map (
      I0 => \slv_reg3_reg[0]\(0),
      I1 => Q(0),
      I2 => \overlayDelayCounter_reg[4]\,
      I3 => \^done\,
      I4 => Q(3),
      I5 => Q(2),
      O => \nextState_reg[0]_i_6_n_0\
    );
\nextState_reg[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCF2"
    )
        port map (
      I0 => finish_send_reg,
      I1 => \nextState_reg[1]_i_7_n_0\,
      I2 => Q(4),
      I3 => Q(1),
      O => \currentState_reg[1]\
    );
\nextState_reg[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5155555555555555"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^m_handshake1\,
      I4 => \^m_handshake2\,
      I5 => \^m_bready_reg_0\,
      O => \nextState_reg[1]_i_7_n_0\
    );
\nextState_reg[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEAEEEAEAAAEEE"
    )
        port map (
      I0 => \currentState_reg[1]_0\,
      I1 => \nextState_reg[1]_i_7_n_0\,
      I2 => CO(0),
      I3 => Q(2),
      I4 => receive_1_reg_0,
      I5 => Q(0),
      O => \currentState_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_motion_detection_0_0_write_DMA_2 is
  port (
    clear_bready : out STD_LOGIC;
    m_handshake1 : out STD_LOGIC;
    clear_awvalid : out STD_LOGIC;
    m_handshake2 : out STD_LOGIC;
    clear_wvalid : out STD_LOGIC;
    m_bready_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \currentState_reg[1]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_awvalid_reg_0 : in STD_LOGIC;
    m_handshake2_reg_0 : in STD_LOGIC;
    m_handshake3_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \currentState_reg[2]\ : in STD_LOGIC;
    \currentState_reg[4]\ : in STD_LOGIC;
    \clearDelay_reg[18]\ : in STD_LOGIC;
    \clearDelay_reg[10]\ : in STD_LOGIC;
    startClear_reg : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    \currentState_reg[0]\ : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_motion_detection_0_0_write_DMA_2 : entity is "write_DMA";
end hdmi_motion_detection_0_0_write_DMA_2;

architecture STRUCTURE of hdmi_motion_detection_0_0_write_DMA_2 is
  signal \^clear_awvalid\ : STD_LOGIC;
  signal \^clear_bready\ : STD_LOGIC;
  signal \^clear_wvalid\ : STD_LOGIC;
  signal \^currentstate_reg[1]\ : STD_LOGIC;
  signal \m_awvalid_i_1__2_n_0\ : STD_LOGIC;
  signal \m_bready_i_1__2_n_0\ : STD_LOGIC;
  signal \^m_bready_reg_0\ : STD_LOGIC;
  signal \^m_handshake1\ : STD_LOGIC;
  signal \^m_handshake2\ : STD_LOGIC;
  signal \m_wvalid_i_1__2_n_0\ : STD_LOGIC;
begin
  clear_awvalid <= \^clear_awvalid\;
  clear_bready <= \^clear_bready\;
  clear_wvalid <= \^clear_wvalid\;
  \currentState_reg[1]\ <= \^currentstate_reg[1]\;
  m_bready_reg_0 <= \^m_bready_reg_0\;
  m_handshake1 <= \^m_handshake1\;
  m_handshake2 <= \^m_handshake2\;
\m_awvalid_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => startClear_reg,
      I1 => \^m_handshake1\,
      I2 => \^clear_awvalid\,
      I3 => M_AXI_AWREADY,
      I4 => \currentState_reg[0]\,
      O => \m_awvalid_i_1__2_n_0\
    );
m_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_awvalid_i_1__2_n_0\,
      Q => \^clear_awvalid\,
      R => '0'
    );
\m_bready_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => startClear_reg,
      I1 => \^m_bready_reg_0\,
      I2 => \^clear_bready\,
      I3 => M_AXI_BVALID,
      I4 => \currentState_reg[0]\,
      O => \m_bready_i_1__2_n_0\
    );
m_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_bready_i_1__2_n_0\,
      Q => \^clear_bready\,
      R => '0'
    );
m_handshake1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_awvalid_reg_0,
      Q => \^m_handshake1\,
      R => '0'
    );
m_handshake2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake2_reg_0,
      Q => \^m_handshake2\,
      R => '0'
    );
m_handshake3_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake3_reg_0,
      Q => \^m_bready_reg_0\,
      R => '0'
    );
\m_wvalid_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => startClear_reg,
      I1 => \^m_handshake2\,
      I2 => \^clear_wvalid\,
      I3 => M_AXI_WREADY,
      I4 => \currentState_reg[0]\,
      O => \m_wvalid_i_1__2_n_0\
    );
m_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_wvalid_i_1__2_n_0\,
      Q => \^clear_wvalid\,
      R => '0'
    );
\nextState_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => \^currentstate_reg[1]\,
      I1 => Q(0),
      I2 => \currentState_reg[2]\,
      I3 => \currentState_reg[4]\,
      O => D(0)
    );
\nextState_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80008080"
    )
        port map (
      I0 => \^m_bready_reg_0\,
      I1 => \^m_handshake2\,
      I2 => \^m_handshake1\,
      I3 => \clearDelay_reg[18]\,
      I4 => \clearDelay_reg[10]\,
      O => \^currentstate_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_motion_detection_0_0_write_DMA_3 is
  port (
    clear_bready2 : out STD_LOGIC;
    m_handshake1 : out STD_LOGIC;
    clear_awvalid2 : out STD_LOGIC;
    m_handshake2 : out STD_LOGIC;
    clear_wvalid2 : out STD_LOGIC;
    m_bready_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \currentState_reg[3]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_awvalid_reg_0 : in STD_LOGIC;
    m_handshake2_reg_0 : in STD_LOGIC;
    m_handshake3_reg_0 : in STD_LOGIC;
    \currentState_reg[3]_0\ : in STD_LOGIC;
    \currentState_reg[3]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \currentState_reg[0]\ : in STD_LOGIC;
    clearDelay2_reg_2_sp_1 : in STD_LOGIC;
    \clearDelay2_reg[19]\ : in STD_LOGIC;
    \clearDelay2_reg[30]\ : in STD_LOGIC;
    clearDelay2_reg : in STD_LOGIC_VECTOR ( 6 downto 0 );
    startClear2 : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    \currentState_reg[0]_0\ : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_motion_detection_0_0_write_DMA_3 : entity is "write_DMA";
end hdmi_motion_detection_0_0_write_DMA_3;

architecture STRUCTURE of hdmi_motion_detection_0_0_write_DMA_3 is
  signal clearDelay2_reg_2_sn_1 : STD_LOGIC;
  signal \^clear_awvalid2\ : STD_LOGIC;
  signal \^clear_bready2\ : STD_LOGIC;
  signal \^clear_wvalid2\ : STD_LOGIC;
  signal \m_awvalid_i_1__1_n_0\ : STD_LOGIC;
  signal \m_bready_i_1__1_n_0\ : STD_LOGIC;
  signal \^m_bready_reg_0\ : STD_LOGIC;
  signal \^m_handshake1\ : STD_LOGIC;
  signal \^m_handshake2\ : STD_LOGIC;
  signal \m_wvalid_i_1__1_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_14_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_7_n_0\ : STD_LOGIC;
begin
  clearDelay2_reg_2_sn_1 <= clearDelay2_reg_2_sp_1;
  clear_awvalid2 <= \^clear_awvalid2\;
  clear_bready2 <= \^clear_bready2\;
  clear_wvalid2 <= \^clear_wvalid2\;
  m_bready_reg_0 <= \^m_bready_reg_0\;
  m_handshake1 <= \^m_handshake1\;
  m_handshake2 <= \^m_handshake2\;
\m_awvalid_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => startClear2,
      I1 => \^m_handshake1\,
      I2 => \^clear_awvalid2\,
      I3 => M_AXI_AWREADY,
      I4 => \currentState_reg[0]_0\,
      O => \m_awvalid_i_1__1_n_0\
    );
m_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_awvalid_i_1__1_n_0\,
      Q => \^clear_awvalid2\,
      R => '0'
    );
\m_bready_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => startClear2,
      I1 => \^m_bready_reg_0\,
      I2 => \^clear_bready2\,
      I3 => M_AXI_BVALID,
      I4 => \currentState_reg[0]_0\,
      O => \m_bready_i_1__1_n_0\
    );
m_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_bready_i_1__1_n_0\,
      Q => \^clear_bready2\,
      R => '0'
    );
m_handshake1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_awvalid_reg_0,
      Q => \^m_handshake1\,
      R => '0'
    );
m_handshake2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake2_reg_0,
      Q => \^m_handshake2\,
      R => '0'
    );
m_handshake3_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake3_reg_0,
      Q => \^m_bready_reg_0\,
      R => '0'
    );
\m_wvalid_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => startClear2,
      I1 => \^m_handshake2\,
      I2 => \^clear_wvalid2\,
      I3 => M_AXI_WREADY,
      I4 => \currentState_reg[0]_0\,
      O => \m_wvalid_i_1__1_n_0\
    );
m_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_wvalid_i_1__1_n_0\,
      Q => \^clear_wvalid2\,
      R => '0'
    );
\nextState_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00F2"
    )
        port map (
      I0 => \nextState_reg[2]_i_2_n_0\,
      I1 => \currentState_reg[3]_0\,
      I2 => \currentState_reg[3]_1\,
      I3 => Q(1),
      I4 => \currentState_reg[0]\,
      I5 => Q(3),
      O => D(0)
    );
\nextState_reg[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => clearDelay2_reg(0),
      I1 => clearDelay2_reg(2),
      I2 => \^m_handshake1\,
      I3 => \^m_handshake2\,
      I4 => \^m_bready_reg_0\,
      I5 => clearDelay2_reg(1),
      O => \nextState_reg[2]_i_14_n_0\
    );
\nextState_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clearDelay2_reg_2_sn_1,
      I1 => \nextState_reg[2]_i_7_n_0\,
      I2 => \clearDelay2_reg[19]\,
      I3 => \clearDelay2_reg[30]\,
      O => \nextState_reg[2]_i_2_n_0\
    );
\nextState_reg[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \nextState_reg[2]_i_14_n_0\,
      I1 => clearDelay2_reg(4),
      I2 => clearDelay2_reg(6),
      I3 => clearDelay2_reg(3),
      I4 => clearDelay2_reg(5),
      O => \nextState_reg[2]_i_7_n_0\
    );
\nextState_reg[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"27002727"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \nextState_reg[2]_i_2_n_0\,
      I4 => Q(2),
      O => \currentState_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_motion_detection_0_0_write_DMA_4 is
  port (
    clear_bready3 : out STD_LOGIC;
    m_handshake1 : out STD_LOGIC;
    clear_awvalid3 : out STD_LOGIC;
    m_handshake2 : out STD_LOGIC;
    clear_wvalid3 : out STD_LOGIC;
    m_bready_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \currentState_reg[3]\ : out STD_LOGIC;
    \currentState_reg[0]\ : out STD_LOGIC;
    \currentState_reg[2]\ : out STD_LOGIC;
    M_AXI_BREADY_reg : out STD_LOGIC;
    M_AXI_WVALID_reg : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_awvalid_reg_0 : in STD_LOGIC;
    m_handshake2_reg_0 : in STD_LOGIC;
    m_handshake3_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    receive_2_reg : in STD_LOGIC;
    \currentState_reg[4]\ : in STD_LOGIC;
    m_handshake1_reg_0 : in STD_LOGIC;
    \currentState_reg[1]\ : in STD_LOGIC;
    receive_1_reg : in STD_LOGIC;
    done : in STD_LOGIC;
    m_handshake3_reg_1 : in STD_LOGIC;
    \currentState_reg[2]_0\ : in STD_LOGIC;
    \clearDelay3_reg[10]\ : in STD_LOGIC;
    \clearDelay3_reg[18]\ : in STD_LOGIC;
    startClear3_reg : in STD_LOGIC;
    startClear2 : in STD_LOGIC;
    clear_bready2 : in STD_LOGIC;
    startClear_reg : in STD_LOGIC;
    clear_wvalid2 : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    \currentState_reg[0]_0\ : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_motion_detection_0_0_write_DMA_4 : entity is "write_DMA";
end hdmi_motion_detection_0_0_write_DMA_4;

architecture STRUCTURE of hdmi_motion_detection_0_0_write_DMA_4 is
  signal \^clear_awvalid3\ : STD_LOGIC;
  signal \^clear_bready3\ : STD_LOGIC;
  signal \^clear_wvalid3\ : STD_LOGIC;
  signal \^currentstate_reg[3]\ : STD_LOGIC;
  signal \m_awvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \m_bready_i_1__0_n_0\ : STD_LOGIC;
  signal \^m_bready_reg_0\ : STD_LOGIC;
  signal \^m_handshake1\ : STD_LOGIC;
  signal \^m_handshake2\ : STD_LOGIC;
  signal \m_wvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \nextState_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \nextState_reg[4]_i_5_n_0\ : STD_LOGIC;
begin
  clear_awvalid3 <= \^clear_awvalid3\;
  clear_bready3 <= \^clear_bready3\;
  clear_wvalid3 <= \^clear_wvalid3\;
  \currentState_reg[3]\ <= \^currentstate_reg[3]\;
  m_bready_reg_0 <= \^m_bready_reg_0\;
  m_handshake1 <= \^m_handshake1\;
  m_handshake2 <= \^m_handshake2\;
M_AXI_BREADY_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808FFFF"
    )
        port map (
      I0 => \^clear_bready3\,
      I1 => startClear3_reg,
      I2 => startClear2,
      I3 => clear_bready2,
      I4 => startClear_reg,
      O => M_AXI_BREADY_reg
    );
M_AXI_WVALID_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F808FFFF"
    )
        port map (
      I0 => \^clear_wvalid3\,
      I1 => startClear3_reg,
      I2 => startClear2,
      I3 => clear_wvalid2,
      I4 => startClear_reg,
      O => M_AXI_WVALID_reg
    );
\m_awvalid_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => startClear3_reg,
      I1 => \^m_handshake1\,
      I2 => \^clear_awvalid3\,
      I3 => M_AXI_AWREADY,
      I4 => \currentState_reg[0]_0\,
      O => \m_awvalid_i_1__0_n_0\
    );
m_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_awvalid_i_1__0_n_0\,
      Q => \^clear_awvalid3\,
      R => '0'
    );
\m_bready_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => startClear3_reg,
      I1 => \^m_bready_reg_0\,
      I2 => \^clear_bready3\,
      I3 => M_AXI_BVALID,
      I4 => \currentState_reg[0]_0\,
      O => \m_bready_i_1__0_n_0\
    );
m_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_bready_i_1__0_n_0\,
      Q => \^clear_bready3\,
      R => '0'
    );
m_handshake1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_awvalid_reg_0,
      Q => \^m_handshake1\,
      R => '0'
    );
m_handshake2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake2_reg_0,
      Q => \^m_handshake2\,
      R => '0'
    );
m_handshake3_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake3_reg_0,
      Q => \^m_bready_reg_0\,
      R => '0'
    );
\m_wvalid_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => startClear3_reg,
      I1 => \^m_handshake2\,
      I2 => \^clear_wvalid3\,
      I3 => M_AXI_WREADY,
      I4 => \currentState_reg[0]_0\,
      O => \m_wvalid_i_1__0_n_0\
    );
m_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_wvalid_i_1__0_n_0\,
      Q => \^clear_wvalid3\,
      R => '0'
    );
\nextState_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008888FF008F8F"
    )
        port map (
      I0 => \nextState_reg[4]_i_5_n_0\,
      I1 => Q(3),
      I2 => receive_1_reg,
      I3 => done,
      I4 => Q(0),
      I5 => Q(2),
      O => \currentState_reg[0]\
    );
\nextState_reg[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFFFE0FF"
    )
        port map (
      I0 => Q(0),
      I1 => \nextState_reg[4]_i_5_n_0\,
      I2 => Q(2),
      I3 => Q(3),
      I4 => m_handshake3_reg_1,
      I5 => \currentState_reg[2]_0\,
      O => \currentState_reg[2]\
    );
\nextState_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => \^currentstate_reg[3]\,
      I1 => Q(4),
      I2 => receive_2_reg,
      I3 => \currentState_reg[4]\,
      I4 => Q(3),
      O => D(0)
    );
\nextState_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FD5D0000"
    )
        port map (
      I0 => Q(2),
      I1 => \nextState_reg[4]_i_5_n_0\,
      I2 => Q(0),
      I3 => m_handshake1_reg_0,
      I4 => Q(3),
      I5 => \currentState_reg[1]\,
      O => \^currentstate_reg[3]\
    );
\nextState_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0000"
    )
        port map (
      I0 => \nextState_reg[4]_i_3_n_0\,
      I1 => Q(1),
      I2 => \currentState_reg[4]\,
      I3 => Q(4),
      I4 => Q(3),
      O => D(1)
    );
\nextState_reg[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => \nextState_reg[4]_i_5_n_0\,
      O => \nextState_reg[4]_i_3_n_0\
    );
\nextState_reg[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7FFF7F"
    )
        port map (
      I0 => \^m_bready_reg_0\,
      I1 => \^m_handshake2\,
      I2 => \^m_handshake1\,
      I3 => \clearDelay3_reg[10]\,
      I4 => \clearDelay3_reg[18]\,
      O => \nextState_reg[4]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_motion_detection_0_0_write_DMA_5 is
  port (
    clear_bready4 : out STD_LOGIC;
    m_handshake1 : out STD_LOGIC;
    m_awvalid_reg_0 : out STD_LOGIC;
    m_handshake2 : out STD_LOGIC;
    m_wvalid_reg_0 : out STD_LOGIC;
    m_bready_reg_0 : out STD_LOGIC;
    \currentState_reg[3]\ : out STD_LOGIC;
    M_AXI_AWVALID_reg : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_awvalid_reg_1 : in STD_LOGIC;
    m_handshake2_reg_0 : in STD_LOGIC;
    m_handshake3_reg_0 : in STD_LOGIC;
    \clearDelay4_reg[18]\ : in STD_LOGIC;
    \clearDelay4_reg[26]\ : in STD_LOGIC;
    \clearDelay4_reg[2]\ : in STD_LOGIC;
    \clearDelay4_reg[10]\ : in STD_LOGIC;
    startClear4_reg : in STD_LOGIC;
    clear_awvalid3 : in STD_LOGIC;
    startClear3_reg : in STD_LOGIC;
    startClear2 : in STD_LOGIC;
    clear_awvalid2 : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    \currentState_reg[0]\ : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_motion_detection_0_0_write_DMA_5 : entity is "write_DMA";
end hdmi_motion_detection_0_0_write_DMA_5;

architecture STRUCTURE of hdmi_motion_detection_0_0_write_DMA_5 is
  signal \^clear_bready4\ : STD_LOGIC;
  signal m_awvalid_i_1_n_0 : STD_LOGIC;
  signal \^m_awvalid_reg_0\ : STD_LOGIC;
  signal m_bready_i_1_n_0 : STD_LOGIC;
  signal \^m_bready_reg_0\ : STD_LOGIC;
  signal \^m_handshake1\ : STD_LOGIC;
  signal \^m_handshake2\ : STD_LOGIC;
  signal m_wvalid_i_1_n_0 : STD_LOGIC;
  signal \^m_wvalid_reg_0\ : STD_LOGIC;
  signal \nextState_reg[3]_i_7_n_0\ : STD_LOGIC;
begin
  clear_bready4 <= \^clear_bready4\;
  m_awvalid_reg_0 <= \^m_awvalid_reg_0\;
  m_bready_reg_0 <= \^m_bready_reg_0\;
  m_handshake1 <= \^m_handshake1\;
  m_handshake2 <= \^m_handshake2\;
  m_wvalid_reg_0 <= \^m_wvalid_reg_0\;
M_AXI_AWVALID_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F77FFFF0F77"
    )
        port map (
      I0 => \^m_awvalid_reg_0\,
      I1 => startClear4_reg,
      I2 => clear_awvalid3,
      I3 => startClear3_reg,
      I4 => startClear2,
      I5 => clear_awvalid2,
      O => M_AXI_AWVALID_reg
    );
m_awvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => startClear4_reg,
      I1 => \^m_handshake1\,
      I2 => \^m_awvalid_reg_0\,
      I3 => M_AXI_AWREADY,
      I4 => \currentState_reg[0]\,
      O => m_awvalid_i_1_n_0
    );
m_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_awvalid_i_1_n_0,
      Q => \^m_awvalid_reg_0\,
      R => '0'
    );
m_bready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => startClear4_reg,
      I1 => \^m_bready_reg_0\,
      I2 => \^clear_bready4\,
      I3 => M_AXI_BVALID,
      I4 => \currentState_reg[0]\,
      O => m_bready_i_1_n_0
    );
m_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_bready_i_1_n_0,
      Q => \^clear_bready4\,
      R => '0'
    );
m_handshake1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_awvalid_reg_1,
      Q => \^m_handshake1\,
      R => '0'
    );
m_handshake2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake2_reg_0,
      Q => \^m_handshake2\,
      R => '0'
    );
m_handshake3_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_handshake3_reg_0,
      Q => \^m_bready_reg_0\,
      R => '0'
    );
m_wvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2F20000"
    )
        port map (
      I0 => startClear4_reg,
      I1 => \^m_handshake2\,
      I2 => \^m_wvalid_reg_0\,
      I3 => M_AXI_WREADY,
      I4 => \currentState_reg[0]\,
      O => m_wvalid_i_1_n_0
    );
m_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_wvalid_i_1_n_0,
      Q => \^m_wvalid_reg_0\,
      R => '0'
    );
\nextState_reg[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => \nextState_reg[3]_i_7_n_0\,
      I1 => \clearDelay4_reg[18]\,
      I2 => \clearDelay4_reg[26]\,
      I3 => \clearDelay4_reg[2]\,
      I4 => \clearDelay4_reg[10]\,
      O => \currentState_reg[3]\
    );
\nextState_reg[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^m_handshake1\,
      I1 => \^m_handshake2\,
      I2 => \^m_bready_reg_0\,
      O => \nextState_reg[3]_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_motion_detection_0_0_motion_v1_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_TREADY : out STD_LOGIC;
    finish_read1 : out STD_LOGIC;
    finish_read2 : out STD_LOGIC;
    motion_detected : out STD_LOGIC;
    start3 : out STD_LOGIC;
    start2 : out STD_LOGIC;
    start1 : out STD_LOGIC;
    \gray2[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \gray1[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    done : out STD_LOGIC;
    dma_base : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_S2MM_TDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_TVALID : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_TDATA : in STD_LOGIC_VECTOR ( 27 downto 0 );
    aclk : in STD_LOGIC;
    S_AXI_S2MM_TREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_TLAST : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_motion_detection_0_0_motion_v1_0 : entity is "motion_v1_0";
end hdmi_motion_detection_0_0_motion_v1_0;

architecture STRUCTURE of hdmi_motion_detection_0_0_motion_v1_0 is
  signal \M_AXI_AWADDR[6]_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[6]_i_5_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[6]_i_6_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[6]_i_7_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[6]_i_8_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR[6]_i_9_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[10]_i_2_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[10]_i_2_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[10]_i_2_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[10]_i_3_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[10]_i_3_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[10]_i_3_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[14]_i_2_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[14]_i_2_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[14]_i_2_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[14]_i_3_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[14]_i_3_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[14]_i_3_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[18]_i_2_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[18]_i_2_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[18]_i_2_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[18]_i_3_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[18]_i_3_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[18]_i_3_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[22]_i_2_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[22]_i_2_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[22]_i_2_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[22]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[22]_i_3_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[22]_i_3_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[22]_i_3_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[26]_i_2_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[26]_i_2_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[26]_i_2_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[26]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[26]_i_3_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[26]_i_3_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[26]_i_3_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[30]_i_2_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[30]_i_2_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[30]_i_2_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[30]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[30]_i_3_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[30]_i_3_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[30]_i_3_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[6]_i_2_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[6]_i_2_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[6]_i_3_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[6]_i_3_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR_reg[6]_i_3_n_3\ : STD_LOGIC;
  signal \M_AXI_WDATA[0]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[10]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[11]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[12]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[13]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[15]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[16]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[17]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[18]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[19]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[1]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[20]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[21]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[22]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[23]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[24]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[25]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[26]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[27]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[28]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[29]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[2]_i_5_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[30]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[31]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[3]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[8]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[9]_i_1_n_0\ : STD_LOGIC;
  signal M_AXI_WVALID_i_3_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_s2mm_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \S_AXI_S2MM_TDATA[31]_i_11_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_12_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_13_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_14_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_16_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_17_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_18_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_19_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_20_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_21_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_22_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_23_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_6_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_7_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_8_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA[31]_i_9_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_10_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_10_n_1\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_10_n_2\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_10_n_3\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_15_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_15_n_1\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_15_n_2\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_15_n_3\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_4_n_1\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_5_n_1\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_5_n_2\ : STD_LOGIC;
  signal \S_AXI_S2MM_TDATA_reg[31]_i_5_n_3\ : STD_LOGIC;
  signal \^s_axi_tready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal addr0 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal addr02_out : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \clearDelay2[0]_i_3_n_0\ : STD_LOGIC;
  signal clearDelay2_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clearDelay2_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \clearDelay2_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \clearDelay2_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \clearDelay2_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \clearDelay2_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \clearDelay2_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \clearDelay2_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \clearDelay2_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \clearDelay2_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay2_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay2_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay2_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay2_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay2_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay2_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay2_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay2_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay2_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay2_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay2_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay2_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay2_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay2_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay2_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay2_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay2_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay2_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay2_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay2_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay2_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay2_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay2_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay2_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay2_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay2_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay2_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay2_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay2_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay2_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay2_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay2_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay2_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay2_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay2_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay2_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay2_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay2_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay2_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay2_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay2_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay2_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay2_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay2_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay2_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay2_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay2_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay3[0]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay3[0]_i_3_n_0\ : STD_LOGIC;
  signal clearDelay3_reg : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \clearDelay3_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \clearDelay3_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \clearDelay3_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \clearDelay3_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \clearDelay3_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \clearDelay3_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \clearDelay3_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \clearDelay3_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \clearDelay3_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay3_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay3_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay3_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay3_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay3_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay3_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay3_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay3_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay3_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay3_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay3_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay3_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay3_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay3_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay3_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay3_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay3_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay3_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay3_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay3_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay3_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay3_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay3_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay3_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay3_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay3_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay3_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay3_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay3_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay3_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay3_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay3_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay3_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay3_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay3_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay3_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay3_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay3_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay3_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay3_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay3_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay3_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay3_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay3_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay3_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay3_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay3_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay3_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay3_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay3_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay3_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay3_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay3_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay3_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay3_reg_n_0_[0]\ : STD_LOGIC;
  signal \clearDelay3_reg_n_0_[1]\ : STD_LOGIC;
  signal \clearDelay3_reg_n_0_[2]\ : STD_LOGIC;
  signal \clearDelay3_reg_n_0_[3]\ : STD_LOGIC;
  signal \clearDelay4[0]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay4[0]_i_3_n_0\ : STD_LOGIC;
  signal clearDelay4_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \clearDelay4_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \clearDelay4_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \clearDelay4_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \clearDelay4_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \clearDelay4_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \clearDelay4_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \clearDelay4_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \clearDelay4_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \clearDelay4_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay4_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay4_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay4_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay4_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay4_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay4_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay4_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay4_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay4_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay4_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay4_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay4_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay4_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay4_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay4_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay4_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay4_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay4_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay4_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay4_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay4_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay4_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay4_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay4_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay4_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay4_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay4_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay4_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay4_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay4_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay4_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay4_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay4_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay4_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay4_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay4_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay4_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay4_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay4_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay4_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay4_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay4_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay4_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay4_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay4_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay4_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay4_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay4_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay4_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay4_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay4_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay4_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay4_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay4_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay[0]_i_3_n_0\ : STD_LOGIC;
  signal clearDelay_reg : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \clearDelay_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \clearDelay_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \clearDelay_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \clearDelay_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \clearDelay_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \clearDelay_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \clearDelay_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \clearDelay_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \clearDelay_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clearDelay_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clearDelay_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clearDelay_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clearDelay_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clearDelay_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clearDelay_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clearDelay_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clearDelay_reg_n_0_[0]\ : STD_LOGIC;
  signal \clearDelay_reg_n_0_[1]\ : STD_LOGIC;
  signal \clearDelay_reg_n_0_[2]\ : STD_LOGIC;
  signal \clearDelay_reg_n_0_[3]\ : STD_LOGIC;
  signal clear_awvalid : STD_LOGIC;
  signal clear_awvalid2 : STD_LOGIC;
  signal clear_awvalid3 : STD_LOGIC;
  signal clear_bready : STD_LOGIC;
  signal clear_bready2 : STD_LOGIC;
  signal clear_bready3 : STD_LOGIC;
  signal clear_bready4 : STD_LOGIC;
  signal clear_wvalid : STD_LOGIC;
  signal clear_wvalid2 : STD_LOGIC;
  signal clear_wvalid3 : STD_LOGIC;
  signal column_count : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \column_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \column_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \column_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \column_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \column_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \column_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \column_count_reg_n_0_[4]\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal \delayCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \delayCounter[0]_i_3_n_0\ : STD_LOGIC;
  signal delayCounter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \delayCounter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \delayCounter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \delayCounter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \delayCounter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \delayCounter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \delayCounter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \delayCounter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \delayCounter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \delayCounter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \delayCounter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \delayCounter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \delayCounter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \delayCounter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \delayCounter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \delayCounter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \delayCounter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \delayCounter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \delayCounter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \delayCounter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \delayCounter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \delayCounter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \delayCounter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \delayCounter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \delayCounter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \delayCounter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \delayCounter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \delayCounter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \delayCounter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \delayCounter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \delayCounter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \delayCounter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \delayCounter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \delayCounter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \delayCounter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \delayCounter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \delayCounter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \delayCounter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \delayCounter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \delayCounter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \delayCounter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \delayCounter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \delayCounter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \delayCounter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \delayCounter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \delayCounter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \delayCounter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \delayCounter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \delayCounter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \delayCounter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \delayCounter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \delayCounter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \delayCounter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \delayCounter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \delayCounter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \delayCounter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \delayCounter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \delayCounter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \delayCounter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \delayCounter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \delayCounter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \delayCounter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \delayCounter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \delayCounter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal delay_S_AXI_TLAST : STD_LOGIC;
  signal delay_S_AXI_TLAST_reg_n_0 : STD_LOGIC;
  signal delay_tvalid : STD_LOGIC;
  signal \^dma_base\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \dma_init[31]_i_1_n_0\ : STD_LOGIC;
  signal \dma_init[31]_i_3_n_0\ : STD_LOGIC;
  signal \dma_init[6]_i_3_n_0\ : STD_LOGIC;
  signal \dma_init[6]_i_4_n_0\ : STD_LOGIC;
  signal \dma_init_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \dma_init_reg[10]_i_2_n_1\ : STD_LOGIC;
  signal \dma_init_reg[10]_i_2_n_2\ : STD_LOGIC;
  signal \dma_init_reg[10]_i_2_n_3\ : STD_LOGIC;
  signal \dma_init_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \dma_init_reg[14]_i_2_n_1\ : STD_LOGIC;
  signal \dma_init_reg[14]_i_2_n_2\ : STD_LOGIC;
  signal \dma_init_reg[14]_i_2_n_3\ : STD_LOGIC;
  signal \dma_init_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \dma_init_reg[18]_i_2_n_1\ : STD_LOGIC;
  signal \dma_init_reg[18]_i_2_n_2\ : STD_LOGIC;
  signal \dma_init_reg[18]_i_2_n_3\ : STD_LOGIC;
  signal \dma_init_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \dma_init_reg[22]_i_2_n_1\ : STD_LOGIC;
  signal \dma_init_reg[22]_i_2_n_2\ : STD_LOGIC;
  signal \dma_init_reg[22]_i_2_n_3\ : STD_LOGIC;
  signal \dma_init_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \dma_init_reg[26]_i_2_n_1\ : STD_LOGIC;
  signal \dma_init_reg[26]_i_2_n_2\ : STD_LOGIC;
  signal \dma_init_reg[26]_i_2_n_3\ : STD_LOGIC;
  signal \dma_init_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \dma_init_reg[30]_i_2_n_1\ : STD_LOGIC;
  signal \dma_init_reg[30]_i_2_n_2\ : STD_LOGIC;
  signal \dma_init_reg[30]_i_2_n_3\ : STD_LOGIC;
  signal \dma_init_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \dma_init_reg[6]_i_2_n_1\ : STD_LOGIC;
  signal \dma_init_reg[6]_i_2_n_2\ : STD_LOGIC;
  signal \dma_init_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal \^finish_read1\ : STD_LOGIC;
  signal \^finish_read2\ : STD_LOGIC;
  signal finish_send : STD_LOGIC;
  signal finish_send_i_1_n_0 : STD_LOGIC;
  signal finish_send_i_2_n_0 : STD_LOGIC;
  signal finish_send_i_3_n_0 : STD_LOGIC;
  signal finish_send_i_4_n_0 : STD_LOGIC;
  signal finish_send_i_5_n_0 : STD_LOGIC;
  signal finish_send_i_6_n_0 : STD_LOGIC;
  signal finish_send_i_7_n_0 : STD_LOGIC;
  signal finish_send_i_8_n_0 : STD_LOGIC;
  signal finish_send_i_9_n_0 : STD_LOGIC;
  signal gray10 : STD_LOGIC;
  signal \gray1[11]_i_100_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_101_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_102_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_103_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_104_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_105_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_106_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_107_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_108_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_109_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_10_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_110_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_111_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_112_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_113_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_114_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_115_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_116_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_117_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_118_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_119_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_11_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_120_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_121_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_122_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_123_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_124_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_125_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_12_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_13_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_17_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_20_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_21_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_22_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_23_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_24_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_25_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_26_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_27_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_28_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_29_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_2_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_30_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_31_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_32_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_33_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_34_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_35_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_36_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_37_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_38_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_39_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_3_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_40_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_41_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_42_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_43_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_44_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_45_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_46_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_47_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_48_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_49_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_4_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_50_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_51_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_52_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_53_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_54_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_55_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_56_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_57_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_58_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_59_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_5_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_60_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_61_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_64_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_66_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_67_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_68_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_69_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_70_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_72_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_74_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_75_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_76_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_77_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_78_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_79_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_7_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_80_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_82_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_83_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_84_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_85_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_86_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_87_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_88_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_89_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_8_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_90_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_91_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_92_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_93_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_94_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_95_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_96_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_97_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_98_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_99_n_0\ : STD_LOGIC;
  signal \gray1[11]_i_9_n_0\ : STD_LOGIC;
  signal \^gray1[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gray1[31]_i_1_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_11_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_12_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_13_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_14_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_15_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_16_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_17_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_18_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_19_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_20_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_21_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_22_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_23_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_2_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_3_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_4_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_5_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_7_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_8_n_0\ : STD_LOGIC;
  signal \gray1[3]_i_9_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_10_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_11_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_12_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_13_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_14_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_15_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_16_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_17_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_20_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_21_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_22_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_23_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_24_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_25_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_26_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_27_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_28_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_29_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_2_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_30_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_31_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_32_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_33_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_34_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_35_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_36_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_37_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_38_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_39_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_3_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_40_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_41_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_42_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_43_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_44_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_45_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_46_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_47_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_48_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_49_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_4_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_50_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_51_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_52_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_53_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_54_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_55_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_5_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_7_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_8_n_0\ : STD_LOGIC;
  signal \gray1[7]_i_9_n_0\ : STD_LOGIC;
  signal \gray1_reg[11]_i_14_n_1\ : STD_LOGIC;
  signal \gray1_reg[11]_i_14_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_14_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_14_n_4\ : STD_LOGIC;
  signal \gray1_reg[11]_i_14_n_5\ : STD_LOGIC;
  signal \gray1_reg[11]_i_14_n_6\ : STD_LOGIC;
  signal \gray1_reg[11]_i_14_n_7\ : STD_LOGIC;
  signal \gray1_reg[11]_i_15_n_1\ : STD_LOGIC;
  signal \gray1_reg[11]_i_15_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_15_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_15_n_4\ : STD_LOGIC;
  signal \gray1_reg[11]_i_15_n_5\ : STD_LOGIC;
  signal \gray1_reg[11]_i_15_n_6\ : STD_LOGIC;
  signal \gray1_reg[11]_i_15_n_7\ : STD_LOGIC;
  signal \gray1_reg[11]_i_16_n_0\ : STD_LOGIC;
  signal \gray1_reg[11]_i_16_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_16_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_16_n_5\ : STD_LOGIC;
  signal \gray1_reg[11]_i_16_n_6\ : STD_LOGIC;
  signal \gray1_reg[11]_i_16_n_7\ : STD_LOGIC;
  signal \gray1_reg[11]_i_18_n_0\ : STD_LOGIC;
  signal \gray1_reg[11]_i_18_n_1\ : STD_LOGIC;
  signal \gray1_reg[11]_i_18_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_18_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_18_n_4\ : STD_LOGIC;
  signal \gray1_reg[11]_i_18_n_5\ : STD_LOGIC;
  signal \gray1_reg[11]_i_18_n_6\ : STD_LOGIC;
  signal \gray1_reg[11]_i_18_n_7\ : STD_LOGIC;
  signal \gray1_reg[11]_i_19_n_0\ : STD_LOGIC;
  signal \gray1_reg[11]_i_19_n_1\ : STD_LOGIC;
  signal \gray1_reg[11]_i_19_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_19_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_19_n_4\ : STD_LOGIC;
  signal \gray1_reg[11]_i_19_n_5\ : STD_LOGIC;
  signal \gray1_reg[11]_i_19_n_6\ : STD_LOGIC;
  signal \gray1_reg[11]_i_19_n_7\ : STD_LOGIC;
  signal \gray1_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \gray1_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \gray1_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \gray1_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \gray1_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \gray1_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \gray1_reg[11]_i_62_n_0\ : STD_LOGIC;
  signal \gray1_reg[11]_i_62_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_62_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_62_n_5\ : STD_LOGIC;
  signal \gray1_reg[11]_i_62_n_6\ : STD_LOGIC;
  signal \gray1_reg[11]_i_62_n_7\ : STD_LOGIC;
  signal \gray1_reg[11]_i_63_n_0\ : STD_LOGIC;
  signal \gray1_reg[11]_i_63_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_63_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_63_n_5\ : STD_LOGIC;
  signal \gray1_reg[11]_i_63_n_6\ : STD_LOGIC;
  signal \gray1_reg[11]_i_63_n_7\ : STD_LOGIC;
  signal \gray1_reg[11]_i_65_n_0\ : STD_LOGIC;
  signal \gray1_reg[11]_i_65_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_65_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_65_n_5\ : STD_LOGIC;
  signal \gray1_reg[11]_i_65_n_6\ : STD_LOGIC;
  signal \gray1_reg[11]_i_65_n_7\ : STD_LOGIC;
  signal \gray1_reg[11]_i_6_n_1\ : STD_LOGIC;
  signal \gray1_reg[11]_i_6_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_6_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_71_n_0\ : STD_LOGIC;
  signal \gray1_reg[11]_i_71_n_1\ : STD_LOGIC;
  signal \gray1_reg[11]_i_71_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_71_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_71_n_4\ : STD_LOGIC;
  signal \gray1_reg[11]_i_71_n_5\ : STD_LOGIC;
  signal \gray1_reg[11]_i_71_n_6\ : STD_LOGIC;
  signal \gray1_reg[11]_i_71_n_7\ : STD_LOGIC;
  signal \gray1_reg[11]_i_73_n_0\ : STD_LOGIC;
  signal \gray1_reg[11]_i_73_n_1\ : STD_LOGIC;
  signal \gray1_reg[11]_i_73_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_73_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_73_n_4\ : STD_LOGIC;
  signal \gray1_reg[11]_i_73_n_5\ : STD_LOGIC;
  signal \gray1_reg[11]_i_73_n_6\ : STD_LOGIC;
  signal \gray1_reg[11]_i_73_n_7\ : STD_LOGIC;
  signal \gray1_reg[11]_i_81_n_0\ : STD_LOGIC;
  signal \gray1_reg[11]_i_81_n_1\ : STD_LOGIC;
  signal \gray1_reg[11]_i_81_n_2\ : STD_LOGIC;
  signal \gray1_reg[11]_i_81_n_3\ : STD_LOGIC;
  signal \gray1_reg[11]_i_81_n_4\ : STD_LOGIC;
  signal \gray1_reg[11]_i_81_n_5\ : STD_LOGIC;
  signal \gray1_reg[11]_i_81_n_6\ : STD_LOGIC;
  signal \gray1_reg[11]_i_81_n_7\ : STD_LOGIC;
  signal \gray1_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \gray1_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \gray1_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \gray1_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \gray1_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \gray1_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \gray1_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \gray1_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \gray1_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \gray1_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \gray1_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \gray1_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \gray1_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \gray1_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \gray1_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \gray1_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \gray1_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \gray1_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \gray1_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \gray1_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \gray1_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \gray1_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \gray1_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \gray1_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \gray1_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \gray1_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \gray1_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \gray1_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \gray1_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \gray1_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \gray1_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \gray1_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \gray1_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \gray1_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \gray1_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \gray1_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \gray1_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \gray1_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \gray1_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \gray1_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \gray1_reg[3]_i_10_n_1\ : STD_LOGIC;
  signal \gray1_reg[3]_i_10_n_2\ : STD_LOGIC;
  signal \gray1_reg[3]_i_10_n_3\ : STD_LOGIC;
  signal \gray1_reg[3]_i_10_n_4\ : STD_LOGIC;
  signal \gray1_reg[3]_i_10_n_5\ : STD_LOGIC;
  signal \gray1_reg[3]_i_10_n_6\ : STD_LOGIC;
  signal \gray1_reg[3]_i_10_n_7\ : STD_LOGIC;
  signal \gray1_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gray1_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gray1_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gray1_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gray1_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \gray1_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \gray1_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \gray1_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \gray1_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \gray1_reg[3]_i_6_n_1\ : STD_LOGIC;
  signal \gray1_reg[3]_i_6_n_2\ : STD_LOGIC;
  signal \gray1_reg[3]_i_6_n_3\ : STD_LOGIC;
  signal \gray1_reg[7]_i_18_n_0\ : STD_LOGIC;
  signal \gray1_reg[7]_i_18_n_1\ : STD_LOGIC;
  signal \gray1_reg[7]_i_18_n_2\ : STD_LOGIC;
  signal \gray1_reg[7]_i_18_n_3\ : STD_LOGIC;
  signal \gray1_reg[7]_i_18_n_4\ : STD_LOGIC;
  signal \gray1_reg[7]_i_18_n_5\ : STD_LOGIC;
  signal \gray1_reg[7]_i_18_n_6\ : STD_LOGIC;
  signal \gray1_reg[7]_i_18_n_7\ : STD_LOGIC;
  signal \gray1_reg[7]_i_19_n_0\ : STD_LOGIC;
  signal \gray1_reg[7]_i_19_n_1\ : STD_LOGIC;
  signal \gray1_reg[7]_i_19_n_2\ : STD_LOGIC;
  signal \gray1_reg[7]_i_19_n_3\ : STD_LOGIC;
  signal \gray1_reg[7]_i_19_n_4\ : STD_LOGIC;
  signal \gray1_reg[7]_i_19_n_5\ : STD_LOGIC;
  signal \gray1_reg[7]_i_19_n_6\ : STD_LOGIC;
  signal \gray1_reg[7]_i_19_n_7\ : STD_LOGIC;
  signal \gray1_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gray1_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gray1_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gray1_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gray1_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gray1_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gray1_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gray1_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \gray1_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \gray1_reg[7]_i_6_n_1\ : STD_LOGIC;
  signal \gray1_reg[7]_i_6_n_2\ : STD_LOGIC;
  signal \gray1_reg[7]_i_6_n_3\ : STD_LOGIC;
  signal gray20 : STD_LOGIC;
  signal \gray2[11]_i_2_n_0\ : STD_LOGIC;
  signal \gray2[11]_i_3_n_0\ : STD_LOGIC;
  signal \gray2[11]_i_4_n_0\ : STD_LOGIC;
  signal \gray2[11]_i_5_n_0\ : STD_LOGIC;
  signal \^gray2[31]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gray2[31]_i_1_n_0\ : STD_LOGIC;
  signal \gray2[3]_i_2_n_0\ : STD_LOGIC;
  signal \gray2[3]_i_3_n_0\ : STD_LOGIC;
  signal \gray2[3]_i_4_n_0\ : STD_LOGIC;
  signal \gray2[3]_i_5_n_0\ : STD_LOGIC;
  signal \gray2[7]_i_2_n_0\ : STD_LOGIC;
  signal \gray2[7]_i_3_n_0\ : STD_LOGIC;
  signal \gray2[7]_i_4_n_0\ : STD_LOGIC;
  signal \gray2[7]_i_5_n_0\ : STD_LOGIC;
  signal \gray2_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \gray2_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \gray2_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \gray2_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \gray2_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \gray2_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \gray2_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \gray2_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \gray2_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \gray2_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \gray2_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \gray2_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \gray2_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \gray2_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \gray2_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \gray2_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \gray2_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \gray2_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \gray2_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \gray2_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \gray2_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \gray2_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \gray2_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \gray2_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \gray2_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \gray2_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \gray2_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \gray2_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \gray2_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \gray2_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \gray2_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \gray2_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \gray2_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \gray2_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \gray2_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \gray2_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \gray2_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \gray2_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \gray2_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \gray2_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \gray2_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \gray2_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \gray2_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \gray2_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \gray2_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \gray2_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \gray2_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \gray2_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gray2_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gray2_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gray2_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gray2_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \gray2_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \gray2_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \gray2_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \gray2_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gray2_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gray2_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gray2_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gray2_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \gray2_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gray2_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gray2_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal grayResult : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \initS2MMClearSDelay[0]_i_1_n_0\ : STD_LOGIC;
  signal \initS2MMClearSDelay[0]_i_3_n_0\ : STD_LOGIC;
  signal initS2MMClearSDelay_reg : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \initS2MMClearSDelay_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg_n_0_[0]\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg_n_0_[1]\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg_n_0_[2]\ : STD_LOGIC;
  signal \initS2MMClearSDelay_reg_n_0_[3]\ : STD_LOGIC;
  signal m_handshake1 : STD_LOGIC;
  signal m_handshake1_1 : STD_LOGIC;
  signal m_handshake1_11 : STD_LOGIC;
  signal m_handshake1_3 : STD_LOGIC;
  signal m_handshake1_5 : STD_LOGIC;
  signal m_handshake1_7 : STD_LOGIC;
  signal m_handshake1_9 : STD_LOGIC;
  signal \m_handshake1_i_1__0_n_0\ : STD_LOGIC;
  signal \m_handshake1_i_1__1_n_0\ : STD_LOGIC;
  signal \m_handshake1_i_1__2_n_0\ : STD_LOGIC;
  signal \m_handshake1_i_1__3_n_0\ : STD_LOGIC;
  signal \m_handshake1_i_1__4_n_0\ : STD_LOGIC;
  signal \m_handshake1_i_1__5_n_0\ : STD_LOGIC;
  signal m_handshake1_i_1_n_0 : STD_LOGIC;
  signal m_handshake2 : STD_LOGIC;
  signal m_handshake2_0 : STD_LOGIC;
  signal m_handshake2_10 : STD_LOGIC;
  signal m_handshake2_2 : STD_LOGIC;
  signal m_handshake2_4 : STD_LOGIC;
  signal m_handshake2_6 : STD_LOGIC;
  signal m_handshake2_8 : STD_LOGIC;
  signal \m_handshake2_i_1__0_n_0\ : STD_LOGIC;
  signal \m_handshake2_i_1__1_n_0\ : STD_LOGIC;
  signal \m_handshake2_i_1__2_n_0\ : STD_LOGIC;
  signal \m_handshake2_i_1__3_n_0\ : STD_LOGIC;
  signal \m_handshake2_i_1__4_n_0\ : STD_LOGIC;
  signal \m_handshake2_i_1__5_n_0\ : STD_LOGIC;
  signal m_handshake2_i_1_n_0 : STD_LOGIC;
  signal m_handshake3 : STD_LOGIC;
  signal \m_handshake3_i_1__0_n_0\ : STD_LOGIC;
  signal \m_handshake3_i_1__1_n_0\ : STD_LOGIC;
  signal \m_handshake3_i_1__2_n_0\ : STD_LOGIC;
  signal \m_handshake3_i_1__3_n_0\ : STD_LOGIC;
  signal \m_handshake3_i_1__4_n_0\ : STD_LOGIC;
  signal \m_handshake3_i_1__5_n_0\ : STD_LOGIC;
  signal m_handshake3_i_1_n_0 : STD_LOGIC;
  signal maxDiffCol : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \maxDiffCol[4]_i_1_n_0\ : STD_LOGIC;
  signal \maxDiffCol[4]_i_2_n_0\ : STD_LOGIC;
  signal maxDiffRow : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^motion_detected\ : STD_LOGIC;
  signal motion_detected_INST_0_i_100_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_101_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_102_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_103_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_104_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_105_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_106_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_107_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_108_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_10_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_11_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_12_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_13_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_13_n_1 : STD_LOGIC;
  signal motion_detected_INST_0_i_13_n_2 : STD_LOGIC;
  signal motion_detected_INST_0_i_13_n_3 : STD_LOGIC;
  signal motion_detected_INST_0_i_14_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_15_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_16_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_17_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_18_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_19_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_1_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_1_n_1 : STD_LOGIC;
  signal motion_detected_INST_0_i_1_n_2 : STD_LOGIC;
  signal motion_detected_INST_0_i_1_n_3 : STD_LOGIC;
  signal motion_detected_INST_0_i_20_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_21_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_22_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_22_n_1 : STD_LOGIC;
  signal motion_detected_INST_0_i_22_n_2 : STD_LOGIC;
  signal motion_detected_INST_0_i_22_n_3 : STD_LOGIC;
  signal motion_detected_INST_0_i_23_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_24_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_25_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_26_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_27_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_28_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_29_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_2_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_2_n_1 : STD_LOGIC;
  signal motion_detected_INST_0_i_2_n_2 : STD_LOGIC;
  signal motion_detected_INST_0_i_2_n_3 : STD_LOGIC;
  signal motion_detected_INST_0_i_30_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_31_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_31_n_1 : STD_LOGIC;
  signal motion_detected_INST_0_i_31_n_2 : STD_LOGIC;
  signal motion_detected_INST_0_i_31_n_3 : STD_LOGIC;
  signal motion_detected_INST_0_i_32_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_33_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_34_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_35_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_36_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_37_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_38_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_39_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_3_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_3_n_1 : STD_LOGIC;
  signal motion_detected_INST_0_i_3_n_2 : STD_LOGIC;
  signal motion_detected_INST_0_i_3_n_3 : STD_LOGIC;
  signal motion_detected_INST_0_i_40_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_40_n_1 : STD_LOGIC;
  signal motion_detected_INST_0_i_40_n_2 : STD_LOGIC;
  signal motion_detected_INST_0_i_40_n_3 : STD_LOGIC;
  signal motion_detected_INST_0_i_41_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_42_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_43_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_44_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_45_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_46_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_47_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_48_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_49_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_49_n_1 : STD_LOGIC;
  signal motion_detected_INST_0_i_49_n_2 : STD_LOGIC;
  signal motion_detected_INST_0_i_49_n_3 : STD_LOGIC;
  signal motion_detected_INST_0_i_4_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_4_n_1 : STD_LOGIC;
  signal motion_detected_INST_0_i_4_n_2 : STD_LOGIC;
  signal motion_detected_INST_0_i_4_n_3 : STD_LOGIC;
  signal motion_detected_INST_0_i_50_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_51_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_52_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_53_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_54_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_55_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_56_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_57_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_58_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_58_n_1 : STD_LOGIC;
  signal motion_detected_INST_0_i_58_n_2 : STD_LOGIC;
  signal motion_detected_INST_0_i_58_n_3 : STD_LOGIC;
  signal motion_detected_INST_0_i_59_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_5_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_60_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_61_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_62_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_63_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_64_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_65_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_66_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_67_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_67_n_1 : STD_LOGIC;
  signal motion_detected_INST_0_i_67_n_2 : STD_LOGIC;
  signal motion_detected_INST_0_i_67_n_3 : STD_LOGIC;
  signal motion_detected_INST_0_i_68_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_69_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_6_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_70_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_71_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_72_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_73_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_74_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_75_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_76_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_76_n_1 : STD_LOGIC;
  signal motion_detected_INST_0_i_76_n_2 : STD_LOGIC;
  signal motion_detected_INST_0_i_76_n_3 : STD_LOGIC;
  signal motion_detected_INST_0_i_77_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_78_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_79_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_7_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_80_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_81_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_82_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_83_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_84_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_85_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_86_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_87_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_88_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_89_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_8_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_90_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_91_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_92_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_93_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_94_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_95_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_96_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_97_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_98_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_99_n_0 : STD_LOGIC;
  signal motion_detected_INST_0_i_9_n_0 : STD_LOGIC;
  signal nextState : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal nextState1 : STD_LOGIC;
  signal \nextState_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \nextState_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \nextState_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \nextState_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \nextState_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \nextState_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \nextState_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \nextState_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \nextState_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_13_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_14_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_15_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_16_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_17_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \nextState_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_15_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_16_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_17_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_18_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_19_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_20_n_1\ : STD_LOGIC;
  signal \nextState_reg[2]_i_20_n_2\ : STD_LOGIC;
  signal \nextState_reg[2]_i_20_n_3\ : STD_LOGIC;
  signal \nextState_reg[2]_i_21_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_22_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_23_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_24_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_25_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_25_n_1\ : STD_LOGIC;
  signal \nextState_reg[2]_i_25_n_2\ : STD_LOGIC;
  signal \nextState_reg[2]_i_25_n_3\ : STD_LOGIC;
  signal \nextState_reg[2]_i_26_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_27_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_28_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_29_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_30_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_31_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_32_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_33_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_34_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_34_n_1\ : STD_LOGIC;
  signal \nextState_reg[2]_i_34_n_2\ : STD_LOGIC;
  signal \nextState_reg[2]_i_34_n_3\ : STD_LOGIC;
  signal \nextState_reg[2]_i_35_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_36_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_37_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_38_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_39_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_40_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_41_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_42_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_43_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_43_n_1\ : STD_LOGIC;
  signal \nextState_reg[2]_i_43_n_2\ : STD_LOGIC;
  signal \nextState_reg[2]_i_43_n_3\ : STD_LOGIC;
  signal \nextState_reg[2]_i_44_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_45_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_46_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_47_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_48_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_49_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_50_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_51_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_52_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_53_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_54_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_55_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_56_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_57_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_58_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_59_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \nextState_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal \nextState_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \nextState_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \nextState_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \nextState_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \nextState_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \nextState_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal \nextState_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \nextState_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \nextState_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \nextState_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \nextState_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \nextState_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \nextState_reg[4]_i_11_n_0\ : STD_LOGIC;
  signal \nextState_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \nextState_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \nextState_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \nextState_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \nextState_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \overlayDelayCounter[0]_i_3_n_0\ : STD_LOGIC;
  signal overlayDelayCounter_reg : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \overlayDelayCounter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \overlayDelayCounter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \overlayDelayCounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \overlayDelayCounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \overlayDelayCounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \overlayDelayCounter_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in12_in : STD_LOGIC;
  signal p_0_in13_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal pixel_word_count1 : STD_LOGIC;
  signal \pixel_word_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_word_count[0]_i_3_n_0\ : STD_LOGIC;
  signal pixel_word_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \pixel_word_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_word_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pixel_word_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pixel_word_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pixel_word_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pixel_word_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pixel_word_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pixel_word_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pixel_word_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_word_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_word_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_word_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_word_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_word_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_word_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_word_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pixel_word_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_word_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_word_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_word_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_word_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_word_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_word_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_word_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \pixel_word_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_word_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_word_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_word_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_word_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_word_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_word_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_word_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \pixel_word_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_word_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_word_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_word_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_word_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_word_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_word_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_word_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \pixel_word_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_word_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_word_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_word_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_word_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_word_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_word_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \pixel_word_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_word_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_word_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_word_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_word_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_word_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_word_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_word_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pixel_word_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_word_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_word_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_word_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_word_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_word_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_word_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_word_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal receive_1_i_1_n_0 : STD_LOGIC;
  signal receive_2_i_1_n_0 : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rgb1 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal rgb2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal rgb3 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal row_count0 : STD_LOGIC_VECTOR ( 26 downto 1 );
  signal \row_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \row_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \row_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \row_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \row_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \row_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \row_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \row_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \row_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \row_count[16]_i_3_n_0\ : STD_LOGIC;
  signal \row_count[16]_i_4_n_0\ : STD_LOGIC;
  signal \row_count[16]_i_5_n_0\ : STD_LOGIC;
  signal \row_count[20]_i_2_n_0\ : STD_LOGIC;
  signal \row_count[20]_i_3_n_0\ : STD_LOGIC;
  signal \row_count[20]_i_4_n_0\ : STD_LOGIC;
  signal \row_count[20]_i_5_n_0\ : STD_LOGIC;
  signal \row_count[24]_i_2_n_0\ : STD_LOGIC;
  signal \row_count[24]_i_3_n_0\ : STD_LOGIC;
  signal \row_count[24]_i_4_n_0\ : STD_LOGIC;
  signal \row_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \row_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \row_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \row_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \row_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \row_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \row_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \row_count[8]_i_5_n_0\ : STD_LOGIC;
  signal row_count_reg : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal \row_count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \row_count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \row_count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \row_count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \row_count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \row_count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \row_count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \row_count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \row_count_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \row_count_reg[0]_i_6_n_1\ : STD_LOGIC;
  signal \row_count_reg[0]_i_6_n_2\ : STD_LOGIC;
  signal \row_count_reg[0]_i_6_n_3\ : STD_LOGIC;
  signal \row_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \row_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \row_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \row_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \row_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \row_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \row_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \row_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \row_count_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \row_count_reg[12]_i_6_n_1\ : STD_LOGIC;
  signal \row_count_reg[12]_i_6_n_2\ : STD_LOGIC;
  signal \row_count_reg[12]_i_6_n_3\ : STD_LOGIC;
  signal \row_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \row_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \row_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \row_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \row_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \row_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \row_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \row_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \row_count_reg[16]_i_6_n_0\ : STD_LOGIC;
  signal \row_count_reg[16]_i_6_n_1\ : STD_LOGIC;
  signal \row_count_reg[16]_i_6_n_2\ : STD_LOGIC;
  signal \row_count_reg[16]_i_6_n_3\ : STD_LOGIC;
  signal \row_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \row_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \row_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \row_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \row_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \row_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \row_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \row_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \row_count_reg[20]_i_6_n_0\ : STD_LOGIC;
  signal \row_count_reg[20]_i_6_n_1\ : STD_LOGIC;
  signal \row_count_reg[20]_i_6_n_2\ : STD_LOGIC;
  signal \row_count_reg[20]_i_6_n_3\ : STD_LOGIC;
  signal \row_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \row_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \row_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \row_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \row_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \row_count_reg[24]_i_5_n_3\ : STD_LOGIC;
  signal \row_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \row_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \row_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \row_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \row_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \row_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \row_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \row_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \row_count_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \row_count_reg[4]_i_6_n_1\ : STD_LOGIC;
  signal \row_count_reg[4]_i_6_n_2\ : STD_LOGIC;
  signal \row_count_reg[4]_i_6_n_3\ : STD_LOGIC;
  signal \row_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \row_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \row_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \row_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \row_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \row_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \row_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \row_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \row_count_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \row_count_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \row_count_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \row_count_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal \row_count_reg__0\ : STD_LOGIC_VECTOR ( 26 downto 16 );
  signal \row_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \row_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \row_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \row_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \row_count_reg_n_0_[4]\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg11 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \slv_reg4_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg50 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg51 : STD_LOGIC;
  signal \slv_reg5[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[11]_i_10_n_0\ : STD_LOGIC;
  signal \slv_reg5[11]_i_11_n_0\ : STD_LOGIC;
  signal \slv_reg5[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[11]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg5[11]_i_5_n_0\ : STD_LOGIC;
  signal \slv_reg5[11]_i_6_n_0\ : STD_LOGIC;
  signal \slv_reg5[11]_i_7_n_0\ : STD_LOGIC;
  signal \slv_reg5[11]_i_8_n_0\ : STD_LOGIC;
  signal \slv_reg5[11]_i_9_n_0\ : STD_LOGIC;
  signal \slv_reg5[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_10_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_11_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_12_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_5_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_6_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_7_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_8_n_0\ : STD_LOGIC;
  signal \slv_reg5[15]_i_9_n_0\ : STD_LOGIC;
  signal \slv_reg5[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[19]_i_10_n_0\ : STD_LOGIC;
  signal \slv_reg5[19]_i_11_n_0\ : STD_LOGIC;
  signal \slv_reg5[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[19]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg5[19]_i_5_n_0\ : STD_LOGIC;
  signal \slv_reg5[19]_i_6_n_0\ : STD_LOGIC;
  signal \slv_reg5[19]_i_7_n_0\ : STD_LOGIC;
  signal \slv_reg5[19]_i_8_n_0\ : STD_LOGIC;
  signal \slv_reg5[19]_i_9_n_0\ : STD_LOGIC;
  signal \slv_reg5[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_10_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_11_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_12_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_5_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_6_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_7_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_8_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_9_n_0\ : STD_LOGIC;
  signal \slv_reg5[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[27]_i_10_n_0\ : STD_LOGIC;
  signal \slv_reg5[27]_i_11_n_0\ : STD_LOGIC;
  signal \slv_reg5[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[27]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg5[27]_i_5_n_0\ : STD_LOGIC;
  signal \slv_reg5[27]_i_6_n_0\ : STD_LOGIC;
  signal \slv_reg5[27]_i_7_n_0\ : STD_LOGIC;
  signal \slv_reg5[27]_i_8_n_0\ : STD_LOGIC;
  signal \slv_reg5[27]_i_9_n_0\ : STD_LOGIC;
  signal \slv_reg5[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_10_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_11_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_12_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_14_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_15_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_16_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_17_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_18_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_19_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_20_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_21_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_22_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_23_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_24_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_25_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_27_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_28_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_29_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_30_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_31_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_32_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_33_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_34_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_36_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_37_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_38_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_39_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_40_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_41_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_42_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_43_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_44_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_45_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_46_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_47_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_48_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_49_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_50_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_51_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_5_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_9_n_0\ : STD_LOGIC;
  signal \slv_reg5[3]_i_10_n_0\ : STD_LOGIC;
  signal \slv_reg5[3]_i_11_n_0\ : STD_LOGIC;
  signal \slv_reg5[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[3]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg5[3]_i_5_n_0\ : STD_LOGIC;
  signal \slv_reg5[3]_i_6_n_0\ : STD_LOGIC;
  signal \slv_reg5[3]_i_7_n_0\ : STD_LOGIC;
  signal \slv_reg5[3]_i_8_n_0\ : STD_LOGIC;
  signal \slv_reg5[3]_i_9_n_0\ : STD_LOGIC;
  signal \slv_reg5[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_10_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_11_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_12_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_5_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_6_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_7_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_8_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_9_n_0\ : STD_LOGIC;
  signal \slv_reg5[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[9]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[11]_i_3_n_4\ : STD_LOGIC;
  signal \slv_reg5_reg[11]_i_3_n_5\ : STD_LOGIC;
  signal \slv_reg5_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \slv_reg5_reg[11]_i_3_n_7\ : STD_LOGIC;
  signal \slv_reg5_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[15]_i_3_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[15]_i_4_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[15]_i_4_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[15]_i_4_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[15]_i_4_n_4\ : STD_LOGIC;
  signal \slv_reg5_reg[15]_i_4_n_5\ : STD_LOGIC;
  signal \slv_reg5_reg[15]_i_4_n_6\ : STD_LOGIC;
  signal \slv_reg5_reg[15]_i_4_n_7\ : STD_LOGIC;
  signal \slv_reg5_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[19]_i_3_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[19]_i_3_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[19]_i_3_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[19]_i_3_n_4\ : STD_LOGIC;
  signal \slv_reg5_reg[19]_i_3_n_5\ : STD_LOGIC;
  signal \slv_reg5_reg[19]_i_3_n_6\ : STD_LOGIC;
  signal \slv_reg5_reg[19]_i_3_n_7\ : STD_LOGIC;
  signal \slv_reg5_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[23]_i_3_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[23]_i_3_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[23]_i_3_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[23]_i_4_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[23]_i_4_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[23]_i_4_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[23]_i_4_n_4\ : STD_LOGIC;
  signal \slv_reg5_reg[23]_i_4_n_5\ : STD_LOGIC;
  signal \slv_reg5_reg[23]_i_4_n_6\ : STD_LOGIC;
  signal \slv_reg5_reg[23]_i_4_n_7\ : STD_LOGIC;
  signal \slv_reg5_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[27]_i_2_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[27]_i_2_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[27]_i_2_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[27]_i_3_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[27]_i_3_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[27]_i_3_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[27]_i_3_n_4\ : STD_LOGIC;
  signal \slv_reg5_reg[27]_i_3_n_5\ : STD_LOGIC;
  signal \slv_reg5_reg[27]_i_3_n_6\ : STD_LOGIC;
  signal \slv_reg5_reg[27]_i_3_n_7\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_13_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_13_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_13_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_13_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_26_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_26_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_26_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_26_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_35_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_35_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_35_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_35_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_6_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_6_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_6_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_7_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_7_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_7_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_8_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_8_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_8_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_8_n_4\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_8_n_5\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_8_n_6\ : STD_LOGIC;
  signal \slv_reg5_reg[31]_i_8_n_7\ : STD_LOGIC;
  signal \slv_reg5_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[3]_i_3_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[3]_i_3_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[3]_i_3_n_4\ : STD_LOGIC;
  signal \slv_reg5_reg[3]_i_3_n_5\ : STD_LOGIC;
  signal \slv_reg5_reg[3]_i_3_n_6\ : STD_LOGIC;
  signal \slv_reg5_reg[3]_i_3_n_7\ : STD_LOGIC;
  signal \slv_reg5_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg5_reg[7]_i_4_n_1\ : STD_LOGIC;
  signal \slv_reg5_reg[7]_i_4_n_2\ : STD_LOGIC;
  signal \slv_reg5_reg[7]_i_4_n_3\ : STD_LOGIC;
  signal \slv_reg5_reg[7]_i_4_n_4\ : STD_LOGIC;
  signal \slv_reg5_reg[7]_i_4_n_5\ : STD_LOGIC;
  signal \slv_reg5_reg[7]_i_4_n_6\ : STD_LOGIC;
  signal \slv_reg5_reg[7]_i_4_n_7\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg5_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg6[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \slv_reg7_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg7_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg8[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg8_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg9 : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \slv_reg9_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg9_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal slv_reg_wren : STD_LOGIC;
  signal \small_column_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \small_column_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \small_column_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \small_column_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \small_column_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \small_column_count[3]_i_3_n_0\ : STD_LOGIC;
  signal \small_column_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \small_column_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \small_column_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \small_column_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \small_row_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \small_row_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \small_row_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \small_row_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \small_row_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \small_row_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \small_row_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \small_row_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \small_row_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \small_row_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \small_row_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \small_row_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \small_row_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \^start1\ : STD_LOGIC;
  signal start1_i_1_n_0 : STD_LOGIC;
  signal start1_i_2_n_0 : STD_LOGIC;
  signal \^start2\ : STD_LOGIC;
  signal \^start3\ : STD_LOGIC;
  signal startClear : STD_LOGIC;
  signal startClear2 : STD_LOGIC;
  signal startClear2_i_1_n_0 : STD_LOGIC;
  signal startClear2_i_2_n_0 : STD_LOGIC;
  signal startClear2_i_3_n_0 : STD_LOGIC;
  signal startClear3 : STD_LOGIC;
  signal startClear3_i_1_n_0 : STD_LOGIC;
  signal startClear3_i_2_n_0 : STD_LOGIC;
  signal startClear3_i_3_n_0 : STD_LOGIC;
  signal startClear3_i_4_n_0 : STD_LOGIC;
  signal startClear3_reg_n_0 : STD_LOGIC;
  signal startClear4_i_1_n_0 : STD_LOGIC;
  signal startClear4_reg_n_0 : STD_LOGIC;
  signal startClear_i_1_n_0 : STD_LOGIC;
  signal startClear_reg_n_0 : STD_LOGIC;
  signal transfer_length_offset : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \transfer_length_offset[3]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_length_offset[5]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_length_offset[6]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_length_offset_reg_n_0_[3]\ : STD_LOGIC;
  signal \transfer_length_offset_reg_n_0_[5]\ : STD_LOGIC;
  signal \transfer_length_offset_reg_n_0_[6]\ : STD_LOGIC;
  signal w1_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal w1_awvalid : STD_LOGIC;
  signal w1_bready : STD_LOGIC;
  signal w1_wvalid : STD_LOGIC;
  signal w2_awvalid : STD_LOGIC;
  signal w2_bready : STD_LOGIC;
  signal w2_wvalid : STD_LOGIC;
  signal w3_awvalid : STD_LOGIC;
  signal w3_bready : STD_LOGIC;
  signal w3_wvalid : STD_LOGIC;
  signal write_1_n_10 : STD_LOGIC;
  signal write_1_n_11 : STD_LOGIC;
  signal write_1_n_12 : STD_LOGIC;
  signal write_1_n_13 : STD_LOGIC;
  signal write_1_n_14 : STD_LOGIC;
  signal write_1_n_15 : STD_LOGIC;
  signal write_1_n_16 : STD_LOGIC;
  signal write_1_n_17 : STD_LOGIC;
  signal write_1_n_18 : STD_LOGIC;
  signal write_1_n_19 : STD_LOGIC;
  signal write_1_n_20 : STD_LOGIC;
  signal write_1_n_21 : STD_LOGIC;
  signal write_1_n_22 : STD_LOGIC;
  signal write_1_n_23 : STD_LOGIC;
  signal write_1_n_24 : STD_LOGIC;
  signal write_1_n_25 : STD_LOGIC;
  signal write_1_n_26 : STD_LOGIC;
  signal write_1_n_27 : STD_LOGIC;
  signal write_1_n_28 : STD_LOGIC;
  signal write_1_n_29 : STD_LOGIC;
  signal write_1_n_30 : STD_LOGIC;
  signal write_1_n_31 : STD_LOGIC;
  signal write_1_n_32 : STD_LOGIC;
  signal write_1_n_33 : STD_LOGIC;
  signal write_1_n_34 : STD_LOGIC;
  signal write_1_n_35 : STD_LOGIC;
  signal write_1_n_36 : STD_LOGIC;
  signal write_1_n_37 : STD_LOGIC;
  signal write_1_n_38 : STD_LOGIC;
  signal write_1_n_39 : STD_LOGIC;
  signal write_1_n_40 : STD_LOGIC;
  signal write_1_n_41 : STD_LOGIC;
  signal write_1_n_42 : STD_LOGIC;
  signal write_1_n_43 : STD_LOGIC;
  signal write_1_n_44 : STD_LOGIC;
  signal write_1_n_45 : STD_LOGIC;
  signal write_1_n_46 : STD_LOGIC;
  signal write_1_n_47 : STD_LOGIC;
  signal write_1_n_48 : STD_LOGIC;
  signal write_1_n_49 : STD_LOGIC;
  signal write_1_n_5 : STD_LOGIC;
  signal write_1_n_50 : STD_LOGIC;
  signal write_1_n_6 : STD_LOGIC;
  signal write_1_n_8 : STD_LOGIC;
  signal write_1_n_9 : STD_LOGIC;
  signal write_2_n_5 : STD_LOGIC;
  signal write_2_n_6 : STD_LOGIC;
  signal write_3_n_10 : STD_LOGIC;
  signal write_3_n_11 : STD_LOGIC;
  signal write_3_n_5 : STD_LOGIC;
  signal write_3_n_6 : STD_LOGIC;
  signal write_3_n_8 : STD_LOGIC;
  signal write_3_n_9 : STD_LOGIC;
  signal write_clear2_n_5 : STD_LOGIC;
  signal write_clear2_n_6 : STD_LOGIC;
  signal write_clear2_n_7 : STD_LOGIC;
  signal write_clear3_n_10 : STD_LOGIC;
  signal write_clear3_n_11 : STD_LOGIC;
  signal write_clear3_n_12 : STD_LOGIC;
  signal write_clear3_n_5 : STD_LOGIC;
  signal write_clear3_n_6 : STD_LOGIC;
  signal write_clear3_n_7 : STD_LOGIC;
  signal write_clear3_n_8 : STD_LOGIC;
  signal write_clear3_n_9 : STD_LOGIC;
  signal write_clear4_n_2 : STD_LOGIC;
  signal write_clear4_n_4 : STD_LOGIC;
  signal write_clear4_n_5 : STD_LOGIC;
  signal write_clear4_n_6 : STD_LOGIC;
  signal write_clear4_n_7 : STD_LOGIC;
  signal write_clear_n_5 : STD_LOGIC;
  signal write_clear_n_6 : STD_LOGIC;
  signal write_clear_n_7 : STD_LOGIC;
  signal \NLW_M_AXI_AWADDR_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_M_AXI_AWADDR_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_M_AXI_AWADDR_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_M_AXI_AWADDR_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_M_AXI_AWADDR_reg[6]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_M_AXI_AWADDR_reg[6]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_S_AXI_S2MM_TDATA_reg[31]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S_AXI_S2MM_TDATA_reg[31]_i_15_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S_AXI_S2MM_TDATA_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S_AXI_S2MM_TDATA_reg[31]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clearDelay2_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_clearDelay3_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_clearDelay4_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_clearDelay_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_delayCounter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_dma_init_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dma_init_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gray1_reg[11]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gray1_reg[11]_i_15_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gray1_reg[11]_i_16_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_gray1_reg[11]_i_16_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gray1_reg[11]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gray1_reg[11]_i_62_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_gray1_reg[11]_i_62_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gray1_reg[11]_i_63_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_gray1_reg[11]_i_63_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gray1_reg[11]_i_65_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_gray1_reg[11]_i_65_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gray1_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gray2_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_initS2MMClearSDelay_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_motion_detected_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_motion_detected_INST_0_i_13_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_motion_detected_INST_0_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_motion_detected_INST_0_i_22_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_motion_detected_INST_0_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_motion_detected_INST_0_i_31_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_motion_detected_INST_0_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_motion_detected_INST_0_i_40_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_motion_detected_INST_0_i_49_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_motion_detected_INST_0_i_58_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_motion_detected_INST_0_i_67_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_motion_detected_INST_0_i_76_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nextState_reg[2]_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nextState_reg[2]_i_25_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nextState_reg[2]_i_34_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_nextState_reg[2]_i_43_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_overlayDelayCounter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pixel_word_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_row_count_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_row_count_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_row_count_reg[24]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_row_count_reg[24]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_slv_reg5_reg[31]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_slv_reg5_reg[31]_i_26_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_slv_reg5_reg[31]_i_35_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_slv_reg5_reg[31]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_slv_reg5_reg[31]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_slv_reg5_reg[31]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \S_AXI_S2MM_TDATA[31]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \column_count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \column_count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \column_count[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dma_init[10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dma_init[11]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dma_init[12]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dma_init[13]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dma_init[14]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dma_init[15]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \dma_init[16]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dma_init[17]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dma_init[19]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dma_init[20]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dma_init[21]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \dma_init[22]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dma_init[23]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dma_init[24]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dma_init[25]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dma_init[26]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dma_init[27]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dma_init[28]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dma_init[29]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dma_init[30]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dma_init[31]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dma_init[31]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dma_init[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dma_init[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dma_init[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dma_init[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dma_init[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dma_init[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dma_init[9]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gray1[11]_i_109\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gray1[11]_i_117\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gray1[11]_i_125\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gray1[11]_i_17\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gray1[11]_i_20\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gray1[11]_i_22\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gray1[11]_i_24\ : label is "soft_lutpair37";
  attribute HLUTNM : string;
  attribute HLUTNM of \gray1[11]_i_46\ : label is "lutpair2";
  attribute HLUTNM of \gray1[11]_i_54\ : label is "lutpair6";
  attribute SOFT_HLUTNM of \gray1[11]_i_60\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gray1[11]_i_61\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gray1[11]_i_64\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gray1[11]_i_66\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gray1[11]_i_67\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gray1[11]_i_68\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gray1[11]_i_69\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gray1[11]_i_70\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gray1[11]_i_74\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gray1[11]_i_75\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gray1[11]_i_76\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gray1[11]_i_77\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gray1[11]_i_78\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gray1[11]_i_79\ : label is "soft_lutpair9";
  attribute HLUTNM of \gray1[3]_i_18\ : label is "lutpair0";
  attribute HLUTNM of \gray1[3]_i_22\ : label is "lutpair0";
  attribute HLUTNM of \gray1[7]_i_13\ : label is "lutpair7";
  attribute SOFT_HLUTNM of \gray1[7]_i_22\ : label is "soft_lutpair2";
  attribute HLUTNM of \gray1[7]_i_25\ : label is "lutpair5";
  attribute HLUTNM of \gray1[7]_i_26\ : label is "lutpair4";
  attribute HLUTNM of \gray1[7]_i_27\ : label is "lutpair3";
  attribute HLUTNM of \gray1[7]_i_28\ : label is "lutpair6";
  attribute HLUTNM of \gray1[7]_i_29\ : label is "lutpair5";
  attribute HLUTNM of \gray1[7]_i_30\ : label is "lutpair4";
  attribute HLUTNM of \gray1[7]_i_31\ : label is "lutpair3";
  attribute HLUTNM of \gray1[7]_i_32\ : label is "lutpair1";
  attribute HLUTNM of \gray1[7]_i_35\ : label is "lutpair2";
  attribute HLUTNM of \gray1[7]_i_36\ : label is "lutpair1";
  attribute SOFT_HLUTNM of \gray1[7]_i_39\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gray1[7]_i_42\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gray1[7]_i_43\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gray1[7]_i_47\ : label is "soft_lutpair7";
  attribute HLUTNM of \gray1[7]_i_8\ : label is "lutpair7";
  attribute SOFT_HLUTNM of \maxDiffCol[4]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of motion_detected_INST_0 : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \nextState_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \nextState_reg[0]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \nextState_reg[0]_i_5\ : label is "soft_lutpair41";
  attribute XILINX_LEGACY_PRIM of \nextState_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nextState_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \nextState_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \nextState_reg[3]_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \nextState_reg[3]_i_6\ : label is "soft_lutpair40";
  attribute XILINX_LEGACY_PRIM of \nextState_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \nextState_reg[4]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of receive_1_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of receive_2_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg5[31]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \small_column_count[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \small_column_count[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \small_column_count[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \small_column_count[3]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \small_row_count[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \small_row_count[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \small_row_count[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \small_row_count[4]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \small_row_count[4]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of startClear2_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of startClear2_i_3 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of startClear3_i_3 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of startClear3_i_4 : label is "soft_lutpair18";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_S2MM_TDATA(0) <= \^s_axi_s2mm_tdata\(0);
  S_AXI_TREADY <= \^s_axi_tready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  dma_base(31 downto 0) <= \^dma_base\(31 downto 0);
  done <= \^done\;
  finish_read1 <= \^finish_read1\;
  finish_read2 <= \^finish_read2\;
  \gray1[31]\(31 downto 0) <= \^gray1[31]\(31 downto 0);
  \gray2[31]\(31 downto 0) <= \^gray2[31]\(31 downto 0);
  motion_detected <= \^motion_detected\;
  start1 <= \^start1\;
  start2 <= \^start2\;
  start3 <= \^start3\;
\M_AXI_AWADDR[6]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dma_base\(3),
      I1 => \transfer_length_offset_reg_n_0_[3]\,
      O => addr0(3)
    );
\M_AXI_AWADDR[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dma_base\(6),
      I1 => \transfer_length_offset_reg_n_0_[6]\,
      O => \M_AXI_AWADDR[6]_i_4_n_0\
    );
\M_AXI_AWADDR[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dma_base\(5),
      I1 => \transfer_length_offset_reg_n_0_[5]\,
      O => \M_AXI_AWADDR[6]_i_5_n_0\
    );
\M_AXI_AWADDR[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dma_base\(4),
      I1 => \transfer_length_offset_reg_n_0_[6]\,
      O => \M_AXI_AWADDR[6]_i_6_n_0\
    );
\M_AXI_AWADDR[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dma_base\(3),
      I1 => \transfer_length_offset_reg_n_0_[3]\,
      O => \M_AXI_AWADDR[6]_i_7_n_0\
    );
\M_AXI_AWADDR[6]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dma_base\(6),
      I1 => \transfer_length_offset_reg_n_0_[6]\,
      O => \M_AXI_AWADDR[6]_i_8_n_0\
    );
\M_AXI_AWADDR[6]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dma_base\(4),
      I1 => \transfer_length_offset_reg_n_0_[5]\,
      O => \M_AXI_AWADDR[6]_i_9_n_0\
    );
\M_AXI_AWADDR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_40,
      Q => M_AXI_AWADDR(0),
      R => '0'
    );
\M_AXI_AWADDR_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_30,
      Q => M_AXI_AWADDR(10),
      R => '0'
    );
\M_AXI_AWADDR_reg[10]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[6]_i_2_n_0\,
      CO(3) => \M_AXI_AWADDR_reg[10]_i_2_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[10]_i_2_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[10]_i_2_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[10]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr0(10 downto 7),
      S(3 downto 0) => \^dma_base\(10 downto 7)
    );
\M_AXI_AWADDR_reg[10]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[6]_i_3_n_0\,
      CO(3) => \M_AXI_AWADDR_reg[10]_i_3_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[10]_i_3_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[10]_i_3_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[10]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr02_out(10 downto 7),
      S(3 downto 0) => \^dma_base\(10 downto 7)
    );
\M_AXI_AWADDR_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_29,
      Q => M_AXI_AWADDR(11),
      R => '0'
    );
\M_AXI_AWADDR_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_28,
      Q => M_AXI_AWADDR(12),
      R => '0'
    );
\M_AXI_AWADDR_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_27,
      Q => M_AXI_AWADDR(13),
      R => '0'
    );
\M_AXI_AWADDR_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_26,
      Q => M_AXI_AWADDR(14),
      R => '0'
    );
\M_AXI_AWADDR_reg[14]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[10]_i_3_n_0\,
      CO(3) => \M_AXI_AWADDR_reg[14]_i_2_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[14]_i_2_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[14]_i_2_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[14]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr02_out(14 downto 11),
      S(3 downto 0) => \^dma_base\(14 downto 11)
    );
\M_AXI_AWADDR_reg[14]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[10]_i_2_n_0\,
      CO(3) => \M_AXI_AWADDR_reg[14]_i_3_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[14]_i_3_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[14]_i_3_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[14]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr0(14 downto 11),
      S(3 downto 0) => \^dma_base\(14 downto 11)
    );
\M_AXI_AWADDR_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_25,
      Q => M_AXI_AWADDR(15),
      R => '0'
    );
\M_AXI_AWADDR_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_24,
      Q => M_AXI_AWADDR(16),
      R => '0'
    );
\M_AXI_AWADDR_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_23,
      Q => M_AXI_AWADDR(17),
      R => '0'
    );
\M_AXI_AWADDR_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_22,
      Q => M_AXI_AWADDR(18),
      R => '0'
    );
\M_AXI_AWADDR_reg[18]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[14]_i_2_n_0\,
      CO(3) => \M_AXI_AWADDR_reg[18]_i_2_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[18]_i_2_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[18]_i_2_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[18]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr02_out(18 downto 15),
      S(3 downto 0) => \^dma_base\(18 downto 15)
    );
\M_AXI_AWADDR_reg[18]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[14]_i_3_n_0\,
      CO(3) => \M_AXI_AWADDR_reg[18]_i_3_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[18]_i_3_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[18]_i_3_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[18]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr0(18 downto 15),
      S(3 downto 0) => \^dma_base\(18 downto 15)
    );
\M_AXI_AWADDR_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_21,
      Q => M_AXI_AWADDR(19),
      R => '0'
    );
\M_AXI_AWADDR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_39,
      Q => M_AXI_AWADDR(1),
      R => '0'
    );
\M_AXI_AWADDR_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_20,
      Q => M_AXI_AWADDR(20),
      R => '0'
    );
\M_AXI_AWADDR_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_19,
      Q => M_AXI_AWADDR(21),
      R => '0'
    );
\M_AXI_AWADDR_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_18,
      Q => M_AXI_AWADDR(22),
      R => '0'
    );
\M_AXI_AWADDR_reg[22]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[18]_i_3_n_0\,
      CO(3) => \M_AXI_AWADDR_reg[22]_i_2_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[22]_i_2_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[22]_i_2_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[22]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr0(22 downto 19),
      S(3 downto 0) => \^dma_base\(22 downto 19)
    );
\M_AXI_AWADDR_reg[22]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[18]_i_2_n_0\,
      CO(3) => \M_AXI_AWADDR_reg[22]_i_3_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[22]_i_3_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[22]_i_3_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[22]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr02_out(22 downto 19),
      S(3 downto 0) => \^dma_base\(22 downto 19)
    );
\M_AXI_AWADDR_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_17,
      Q => M_AXI_AWADDR(23),
      R => '0'
    );
\M_AXI_AWADDR_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_16,
      Q => M_AXI_AWADDR(24),
      R => '0'
    );
\M_AXI_AWADDR_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_15,
      Q => M_AXI_AWADDR(25),
      R => '0'
    );
\M_AXI_AWADDR_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_14,
      Q => M_AXI_AWADDR(26),
      R => '0'
    );
\M_AXI_AWADDR_reg[26]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[22]_i_2_n_0\,
      CO(3) => \M_AXI_AWADDR_reg[26]_i_2_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[26]_i_2_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[26]_i_2_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[26]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr0(26 downto 23),
      S(3 downto 0) => \^dma_base\(26 downto 23)
    );
\M_AXI_AWADDR_reg[26]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[22]_i_3_n_0\,
      CO(3) => \M_AXI_AWADDR_reg[26]_i_3_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[26]_i_3_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[26]_i_3_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[26]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr02_out(26 downto 23),
      S(3 downto 0) => \^dma_base\(26 downto 23)
    );
\M_AXI_AWADDR_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_13,
      Q => M_AXI_AWADDR(27),
      R => '0'
    );
\M_AXI_AWADDR_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_12,
      Q => M_AXI_AWADDR(28),
      R => '0'
    );
\M_AXI_AWADDR_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_11,
      Q => M_AXI_AWADDR(29),
      R => '0'
    );
\M_AXI_AWADDR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_38,
      Q => M_AXI_AWADDR(2),
      R => '0'
    );
\M_AXI_AWADDR_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_10,
      Q => M_AXI_AWADDR(30),
      R => '0'
    );
\M_AXI_AWADDR_reg[30]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[26]_i_2_n_0\,
      CO(3) => \M_AXI_AWADDR_reg[30]_i_2_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[30]_i_2_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[30]_i_2_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[30]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr0(30 downto 27),
      S(3 downto 0) => \^dma_base\(30 downto 27)
    );
\M_AXI_AWADDR_reg[30]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[26]_i_3_n_0\,
      CO(3) => \M_AXI_AWADDR_reg[30]_i_3_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[30]_i_3_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[30]_i_3_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[30]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr02_out(30 downto 27),
      S(3 downto 0) => \^dma_base\(30 downto 27)
    );
\M_AXI_AWADDR_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_9,
      Q => M_AXI_AWADDR(31),
      R => '0'
    );
\M_AXI_AWADDR_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[30]_i_2_n_0\,
      CO(3 downto 0) => \NLW_M_AXI_AWADDR_reg[31]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_M_AXI_AWADDR_reg[31]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => addr0(31),
      S(3 downto 1) => B"000",
      S(0) => \^dma_base\(31)
    );
\M_AXI_AWADDR_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR_reg[30]_i_3_n_0\,
      CO(3 downto 0) => \NLW_M_AXI_AWADDR_reg[31]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_M_AXI_AWADDR_reg[31]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => addr02_out(31),
      S(3 downto 1) => B"000",
      S(0) => \^dma_base\(31)
    );
\M_AXI_AWADDR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_37,
      Q => M_AXI_AWADDR(3),
      R => '0'
    );
\M_AXI_AWADDR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_36,
      Q => M_AXI_AWADDR(4),
      R => '0'
    );
\M_AXI_AWADDR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_35,
      Q => M_AXI_AWADDR(5),
      R => '0'
    );
\M_AXI_AWADDR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_34,
      Q => M_AXI_AWADDR(6),
      R => '0'
    );
\M_AXI_AWADDR_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \M_AXI_AWADDR_reg[6]_i_2_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[6]_i_2_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[6]_i_2_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[6]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^dma_base\(6 downto 3),
      O(3 downto 1) => addr0(6 downto 4),
      O(0) => \NLW_M_AXI_AWADDR_reg[6]_i_2_O_UNCONNECTED\(0),
      S(3) => \M_AXI_AWADDR[6]_i_4_n_0\,
      S(2) => \M_AXI_AWADDR[6]_i_5_n_0\,
      S(1) => \M_AXI_AWADDR[6]_i_6_n_0\,
      S(0) => \M_AXI_AWADDR[6]_i_7_n_0\
    );
\M_AXI_AWADDR_reg[6]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \M_AXI_AWADDR_reg[6]_i_3_n_0\,
      CO(2) => \M_AXI_AWADDR_reg[6]_i_3_n_1\,
      CO(1) => \M_AXI_AWADDR_reg[6]_i_3_n_2\,
      CO(0) => \M_AXI_AWADDR_reg[6]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^dma_base\(6 downto 3),
      O(3 downto 1) => addr02_out(6 downto 4),
      O(0) => \NLW_M_AXI_AWADDR_reg[6]_i_3_O_UNCONNECTED\(0),
      S(3) => \M_AXI_AWADDR[6]_i_8_n_0\,
      S(2) => \^dma_base\(5),
      S(1) => \M_AXI_AWADDR[6]_i_9_n_0\,
      S(0) => addr0(3)
    );
\M_AXI_AWADDR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_33,
      Q => M_AXI_AWADDR(7),
      R => '0'
    );
\M_AXI_AWADDR_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_32,
      Q => M_AXI_AWADDR(8),
      R => '0'
    );
\M_AXI_AWADDR_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_31,
      Q => M_AXI_AWADDR(9),
      R => '0'
    );
M_AXI_AWVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_42,
      Q => M_AXI_AWVALID,
      R => '0'
    );
M_AXI_BREADY_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_3_n_10,
      Q => M_AXI_BREADY,
      R => '0'
    );
\M_AXI_WDATA[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FF5353F3FF5F5F"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \slv_reg1_reg_n_0_[0]\,
      I4 => \^q\(1),
      I5 => \slv_reg0_reg_n_0_[0]\,
      O => \M_AXI_WDATA[0]_i_2_n_0\
    );
\M_AXI_WDATA[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[10]\,
      I2 => \slv_reg1_reg_n_0_[10]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[10]\,
      O => \M_AXI_WDATA[10]_i_1_n_0\
    );
\M_AXI_WDATA[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[11]\,
      I2 => \slv_reg1_reg_n_0_[11]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[11]\,
      O => \M_AXI_WDATA[11]_i_1_n_0\
    );
\M_AXI_WDATA[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3535FFFFF535F"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[12]\,
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \slv_reg0_reg_n_0_[12]\,
      I4 => \^q\(1),
      I5 => \slv_reg1_reg_n_0_[12]\,
      O => \M_AXI_WDATA[12]_i_2_n_0\
    );
\M_AXI_WDATA[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[13]\,
      I2 => \slv_reg1_reg_n_0_[13]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[13]\,
      O => \M_AXI_WDATA[13]_i_1_n_0\
    );
\M_AXI_WDATA[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[14]\,
      I2 => \slv_reg1_reg_n_0_[14]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[14]\,
      O => \M_AXI_WDATA[14]_i_1_n_0\
    );
\M_AXI_WDATA[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[15]\,
      I2 => \slv_reg1_reg_n_0_[15]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[15]\,
      O => \M_AXI_WDATA[15]_i_1_n_0\
    );
\M_AXI_WDATA[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[16]\,
      I2 => \slv_reg1_reg_n_0_[16]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[16]\,
      O => \M_AXI_WDATA[16]_i_1_n_0\
    );
\M_AXI_WDATA[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FF5353F3FF5F5F"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[17]\,
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \slv_reg1_reg_n_0_[17]\,
      I4 => \^q\(1),
      I5 => \slv_reg0_reg_n_0_[17]\,
      O => \M_AXI_WDATA[17]_i_2_n_0\
    );
\M_AXI_WDATA[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3535FFFFF535F"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[18]\,
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \slv_reg0_reg_n_0_[18]\,
      I4 => \^q\(1),
      I5 => \slv_reg1_reg_n_0_[18]\,
      O => \M_AXI_WDATA[18]_i_2_n_0\
    );
\M_AXI_WDATA[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3535FFFFF535F"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[19]\,
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \slv_reg0_reg_n_0_[19]\,
      I4 => \^q\(1),
      I5 => \slv_reg1_reg_n_0_[19]\,
      O => \M_AXI_WDATA[19]_i_2_n_0\
    );
\M_AXI_WDATA[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[1]\,
      I2 => \slv_reg1_reg_n_0_[1]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[1]\,
      O => \M_AXI_WDATA[1]_i_1_n_0\
    );
\M_AXI_WDATA[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[20]\,
      I2 => \slv_reg1_reg_n_0_[20]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[20]\,
      O => \M_AXI_WDATA[20]_i_1_n_0\
    );
\M_AXI_WDATA[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[21]\,
      I2 => \slv_reg1_reg_n_0_[21]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[21]\,
      O => \M_AXI_WDATA[21]_i_1_n_0\
    );
\M_AXI_WDATA[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[22]\,
      I2 => \slv_reg1_reg_n_0_[22]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[22]\,
      O => \M_AXI_WDATA[22]_i_1_n_0\
    );
\M_AXI_WDATA[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[23]\,
      I2 => \slv_reg1_reg_n_0_[23]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[23]\,
      O => \M_AXI_WDATA[23]_i_1_n_0\
    );
\M_AXI_WDATA[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[24]\,
      I2 => \slv_reg1_reg_n_0_[24]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[24]\,
      O => \M_AXI_WDATA[24]_i_1_n_0\
    );
\M_AXI_WDATA[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[25]\,
      I2 => \slv_reg1_reg_n_0_[25]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[25]\,
      O => \M_AXI_WDATA[25]_i_1_n_0\
    );
\M_AXI_WDATA[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[26]\,
      I2 => \slv_reg1_reg_n_0_[26]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[26]\,
      O => \M_AXI_WDATA[26]_i_1_n_0\
    );
\M_AXI_WDATA[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[27]\,
      I2 => \slv_reg1_reg_n_0_[27]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[27]\,
      O => \M_AXI_WDATA[27]_i_1_n_0\
    );
\M_AXI_WDATA[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[28]\,
      I2 => \slv_reg1_reg_n_0_[28]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[28]\,
      O => \M_AXI_WDATA[28]_i_1_n_0\
    );
\M_AXI_WDATA[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[29]\,
      I2 => \slv_reg1_reg_n_0_[29]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[29]\,
      O => \M_AXI_WDATA[29]_i_1_n_0\
    );
\M_AXI_WDATA[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FF5353F3FF5F5F"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \slv_reg1_reg_n_0_[2]\,
      I4 => \^q\(1),
      I5 => \slv_reg0_reg_n_0_[2]\,
      O => \M_AXI_WDATA[2]_i_5_n_0\
    );
\M_AXI_WDATA[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[30]\,
      I2 => \slv_reg1_reg_n_0_[30]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[30]\,
      O => \M_AXI_WDATA[30]_i_1_n_0\
    );
\M_AXI_WDATA[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0CACA00000ACA0"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[31]\,
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \slv_reg0_reg_n_0_[31]\,
      I4 => \^q\(1),
      I5 => \slv_reg1_reg_n_0_[31]\,
      O => \M_AXI_WDATA[31]_i_2_n_0\
    );
\M_AXI_WDATA[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[3]\,
      I2 => \slv_reg1_reg_n_0_[3]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[3]\,
      O => \M_AXI_WDATA[3]_i_1_n_0\
    );
\M_AXI_WDATA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088FFA0008800A0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg1_reg_n_0_[4]\,
      I2 => \slv_reg0_reg_n_0_[4]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[4]\,
      O => \M_AXI_WDATA[4]_i_1_n_0\
    );
\M_AXI_WDATA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[5]\,
      I2 => \slv_reg1_reg_n_0_[5]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[5]\,
      O => \M_AXI_WDATA[5]_i_1_n_0\
    );
\M_AXI_WDATA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[6]\,
      I2 => \slv_reg1_reg_n_0_[6]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[6]\,
      O => \M_AXI_WDATA[6]_i_1_n_0\
    );
\M_AXI_WDATA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[7]\,
      I2 => \slv_reg1_reg_n_0_[7]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[7]\,
      O => \M_AXI_WDATA[7]_i_1_n_0\
    );
\M_AXI_WDATA[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[8]\,
      I2 => \slv_reg1_reg_n_0_[8]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[8]\,
      O => \M_AXI_WDATA[8]_i_1_n_0\
    );
\M_AXI_WDATA[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FF8800A00088"
    )
        port map (
      I0 => \^q\(0),
      I1 => \slv_reg0_reg_n_0_[9]\,
      I2 => \slv_reg1_reg_n_0_[9]\,
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \slv_reg8_reg_n_0_[9]\,
      O => \M_AXI_WDATA[9]_i_1_n_0\
    );
\M_AXI_WDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_2_n_6,
      Q => M_AXI_WDATA(0),
      R => '0'
    );
\M_AXI_WDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[10]_i_1_n_0\,
      Q => M_AXI_WDATA(10),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[11]_i_1_n_0\,
      Q => M_AXI_WDATA(11),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_44,
      Q => M_AXI_WDATA(12),
      S => \^start3\
    );
\M_AXI_WDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[13]_i_1_n_0\,
      Q => M_AXI_WDATA(13),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[14]_i_1_n_0\,
      Q => M_AXI_WDATA(14),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[15]_i_1_n_0\,
      Q => M_AXI_WDATA(15),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[16]_i_1_n_0\,
      Q => M_AXI_WDATA(16),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_45,
      Q => M_AXI_WDATA(17),
      S => \^start3\
    );
\M_AXI_WDATA_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_46,
      Q => M_AXI_WDATA(18),
      S => \^start3\
    );
\M_AXI_WDATA_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_47,
      Q => M_AXI_WDATA(19),
      S => \^start3\
    );
\M_AXI_WDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[1]_i_1_n_0\,
      Q => M_AXI_WDATA(1),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[20]_i_1_n_0\,
      Q => M_AXI_WDATA(20),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[21]_i_1_n_0\,
      Q => M_AXI_WDATA(21),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[22]_i_1_n_0\,
      Q => M_AXI_WDATA(22),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[23]_i_1_n_0\,
      Q => M_AXI_WDATA(23),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[24]_i_1_n_0\,
      Q => M_AXI_WDATA(24),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[25]_i_1_n_0\,
      Q => M_AXI_WDATA(25),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[26]_i_1_n_0\,
      Q => M_AXI_WDATA(26),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[27]_i_1_n_0\,
      Q => M_AXI_WDATA(27),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[28]_i_1_n_0\,
      Q => M_AXI_WDATA(28),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[29]_i_1_n_0\,
      Q => M_AXI_WDATA(29),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_41,
      Q => M_AXI_WDATA(2),
      R => '0'
    );
\M_AXI_WDATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[30]_i_1_n_0\,
      Q => M_AXI_WDATA(30),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[31]_i_2_n_0\,
      Q => M_AXI_WDATA(31),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[3]_i_1_n_0\,
      Q => M_AXI_WDATA(3),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[4]_i_1_n_0\,
      Q => M_AXI_WDATA(4),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[5]_i_1_n_0\,
      Q => M_AXI_WDATA(5),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[6]_i_1_n_0\,
      Q => M_AXI_WDATA(6),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[7]_i_1_n_0\,
      Q => M_AXI_WDATA(7),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[8]_i_1_n_0\,
      Q => M_AXI_WDATA(8),
      R => write_1_n_6
    );
\M_AXI_WDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \M_AXI_WDATA[9]_i_1_n_0\,
      Q => M_AXI_WDATA(9),
      R => write_1_n_6
    );
\M_AXI_WSTRB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_1_n_43,
      Q => M_AXI_WSTRB(0),
      R => '0'
    );
M_AXI_WVALID_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => startClear2,
      I1 => startClear4_reg_n_0,
      I2 => startClear3_reg_n_0,
      O => M_AXI_WVALID_i_3_n_0
    );
M_AXI_WVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_3_n_9,
      Q => M_AXI_WVALID,
      R => '0'
    );
\S_AXI_S2MM_TDATA[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_s2mm_tdata\(0),
      I1 => p_0_in1_in,
      I2 => pixel_word_count1,
      I3 => \S_AXI_S2MM_TDATA_reg[31]_i_4_n_0\,
      O => \S_AXI_S2MM_TDATA[31]_i_1_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[23]\,
      I1 => \slv_reg9_reg_n_0_[22]\,
      O => \S_AXI_S2MM_TDATA[31]_i_11_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[21]\,
      I1 => \slv_reg9_reg_n_0_[20]\,
      O => \S_AXI_S2MM_TDATA[31]_i_12_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[19]\,
      I1 => \slv_reg9_reg_n_0_[18]\,
      O => \S_AXI_S2MM_TDATA[31]_i_13_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[17]\,
      I1 => \slv_reg9_reg_n_0_[16]\,
      O => \S_AXI_S2MM_TDATA[31]_i_14_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[15]\,
      I1 => \slv_reg9_reg_n_0_[14]\,
      O => \S_AXI_S2MM_TDATA[31]_i_16_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[13]\,
      I1 => \slv_reg9_reg_n_0_[12]\,
      O => \S_AXI_S2MM_TDATA[31]_i_17_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[11]\,
      I1 => \slv_reg9_reg_n_0_[10]\,
      O => \S_AXI_S2MM_TDATA[31]_i_18_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[9]\,
      I1 => \slv_reg9_reg_n_0_[8]\,
      O => \S_AXI_S2MM_TDATA[31]_i_19_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(1),
      O => p_0_in1_in
    );
\S_AXI_S2MM_TDATA[31]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[7]\,
      I1 => \slv_reg9_reg_n_0_[6]\,
      O => \S_AXI_S2MM_TDATA[31]_i_20_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[5]\,
      I1 => \slv_reg9_reg_n_0_[4]\,
      O => \S_AXI_S2MM_TDATA[31]_i_21_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[3]\,
      I1 => \slv_reg9_reg_n_0_[2]\,
      O => \S_AXI_S2MM_TDATA[31]_i_22_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[1]\,
      I1 => \slv_reg9_reg_n_0_[0]\,
      O => \S_AXI_S2MM_TDATA[31]_i_23_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(4),
      I3 => \maxDiffCol[4]_i_2_n_0\,
      I4 => S_AXI_S2MM_TREADY,
      I5 => finish_send,
      O => pixel_word_count1
    );
\S_AXI_S2MM_TDATA[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[31]\,
      I1 => \slv_reg9_reg_n_0_[30]\,
      O => \S_AXI_S2MM_TDATA[31]_i_6_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[29]\,
      I1 => \slv_reg9_reg_n_0_[28]\,
      O => \S_AXI_S2MM_TDATA[31]_i_7_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[27]\,
      I1 => \slv_reg9_reg_n_0_[26]\,
      O => \S_AXI_S2MM_TDATA[31]_i_8_n_0\
    );
\S_AXI_S2MM_TDATA[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg9_reg_n_0_[25]\,
      I1 => \slv_reg9_reg_n_0_[24]\,
      O => \S_AXI_S2MM_TDATA[31]_i_9_n_0\
    );
\S_AXI_S2MM_TDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \S_AXI_S2MM_TDATA[31]_i_1_n_0\,
      Q => \^s_axi_s2mm_tdata\(0),
      R => '0'
    );
\S_AXI_S2MM_TDATA_reg[31]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_AXI_S2MM_TDATA_reg[31]_i_15_n_0\,
      CO(3) => \S_AXI_S2MM_TDATA_reg[31]_i_10_n_0\,
      CO(2) => \S_AXI_S2MM_TDATA_reg[31]_i_10_n_1\,
      CO(1) => \S_AXI_S2MM_TDATA_reg[31]_i_10_n_2\,
      CO(0) => \S_AXI_S2MM_TDATA_reg[31]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_S_AXI_S2MM_TDATA_reg[31]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \S_AXI_S2MM_TDATA[31]_i_16_n_0\,
      S(2) => \S_AXI_S2MM_TDATA[31]_i_17_n_0\,
      S(1) => \S_AXI_S2MM_TDATA[31]_i_18_n_0\,
      S(0) => \S_AXI_S2MM_TDATA[31]_i_19_n_0\
    );
\S_AXI_S2MM_TDATA_reg[31]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \S_AXI_S2MM_TDATA_reg[31]_i_15_n_0\,
      CO(2) => \S_AXI_S2MM_TDATA_reg[31]_i_15_n_1\,
      CO(1) => \S_AXI_S2MM_TDATA_reg[31]_i_15_n_2\,
      CO(0) => \S_AXI_S2MM_TDATA_reg[31]_i_15_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_S_AXI_S2MM_TDATA_reg[31]_i_15_O_UNCONNECTED\(3 downto 0),
      S(3) => \S_AXI_S2MM_TDATA[31]_i_20_n_0\,
      S(2) => \S_AXI_S2MM_TDATA[31]_i_21_n_0\,
      S(1) => \S_AXI_S2MM_TDATA[31]_i_22_n_0\,
      S(0) => \S_AXI_S2MM_TDATA[31]_i_23_n_0\
    );
\S_AXI_S2MM_TDATA_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_AXI_S2MM_TDATA_reg[31]_i_5_n_0\,
      CO(3) => \S_AXI_S2MM_TDATA_reg[31]_i_4_n_0\,
      CO(2) => \S_AXI_S2MM_TDATA_reg[31]_i_4_n_1\,
      CO(1) => \S_AXI_S2MM_TDATA_reg[31]_i_4_n_2\,
      CO(0) => \S_AXI_S2MM_TDATA_reg[31]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_S_AXI_S2MM_TDATA_reg[31]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \S_AXI_S2MM_TDATA[31]_i_6_n_0\,
      S(2) => \S_AXI_S2MM_TDATA[31]_i_7_n_0\,
      S(1) => \S_AXI_S2MM_TDATA[31]_i_8_n_0\,
      S(0) => \S_AXI_S2MM_TDATA[31]_i_9_n_0\
    );
\S_AXI_S2MM_TDATA_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_AXI_S2MM_TDATA_reg[31]_i_10_n_0\,
      CO(3) => \S_AXI_S2MM_TDATA_reg[31]_i_5_n_0\,
      CO(2) => \S_AXI_S2MM_TDATA_reg[31]_i_5_n_1\,
      CO(1) => \S_AXI_S2MM_TDATA_reg[31]_i_5_n_2\,
      CO(0) => \S_AXI_S2MM_TDATA_reg[31]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_S_AXI_S2MM_TDATA_reg[31]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \S_AXI_S2MM_TDATA[31]_i_11_n_0\,
      S(2) => \S_AXI_S2MM_TDATA[31]_i_12_n_0\,
      S(1) => \S_AXI_S2MM_TDATA[31]_i_13_n_0\,
      S(0) => \S_AXI_S2MM_TDATA[31]_i_14_n_0\
    );
S_AXI_TREADY_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010100"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => \^s_axi_tready\
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF8CCC8CCC8CCC"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_arready0,
      D => S_AXI_ARADDR(0),
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_arready0,
      D => S_AXI_ARADDR(1),
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_arready0,
      D => S_AXI_ARADDR(2),
      Q => axi_araddr(4),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_arready0,
      D => S_AXI_ARADDR(3),
      Q => axi_araddr(5),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_awready0,
      D => S_AXI_AWADDR(0),
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_awready0,
      D => S_AXI_AWADDR(1),
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_awready0,
      D => S_AXI_AWADDR(2),
      Q => p_0_in(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axi_awready0,
      D => S_AXI_AWADDR(3),
      Q => p_0_in(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => S_AXI_WVALID,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[0]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[0]_i_4_n_0\,
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(0),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[0]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[0]\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[0]\,
      I1 => slv_reg6(0),
      I2 => axi_araddr(3),
      I3 => \slv_reg5_reg_n_0_[0]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg4_reg_n_0_[0]\,
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[0]\,
      I1 => \^dma_base\(0),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[0]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[0]\,
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[10]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[10]_i_4_n_0\,
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[10]\,
      I1 => axi_araddr(2),
      I2 => \slv_reg9_reg_n_0_[10]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(4),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[10]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[10]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[10]\,
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[10]\,
      I1 => \^dma_base\(10),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[10]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[10]\,
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[11]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[11]_i_4_n_0\,
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[11]\,
      I1 => axi_araddr(2),
      I2 => \slv_reg9_reg_n_0_[11]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(4),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[11]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[11]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[11]\,
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[11]\,
      I1 => \^dma_base\(11),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[11]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[11]\,
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[12]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[12]_i_4_n_0\,
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[12]\,
      I1 => axi_araddr(2),
      I2 => \slv_reg9_reg_n_0_[12]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(4),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[12]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[12]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[12]\,
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[12]\,
      I1 => \^dma_base\(12),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[12]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[12]\,
      O => \axi_rdata[12]_i_4_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[13]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[13]_i_4_n_0\,
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[13]\,
      I1 => axi_araddr(2),
      I2 => \slv_reg9_reg_n_0_[13]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(4),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[13]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[13]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[13]\,
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[13]\,
      I1 => \^dma_base\(13),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[13]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[13]\,
      O => \axi_rdata[13]_i_4_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[14]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[14]_i_4_n_0\,
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[14]\,
      I1 => axi_araddr(2),
      I2 => \slv_reg9_reg_n_0_[14]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(4),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[14]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[14]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[14]\,
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[14]\,
      I1 => \^dma_base\(14),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[14]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[14]\,
      O => \axi_rdata[14]_i_4_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[15]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[15]_i_4_n_0\,
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[15]\,
      I1 => axi_araddr(2),
      I2 => \slv_reg9_reg_n_0_[15]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(4),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[15]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[15]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[15]\,
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[15]\,
      I1 => \^dma_base\(15),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[15]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[15]\,
      O => \axi_rdata[15]_i_4_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[16]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[16]_i_4_n_0\,
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(16),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[16]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[16]\,
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[16]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[16]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[16]\,
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[16]\,
      I1 => \^dma_base\(16),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[16]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[16]\,
      O => \axi_rdata[16]_i_4_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[17]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[17]_i_4_n_0\,
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(17),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[17]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[17]\,
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[17]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[17]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[17]\,
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[17]\,
      I1 => \^dma_base\(17),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[17]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[17]\,
      O => \axi_rdata[17]_i_4_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[18]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[18]_i_4_n_0\,
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(18),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[18]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[18]\,
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[18]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[18]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[18]\,
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[18]\,
      I1 => \^dma_base\(18),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[18]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[18]\,
      O => \axi_rdata[18]_i_4_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[19]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[19]_i_4_n_0\,
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(19),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[19]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[19]\,
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[19]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[19]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[19]\,
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[19]\,
      I1 => \^dma_base\(19),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[19]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[19]\,
      O => \axi_rdata[19]_i_4_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[1]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[1]_i_4_n_0\,
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(1),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[1]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[1]\,
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[1]\,
      I1 => slv_reg6(1),
      I2 => axi_araddr(3),
      I3 => \slv_reg5_reg_n_0_[1]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg4_reg_n_0_[1]\,
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[1]\,
      I1 => \^dma_base\(1),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[1]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[1]\,
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[20]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[20]_i_4_n_0\,
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(20),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[20]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[20]\,
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[20]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[20]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[20]\,
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[20]\,
      I1 => \^dma_base\(20),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[20]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[20]\,
      O => \axi_rdata[20]_i_4_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[21]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[21]_i_4_n_0\,
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(21),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[21]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[21]\,
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[21]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[21]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[21]\,
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[21]\,
      I1 => \^dma_base\(21),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[21]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[21]\,
      O => \axi_rdata[21]_i_4_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[22]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[22]_i_4_n_0\,
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(22),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[22]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[22]\,
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[22]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[22]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[22]\,
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[22]\,
      I1 => \^dma_base\(22),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[22]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[22]\,
      O => \axi_rdata[22]_i_4_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[23]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[23]_i_4_n_0\,
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(23),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[23]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[23]\,
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[23]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[23]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[23]\,
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[23]\,
      I1 => \^dma_base\(23),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[23]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[23]\,
      O => \axi_rdata[23]_i_4_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[24]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[24]_i_4_n_0\,
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(24),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[24]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[24]\,
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[24]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[24]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[24]\,
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[24]\,
      I1 => \^dma_base\(24),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[24]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[24]\,
      O => \axi_rdata[24]_i_4_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[25]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[25]_i_4_n_0\,
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(25),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[25]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[25]\,
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[25]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[25]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[25]\,
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[25]\,
      I1 => \^dma_base\(25),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[25]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[25]\,
      O => \axi_rdata[25]_i_4_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[26]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[26]_i_4_n_0\,
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(26),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[26]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[26]\,
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[26]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[26]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[26]\,
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[26]\,
      I1 => \^dma_base\(26),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[26]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[26]\,
      O => \axi_rdata[26]_i_4_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[27]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[27]_i_4_n_0\,
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(27),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[27]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[27]\,
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[27]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[27]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[27]\,
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[27]\,
      I1 => \^dma_base\(27),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[27]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[27]\,
      O => \axi_rdata[27]_i_4_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[28]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[28]_i_4_n_0\,
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(28),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[28]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[28]\,
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[28]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[28]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[28]\,
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[28]\,
      I1 => \^dma_base\(28),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[28]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[28]\,
      O => \axi_rdata[28]_i_4_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[29]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[29]_i_4_n_0\,
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(29),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[29]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[29]\,
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[29]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[29]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[29]\,
      O => \axi_rdata[29]_i_3_n_0\
    );
\axi_rdata[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[29]\,
      I1 => \^dma_base\(29),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[29]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[29]\,
      O => \axi_rdata[29]_i_4_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[2]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[2]_i_4_n_0\,
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(2),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[2]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[2]\,
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[2]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[2]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[2]\,
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[2]\,
      I1 => \^dma_base\(2),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[2]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[2]\,
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[30]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[30]_i_4_n_0\,
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(30),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[30]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[30]\,
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[30]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[30]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[30]\,
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[30]\,
      I1 => \^dma_base\(30),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[30]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[30]\,
      O => \axi_rdata[30]_i_4_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[31]_i_3_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[31]_i_4_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[31]_i_5_n_0\,
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(31),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[31]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[31]\,
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[31]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[31]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[31]\,
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[31]\,
      I1 => \^dma_base\(31),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[31]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[31]\,
      O => \axi_rdata[31]_i_5_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[3]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[3]_i_4_n_0\,
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(3),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[3]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[3]\,
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[3]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[3]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[3]\,
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[3]\,
      I1 => \^dma_base\(3),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[3]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[3]\,
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[4]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[4]_i_4_n_0\,
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(4),
      I1 => axi_araddr(3),
      I2 => \slv_reg9_reg_n_0_[4]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg8_reg_n_0_[4]\,
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[4]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[4]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[4]\,
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[4]\,
      I1 => \^dma_base\(4),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[4]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[4]\,
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[5]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[5]_i_4_n_0\,
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[5]\,
      I1 => axi_araddr(2),
      I2 => \slv_reg9_reg_n_0_[5]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(4),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[5]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[5]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[5]\,
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[5]\,
      I1 => \^dma_base\(5),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[5]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[5]\,
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[6]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[6]_i_4_n_0\,
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[6]\,
      I1 => axi_araddr(2),
      I2 => \slv_reg9_reg_n_0_[6]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(4),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[6]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[6]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[6]\,
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[6]\,
      I1 => \^dma_base\(6),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[6]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[6]\,
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[7]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[7]_i_4_n_0\,
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[7]\,
      I1 => axi_araddr(2),
      I2 => \slv_reg9_reg_n_0_[7]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(4),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[7]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[7]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[7]\,
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[7]\,
      I1 => \^dma_base\(7),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[7]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[7]\,
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[8]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[8]_i_4_n_0\,
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[8]\,
      I1 => axi_araddr(2),
      I2 => \slv_reg9_reg_n_0_[8]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(4),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[8]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[8]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[8]\,
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[8]\,
      I1 => \^dma_base\(8),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[8]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[8]\,
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => axi_araddr(5),
      I2 => \axi_rdata[9]_i_3_n_0\,
      I3 => axi_araddr(4),
      I4 => \axi_rdata[9]_i_4_n_0\,
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg8_reg_n_0_[9]\,
      I1 => axi_araddr(2),
      I2 => \slv_reg9_reg_n_0_[9]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(4),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[9]\,
      I1 => axi_araddr(3),
      I2 => \slv_reg5_reg_n_0_[9]\,
      I3 => axi_araddr(2),
      I4 => \slv_reg4_reg_n_0_[9]\,
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[9]\,
      I1 => \^dma_base\(9),
      I2 => axi_araddr(3),
      I3 => \slv_reg1_reg_n_0_[9]\,
      I4 => axi_araddr(2),
      I5 => \slv_reg0_reg_n_0_[9]\,
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => S_AXI_RDATA(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => S_AXI_RDATA(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => S_AXI_RDATA(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => S_AXI_RDATA(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => S_AXI_RDATA(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => S_AXI_RDATA(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => S_AXI_RDATA(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => S_AXI_RDATA(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => S_AXI_RDATA(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => S_AXI_RDATA(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => S_AXI_RDATA(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => S_AXI_RDATA(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => S_AXI_RDATA(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => S_AXI_RDATA(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => S_AXI_RDATA(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => S_AXI_RDATA(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => S_AXI_RDATA(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => S_AXI_RDATA(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => S_AXI_RDATA(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => S_AXI_RDATA(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => S_AXI_RDATA(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => S_AXI_RDATA(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => S_AXI_RDATA(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => S_AXI_RDATA(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => S_AXI_RDATA(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => S_AXI_RDATA(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => S_AXI_RDATA(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => S_AXI_RDATA(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => S_AXI_RDATA(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => S_AXI_RDATA(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => S_AXI_RDATA(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => S_AXI_RDATA(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\clearDelay2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => startClear3
    );
\clearDelay2[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clearDelay2_reg(0),
      O => \clearDelay2[0]_i_3_n_0\
    );
\clearDelay2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[0]_i_2_n_7\,
      Q => clearDelay2_reg(0),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clearDelay2_reg[0]_i_2_n_0\,
      CO(2) => \clearDelay2_reg[0]_i_2_n_1\,
      CO(1) => \clearDelay2_reg[0]_i_2_n_2\,
      CO(0) => \clearDelay2_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clearDelay2_reg[0]_i_2_n_4\,
      O(2) => \clearDelay2_reg[0]_i_2_n_5\,
      O(1) => \clearDelay2_reg[0]_i_2_n_6\,
      O(0) => \clearDelay2_reg[0]_i_2_n_7\,
      S(3 downto 1) => clearDelay2_reg(3 downto 1),
      S(0) => \clearDelay2[0]_i_3_n_0\
    );
\clearDelay2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[8]_i_1_n_5\,
      Q => clearDelay2_reg(10),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[8]_i_1_n_4\,
      Q => clearDelay2_reg(11),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[12]_i_1_n_7\,
      Q => clearDelay2_reg(12),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay2_reg[8]_i_1_n_0\,
      CO(3) => \clearDelay2_reg[12]_i_1_n_0\,
      CO(2) => \clearDelay2_reg[12]_i_1_n_1\,
      CO(1) => \clearDelay2_reg[12]_i_1_n_2\,
      CO(0) => \clearDelay2_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay2_reg[12]_i_1_n_4\,
      O(2) => \clearDelay2_reg[12]_i_1_n_5\,
      O(1) => \clearDelay2_reg[12]_i_1_n_6\,
      O(0) => \clearDelay2_reg[12]_i_1_n_7\,
      S(3 downto 0) => clearDelay2_reg(15 downto 12)
    );
\clearDelay2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[12]_i_1_n_6\,
      Q => clearDelay2_reg(13),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[12]_i_1_n_5\,
      Q => clearDelay2_reg(14),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[12]_i_1_n_4\,
      Q => clearDelay2_reg(15),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[16]_i_1_n_7\,
      Q => clearDelay2_reg(16),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay2_reg[12]_i_1_n_0\,
      CO(3) => \clearDelay2_reg[16]_i_1_n_0\,
      CO(2) => \clearDelay2_reg[16]_i_1_n_1\,
      CO(1) => \clearDelay2_reg[16]_i_1_n_2\,
      CO(0) => \clearDelay2_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay2_reg[16]_i_1_n_4\,
      O(2) => \clearDelay2_reg[16]_i_1_n_5\,
      O(1) => \clearDelay2_reg[16]_i_1_n_6\,
      O(0) => \clearDelay2_reg[16]_i_1_n_7\,
      S(3 downto 0) => clearDelay2_reg(19 downto 16)
    );
\clearDelay2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[16]_i_1_n_6\,
      Q => clearDelay2_reg(17),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[16]_i_1_n_5\,
      Q => clearDelay2_reg(18),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[16]_i_1_n_4\,
      Q => clearDelay2_reg(19),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[0]_i_2_n_6\,
      Q => clearDelay2_reg(1),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[20]_i_1_n_7\,
      Q => clearDelay2_reg(20),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay2_reg[16]_i_1_n_0\,
      CO(3) => \clearDelay2_reg[20]_i_1_n_0\,
      CO(2) => \clearDelay2_reg[20]_i_1_n_1\,
      CO(1) => \clearDelay2_reg[20]_i_1_n_2\,
      CO(0) => \clearDelay2_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay2_reg[20]_i_1_n_4\,
      O(2) => \clearDelay2_reg[20]_i_1_n_5\,
      O(1) => \clearDelay2_reg[20]_i_1_n_6\,
      O(0) => \clearDelay2_reg[20]_i_1_n_7\,
      S(3 downto 0) => clearDelay2_reg(23 downto 20)
    );
\clearDelay2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[20]_i_1_n_6\,
      Q => clearDelay2_reg(21),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[20]_i_1_n_5\,
      Q => clearDelay2_reg(22),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[20]_i_1_n_4\,
      Q => clearDelay2_reg(23),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[24]_i_1_n_7\,
      Q => clearDelay2_reg(24),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay2_reg[20]_i_1_n_0\,
      CO(3) => \clearDelay2_reg[24]_i_1_n_0\,
      CO(2) => \clearDelay2_reg[24]_i_1_n_1\,
      CO(1) => \clearDelay2_reg[24]_i_1_n_2\,
      CO(0) => \clearDelay2_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay2_reg[24]_i_1_n_4\,
      O(2) => \clearDelay2_reg[24]_i_1_n_5\,
      O(1) => \clearDelay2_reg[24]_i_1_n_6\,
      O(0) => \clearDelay2_reg[24]_i_1_n_7\,
      S(3 downto 0) => clearDelay2_reg(27 downto 24)
    );
\clearDelay2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[24]_i_1_n_6\,
      Q => clearDelay2_reg(25),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[24]_i_1_n_5\,
      Q => clearDelay2_reg(26),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[24]_i_1_n_4\,
      Q => clearDelay2_reg(27),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[28]_i_1_n_7\,
      Q => clearDelay2_reg(28),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay2_reg[24]_i_1_n_0\,
      CO(3) => \NLW_clearDelay2_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clearDelay2_reg[28]_i_1_n_1\,
      CO(1) => \clearDelay2_reg[28]_i_1_n_2\,
      CO(0) => \clearDelay2_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay2_reg[28]_i_1_n_4\,
      O(2) => \clearDelay2_reg[28]_i_1_n_5\,
      O(1) => \clearDelay2_reg[28]_i_1_n_6\,
      O(0) => \clearDelay2_reg[28]_i_1_n_7\,
      S(3 downto 0) => clearDelay2_reg(31 downto 28)
    );
\clearDelay2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[28]_i_1_n_6\,
      Q => clearDelay2_reg(29),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[0]_i_2_n_5\,
      Q => clearDelay2_reg(2),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[28]_i_1_n_5\,
      Q => clearDelay2_reg(30),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[28]_i_1_n_4\,
      Q => clearDelay2_reg(31),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[0]_i_2_n_4\,
      Q => clearDelay2_reg(3),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[4]_i_1_n_7\,
      Q => clearDelay2_reg(4),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay2_reg[0]_i_2_n_0\,
      CO(3) => \clearDelay2_reg[4]_i_1_n_0\,
      CO(2) => \clearDelay2_reg[4]_i_1_n_1\,
      CO(1) => \clearDelay2_reg[4]_i_1_n_2\,
      CO(0) => \clearDelay2_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay2_reg[4]_i_1_n_4\,
      O(2) => \clearDelay2_reg[4]_i_1_n_5\,
      O(1) => \clearDelay2_reg[4]_i_1_n_6\,
      O(0) => \clearDelay2_reg[4]_i_1_n_7\,
      S(3 downto 0) => clearDelay2_reg(7 downto 4)
    );
\clearDelay2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[4]_i_1_n_6\,
      Q => clearDelay2_reg(5),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[4]_i_1_n_5\,
      Q => clearDelay2_reg(6),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[4]_i_1_n_4\,
      Q => clearDelay2_reg(7),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[8]_i_1_n_7\,
      Q => clearDelay2_reg(8),
      R => start1_i_1_n_0
    );
\clearDelay2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay2_reg[4]_i_1_n_0\,
      CO(3) => \clearDelay2_reg[8]_i_1_n_0\,
      CO(2) => \clearDelay2_reg[8]_i_1_n_1\,
      CO(1) => \clearDelay2_reg[8]_i_1_n_2\,
      CO(0) => \clearDelay2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay2_reg[8]_i_1_n_4\,
      O(2) => \clearDelay2_reg[8]_i_1_n_5\,
      O(1) => \clearDelay2_reg[8]_i_1_n_6\,
      O(0) => \clearDelay2_reg[8]_i_1_n_7\,
      S(3 downto 0) => clearDelay2_reg(11 downto 8)
    );
\clearDelay2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear3,
      D => \clearDelay2_reg[8]_i_1_n_6\,
      Q => clearDelay2_reg(9),
      R => start1_i_1_n_0
    );
\clearDelay3[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(1),
      O => \clearDelay3[0]_i_1_n_0\
    );
\clearDelay3[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clearDelay3_reg_n_0_[0]\,
      O => \clearDelay3[0]_i_3_n_0\
    );
\clearDelay3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[0]_i_2_n_7\,
      Q => \clearDelay3_reg_n_0_[0]\,
      R => start1_i_1_n_0
    );
\clearDelay3_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clearDelay3_reg[0]_i_2_n_0\,
      CO(2) => \clearDelay3_reg[0]_i_2_n_1\,
      CO(1) => \clearDelay3_reg[0]_i_2_n_2\,
      CO(0) => \clearDelay3_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clearDelay3_reg[0]_i_2_n_4\,
      O(2) => \clearDelay3_reg[0]_i_2_n_5\,
      O(1) => \clearDelay3_reg[0]_i_2_n_6\,
      O(0) => \clearDelay3_reg[0]_i_2_n_7\,
      S(3) => \clearDelay3_reg_n_0_[3]\,
      S(2) => \clearDelay3_reg_n_0_[2]\,
      S(1) => \clearDelay3_reg_n_0_[1]\,
      S(0) => \clearDelay3[0]_i_3_n_0\
    );
\clearDelay3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[8]_i_1_n_5\,
      Q => clearDelay3_reg(10),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[8]_i_1_n_4\,
      Q => clearDelay3_reg(11),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[12]_i_1_n_7\,
      Q => clearDelay3_reg(12),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay3_reg[8]_i_1_n_0\,
      CO(3) => \clearDelay3_reg[12]_i_1_n_0\,
      CO(2) => \clearDelay3_reg[12]_i_1_n_1\,
      CO(1) => \clearDelay3_reg[12]_i_1_n_2\,
      CO(0) => \clearDelay3_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay3_reg[12]_i_1_n_4\,
      O(2) => \clearDelay3_reg[12]_i_1_n_5\,
      O(1) => \clearDelay3_reg[12]_i_1_n_6\,
      O(0) => \clearDelay3_reg[12]_i_1_n_7\,
      S(3 downto 0) => clearDelay3_reg(15 downto 12)
    );
\clearDelay3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[12]_i_1_n_6\,
      Q => clearDelay3_reg(13),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[12]_i_1_n_5\,
      Q => clearDelay3_reg(14),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[12]_i_1_n_4\,
      Q => clearDelay3_reg(15),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[16]_i_1_n_7\,
      Q => clearDelay3_reg(16),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay3_reg[12]_i_1_n_0\,
      CO(3) => \clearDelay3_reg[16]_i_1_n_0\,
      CO(2) => \clearDelay3_reg[16]_i_1_n_1\,
      CO(1) => \clearDelay3_reg[16]_i_1_n_2\,
      CO(0) => \clearDelay3_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay3_reg[16]_i_1_n_4\,
      O(2) => \clearDelay3_reg[16]_i_1_n_5\,
      O(1) => \clearDelay3_reg[16]_i_1_n_6\,
      O(0) => \clearDelay3_reg[16]_i_1_n_7\,
      S(3 downto 0) => clearDelay3_reg(19 downto 16)
    );
\clearDelay3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[16]_i_1_n_6\,
      Q => clearDelay3_reg(17),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[16]_i_1_n_5\,
      Q => clearDelay3_reg(18),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[16]_i_1_n_4\,
      Q => clearDelay3_reg(19),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[0]_i_2_n_6\,
      Q => \clearDelay3_reg_n_0_[1]\,
      R => start1_i_1_n_0
    );
\clearDelay3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[20]_i_1_n_7\,
      Q => clearDelay3_reg(20),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay3_reg[16]_i_1_n_0\,
      CO(3) => \clearDelay3_reg[20]_i_1_n_0\,
      CO(2) => \clearDelay3_reg[20]_i_1_n_1\,
      CO(1) => \clearDelay3_reg[20]_i_1_n_2\,
      CO(0) => \clearDelay3_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay3_reg[20]_i_1_n_4\,
      O(2) => \clearDelay3_reg[20]_i_1_n_5\,
      O(1) => \clearDelay3_reg[20]_i_1_n_6\,
      O(0) => \clearDelay3_reg[20]_i_1_n_7\,
      S(3 downto 0) => clearDelay3_reg(23 downto 20)
    );
\clearDelay3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[20]_i_1_n_6\,
      Q => clearDelay3_reg(21),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[20]_i_1_n_5\,
      Q => clearDelay3_reg(22),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[20]_i_1_n_4\,
      Q => clearDelay3_reg(23),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[24]_i_1_n_7\,
      Q => clearDelay3_reg(24),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay3_reg[20]_i_1_n_0\,
      CO(3) => \clearDelay3_reg[24]_i_1_n_0\,
      CO(2) => \clearDelay3_reg[24]_i_1_n_1\,
      CO(1) => \clearDelay3_reg[24]_i_1_n_2\,
      CO(0) => \clearDelay3_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay3_reg[24]_i_1_n_4\,
      O(2) => \clearDelay3_reg[24]_i_1_n_5\,
      O(1) => \clearDelay3_reg[24]_i_1_n_6\,
      O(0) => \clearDelay3_reg[24]_i_1_n_7\,
      S(3 downto 0) => clearDelay3_reg(27 downto 24)
    );
\clearDelay3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[24]_i_1_n_6\,
      Q => clearDelay3_reg(25),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[24]_i_1_n_5\,
      Q => clearDelay3_reg(26),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[24]_i_1_n_4\,
      Q => clearDelay3_reg(27),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[28]_i_1_n_7\,
      Q => clearDelay3_reg(28),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay3_reg[24]_i_1_n_0\,
      CO(3) => \NLW_clearDelay3_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clearDelay3_reg[28]_i_1_n_1\,
      CO(1) => \clearDelay3_reg[28]_i_1_n_2\,
      CO(0) => \clearDelay3_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay3_reg[28]_i_1_n_4\,
      O(2) => \clearDelay3_reg[28]_i_1_n_5\,
      O(1) => \clearDelay3_reg[28]_i_1_n_6\,
      O(0) => \clearDelay3_reg[28]_i_1_n_7\,
      S(3 downto 0) => clearDelay3_reg(31 downto 28)
    );
\clearDelay3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[28]_i_1_n_6\,
      Q => clearDelay3_reg(29),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[0]_i_2_n_5\,
      Q => \clearDelay3_reg_n_0_[2]\,
      R => start1_i_1_n_0
    );
\clearDelay3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[28]_i_1_n_5\,
      Q => clearDelay3_reg(30),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[28]_i_1_n_4\,
      Q => clearDelay3_reg(31),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[0]_i_2_n_4\,
      Q => \clearDelay3_reg_n_0_[3]\,
      R => start1_i_1_n_0
    );
\clearDelay3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[4]_i_1_n_7\,
      Q => clearDelay3_reg(4),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay3_reg[0]_i_2_n_0\,
      CO(3) => \clearDelay3_reg[4]_i_1_n_0\,
      CO(2) => \clearDelay3_reg[4]_i_1_n_1\,
      CO(1) => \clearDelay3_reg[4]_i_1_n_2\,
      CO(0) => \clearDelay3_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay3_reg[4]_i_1_n_4\,
      O(2) => \clearDelay3_reg[4]_i_1_n_5\,
      O(1) => \clearDelay3_reg[4]_i_1_n_6\,
      O(0) => \clearDelay3_reg[4]_i_1_n_7\,
      S(3 downto 0) => clearDelay3_reg(7 downto 4)
    );
\clearDelay3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[4]_i_1_n_6\,
      Q => clearDelay3_reg(5),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[4]_i_1_n_5\,
      Q => clearDelay3_reg(6),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[4]_i_1_n_4\,
      Q => clearDelay3_reg(7),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[8]_i_1_n_7\,
      Q => clearDelay3_reg(8),
      R => start1_i_1_n_0
    );
\clearDelay3_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay3_reg[4]_i_1_n_0\,
      CO(3) => \clearDelay3_reg[8]_i_1_n_0\,
      CO(2) => \clearDelay3_reg[8]_i_1_n_1\,
      CO(1) => \clearDelay3_reg[8]_i_1_n_2\,
      CO(0) => \clearDelay3_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay3_reg[8]_i_1_n_4\,
      O(2) => \clearDelay3_reg[8]_i_1_n_5\,
      O(1) => \clearDelay3_reg[8]_i_1_n_6\,
      O(0) => \clearDelay3_reg[8]_i_1_n_7\,
      S(3 downto 0) => clearDelay3_reg(11 downto 8)
    );
\clearDelay3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay3[0]_i_1_n_0\,
      D => \clearDelay3_reg[8]_i_1_n_6\,
      Q => clearDelay3_reg(9),
      R => start1_i_1_n_0
    );
\clearDelay4[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(1),
      O => \clearDelay4[0]_i_1_n_0\
    );
\clearDelay4[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clearDelay4_reg(0),
      O => \clearDelay4[0]_i_3_n_0\
    );
\clearDelay4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[0]_i_2_n_7\,
      Q => clearDelay4_reg(0),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clearDelay4_reg[0]_i_2_n_0\,
      CO(2) => \clearDelay4_reg[0]_i_2_n_1\,
      CO(1) => \clearDelay4_reg[0]_i_2_n_2\,
      CO(0) => \clearDelay4_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clearDelay4_reg[0]_i_2_n_4\,
      O(2) => \clearDelay4_reg[0]_i_2_n_5\,
      O(1) => \clearDelay4_reg[0]_i_2_n_6\,
      O(0) => \clearDelay4_reg[0]_i_2_n_7\,
      S(3 downto 1) => clearDelay4_reg(3 downto 1),
      S(0) => \clearDelay4[0]_i_3_n_0\
    );
\clearDelay4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[8]_i_1_n_5\,
      Q => clearDelay4_reg(10),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[8]_i_1_n_4\,
      Q => clearDelay4_reg(11),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[12]_i_1_n_7\,
      Q => clearDelay4_reg(12),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay4_reg[8]_i_1_n_0\,
      CO(3) => \clearDelay4_reg[12]_i_1_n_0\,
      CO(2) => \clearDelay4_reg[12]_i_1_n_1\,
      CO(1) => \clearDelay4_reg[12]_i_1_n_2\,
      CO(0) => \clearDelay4_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay4_reg[12]_i_1_n_4\,
      O(2) => \clearDelay4_reg[12]_i_1_n_5\,
      O(1) => \clearDelay4_reg[12]_i_1_n_6\,
      O(0) => \clearDelay4_reg[12]_i_1_n_7\,
      S(3 downto 0) => clearDelay4_reg(15 downto 12)
    );
\clearDelay4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[12]_i_1_n_6\,
      Q => clearDelay4_reg(13),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[12]_i_1_n_5\,
      Q => clearDelay4_reg(14),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[12]_i_1_n_4\,
      Q => clearDelay4_reg(15),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[16]_i_1_n_7\,
      Q => clearDelay4_reg(16),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay4_reg[12]_i_1_n_0\,
      CO(3) => \clearDelay4_reg[16]_i_1_n_0\,
      CO(2) => \clearDelay4_reg[16]_i_1_n_1\,
      CO(1) => \clearDelay4_reg[16]_i_1_n_2\,
      CO(0) => \clearDelay4_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay4_reg[16]_i_1_n_4\,
      O(2) => \clearDelay4_reg[16]_i_1_n_5\,
      O(1) => \clearDelay4_reg[16]_i_1_n_6\,
      O(0) => \clearDelay4_reg[16]_i_1_n_7\,
      S(3 downto 0) => clearDelay4_reg(19 downto 16)
    );
\clearDelay4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[16]_i_1_n_6\,
      Q => clearDelay4_reg(17),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[16]_i_1_n_5\,
      Q => clearDelay4_reg(18),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[16]_i_1_n_4\,
      Q => clearDelay4_reg(19),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[0]_i_2_n_6\,
      Q => clearDelay4_reg(1),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[20]_i_1_n_7\,
      Q => clearDelay4_reg(20),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay4_reg[16]_i_1_n_0\,
      CO(3) => \clearDelay4_reg[20]_i_1_n_0\,
      CO(2) => \clearDelay4_reg[20]_i_1_n_1\,
      CO(1) => \clearDelay4_reg[20]_i_1_n_2\,
      CO(0) => \clearDelay4_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay4_reg[20]_i_1_n_4\,
      O(2) => \clearDelay4_reg[20]_i_1_n_5\,
      O(1) => \clearDelay4_reg[20]_i_1_n_6\,
      O(0) => \clearDelay4_reg[20]_i_1_n_7\,
      S(3 downto 0) => clearDelay4_reg(23 downto 20)
    );
\clearDelay4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[20]_i_1_n_6\,
      Q => clearDelay4_reg(21),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[20]_i_1_n_5\,
      Q => clearDelay4_reg(22),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[20]_i_1_n_4\,
      Q => clearDelay4_reg(23),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[24]_i_1_n_7\,
      Q => clearDelay4_reg(24),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay4_reg[20]_i_1_n_0\,
      CO(3) => \clearDelay4_reg[24]_i_1_n_0\,
      CO(2) => \clearDelay4_reg[24]_i_1_n_1\,
      CO(1) => \clearDelay4_reg[24]_i_1_n_2\,
      CO(0) => \clearDelay4_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay4_reg[24]_i_1_n_4\,
      O(2) => \clearDelay4_reg[24]_i_1_n_5\,
      O(1) => \clearDelay4_reg[24]_i_1_n_6\,
      O(0) => \clearDelay4_reg[24]_i_1_n_7\,
      S(3 downto 0) => clearDelay4_reg(27 downto 24)
    );
\clearDelay4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[24]_i_1_n_6\,
      Q => clearDelay4_reg(25),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[24]_i_1_n_5\,
      Q => clearDelay4_reg(26),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[24]_i_1_n_4\,
      Q => clearDelay4_reg(27),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[28]_i_1_n_7\,
      Q => clearDelay4_reg(28),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay4_reg[24]_i_1_n_0\,
      CO(3) => \NLW_clearDelay4_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clearDelay4_reg[28]_i_1_n_1\,
      CO(1) => \clearDelay4_reg[28]_i_1_n_2\,
      CO(0) => \clearDelay4_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay4_reg[28]_i_1_n_4\,
      O(2) => \clearDelay4_reg[28]_i_1_n_5\,
      O(1) => \clearDelay4_reg[28]_i_1_n_6\,
      O(0) => \clearDelay4_reg[28]_i_1_n_7\,
      S(3 downto 0) => clearDelay4_reg(31 downto 28)
    );
\clearDelay4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[28]_i_1_n_6\,
      Q => clearDelay4_reg(29),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[0]_i_2_n_5\,
      Q => clearDelay4_reg(2),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[28]_i_1_n_5\,
      Q => clearDelay4_reg(30),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[28]_i_1_n_4\,
      Q => clearDelay4_reg(31),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[0]_i_2_n_4\,
      Q => clearDelay4_reg(3),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[4]_i_1_n_7\,
      Q => clearDelay4_reg(4),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay4_reg[0]_i_2_n_0\,
      CO(3) => \clearDelay4_reg[4]_i_1_n_0\,
      CO(2) => \clearDelay4_reg[4]_i_1_n_1\,
      CO(1) => \clearDelay4_reg[4]_i_1_n_2\,
      CO(0) => \clearDelay4_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay4_reg[4]_i_1_n_4\,
      O(2) => \clearDelay4_reg[4]_i_1_n_5\,
      O(1) => \clearDelay4_reg[4]_i_1_n_6\,
      O(0) => \clearDelay4_reg[4]_i_1_n_7\,
      S(3 downto 0) => clearDelay4_reg(7 downto 4)
    );
\clearDelay4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[4]_i_1_n_6\,
      Q => clearDelay4_reg(5),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[4]_i_1_n_5\,
      Q => clearDelay4_reg(6),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[4]_i_1_n_4\,
      Q => clearDelay4_reg(7),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[8]_i_1_n_7\,
      Q => clearDelay4_reg(8),
      R => start1_i_1_n_0
    );
\clearDelay4_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay4_reg[4]_i_1_n_0\,
      CO(3) => \clearDelay4_reg[8]_i_1_n_0\,
      CO(2) => \clearDelay4_reg[8]_i_1_n_1\,
      CO(1) => \clearDelay4_reg[8]_i_1_n_2\,
      CO(0) => \clearDelay4_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay4_reg[8]_i_1_n_4\,
      O(2) => \clearDelay4_reg[8]_i_1_n_5\,
      O(1) => \clearDelay4_reg[8]_i_1_n_6\,
      O(0) => \clearDelay4_reg[8]_i_1_n_7\,
      S(3 downto 0) => clearDelay4_reg(11 downto 8)
    );
\clearDelay4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \clearDelay4[0]_i_1_n_0\,
      D => \clearDelay4_reg[8]_i_1_n_6\,
      Q => clearDelay4_reg(9),
      R => start1_i_1_n_0
    );
\clearDelay[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(4),
      I4 => \^q\(1),
      O => startClear
    );
\clearDelay[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clearDelay_reg_n_0_[0]\,
      O => \clearDelay[0]_i_3_n_0\
    );
\clearDelay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[0]_i_2_n_7\,
      Q => \clearDelay_reg_n_0_[0]\,
      R => start1_i_1_n_0
    );
\clearDelay_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clearDelay_reg[0]_i_2_n_0\,
      CO(2) => \clearDelay_reg[0]_i_2_n_1\,
      CO(1) => \clearDelay_reg[0]_i_2_n_2\,
      CO(0) => \clearDelay_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clearDelay_reg[0]_i_2_n_4\,
      O(2) => \clearDelay_reg[0]_i_2_n_5\,
      O(1) => \clearDelay_reg[0]_i_2_n_6\,
      O(0) => \clearDelay_reg[0]_i_2_n_7\,
      S(3) => \clearDelay_reg_n_0_[3]\,
      S(2) => \clearDelay_reg_n_0_[2]\,
      S(1) => \clearDelay_reg_n_0_[1]\,
      S(0) => \clearDelay[0]_i_3_n_0\
    );
\clearDelay_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[8]_i_1_n_5\,
      Q => clearDelay_reg(10),
      R => start1_i_1_n_0
    );
\clearDelay_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[8]_i_1_n_4\,
      Q => clearDelay_reg(11),
      R => start1_i_1_n_0
    );
\clearDelay_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[12]_i_1_n_7\,
      Q => clearDelay_reg(12),
      R => start1_i_1_n_0
    );
\clearDelay_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay_reg[8]_i_1_n_0\,
      CO(3) => \clearDelay_reg[12]_i_1_n_0\,
      CO(2) => \clearDelay_reg[12]_i_1_n_1\,
      CO(1) => \clearDelay_reg[12]_i_1_n_2\,
      CO(0) => \clearDelay_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay_reg[12]_i_1_n_4\,
      O(2) => \clearDelay_reg[12]_i_1_n_5\,
      O(1) => \clearDelay_reg[12]_i_1_n_6\,
      O(0) => \clearDelay_reg[12]_i_1_n_7\,
      S(3 downto 0) => clearDelay_reg(15 downto 12)
    );
\clearDelay_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[12]_i_1_n_6\,
      Q => clearDelay_reg(13),
      R => start1_i_1_n_0
    );
\clearDelay_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[12]_i_1_n_5\,
      Q => clearDelay_reg(14),
      R => start1_i_1_n_0
    );
\clearDelay_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[12]_i_1_n_4\,
      Q => clearDelay_reg(15),
      R => start1_i_1_n_0
    );
\clearDelay_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[16]_i_1_n_7\,
      Q => clearDelay_reg(16),
      R => start1_i_1_n_0
    );
\clearDelay_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay_reg[12]_i_1_n_0\,
      CO(3) => \clearDelay_reg[16]_i_1_n_0\,
      CO(2) => \clearDelay_reg[16]_i_1_n_1\,
      CO(1) => \clearDelay_reg[16]_i_1_n_2\,
      CO(0) => \clearDelay_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay_reg[16]_i_1_n_4\,
      O(2) => \clearDelay_reg[16]_i_1_n_5\,
      O(1) => \clearDelay_reg[16]_i_1_n_6\,
      O(0) => \clearDelay_reg[16]_i_1_n_7\,
      S(3 downto 0) => clearDelay_reg(19 downto 16)
    );
\clearDelay_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[16]_i_1_n_6\,
      Q => clearDelay_reg(17),
      R => start1_i_1_n_0
    );
\clearDelay_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[16]_i_1_n_5\,
      Q => clearDelay_reg(18),
      R => start1_i_1_n_0
    );
\clearDelay_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[16]_i_1_n_4\,
      Q => clearDelay_reg(19),
      R => start1_i_1_n_0
    );
\clearDelay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[0]_i_2_n_6\,
      Q => \clearDelay_reg_n_0_[1]\,
      R => start1_i_1_n_0
    );
\clearDelay_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[20]_i_1_n_7\,
      Q => clearDelay_reg(20),
      R => start1_i_1_n_0
    );
\clearDelay_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay_reg[16]_i_1_n_0\,
      CO(3) => \clearDelay_reg[20]_i_1_n_0\,
      CO(2) => \clearDelay_reg[20]_i_1_n_1\,
      CO(1) => \clearDelay_reg[20]_i_1_n_2\,
      CO(0) => \clearDelay_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay_reg[20]_i_1_n_4\,
      O(2) => \clearDelay_reg[20]_i_1_n_5\,
      O(1) => \clearDelay_reg[20]_i_1_n_6\,
      O(0) => \clearDelay_reg[20]_i_1_n_7\,
      S(3 downto 0) => clearDelay_reg(23 downto 20)
    );
\clearDelay_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[20]_i_1_n_6\,
      Q => clearDelay_reg(21),
      R => start1_i_1_n_0
    );
\clearDelay_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[20]_i_1_n_5\,
      Q => clearDelay_reg(22),
      R => start1_i_1_n_0
    );
\clearDelay_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[20]_i_1_n_4\,
      Q => clearDelay_reg(23),
      R => start1_i_1_n_0
    );
\clearDelay_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[24]_i_1_n_7\,
      Q => clearDelay_reg(24),
      R => start1_i_1_n_0
    );
\clearDelay_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay_reg[20]_i_1_n_0\,
      CO(3) => \clearDelay_reg[24]_i_1_n_0\,
      CO(2) => \clearDelay_reg[24]_i_1_n_1\,
      CO(1) => \clearDelay_reg[24]_i_1_n_2\,
      CO(0) => \clearDelay_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay_reg[24]_i_1_n_4\,
      O(2) => \clearDelay_reg[24]_i_1_n_5\,
      O(1) => \clearDelay_reg[24]_i_1_n_6\,
      O(0) => \clearDelay_reg[24]_i_1_n_7\,
      S(3 downto 0) => clearDelay_reg(27 downto 24)
    );
\clearDelay_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[24]_i_1_n_6\,
      Q => clearDelay_reg(25),
      R => start1_i_1_n_0
    );
\clearDelay_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[24]_i_1_n_5\,
      Q => clearDelay_reg(26),
      R => start1_i_1_n_0
    );
\clearDelay_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[24]_i_1_n_4\,
      Q => clearDelay_reg(27),
      R => start1_i_1_n_0
    );
\clearDelay_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[28]_i_1_n_7\,
      Q => clearDelay_reg(28),
      R => start1_i_1_n_0
    );
\clearDelay_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay_reg[24]_i_1_n_0\,
      CO(3) => \NLW_clearDelay_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \clearDelay_reg[28]_i_1_n_1\,
      CO(1) => \clearDelay_reg[28]_i_1_n_2\,
      CO(0) => \clearDelay_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay_reg[28]_i_1_n_4\,
      O(2) => \clearDelay_reg[28]_i_1_n_5\,
      O(1) => \clearDelay_reg[28]_i_1_n_6\,
      O(0) => \clearDelay_reg[28]_i_1_n_7\,
      S(3 downto 0) => clearDelay_reg(31 downto 28)
    );
\clearDelay_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[28]_i_1_n_6\,
      Q => clearDelay_reg(29),
      R => start1_i_1_n_0
    );
\clearDelay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[0]_i_2_n_5\,
      Q => \clearDelay_reg_n_0_[2]\,
      R => start1_i_1_n_0
    );
\clearDelay_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[28]_i_1_n_5\,
      Q => clearDelay_reg(30),
      R => start1_i_1_n_0
    );
\clearDelay_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[28]_i_1_n_4\,
      Q => clearDelay_reg(31),
      R => start1_i_1_n_0
    );
\clearDelay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[0]_i_2_n_4\,
      Q => \clearDelay_reg_n_0_[3]\,
      R => start1_i_1_n_0
    );
\clearDelay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[4]_i_1_n_7\,
      Q => clearDelay_reg(4),
      R => start1_i_1_n_0
    );
\clearDelay_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay_reg[0]_i_2_n_0\,
      CO(3) => \clearDelay_reg[4]_i_1_n_0\,
      CO(2) => \clearDelay_reg[4]_i_1_n_1\,
      CO(1) => \clearDelay_reg[4]_i_1_n_2\,
      CO(0) => \clearDelay_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay_reg[4]_i_1_n_4\,
      O(2) => \clearDelay_reg[4]_i_1_n_5\,
      O(1) => \clearDelay_reg[4]_i_1_n_6\,
      O(0) => \clearDelay_reg[4]_i_1_n_7\,
      S(3 downto 0) => clearDelay_reg(7 downto 4)
    );
\clearDelay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[4]_i_1_n_6\,
      Q => clearDelay_reg(5),
      R => start1_i_1_n_0
    );
\clearDelay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[4]_i_1_n_5\,
      Q => clearDelay_reg(6),
      R => start1_i_1_n_0
    );
\clearDelay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[4]_i_1_n_4\,
      Q => clearDelay_reg(7),
      R => start1_i_1_n_0
    );
\clearDelay_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[8]_i_1_n_7\,
      Q => clearDelay_reg(8),
      R => start1_i_1_n_0
    );
\clearDelay_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clearDelay_reg[4]_i_1_n_0\,
      CO(3) => \clearDelay_reg[8]_i_1_n_0\,
      CO(2) => \clearDelay_reg[8]_i_1_n_1\,
      CO(1) => \clearDelay_reg[8]_i_1_n_2\,
      CO(0) => \clearDelay_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clearDelay_reg[8]_i_1_n_4\,
      O(2) => \clearDelay_reg[8]_i_1_n_5\,
      O(1) => \clearDelay_reg[8]_i_1_n_6\,
      O(0) => \clearDelay_reg[8]_i_1_n_7\,
      S(3 downto 0) => clearDelay_reg(11 downto 8)
    );
\clearDelay_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => startClear,
      D => \clearDelay_reg[8]_i_1_n_6\,
      Q => clearDelay_reg(9),
      R => start1_i_1_n_0
    );
\column_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \column_count_reg_n_0_[0]\,
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      O => column_count(0)
    );
\column_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6660"
    )
        port map (
      I0 => \column_count_reg_n_0_[0]\,
      I1 => \column_count_reg_n_0_[1]\,
      I2 => \^s_axi_tready\,
      I3 => pixel_word_count1,
      O => column_count(1)
    );
\column_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EE0E0E0"
    )
        port map (
      I0 => pixel_word_count1,
      I1 => \^s_axi_tready\,
      I2 => \column_count_reg_n_0_[2]\,
      I3 => \column_count_reg_n_0_[1]\,
      I4 => \column_count_reg_n_0_[0]\,
      O => column_count(2)
    );
\column_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \column_count[4]_i_3_n_0\,
      I1 => \column_count_reg_n_0_[0]\,
      I2 => \column_count_reg_n_0_[1]\,
      I3 => \column_count_reg_n_0_[2]\,
      I4 => \column_count_reg_n_0_[3]\,
      O => column_count(3)
    );
\column_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080000080FF80FF"
    )
        port map (
      I0 => \small_column_count_reg_n_0_[1]\,
      I1 => \small_column_count_reg_n_0_[3]\,
      I2 => \small_column_count_reg_n_0_[2]\,
      I3 => pixel_word_count1,
      I4 => S_AXI_TVALID,
      I5 => \^s_axi_tready\,
      O => \column_count[4]_i_1_n_0\
    );
\column_count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \column_count[4]_i_3_n_0\,
      I1 => \column_count_reg_n_0_[0]\,
      I2 => \column_count_reg_n_0_[3]\,
      I3 => \column_count_reg_n_0_[2]\,
      I4 => \column_count_reg_n_0_[1]\,
      I5 => \column_count_reg_n_0_[4]\,
      O => column_count(4)
    );
\column_count[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555541"
    )
        port map (
      I0 => pixel_word_count1,
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(0),
      I5 => \^q\(4),
      O => \column_count[4]_i_3_n_0\
    );
\column_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \column_count[4]_i_1_n_0\,
      D => column_count(0),
      Q => \column_count_reg_n_0_[0]\,
      R => '0'
    );
\column_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \column_count[4]_i_1_n_0\,
      D => column_count(1),
      Q => \column_count_reg_n_0_[1]\,
      R => '0'
    );
\column_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \column_count[4]_i_1_n_0\,
      D => column_count(2),
      Q => \column_count_reg_n_0_[2]\,
      R => '0'
    );
\column_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \column_count[4]_i_1_n_0\,
      D => column_count(3),
      Q => \column_count_reg_n_0_[3]\,
      R => '0'
    );
\column_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \column_count[4]_i_1_n_0\,
      D => column_count(4),
      Q => \column_count_reg_n_0_[4]\,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BCBCBC00"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => S_AXI_TVALID,
      I3 => \^s_axi_tready\,
      I4 => p_0_in1_in,
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EE0E0E0"
    )
        port map (
      I0 => \^s_axi_tready\,
      I1 => p_0_in1_in,
      I2 => count(1),
      I3 => count(0),
      I4 => S_AXI_TVALID,
      O => \count[1]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => count(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      Q => count(1),
      R => '0'
    );
\currentState_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => nextState(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\currentState_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => nextState(1),
      Q => \^q\(1),
      R => axi_awready_i_1_n_0
    );
\currentState_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => nextState(2),
      Q => \^q\(2),
      R => axi_awready_i_1_n_0
    );
\currentState_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => nextState(3),
      Q => \^q\(3),
      R => axi_awready_i_1_n_0
    );
\currentState_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => nextState(4),
      Q => \^q\(4),
      R => axi_awready_i_1_n_0
    );
\delayCounter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(4),
      I4 => \^q\(1),
      O => \delayCounter[0]_i_1_n_0\
    );
\delayCounter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delayCounter_reg(0),
      O => \delayCounter[0]_i_3_n_0\
    );
\delayCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[0]_i_2_n_7\,
      Q => delayCounter_reg(0),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \delayCounter_reg[0]_i_2_n_0\,
      CO(2) => \delayCounter_reg[0]_i_2_n_1\,
      CO(1) => \delayCounter_reg[0]_i_2_n_2\,
      CO(0) => \delayCounter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \delayCounter_reg[0]_i_2_n_4\,
      O(2) => \delayCounter_reg[0]_i_2_n_5\,
      O(1) => \delayCounter_reg[0]_i_2_n_6\,
      O(0) => \delayCounter_reg[0]_i_2_n_7\,
      S(3 downto 1) => delayCounter_reg(3 downto 1),
      S(0) => \delayCounter[0]_i_3_n_0\
    );
\delayCounter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[8]_i_1_n_5\,
      Q => delayCounter_reg(10),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[8]_i_1_n_4\,
      Q => delayCounter_reg(11),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[12]_i_1_n_7\,
      Q => delayCounter_reg(12),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delayCounter_reg[8]_i_1_n_0\,
      CO(3) => \delayCounter_reg[12]_i_1_n_0\,
      CO(2) => \delayCounter_reg[12]_i_1_n_1\,
      CO(1) => \delayCounter_reg[12]_i_1_n_2\,
      CO(0) => \delayCounter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delayCounter_reg[12]_i_1_n_4\,
      O(2) => \delayCounter_reg[12]_i_1_n_5\,
      O(1) => \delayCounter_reg[12]_i_1_n_6\,
      O(0) => \delayCounter_reg[12]_i_1_n_7\,
      S(3 downto 0) => delayCounter_reg(15 downto 12)
    );
\delayCounter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[12]_i_1_n_6\,
      Q => delayCounter_reg(13),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[12]_i_1_n_5\,
      Q => delayCounter_reg(14),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[12]_i_1_n_4\,
      Q => delayCounter_reg(15),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[16]_i_1_n_7\,
      Q => delayCounter_reg(16),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delayCounter_reg[12]_i_1_n_0\,
      CO(3) => \delayCounter_reg[16]_i_1_n_0\,
      CO(2) => \delayCounter_reg[16]_i_1_n_1\,
      CO(1) => \delayCounter_reg[16]_i_1_n_2\,
      CO(0) => \delayCounter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delayCounter_reg[16]_i_1_n_4\,
      O(2) => \delayCounter_reg[16]_i_1_n_5\,
      O(1) => \delayCounter_reg[16]_i_1_n_6\,
      O(0) => \delayCounter_reg[16]_i_1_n_7\,
      S(3 downto 0) => delayCounter_reg(19 downto 16)
    );
\delayCounter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[16]_i_1_n_6\,
      Q => delayCounter_reg(17),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[16]_i_1_n_5\,
      Q => delayCounter_reg(18),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[16]_i_1_n_4\,
      Q => delayCounter_reg(19),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[0]_i_2_n_6\,
      Q => delayCounter_reg(1),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[20]_i_1_n_7\,
      Q => delayCounter_reg(20),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delayCounter_reg[16]_i_1_n_0\,
      CO(3) => \delayCounter_reg[20]_i_1_n_0\,
      CO(2) => \delayCounter_reg[20]_i_1_n_1\,
      CO(1) => \delayCounter_reg[20]_i_1_n_2\,
      CO(0) => \delayCounter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delayCounter_reg[20]_i_1_n_4\,
      O(2) => \delayCounter_reg[20]_i_1_n_5\,
      O(1) => \delayCounter_reg[20]_i_1_n_6\,
      O(0) => \delayCounter_reg[20]_i_1_n_7\,
      S(3 downto 0) => delayCounter_reg(23 downto 20)
    );
\delayCounter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[20]_i_1_n_6\,
      Q => delayCounter_reg(21),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[20]_i_1_n_5\,
      Q => delayCounter_reg(22),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[20]_i_1_n_4\,
      Q => delayCounter_reg(23),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[24]_i_1_n_7\,
      Q => delayCounter_reg(24),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delayCounter_reg[20]_i_1_n_0\,
      CO(3) => \delayCounter_reg[24]_i_1_n_0\,
      CO(2) => \delayCounter_reg[24]_i_1_n_1\,
      CO(1) => \delayCounter_reg[24]_i_1_n_2\,
      CO(0) => \delayCounter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delayCounter_reg[24]_i_1_n_4\,
      O(2) => \delayCounter_reg[24]_i_1_n_5\,
      O(1) => \delayCounter_reg[24]_i_1_n_6\,
      O(0) => \delayCounter_reg[24]_i_1_n_7\,
      S(3 downto 0) => delayCounter_reg(27 downto 24)
    );
\delayCounter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[24]_i_1_n_6\,
      Q => delayCounter_reg(25),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[24]_i_1_n_5\,
      Q => delayCounter_reg(26),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[24]_i_1_n_4\,
      Q => delayCounter_reg(27),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[28]_i_1_n_7\,
      Q => delayCounter_reg(28),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delayCounter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_delayCounter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \delayCounter_reg[28]_i_1_n_1\,
      CO(1) => \delayCounter_reg[28]_i_1_n_2\,
      CO(0) => \delayCounter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delayCounter_reg[28]_i_1_n_4\,
      O(2) => \delayCounter_reg[28]_i_1_n_5\,
      O(1) => \delayCounter_reg[28]_i_1_n_6\,
      O(0) => \delayCounter_reg[28]_i_1_n_7\,
      S(3 downto 0) => delayCounter_reg(31 downto 28)
    );
\delayCounter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[28]_i_1_n_6\,
      Q => delayCounter_reg(29),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[0]_i_2_n_5\,
      Q => delayCounter_reg(2),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[28]_i_1_n_5\,
      Q => delayCounter_reg(30),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[28]_i_1_n_4\,
      Q => delayCounter_reg(31),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[0]_i_2_n_4\,
      Q => delayCounter_reg(3),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[4]_i_1_n_7\,
      Q => delayCounter_reg(4),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delayCounter_reg[0]_i_2_n_0\,
      CO(3) => \delayCounter_reg[4]_i_1_n_0\,
      CO(2) => \delayCounter_reg[4]_i_1_n_1\,
      CO(1) => \delayCounter_reg[4]_i_1_n_2\,
      CO(0) => \delayCounter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delayCounter_reg[4]_i_1_n_4\,
      O(2) => \delayCounter_reg[4]_i_1_n_5\,
      O(1) => \delayCounter_reg[4]_i_1_n_6\,
      O(0) => \delayCounter_reg[4]_i_1_n_7\,
      S(3 downto 0) => delayCounter_reg(7 downto 4)
    );
\delayCounter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[4]_i_1_n_6\,
      Q => delayCounter_reg(5),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[4]_i_1_n_5\,
      Q => delayCounter_reg(6),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[4]_i_1_n_4\,
      Q => delayCounter_reg(7),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[8]_i_1_n_7\,
      Q => delayCounter_reg(8),
      R => \slv_reg6[1]_i_1_n_0\
    );
\delayCounter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delayCounter_reg[4]_i_1_n_0\,
      CO(3) => \delayCounter_reg[8]_i_1_n_0\,
      CO(2) => \delayCounter_reg[8]_i_1_n_1\,
      CO(1) => \delayCounter_reg[8]_i_1_n_2\,
      CO(0) => \delayCounter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delayCounter_reg[8]_i_1_n_4\,
      O(2) => \delayCounter_reg[8]_i_1_n_5\,
      O(1) => \delayCounter_reg[8]_i_1_n_6\,
      O(0) => \delayCounter_reg[8]_i_1_n_7\,
      S(3 downto 0) => delayCounter_reg(11 downto 8)
    );
\delayCounter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \delayCounter[0]_i_1_n_0\,
      D => \delayCounter_reg[8]_i_1_n_6\,
      Q => delayCounter_reg(9),
      R => \slv_reg6[1]_i_1_n_0\
    );
delay_S_AXI_TLAST_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_TLAST,
      I1 => aresetn,
      O => delay_S_AXI_TLAST
    );
delay_S_AXI_TLAST_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => delay_S_AXI_TLAST,
      Q => delay_S_AXI_TLAST_reg_n_0,
      R => '0'
    );
delay_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => S_AXI_TVALID,
      Q => delay_tvalid,
      R => '0'
    );
\dma_init[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(10),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(10),
      O => p_1_in(10)
    );
\dma_init[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(11),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(11),
      O => p_1_in(11)
    );
\dma_init[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(12),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(12),
      O => p_1_in(12)
    );
\dma_init[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(13),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(13),
      O => p_1_in(13)
    );
\dma_init[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(14),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(14),
      O => p_1_in(14)
    );
\dma_init[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(15),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(15),
      O => p_1_in(15)
    );
\dma_init[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(16),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(16),
      O => p_1_in(16)
    );
\dma_init[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(17),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(17),
      O => p_1_in(17)
    );
\dma_init[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(18),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(18),
      O => p_1_in(18)
    );
\dma_init[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(19),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(19),
      O => p_1_in(19)
    );
\dma_init[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(20),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(20),
      O => p_1_in(20)
    );
\dma_init[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(21),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(21),
      O => p_1_in(21)
    );
\dma_init[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(22),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(22),
      O => p_1_in(22)
    );
\dma_init[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(23),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(23),
      O => p_1_in(23)
    );
\dma_init[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(24),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(24),
      O => p_1_in(24)
    );
\dma_init[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(25),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(25),
      O => p_1_in(25)
    );
\dma_init[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(26),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(26),
      O => p_1_in(26)
    );
\dma_init[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(27),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(27),
      O => p_1_in(27)
    );
\dma_init[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(28),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(28),
      O => p_1_in(28)
    );
\dma_init[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(29),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(29),
      O => p_1_in(29)
    );
\dma_init[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(30),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(30),
      O => p_1_in(30)
    );
\dma_init[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E522"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \dma_init[31]_i_1_n_0\
    );
\dma_init[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(31),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(31),
      O => p_1_in(31)
    );
\dma_init[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFBFB"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => \dma_init[31]_i_3_n_0\
    );
\dma_init[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(3),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(3),
      O => p_1_in(3)
    );
\dma_init[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(4),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(4),
      O => p_1_in(4)
    );
\dma_init[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(5),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(5),
      O => p_1_in(5)
    );
\dma_init[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(6),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(6),
      O => p_1_in(6)
    );
\dma_init[6]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dma_base\(5),
      O => \dma_init[6]_i_3_n_0\
    );
\dma_init[6]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dma_base\(4),
      O => \dma_init[6]_i_4_n_0\
    );
\dma_init[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(7),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(7),
      O => p_1_in(7)
    );
\dma_init[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(8),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(8),
      O => p_1_in(8)
    );
\dma_init[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dma_base\(9),
      I1 => \dma_init[31]_i_3_n_0\,
      I2 => data0(9),
      O => p_1_in(9)
    );
\dma_init_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => \^dma_base\(0),
      Q => w1_addr(0),
      R => '0'
    );
\dma_init_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(10),
      Q => w1_addr(10),
      R => '0'
    );
\dma_init_reg[10]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dma_init_reg[6]_i_2_n_0\,
      CO(3) => \dma_init_reg[10]_i_2_n_0\,
      CO(2) => \dma_init_reg[10]_i_2_n_1\,
      CO(1) => \dma_init_reg[10]_i_2_n_2\,
      CO(0) => \dma_init_reg[10]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(10 downto 7),
      S(3 downto 0) => \^dma_base\(10 downto 7)
    );
\dma_init_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(11),
      Q => w1_addr(11),
      R => '0'
    );
\dma_init_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(12),
      Q => w1_addr(12),
      R => '0'
    );
\dma_init_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(13),
      Q => w1_addr(13),
      R => '0'
    );
\dma_init_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(14),
      Q => w1_addr(14),
      R => '0'
    );
\dma_init_reg[14]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dma_init_reg[10]_i_2_n_0\,
      CO(3) => \dma_init_reg[14]_i_2_n_0\,
      CO(2) => \dma_init_reg[14]_i_2_n_1\,
      CO(1) => \dma_init_reg[14]_i_2_n_2\,
      CO(0) => \dma_init_reg[14]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(14 downto 11),
      S(3 downto 0) => \^dma_base\(14 downto 11)
    );
\dma_init_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(15),
      Q => w1_addr(15),
      R => '0'
    );
\dma_init_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(16),
      Q => w1_addr(16),
      R => '0'
    );
\dma_init_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(17),
      Q => w1_addr(17),
      R => '0'
    );
\dma_init_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(18),
      Q => w1_addr(18),
      R => '0'
    );
\dma_init_reg[18]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dma_init_reg[14]_i_2_n_0\,
      CO(3) => \dma_init_reg[18]_i_2_n_0\,
      CO(2) => \dma_init_reg[18]_i_2_n_1\,
      CO(1) => \dma_init_reg[18]_i_2_n_2\,
      CO(0) => \dma_init_reg[18]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(18 downto 15),
      S(3 downto 0) => \^dma_base\(18 downto 15)
    );
\dma_init_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(19),
      Q => w1_addr(19),
      R => '0'
    );
\dma_init_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => \^dma_base\(1),
      Q => w1_addr(1),
      R => '0'
    );
\dma_init_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(20),
      Q => w1_addr(20),
      R => '0'
    );
\dma_init_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(21),
      Q => w1_addr(21),
      R => '0'
    );
\dma_init_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(22),
      Q => w1_addr(22),
      R => '0'
    );
\dma_init_reg[22]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dma_init_reg[18]_i_2_n_0\,
      CO(3) => \dma_init_reg[22]_i_2_n_0\,
      CO(2) => \dma_init_reg[22]_i_2_n_1\,
      CO(1) => \dma_init_reg[22]_i_2_n_2\,
      CO(0) => \dma_init_reg[22]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(22 downto 19),
      S(3 downto 0) => \^dma_base\(22 downto 19)
    );
\dma_init_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(23),
      Q => w1_addr(23),
      R => '0'
    );
\dma_init_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(24),
      Q => w1_addr(24),
      R => '0'
    );
\dma_init_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(25),
      Q => w1_addr(25),
      R => '0'
    );
\dma_init_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(26),
      Q => w1_addr(26),
      R => '0'
    );
\dma_init_reg[26]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dma_init_reg[22]_i_2_n_0\,
      CO(3) => \dma_init_reg[26]_i_2_n_0\,
      CO(2) => \dma_init_reg[26]_i_2_n_1\,
      CO(1) => \dma_init_reg[26]_i_2_n_2\,
      CO(0) => \dma_init_reg[26]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(26 downto 23),
      S(3 downto 0) => \^dma_base\(26 downto 23)
    );
\dma_init_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(27),
      Q => w1_addr(27),
      R => '0'
    );
\dma_init_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(28),
      Q => w1_addr(28),
      R => '0'
    );
\dma_init_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(29),
      Q => w1_addr(29),
      R => '0'
    );
\dma_init_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => \^dma_base\(2),
      Q => w1_addr(2),
      R => '0'
    );
\dma_init_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(30),
      Q => w1_addr(30),
      R => '0'
    );
\dma_init_reg[30]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dma_init_reg[26]_i_2_n_0\,
      CO(3) => \dma_init_reg[30]_i_2_n_0\,
      CO(2) => \dma_init_reg[30]_i_2_n_1\,
      CO(1) => \dma_init_reg[30]_i_2_n_2\,
      CO(0) => \dma_init_reg[30]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(30 downto 27),
      S(3 downto 0) => \^dma_base\(30 downto 27)
    );
\dma_init_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(31),
      Q => w1_addr(31),
      R => '0'
    );
\dma_init_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \dma_init_reg[30]_i_2_n_0\,
      CO(3 downto 0) => \NLW_dma_init_reg[31]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_dma_init_reg[31]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(31),
      S(3 downto 1) => B"000",
      S(0) => \^dma_base\(31)
    );
\dma_init_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(3),
      Q => w1_addr(3),
      R => '0'
    );
\dma_init_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(4),
      Q => w1_addr(4),
      R => '0'
    );
\dma_init_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(5),
      Q => w1_addr(5),
      R => '0'
    );
\dma_init_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(6),
      Q => w1_addr(6),
      R => '0'
    );
\dma_init_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dma_init_reg[6]_i_2_n_0\,
      CO(2) => \dma_init_reg[6]_i_2_n_1\,
      CO(1) => \dma_init_reg[6]_i_2_n_2\,
      CO(0) => \dma_init_reg[6]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => \^dma_base\(5 downto 4),
      DI(0) => '0',
      O(3 downto 0) => data0(6 downto 3),
      S(3) => \^dma_base\(6),
      S(2) => \dma_init[6]_i_3_n_0\,
      S(1) => \dma_init[6]_i_4_n_0\,
      S(0) => \^dma_base\(3)
    );
\dma_init_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(7),
      Q => w1_addr(7),
      R => '0'
    );
\dma_init_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(8),
      Q => w1_addr(8),
      R => '0'
    );
\dma_init_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \dma_init[31]_i_1_n_0\,
      D => p_1_in(9),
      Q => w1_addr(9),
      R => '0'
    );
finish_send_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0A8A0"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => S_AXI_S2MM_TREADY,
      I2 => finish_send,
      I3 => finish_send_i_2_n_0,
      I4 => finish_send_i_3_n_0,
      O => finish_send_i_1_n_0
    );
finish_send_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => finish_send_i_4_n_0,
      I1 => pixel_word_count_reg(30),
      I2 => pixel_word_count_reg(10),
      I3 => pixel_word_count_reg(21),
      I4 => pixel_word_count_reg(19),
      I5 => finish_send_i_5_n_0,
      O => finish_send_i_2_n_0
    );
finish_send_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => finish_send_i_6_n_0,
      I1 => pixel_word_count_reg(15),
      I2 => pixel_word_count_reg(28),
      I3 => pixel_word_count_reg(23),
      I4 => pixel_word_count_reg(3),
      I5 => finish_send_i_7_n_0,
      O => finish_send_i_3_n_0
    );
finish_send_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => pixel_word_count_reg(12),
      I1 => pixel_word_count_reg(9),
      I2 => pixel_word_count_reg(17),
      I3 => pixel_word_count_reg(2),
      O => finish_send_i_4_n_0
    );
finish_send_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => pixel_word_count_reg(5),
      I1 => pixel_word_count_reg(29),
      I2 => pixel_word_count_reg(6),
      I3 => pixel_word_count_reg(27),
      I4 => finish_send_i_8_n_0,
      O => finish_send_i_5_n_0
    );
finish_send_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pixel_word_count_reg(20),
      I1 => pixel_word_count_reg(8),
      I2 => pixel_word_count_reg(13),
      I3 => pixel_word_count_reg(11),
      O => finish_send_i_6_n_0
    );
finish_send_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => pixel_word_count_reg(1),
      I1 => pixel_word_count_reg(16),
      I2 => pixel_word_count_reg(0),
      I3 => pixel_word_count_reg(22),
      I4 => finish_send_i_9_n_0,
      O => finish_send_i_7_n_0
    );
finish_send_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pixel_word_count_reg(25),
      I1 => pixel_word_count_reg(7),
      I2 => pixel_word_count_reg(31),
      I3 => pixel_word_count_reg(24),
      O => finish_send_i_8_n_0
    );
finish_send_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pixel_word_count_reg(18),
      I1 => pixel_word_count_reg(14),
      I2 => pixel_word_count_reg(26),
      I3 => pixel_word_count_reg(4),
      O => finish_send_i_9_n_0
    );
finish_send_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => finish_send_i_1_n_0,
      Q => finish_send,
      R => '0'
    );
\gray1[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E877887781EE1"
    )
        port map (
      I0 => \gray1[11]_i_22_n_0\,
      I1 => \gray1_reg[11]_i_16_n_0\,
      I2 => \gray1_reg[11]_i_14_n_4\,
      I3 => \gray1_reg[11]_i_15_n_4\,
      I4 => \gray1_reg[11]_i_14_n_5\,
      I5 => \gray1_reg[11]_i_15_n_5\,
      O => \gray1[11]_i_10_n_0\
    );
\gray1[11]_i_100\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"414141D741D7D7D7"
    )
        port map (
      I0 => \gray1[11]_i_117_n_0\,
      I1 => rgb2(7),
      I2 => rgb2(4),
      I3 => rgb2(3),
      I4 => rgb2(6),
      I5 => rgb2(15),
      O => \gray1[11]_i_100_n_0\
    );
\gray1[11]_i_101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"828282EB82EBEBEB"
    )
        port map (
      I0 => \gray1[11]_i_125_n_0\,
      I1 => rgb2(31),
      I2 => rgb2(28),
      I3 => rgb2(27),
      I4 => rgb2(30),
      I5 => rgb1(7),
      O => \gray1[11]_i_101_n_0\
    );
\gray1[11]_i_102\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => rgb3(5),
      I1 => rgb3(7),
      I2 => rgb1(28),
      O => \gray1[11]_i_102_n_0\
    );
\gray1[11]_i_103\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => rgb1(28),
      I1 => rgb3(7),
      I2 => rgb3(5),
      O => \gray1[11]_i_103_n_0\
    );
\gray1[11]_i_104\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rgb3(4),
      I1 => rgb3(5),
      O => \gray1[11]_i_104_n_0\
    );
\gray1[11]_i_105\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => rgb1(28),
      I1 => rgb3(7),
      I2 => rgb3(5),
      I3 => rgb1(29),
      I4 => rgb3(6),
      O => \gray1[11]_i_105_n_0\
    );
\gray1[11]_i_106\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => rgb3(5),
      I1 => rgb3(7),
      I2 => rgb1(28),
      I3 => rgb3(6),
      I4 => rgb1(27),
      O => \gray1[11]_i_106_n_0\
    );
\gray1[11]_i_107\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => rgb3(5),
      I1 => rgb3(4),
      I2 => rgb1(27),
      I3 => rgb3(6),
      O => \gray1[11]_i_107_n_0\
    );
\gray1[11]_i_108\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb3(5),
      I1 => rgb3(4),
      I2 => rgb1(26),
      O => \gray1[11]_i_108_n_0\
    );
\gray1[11]_i_109\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1700FF17"
    )
        port map (
      I0 => rgb3(10),
      I1 => rgb3(13),
      I2 => rgb3(22),
      I3 => \gray1[7]_i_55_n_0\,
      I4 => \gray1[7]_i_54_n_0\,
      O => \gray1[11]_i_109_n_0\
    );
\gray1[11]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AA9955695566AA9"
    )
        port map (
      I0 => \gray1[11]_i_7_n_0\,
      I1 => \gray1_reg[11]_i_14_n_6\,
      I2 => \gray1_reg[11]_i_16_n_0\,
      I3 => \gray1_reg[11]_i_15_n_6\,
      I4 => \gray1_reg[11]_i_15_n_5\,
      I5 => \gray1_reg[11]_i_14_n_5\,
      O => \gray1[11]_i_11_n_0\
    );
\gray1[11]_i_110\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => rgb3(29),
      I1 => rgb3(31),
      I2 => rgb3(20),
      O => \gray1[11]_i_110_n_0\
    );
\gray1[11]_i_111\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb3(19),
      I1 => rgb3(30),
      O => \gray1[11]_i_111_n_0\
    );
\gray1[11]_i_112\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rgb3(28),
      I1 => rgb3(29),
      O => \gray1[11]_i_112_n_0\
    );
\gray1[11]_i_113\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => rgb3(20),
      I1 => rgb3(31),
      I2 => rgb3(29),
      I3 => rgb3(21),
      I4 => rgb3(30),
      O => \gray1[11]_i_113_n_0\
    );
\gray1[11]_i_114\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => rgb3(29),
      I1 => rgb3(31),
      I2 => rgb3(20),
      I3 => \gray1[11]_i_111_n_0\,
      O => \gray1[11]_i_114_n_0\
    );
\gray1[11]_i_115\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6696"
    )
        port map (
      I0 => rgb3(19),
      I1 => rgb3(30),
      I2 => rgb3(29),
      I3 => rgb3(28),
      O => \gray1[11]_i_115_n_0\
    );
\gray1[11]_i_116\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb3(29),
      I1 => rgb3(28),
      I2 => rgb3(18),
      O => \gray1[11]_i_116_n_0\
    );
\gray1[11]_i_117\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => rgb2(2),
      I1 => rgb2(5),
      I2 => rgb2(14),
      I3 => \gray1[7]_i_51_n_0\,
      I4 => \gray1[7]_i_50_n_0\,
      O => \gray1[11]_i_117_n_0\
    );
\gray1[11]_i_118\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => rgb2(21),
      I1 => rgb2(23),
      I2 => rgb2(12),
      O => \gray1[11]_i_118_n_0\
    );
\gray1[11]_i_119\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb2(11),
      I1 => rgb2(22),
      O => \gray1[11]_i_119_n_0\
    );
\gray1[11]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AA9955695566AA9"
    )
        port map (
      I0 => \gray1[11]_i_8_n_0\,
      I1 => \gray1_reg[11]_i_14_n_7\,
      I2 => \gray1_reg[11]_i_16_n_0\,
      I3 => \gray1_reg[11]_i_15_n_7\,
      I4 => \gray1_reg[11]_i_15_n_6\,
      I5 => \gray1_reg[11]_i_14_n_6\,
      O => \gray1[11]_i_12_n_0\
    );
\gray1[11]_i_120\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rgb2(20),
      I1 => rgb2(21),
      O => \gray1[11]_i_120_n_0\
    );
\gray1[11]_i_121\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => rgb2(12),
      I1 => rgb2(23),
      I2 => rgb2(21),
      I3 => rgb2(13),
      I4 => rgb2(22),
      O => \gray1[11]_i_121_n_0\
    );
\gray1[11]_i_122\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => rgb2(21),
      I1 => rgb2(23),
      I2 => rgb2(12),
      I3 => \gray1[11]_i_119_n_0\,
      O => \gray1[11]_i_122_n_0\
    );
\gray1[11]_i_123\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6696"
    )
        port map (
      I0 => rgb2(11),
      I1 => rgb2(22),
      I2 => rgb2(21),
      I3 => rgb2(20),
      O => \gray1[11]_i_123_n_0\
    );
\gray1[11]_i_124\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb2(21),
      I1 => rgb2(20),
      I2 => rgb2(10),
      O => \gray1[11]_i_124_n_0\
    );
\gray1[11]_i_125\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1700FF17"
    )
        port map (
      I0 => rgb2(26),
      I1 => rgb2(29),
      I2 => rgb1(6),
      I3 => \gray1[7]_i_53_n_0\,
      I4 => \gray1[7]_i_52_n_0\,
      O => \gray1[11]_i_125_n_0\
    );
\gray1[11]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D442422B2BBDBDD4"
    )
        port map (
      I0 => \gray1_reg[11]_i_16_n_0\,
      I1 => \gray1[11]_i_23_n_0\,
      I2 => \gray1[11]_i_17_n_0\,
      I3 => \gray1_reg[11]_i_18_n_4\,
      I4 => \gray1_reg[11]_i_19_n_4\,
      I5 => \gray1[11]_i_24_n_0\,
      O => \gray1[11]_i_13_n_0\
    );
\gray1[11]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D4000000"
    )
        port map (
      I0 => \gray1[11]_i_42_n_0\,
      I1 => rgb1(21),
      I2 => rgb1(20),
      I3 => rgb1(22),
      I4 => rgb1(23),
      O => \gray1[11]_i_17_n_0\
    );
\gray1[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray1[31]\(11),
      I1 => grayResult(11),
      O => \gray1[11]_i_2_n_0\
    );
\gray1[11]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24B4F0F0"
    )
        port map (
      I0 => \gray1[11]_i_42_n_0\,
      I1 => rgb1(21),
      I2 => rgb1(23),
      I3 => rgb1(20),
      I4 => rgb1(22),
      O => \gray1[11]_i_20_n_0\
    );
\gray1[11]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF777F80008880"
    )
        port map (
      I0 => rgb1(23),
      I1 => rgb1(22),
      I2 => rgb1(20),
      I3 => rgb1(21),
      I4 => \gray1[11]_i_42_n_0\,
      I5 => \gray1[11]_i_59_n_0\,
      O => \gray1[11]_i_21_n_0\
    );
\gray1[11]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \gray1_reg[11]_i_14_n_6\,
      I1 => \gray1_reg[11]_i_16_n_0\,
      I2 => \gray1_reg[11]_i_15_n_6\,
      O => \gray1[11]_i_22_n_0\
    );
\gray1[11]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBEBEEEE22828888"
    )
        port map (
      I0 => \gray1_reg[11]_i_19_n_5\,
      I1 => rgb1(23),
      I2 => \gray1[11]_i_60_n_0\,
      I3 => \gray1[11]_i_61_n_0\,
      I4 => rgb1(22),
      I5 => \gray1_reg[11]_i_18_n_5\,
      O => \gray1[11]_i_23_n_0\
    );
\gray1[11]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gray1_reg[11]_i_15_n_7\,
      I1 => \gray1_reg[11]_i_16_n_0\,
      I2 => \gray1_reg[11]_i_14_n_7\,
      O => \gray1[11]_i_24_n_0\
    );
\gray1[11]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gray1_reg[11]_i_62_n_0\,
      I1 => \gray1_reg[11]_i_63_n_0\,
      O => \gray1[11]_i_25_n_0\
    );
\gray1[11]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gray1_reg[11]_i_62_n_0\,
      I1 => \gray1_reg[11]_i_63_n_0\,
      O => \gray1[11]_i_26_n_0\
    );
\gray1[11]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray1_reg[11]_i_62_n_0\,
      I1 => \gray1_reg[11]_i_63_n_0\,
      O => \gray1[11]_i_27_n_0\
    );
\gray1[11]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gray1_reg[11]_i_63_n_0\,
      I1 => \gray1_reg[11]_i_62_n_0\,
      O => \gray1[11]_i_28_n_0\
    );
\gray1[11]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gray1_reg[11]_i_63_n_0\,
      I1 => \gray1_reg[11]_i_62_n_0\,
      O => \gray1[11]_i_29_n_0\
    );
\gray1[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray1[31]\(10),
      I1 => grayResult(10),
      O => \gray1[11]_i_3_n_0\
    );
\gray1[11]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gray1_reg[11]_i_63_n_0\,
      I1 => \gray1_reg[11]_i_62_n_0\,
      O => \gray1[11]_i_30_n_0\
    );
\gray1[11]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => \gray1[11]_i_64_n_0\,
      I1 => \gray1_reg[11]_i_63_n_0\,
      I2 => \gray1_reg[11]_i_62_n_0\,
      O => \gray1[11]_i_31_n_0\
    );
\gray1[11]_i_32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gray1_reg[11]_i_65_n_0\,
      O => \gray1[11]_i_32_n_0\
    );
\gray1[11]_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gray1_reg[11]_i_65_n_0\,
      O => \gray1[11]_i_33_n_0\
    );
\gray1[11]_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gray1_reg[11]_i_65_n_0\,
      O => \gray1[11]_i_34_n_0\
    );
\gray1[11]_i_35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gray1_reg[11]_i_65_n_0\,
      O => \gray1[11]_i_35_n_0\
    );
\gray1[11]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \gray1[11]_i_66_n_0\,
      I1 => \gray1[11]_i_67_n_0\,
      I2 => \gray1_reg[11]_i_65_n_0\,
      O => \gray1[11]_i_36_n_0\
    );
\gray1[11]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rgb1(6),
      I1 => rgb1(15),
      O => \gray1[11]_i_37_n_0\
    );
\gray1[11]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rgb1(5),
      I1 => rgb1(14),
      O => \gray1[11]_i_38_n_0\
    );
\gray1[11]_i_39\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb1(7),
      O => \gray1[11]_i_39_n_0\
    );
\gray1[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray1[31]\(9),
      I1 => grayResult(9),
      O => \gray1[11]_i_4_n_0\
    );
\gray1[11]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rgb1(15),
      I1 => rgb1(6),
      I2 => rgb1(7),
      O => \gray1[11]_i_40_n_0\
    );
\gray1[11]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => rgb1(14),
      I1 => rgb1(5),
      I2 => rgb1(6),
      I3 => rgb1(15),
      O => \gray1[11]_i_41_n_0\
    );
\gray1[11]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"828282EB82EBEBEB"
    )
        port map (
      I0 => \gray1[7]_i_39_n_0\,
      I1 => rgb1(23),
      I2 => rgb1(20),
      I3 => rgb1(19),
      I4 => rgb1(22),
      I5 => rgb1(31),
      O => \gray1[11]_i_42_n_0\
    );
\gray1[11]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gray1_reg[11]_i_63_n_5\,
      I1 => \gray1_reg[11]_i_62_n_5\,
      I2 => \gray1[11]_i_68_n_0\,
      O => \gray1[11]_i_43_n_0\
    );
\gray1[11]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gray1_reg[11]_i_62_n_6\,
      I1 => \gray1_reg[11]_i_63_n_6\,
      I2 => \gray1[11]_i_69_n_0\,
      O => \gray1[11]_i_44_n_0\
    );
\gray1[11]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \gray1_reg[11]_i_63_n_7\,
      I1 => \gray1[11]_i_70_n_0\,
      I2 => \gray1_reg[11]_i_62_n_7\,
      O => \gray1[11]_i_45_n_0\
    );
\gray1[11]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \gray1_reg[11]_i_71_n_4\,
      I1 => \gray1[11]_i_72_n_0\,
      I2 => \gray1_reg[11]_i_73_n_4\,
      O => \gray1[11]_i_46_n_0\
    );
\gray1[11]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gray1[11]_i_43_n_0\,
      I1 => \gray1_reg[11]_i_62_n_0\,
      I2 => \gray1_reg[11]_i_63_n_0\,
      I3 => \gray1[11]_i_64_n_0\,
      O => \gray1[11]_i_47_n_0\
    );
\gray1[11]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gray1_reg[11]_i_63_n_5\,
      I1 => \gray1_reg[11]_i_62_n_5\,
      I2 => \gray1[11]_i_68_n_0\,
      I3 => \gray1[11]_i_44_n_0\,
      O => \gray1[11]_i_48_n_0\
    );
\gray1[11]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gray1_reg[11]_i_62_n_6\,
      I1 => \gray1_reg[11]_i_63_n_6\,
      I2 => \gray1[11]_i_69_n_0\,
      I3 => \gray1[11]_i_45_n_0\,
      O => \gray1[11]_i_49_n_0\
    );
\gray1[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray1[31]\(8),
      I1 => grayResult(8),
      O => \gray1[11]_i_5_n_0\
    );
\gray1[11]_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \gray1_reg[11]_i_63_n_7\,
      I1 => \gray1[11]_i_70_n_0\,
      I2 => \gray1_reg[11]_i_62_n_7\,
      I3 => \gray1[11]_i_46_n_0\,
      O => \gray1[11]_i_50_n_0\
    );
\gray1[11]_i_51\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gray1[11]_i_74_n_0\,
      I1 => \gray1_reg[11]_i_65_n_5\,
      I2 => \gray1[11]_i_75_n_0\,
      O => \gray1[11]_i_51_n_0\
    );
\gray1[11]_i_52\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \gray1_reg[11]_i_65_n_6\,
      I1 => \gray1[11]_i_76_n_0\,
      I2 => \gray1[11]_i_77_n_0\,
      O => \gray1[11]_i_52_n_0\
    );
\gray1[11]_i_53\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => \gray1[11]_i_78_n_0\,
      I1 => \gray1_reg[11]_i_65_n_7\,
      I2 => \gray1[11]_i_79_n_0\,
      O => \gray1[11]_i_53_n_0\
    );
\gray1[11]_i_54\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => \gray1[11]_i_80_n_0\,
      I1 => \gray1_reg[11]_i_81_n_4\,
      I2 => \gray1[11]_i_82_n_0\,
      O => \gray1[11]_i_54_n_0\
    );
\gray1[11]_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \gray1[11]_i_51_n_0\,
      I1 => \gray1_reg[11]_i_65_n_0\,
      I2 => \gray1[11]_i_67_n_0\,
      I3 => \gray1[11]_i_66_n_0\,
      O => \gray1[11]_i_55_n_0\
    );
\gray1[11]_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gray1[11]_i_74_n_0\,
      I1 => \gray1_reg[11]_i_65_n_5\,
      I2 => \gray1[11]_i_75_n_0\,
      I3 => \gray1[11]_i_52_n_0\,
      O => \gray1[11]_i_56_n_0\
    );
\gray1[11]_i_57\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \gray1_reg[11]_i_65_n_6\,
      I1 => \gray1[11]_i_76_n_0\,
      I2 => \gray1[11]_i_77_n_0\,
      I3 => \gray1[11]_i_53_n_0\,
      O => \gray1[11]_i_57_n_0\
    );
\gray1[11]_i_58\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gray1[11]_i_78_n_0\,
      I1 => \gray1_reg[11]_i_65_n_7\,
      I2 => \gray1[11]_i_79_n_0\,
      I3 => \gray1[11]_i_54_n_0\,
      O => \gray1[11]_i_58_n_0\
    );
\gray1[11]_i_59\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray1_reg[11]_i_19_n_4\,
      I1 => \gray1_reg[11]_i_18_n_4\,
      O => \gray1[11]_i_59_n_0\
    );
\gray1[11]_i_60\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => rgb1(21),
      I1 => rgb1(23),
      I2 => rgb1(20),
      O => \gray1[11]_i_60_n_0\
    );
\gray1[11]_i_61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02203AA2"
    )
        port map (
      I0 => rgb1(21),
      I1 => \gray1[11]_i_83_n_0\,
      I2 => rgb1(20),
      I3 => rgb1(23),
      I4 => \gray1[7]_i_39_n_0\,
      O => \gray1[11]_i_61_n_0\
    );
\gray1[11]_i_64\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0400000"
    )
        port map (
      I0 => \gray1[11]_i_94_n_0\,
      I1 => rgb3(13),
      I2 => rgb3(15),
      I3 => rgb3(12),
      I4 => rgb3(14),
      O => \gray1[11]_i_64_n_0\
    );
\gray1[11]_i_66\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0400000"
    )
        port map (
      I0 => \gray1[11]_i_100_n_0\,
      I1 => rgb2(5),
      I2 => rgb2(7),
      I3 => rgb2(4),
      I4 => rgb2(6),
      O => \gray1[11]_i_66_n_0\
    );
\gray1[11]_i_67\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0400000"
    )
        port map (
      I0 => \gray1[11]_i_101_n_0\,
      I1 => rgb2(29),
      I2 => rgb2(31),
      I3 => rgb2(28),
      I4 => rgb2(30),
      O => \gray1[11]_i_67_n_0\
    );
\gray1[11]_i_68\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24B4F0F0"
    )
        port map (
      I0 => \gray1[11]_i_94_n_0\,
      I1 => rgb3(13),
      I2 => rgb3(15),
      I3 => rgb3(12),
      I4 => rgb3(14),
      O => \gray1[11]_i_68_n_0\
    );
\gray1[11]_i_69\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA556A"
    )
        port map (
      I0 => rgb3(14),
      I1 => rgb3(12),
      I2 => rgb3(15),
      I3 => rgb3(13),
      I4 => \gray1[11]_i_94_n_0\,
      O => \gray1[11]_i_69_n_0\
    );
\gray1[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60990090"
    )
        port map (
      I0 => \gray1_reg[11]_i_14_n_6\,
      I1 => \gray1_reg[11]_i_15_n_6\,
      I2 => \gray1_reg[11]_i_15_n_7\,
      I3 => \gray1_reg[11]_i_16_n_0\,
      I4 => \gray1_reg[11]_i_14_n_7\,
      O => \gray1[11]_i_7_n_0\
    );
\gray1[11]_i_70\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rgb3(12),
      I1 => rgb3(15),
      I2 => rgb3(13),
      I3 => \gray1[11]_i_94_n_0\,
      O => \gray1[11]_i_70_n_0\
    );
\gray1[11]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => rgb3(23),
      I1 => rgb3(14),
      I2 => rgb3(11),
      I3 => rgb3(12),
      I4 => rgb3(15),
      I5 => \gray1[11]_i_109_n_0\,
      O => \gray1[11]_i_72_n_0\
    );
\gray1[11]_i_74\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24B4F0F0"
    )
        port map (
      I0 => \gray1[11]_i_100_n_0\,
      I1 => rgb2(5),
      I2 => rgb2(7),
      I3 => rgb2(4),
      I4 => rgb2(6),
      O => \gray1[11]_i_74_n_0\
    );
\gray1[11]_i_75\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24B4F0F0"
    )
        port map (
      I0 => \gray1[11]_i_101_n_0\,
      I1 => rgb2(29),
      I2 => rgb2(31),
      I3 => rgb2(28),
      I4 => rgb2(30),
      O => \gray1[11]_i_75_n_0\
    );
\gray1[11]_i_76\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA556A"
    )
        port map (
      I0 => rgb2(6),
      I1 => rgb2(4),
      I2 => rgb2(7),
      I3 => rgb2(5),
      I4 => \gray1[11]_i_100_n_0\,
      O => \gray1[11]_i_76_n_0\
    );
\gray1[11]_i_77\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9555AA95"
    )
        port map (
      I0 => rgb2(30),
      I1 => rgb2(28),
      I2 => rgb2(31),
      I3 => rgb2(29),
      I4 => \gray1[11]_i_101_n_0\,
      O => \gray1[11]_i_77_n_0\
    );
\gray1[11]_i_78\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rgb2(4),
      I1 => rgb2(7),
      I2 => rgb2(5),
      I3 => \gray1[11]_i_100_n_0\,
      O => \gray1[11]_i_78_n_0\
    );
\gray1[11]_i_79\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rgb2(28),
      I1 => rgb2(31),
      I2 => rgb2(29),
      I3 => \gray1[11]_i_101_n_0\,
      O => \gray1[11]_i_79_n_0\
    );
\gray1[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969690069000000"
    )
        port map (
      I0 => \gray1_reg[11]_i_14_n_7\,
      I1 => \gray1_reg[11]_i_16_n_0\,
      I2 => \gray1_reg[11]_i_15_n_7\,
      I3 => \gray1[11]_i_17_n_0\,
      I4 => \gray1_reg[11]_i_18_n_4\,
      I5 => \gray1_reg[11]_i_19_n_4\,
      O => \gray1[11]_i_8_n_0\
    );
\gray1[11]_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E81717E817E8E817"
    )
        port map (
      I0 => rgb2(15),
      I1 => rgb2(6),
      I2 => rgb2(3),
      I3 => rgb2(4),
      I4 => rgb2(7),
      I5 => \gray1[11]_i_117_n_0\,
      O => \gray1[11]_i_80_n_0\
    );
\gray1[11]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => rgb1(7),
      I1 => rgb2(30),
      I2 => rgb2(27),
      I3 => rgb2(28),
      I4 => rgb2(31),
      I5 => \gray1[11]_i_125_n_0\,
      O => \gray1[11]_i_82_n_0\
    );
\gray1[11]_i_83\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => rgb1(31),
      I1 => rgb1(22),
      I2 => rgb1(19),
      O => \gray1[11]_i_83_n_0\
    );
\gray1[11]_i_84\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rgb3(22),
      I1 => rgb3(31),
      O => \gray1[11]_i_84_n_0\
    );
\gray1[11]_i_85\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rgb3(21),
      I1 => rgb3(30),
      O => \gray1[11]_i_85_n_0\
    );
\gray1[11]_i_86\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb3(23),
      O => \gray1[11]_i_86_n_0\
    );
\gray1[11]_i_87\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rgb3(31),
      I1 => rgb3(22),
      I2 => rgb3(23),
      O => \gray1[11]_i_87_n_0\
    );
\gray1[11]_i_88\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => rgb3(30),
      I1 => rgb3(21),
      I2 => rgb3(22),
      I3 => rgb3(31),
      O => \gray1[11]_i_88_n_0\
    );
\gray1[11]_i_89\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rgb3(7),
      I1 => rgb1(30),
      O => \gray1[11]_i_89_n_0\
    );
\gray1[11]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8FF00E8"
    )
        port map (
      I0 => \gray1_reg[11]_i_19_n_5\,
      I1 => \gray1[11]_i_20_n_0\,
      I2 => \gray1_reg[11]_i_18_n_5\,
      I3 => \gray1_reg[11]_i_16_n_0\,
      I4 => \gray1[11]_i_21_n_0\,
      O => \gray1[11]_i_9_n_0\
    );
\gray1[11]_i_90\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rgb3(6),
      I1 => rgb1(29),
      O => \gray1[11]_i_90_n_0\
    );
\gray1[11]_i_91\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb1(31),
      O => \gray1[11]_i_91_n_0\
    );
\gray1[11]_i_92\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rgb1(30),
      I1 => rgb3(7),
      I2 => rgb1(31),
      O => \gray1[11]_i_92_n_0\
    );
\gray1[11]_i_93\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => rgb1(29),
      I1 => rgb3(6),
      I2 => rgb3(7),
      I3 => rgb1(30),
      O => \gray1[11]_i_93_n_0\
    );
\gray1[11]_i_94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"828282EB82EBEBEB"
    )
        port map (
      I0 => \gray1[11]_i_109_n_0\,
      I1 => rgb3(15),
      I2 => rgb3(12),
      I3 => rgb3(11),
      I4 => rgb3(14),
      I5 => rgb3(23),
      O => \gray1[11]_i_94_n_0\
    );
\gray1[11]_i_95\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rgb2(14),
      I1 => rgb2(23),
      O => \gray1[11]_i_95_n_0\
    );
\gray1[11]_i_96\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rgb2(13),
      I1 => rgb2(22),
      O => \gray1[11]_i_96_n_0\
    );
\gray1[11]_i_97\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb2(15),
      O => \gray1[11]_i_97_n_0\
    );
\gray1[11]_i_98\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rgb2(23),
      I1 => rgb2(14),
      I2 => rgb2(15),
      O => \gray1[11]_i_98_n_0\
    );
\gray1[11]_i_99\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => rgb2(22),
      I1 => rgb2(13),
      I2 => rgb2(14),
      I3 => rgb2(23),
      O => \gray1[11]_i_99_n_0\
    );
\gray1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => delay_tvalid,
      I1 => count(0),
      I2 => count(1),
      I3 => p_0_in13_in,
      I4 => start1_i_1_n_0,
      O => \gray1[31]_i_1_n_0\
    );
\gray1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => delay_tvalid,
      I1 => count(0),
      I2 => count(1),
      I3 => p_0_in13_in,
      O => gray10
    );
\gray1[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \gray1[3]_i_7_n_0\,
      I1 => \gray1[7]_i_22_n_0\,
      I2 => \gray1_reg[7]_i_18_n_5\,
      I3 => \gray1_reg[7]_i_19_n_5\,
      I4 => \gray1_reg[3]_i_10_n_4\,
      I5 => \gray1[7]_i_23_n_0\,
      O => \gray1[3]_i_11_n_0\
    );
\gray1[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9699996999696966"
    )
        port map (
      I0 => \gray1_reg[3]_i_10_n_5\,
      I1 => \gray1[3]_i_15_n_0\,
      I2 => \gray1[3]_i_16_n_0\,
      I3 => \gray1_reg[7]_i_19_n_6\,
      I4 => \gray1_reg[7]_i_18_n_6\,
      I5 => \gray1_reg[3]_i_10_n_6\,
      O => \gray1[3]_i_12_n_0\
    );
\gray1[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555569966996AAAA"
    )
        port map (
      I0 => \gray1[3]_i_9_n_0\,
      I1 => rgb1(29),
      I2 => rgb1(20),
      I3 => rgb1(17),
      I4 => \gray1_reg[7]_i_19_n_7\,
      I5 => \gray1_reg[7]_i_18_n_7\,
      O => \gray1[3]_i_13_n_0\
    );
\gray1[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \gray1_reg[7]_i_18_n_7\,
      I1 => \gray1_reg[7]_i_19_n_7\,
      I2 => rgb1(17),
      I3 => rgb1(20),
      I4 => rgb1(29),
      I5 => \gray1_reg[3]_i_10_n_7\,
      O => \gray1[3]_i_14_n_0\
    );
\gray1[3]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \gray1_reg[7]_i_19_n_5\,
      I1 => \gray1_reg[7]_i_18_n_5\,
      I2 => \gray1[7]_i_22_n_0\,
      O => \gray1[3]_i_15_n_0\
    );
\gray1[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => rgb1(30),
      I1 => rgb1(21),
      I2 => rgb1(18),
      I3 => rgb1(17),
      I4 => rgb1(20),
      I5 => rgb1(29),
      O => \gray1[3]_i_16_n_0\
    );
\gray1[3]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => rgb1(13),
      I1 => rgb1(15),
      I2 => rgb1(4),
      O => \gray1[3]_i_17_n_0\
    );
\gray1[3]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb1(3),
      I1 => rgb1(14),
      O => \gray1[3]_i_18_n_0\
    );
\gray1[3]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rgb1(12),
      I1 => rgb1(13),
      O => \gray1[3]_i_19_n_0\
    );
\gray1[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray1[31]\(3),
      I1 => grayResult(3),
      O => \gray1[3]_i_2_n_0\
    );
\gray1[3]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => rgb1(4),
      I1 => rgb1(15),
      I2 => rgb1(13),
      I3 => rgb1(5),
      I4 => rgb1(14),
      O => \gray1[3]_i_20_n_0\
    );
\gray1[3]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => rgb1(13),
      I1 => rgb1(15),
      I2 => rgb1(4),
      I3 => \gray1[3]_i_18_n_0\,
      O => \gray1[3]_i_21_n_0\
    );
\gray1[3]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6696"
    )
        port map (
      I0 => rgb1(3),
      I1 => rgb1(14),
      I2 => rgb1(13),
      I3 => rgb1(12),
      O => \gray1[3]_i_22_n_0\
    );
\gray1[3]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb1(13),
      I1 => rgb1(12),
      I2 => rgb1(2),
      O => \gray1[3]_i_23_n_0\
    );
\gray1[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray1[31]\(2),
      I1 => grayResult(2),
      O => \gray1[3]_i_3_n_0\
    );
\gray1[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray1[31]\(1),
      I1 => grayResult(1),
      O => \gray1[3]_i_4_n_0\
    );
\gray1[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray1[31]\(0),
      I1 => grayResult(0),
      O => \gray1[3]_i_5_n_0\
    );
\gray1[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE8E8E88"
    )
        port map (
      I0 => \gray1_reg[3]_i_10_n_5\,
      I1 => \gray1[3]_i_15_n_0\,
      I2 => \gray1[3]_i_16_n_0\,
      I3 => \gray1_reg[7]_i_18_n_6\,
      I4 => \gray1_reg[7]_i_19_n_6\,
      O => \gray1[3]_i_7_n_0\
    );
\gray1[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E71718E"
    )
        port map (
      I0 => \gray1_reg[7]_i_19_n_6\,
      I1 => \gray1_reg[7]_i_18_n_6\,
      I2 => \gray1[3]_i_16_n_0\,
      I3 => \gray1[3]_i_15_n_0\,
      I4 => \gray1_reg[3]_i_10_n_5\,
      O => \gray1[3]_i_8_n_0\
    );
\gray1[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \gray1_reg[7]_i_18_n_6\,
      I1 => \gray1_reg[7]_i_19_n_6\,
      I2 => \gray1[3]_i_16_n_0\,
      I3 => \gray1_reg[3]_i_10_n_6\,
      O => \gray1[3]_i_9_n_0\
    );
\gray1[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A880FEEA"
    )
        port map (
      I0 => \gray1_reg[3]_i_10_n_4\,
      I1 => \gray1_reg[7]_i_19_n_5\,
      I2 => \gray1_reg[7]_i_18_n_5\,
      I3 => \gray1[7]_i_22_n_0\,
      I4 => \gray1[7]_i_23_n_0\,
      O => \gray1[7]_i_10_n_0\
    );
\gray1[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \gray1[7]_i_7_n_0\,
      I1 => \gray1_reg[11]_i_19_n_5\,
      I2 => \gray1[11]_i_20_n_0\,
      I3 => \gray1_reg[11]_i_18_n_5\,
      I4 => \gray1_reg[11]_i_16_n_0\,
      I5 => \gray1[11]_i_21_n_0\,
      O => \gray1[7]_i_11_n_0\
    );
\gray1[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \gray1[7]_i_8_n_0\,
      I1 => \gray1[7]_i_15_n_0\,
      I2 => \gray1_reg[11]_i_16_n_5\,
      I3 => \gray1_reg[11]_i_19_n_5\,
      I4 => \gray1_reg[11]_i_18_n_5\,
      I5 => \gray1[11]_i_20_n_0\,
      O => \gray1[7]_i_12_n_0\
    );
\gray1[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gray1[7]_i_16_n_0\,
      I1 => \gray1_reg[11]_i_16_n_6\,
      I2 => \gray1[7]_i_17_n_0\,
      I3 => \gray1[7]_i_9_n_0\,
      O => \gray1[7]_i_13_n_0\
    );
\gray1[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"718E8E718E71718E"
    )
        port map (
      I0 => \gray1_reg[7]_i_18_n_4\,
      I1 => \gray1_reg[7]_i_19_n_4\,
      I2 => \gray1[7]_i_20_n_0\,
      I3 => \gray1[7]_i_10_n_0\,
      I4 => \gray1_reg[11]_i_16_n_7\,
      I5 => \gray1[7]_i_21_n_0\,
      O => \gray1[7]_i_14_n_0\
    );
\gray1[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6A566A560000"
    )
        port map (
      I0 => rgb1(22),
      I1 => \gray1[7]_i_24_n_0\,
      I2 => rgb1(21),
      I3 => \gray1[11]_i_42_n_0\,
      I4 => \gray1_reg[11]_i_19_n_6\,
      I5 => \gray1_reg[11]_i_18_n_6\,
      O => \gray1[7]_i_15_n_0\
    );
\gray1[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6A956A950000"
    )
        port map (
      I0 => rgb1(21),
      I1 => rgb1(23),
      I2 => rgb1(20),
      I3 => \gray1[11]_i_42_n_0\,
      I4 => \gray1_reg[11]_i_19_n_7\,
      I5 => \gray1_reg[11]_i_18_n_7\,
      O => \gray1[7]_i_16_n_0\
    );
\gray1[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BD4D42BD42B2BD4"
    )
        port map (
      I0 => \gray1[11]_i_42_n_0\,
      I1 => rgb1(21),
      I2 => \gray1[7]_i_24_n_0\,
      I3 => rgb1(22),
      I4 => \gray1_reg[11]_i_18_n_6\,
      I5 => \gray1_reg[11]_i_19_n_6\,
      O => \gray1[7]_i_17_n_0\
    );
\gray1[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray1[31]\(7),
      I1 => grayResult(7),
      O => \gray1[7]_i_2_n_0\
    );
\gray1[7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => rgb1(31),
      I1 => rgb1(22),
      I2 => rgb1(19),
      I3 => rgb1(20),
      I4 => rgb1(23),
      I5 => \gray1[7]_i_39_n_0\,
      O => \gray1[7]_i_20_n_0\
    );
\gray1[7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969696696969"
    )
        port map (
      I0 => \gray1_reg[11]_i_18_n_7\,
      I1 => \gray1_reg[11]_i_19_n_7\,
      I2 => \gray1[11]_i_42_n_0\,
      I3 => rgb1(20),
      I4 => rgb1(23),
      I5 => rgb1(21),
      O => \gray1[7]_i_21_n_0\
    );
\gray1[7]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \gray1[7]_i_40_n_0\,
      I1 => \gray1[7]_i_41_n_0\,
      I2 => rgb1(22),
      I3 => rgb1(19),
      I4 => rgb1(31),
      O => \gray1[7]_i_22_n_0\
    );
\gray1[7]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \gray1[7]_i_20_n_0\,
      I1 => \gray1_reg[7]_i_19_n_4\,
      I2 => \gray1_reg[7]_i_18_n_4\,
      O => \gray1[7]_i_23_n_0\
    );
\gray1[7]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb1(20),
      I1 => rgb1(23),
      O => \gray1[7]_i_24_n_0\
    );
\gray1[7]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gray1[7]_i_42_n_0\,
      I1 => \gray1_reg[11]_i_81_n_5\,
      I2 => \gray1[7]_i_43_n_0\,
      O => \gray1[7]_i_25_n_0\
    );
\gray1[7]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => \gray1[7]_i_44_n_0\,
      I1 => \gray1_reg[11]_i_81_n_6\,
      I2 => \gray1[7]_i_45_n_0\,
      O => \gray1[7]_i_26_n_0\
    );
\gray1[7]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => \gray1_reg[11]_i_81_n_7\,
      I1 => \gray1[7]_i_46_n_0\,
      I2 => rgb2(1),
      I3 => rgb2(4),
      I4 => rgb2(13),
      O => \gray1[7]_i_27_n_0\
    );
\gray1[7]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gray1[11]_i_80_n_0\,
      I1 => \gray1_reg[11]_i_81_n_4\,
      I2 => \gray1[11]_i_82_n_0\,
      I3 => \gray1[7]_i_25_n_0\,
      O => \gray1[7]_i_28_n_0\
    );
\gray1[7]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gray1[7]_i_42_n_0\,
      I1 => \gray1_reg[11]_i_81_n_5\,
      I2 => \gray1[7]_i_43_n_0\,
      I3 => \gray1[7]_i_26_n_0\,
      O => \gray1[7]_i_29_n_0\
    );
\gray1[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray1[31]\(6),
      I1 => grayResult(6),
      O => \gray1[7]_i_3_n_0\
    );
\gray1[7]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gray1[7]_i_44_n_0\,
      I1 => \gray1_reg[11]_i_81_n_6\,
      I2 => \gray1[7]_i_45_n_0\,
      I3 => \gray1[7]_i_27_n_0\,
      O => \gray1[7]_i_30_n_0\
    );
\gray1[7]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \gray1_reg[11]_i_81_n_7\,
      I1 => \gray1[7]_i_46_n_0\,
      I2 => rgb2(1),
      I3 => rgb2(4),
      I4 => rgb2(13),
      O => \gray1[7]_i_31_n_0\
    );
\gray1[7]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gray1_reg[11]_i_71_n_5\,
      I1 => \gray1_reg[11]_i_73_n_5\,
      I2 => \gray1[7]_i_47_n_0\,
      O => \gray1[7]_i_32_n_0\
    );
\gray1[7]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \gray1[7]_i_48_n_0\,
      I1 => \gray1_reg[11]_i_73_n_6\,
      I2 => \gray1_reg[11]_i_71_n_6\,
      O => \gray1[7]_i_33_n_0\
    );
\gray1[7]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBE8228"
    )
        port map (
      I0 => \gray1_reg[11]_i_73_n_7\,
      I1 => rgb3(21),
      I2 => rgb3(12),
      I3 => rgb3(9),
      I4 => \gray1_reg[11]_i_71_n_7\,
      O => \gray1[7]_i_34_n_0\
    );
\gray1[7]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \gray1_reg[11]_i_71_n_4\,
      I1 => \gray1[11]_i_72_n_0\,
      I2 => \gray1_reg[11]_i_73_n_4\,
      I3 => \gray1[7]_i_32_n_0\,
      O => \gray1[7]_i_35_n_0\
    );
\gray1[7]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \gray1_reg[11]_i_71_n_5\,
      I1 => \gray1_reg[11]_i_73_n_5\,
      I2 => \gray1[7]_i_47_n_0\,
      I3 => \gray1[7]_i_33_n_0\,
      O => \gray1[7]_i_36_n_0\
    );
\gray1[7]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E81717E817E8E817"
    )
        port map (
      I0 => \gray1_reg[11]_i_71_n_7\,
      I1 => \gray1[7]_i_49_n_0\,
      I2 => \gray1_reg[11]_i_73_n_7\,
      I3 => \gray1_reg[11]_i_73_n_6\,
      I4 => \gray1[7]_i_48_n_0\,
      I5 => \gray1_reg[11]_i_71_n_6\,
      O => \gray1[7]_i_37_n_0\
    );
\gray1[7]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \gray1_reg[11]_i_71_n_7\,
      I1 => rgb3(9),
      I2 => rgb3(12),
      I3 => rgb3(21),
      I4 => \gray1_reg[11]_i_73_n_7\,
      O => \gray1[7]_i_38_n_0\
    );
\gray1[7]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6900FF69"
    )
        port map (
      I0 => rgb1(31),
      I1 => rgb1(19),
      I2 => rgb1(22),
      I3 => \gray1[7]_i_41_n_0\,
      I4 => \gray1[7]_i_40_n_0\,
      O => \gray1[7]_i_39_n_0\
    );
\gray1[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray1[31]\(5),
      I1 => grayResult(5),
      O => \gray1[7]_i_4_n_0\
    );
\gray1[7]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696960096000000"
    )
        port map (
      I0 => rgb1(30),
      I1 => rgb1(21),
      I2 => rgb1(18),
      I3 => rgb1(17),
      I4 => rgb1(20),
      I5 => rgb1(29),
      O => \gray1[7]_i_40_n_0\
    );
\gray1[7]_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => rgb1(30),
      I1 => rgb1(21),
      I2 => rgb1(18),
      O => \gray1[7]_i_41_n_0\
    );
\gray1[7]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A995566A"
    )
        port map (
      I0 => \gray1[7]_i_50_n_0\,
      I1 => rgb2(2),
      I2 => rgb2(5),
      I3 => rgb2(14),
      I4 => \gray1[7]_i_51_n_0\,
      O => \gray1[7]_i_42_n_0\
    );
\gray1[7]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66696999"
    )
        port map (
      I0 => \gray1[7]_i_52_n_0\,
      I1 => \gray1[7]_i_53_n_0\,
      I2 => rgb1(6),
      I3 => rgb2(29),
      I4 => rgb2(26),
      O => \gray1[7]_i_43_n_0\
    );
\gray1[7]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E81717E817E8E817"
    )
        port map (
      I0 => rgb2(1),
      I1 => rgb2(4),
      I2 => rgb2(13),
      I3 => rgb2(14),
      I4 => rgb2(2),
      I5 => rgb2(5),
      O => \gray1[7]_i_44_n_0\
    );
\gray1[7]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E81717E817E8E817"
    )
        port map (
      I0 => rgb2(25),
      I1 => rgb2(28),
      I2 => rgb1(5),
      I3 => rgb1(6),
      I4 => rgb2(26),
      I5 => rgb2(29),
      O => \gray1[7]_i_45_n_0\
    );
\gray1[7]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb2(25),
      I1 => rgb2(28),
      I2 => rgb1(5),
      O => \gray1[7]_i_46_n_0\
    );
\gray1[7]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66696999"
    )
        port map (
      I0 => \gray1[7]_i_54_n_0\,
      I1 => \gray1[7]_i_55_n_0\,
      I2 => rgb3(22),
      I3 => rgb3(13),
      I4 => rgb3(10),
      O => \gray1[7]_i_47_n_0\
    );
\gray1[7]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E81717E817E8E817"
    )
        port map (
      I0 => rgb3(9),
      I1 => rgb3(12),
      I2 => rgb3(21),
      I3 => rgb3(22),
      I4 => rgb3(10),
      I5 => rgb3(13),
      O => \gray1[7]_i_48_n_0\
    );
\gray1[7]_i_49\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb3(9),
      I1 => rgb3(12),
      I2 => rgb3(21),
      O => \gray1[7]_i_49_n_0\
    );
\gray1[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray1[31]\(4),
      I1 => grayResult(4),
      O => \gray1[7]_i_5_n_0\
    );
\gray1[7]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E80000E800E8E800"
    )
        port map (
      I0 => rgb2(1),
      I1 => rgb2(4),
      I2 => rgb2(13),
      I3 => rgb2(14),
      I4 => rgb2(2),
      I5 => rgb2(5),
      O => \gray1[7]_i_50_n_0\
    );
\gray1[7]_i_51\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb2(3),
      I1 => rgb2(6),
      I2 => rgb2(15),
      O => \gray1[7]_i_51_n_0\
    );
\gray1[7]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E80000E800E8E800"
    )
        port map (
      I0 => rgb2(25),
      I1 => rgb2(28),
      I2 => rgb1(5),
      I3 => rgb1(6),
      I4 => rgb2(26),
      I5 => rgb2(29),
      O => \gray1[7]_i_52_n_0\
    );
\gray1[7]_i_53\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => rgb2(30),
      I1 => rgb2(27),
      I2 => rgb1(7),
      O => \gray1[7]_i_53_n_0\
    );
\gray1[7]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E80000E800E8E800"
    )
        port map (
      I0 => rgb3(9),
      I1 => rgb3(12),
      I2 => rgb3(21),
      I3 => rgb3(22),
      I4 => rgb3(10),
      I5 => rgb3(13),
      O => \gray1[7]_i_54_n_0\
    );
\gray1[7]_i_55\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => rgb3(14),
      I1 => rgb3(11),
      I2 => rgb3(23),
      O => \gray1[7]_i_55_n_0\
    );
\gray1[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBE8228"
    )
        port map (
      I0 => \gray1[7]_i_15_n_0\,
      I1 => \gray1_reg[11]_i_19_n_5\,
      I2 => \gray1_reg[11]_i_18_n_5\,
      I3 => \gray1[11]_i_20_n_0\,
      I4 => \gray1_reg[11]_i_16_n_5\,
      O => \gray1[7]_i_7_n_0\
    );
\gray1[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \gray1[7]_i_16_n_0\,
      I1 => \gray1_reg[11]_i_16_n_6\,
      I2 => \gray1[7]_i_17_n_0\,
      O => \gray1[7]_i_8_n_0\
    );
\gray1[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8E8E00"
    )
        port map (
      I0 => \gray1_reg[7]_i_18_n_4\,
      I1 => \gray1_reg[7]_i_19_n_4\,
      I2 => \gray1[7]_i_20_n_0\,
      I3 => \gray1[7]_i_21_n_0\,
      I4 => \gray1_reg[11]_i_16_n_7\,
      O => \gray1[7]_i_9_n_0\
    );
\gray1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[3]_i_1_n_7\,
      Q => \^gray1[31]\(0),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[11]_i_1_n_5\,
      Q => \^gray1[31]\(10),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[11]_i_1_n_4\,
      Q => \^gray1[31]\(11),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[7]_i_1_n_0\,
      CO(3) => \gray1_reg[11]_i_1_n_0\,
      CO(2) => \gray1_reg[11]_i_1_n_1\,
      CO(1) => \gray1_reg[11]_i_1_n_2\,
      CO(0) => \gray1_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray1[31]\(11 downto 8),
      O(3) => \gray1_reg[11]_i_1_n_4\,
      O(2) => \gray1_reg[11]_i_1_n_5\,
      O(1) => \gray1_reg[11]_i_1_n_6\,
      O(0) => \gray1_reg[11]_i_1_n_7\,
      S(3) => \gray1[11]_i_2_n_0\,
      S(2) => \gray1[11]_i_3_n_0\,
      S(1) => \gray1[11]_i_4_n_0\,
      S(0) => \gray1[11]_i_5_n_0\
    );
\gray1_reg[11]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[11]_i_18_n_0\,
      CO(3) => \NLW_gray1_reg[11]_i_14_CO_UNCONNECTED\(3),
      CO(2) => \gray1_reg[11]_i_14_n_1\,
      CO(1) => \gray1_reg[11]_i_14_n_2\,
      CO(0) => \gray1_reg[11]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \gray1[11]_i_25_n_0\,
      DI(1) => \gray1[11]_i_26_n_0\,
      DI(0) => \gray1[11]_i_27_n_0\,
      O(3) => \gray1_reg[11]_i_14_n_4\,
      O(2) => \gray1_reg[11]_i_14_n_5\,
      O(1) => \gray1_reg[11]_i_14_n_6\,
      O(0) => \gray1_reg[11]_i_14_n_7\,
      S(3) => \gray1[11]_i_28_n_0\,
      S(2) => \gray1[11]_i_29_n_0\,
      S(1) => \gray1[11]_i_30_n_0\,
      S(0) => \gray1[11]_i_31_n_0\
    );
\gray1_reg[11]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[11]_i_19_n_0\,
      CO(3) => \NLW_gray1_reg[11]_i_15_CO_UNCONNECTED\(3),
      CO(2) => \gray1_reg[11]_i_15_n_1\,
      CO(1) => \gray1_reg[11]_i_15_n_2\,
      CO(0) => \gray1_reg[11]_i_15_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gray1[11]_i_32_n_0\,
      O(3) => \gray1_reg[11]_i_15_n_4\,
      O(2) => \gray1_reg[11]_i_15_n_5\,
      O(1) => \gray1_reg[11]_i_15_n_6\,
      O(0) => \gray1_reg[11]_i_15_n_7\,
      S(3) => \gray1[11]_i_33_n_0\,
      S(2) => \gray1[11]_i_34_n_0\,
      S(1) => \gray1[11]_i_35_n_0\,
      S(0) => \gray1[11]_i_36_n_0\
    );
\gray1_reg[11]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[3]_i_10_n_0\,
      CO(3) => \gray1_reg[11]_i_16_n_0\,
      CO(2) => \NLW_gray1_reg[11]_i_16_CO_UNCONNECTED\(2),
      CO(1) => \gray1_reg[11]_i_16_n_2\,
      CO(0) => \gray1_reg[11]_i_16_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => rgb1(7),
      DI(1) => \gray1[11]_i_37_n_0\,
      DI(0) => \gray1[11]_i_38_n_0\,
      O(3) => \NLW_gray1_reg[11]_i_16_O_UNCONNECTED\(3),
      O(2) => \gray1_reg[11]_i_16_n_5\,
      O(1) => \gray1_reg[11]_i_16_n_6\,
      O(0) => \gray1_reg[11]_i_16_n_7\,
      S(3) => '1',
      S(2) => \gray1[11]_i_39_n_0\,
      S(1) => \gray1[11]_i_40_n_0\,
      S(0) => \gray1[11]_i_41_n_0\
    );
\gray1_reg[11]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[7]_i_19_n_0\,
      CO(3) => \gray1_reg[11]_i_18_n_0\,
      CO(2) => \gray1_reg[11]_i_18_n_1\,
      CO(1) => \gray1_reg[11]_i_18_n_2\,
      CO(0) => \gray1_reg[11]_i_18_n_3\,
      CYINIT => '0',
      DI(3) => \gray1[11]_i_43_n_0\,
      DI(2) => \gray1[11]_i_44_n_0\,
      DI(1) => \gray1[11]_i_45_n_0\,
      DI(0) => \gray1[11]_i_46_n_0\,
      O(3) => \gray1_reg[11]_i_18_n_4\,
      O(2) => \gray1_reg[11]_i_18_n_5\,
      O(1) => \gray1_reg[11]_i_18_n_6\,
      O(0) => \gray1_reg[11]_i_18_n_7\,
      S(3) => \gray1[11]_i_47_n_0\,
      S(2) => \gray1[11]_i_48_n_0\,
      S(1) => \gray1[11]_i_49_n_0\,
      S(0) => \gray1[11]_i_50_n_0\
    );
\gray1_reg[11]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[7]_i_18_n_0\,
      CO(3) => \gray1_reg[11]_i_19_n_0\,
      CO(2) => \gray1_reg[11]_i_19_n_1\,
      CO(1) => \gray1_reg[11]_i_19_n_2\,
      CO(0) => \gray1_reg[11]_i_19_n_3\,
      CYINIT => '0',
      DI(3) => \gray1[11]_i_51_n_0\,
      DI(2) => \gray1[11]_i_52_n_0\,
      DI(1) => \gray1[11]_i_53_n_0\,
      DI(0) => \gray1[11]_i_54_n_0\,
      O(3) => \gray1_reg[11]_i_19_n_4\,
      O(2) => \gray1_reg[11]_i_19_n_5\,
      O(1) => \gray1_reg[11]_i_19_n_6\,
      O(0) => \gray1_reg[11]_i_19_n_7\,
      S(3) => \gray1[11]_i_55_n_0\,
      S(2) => \gray1[11]_i_56_n_0\,
      S(1) => \gray1[11]_i_57_n_0\,
      S(0) => \gray1[11]_i_58_n_0\
    );
\gray1_reg[11]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[7]_i_6_n_0\,
      CO(3) => \NLW_gray1_reg[11]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \gray1_reg[11]_i_6_n_1\,
      CO(1) => \gray1_reg[11]_i_6_n_2\,
      CO(0) => \gray1_reg[11]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \gray1[11]_i_7_n_0\,
      DI(1) => \gray1[11]_i_8_n_0\,
      DI(0) => \gray1[11]_i_9_n_0\,
      O(3 downto 0) => grayResult(11 downto 8),
      S(3) => \gray1[11]_i_10_n_0\,
      S(2) => \gray1[11]_i_11_n_0\,
      S(1) => \gray1[11]_i_12_n_0\,
      S(0) => \gray1[11]_i_13_n_0\
    );
\gray1_reg[11]_i_62\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[11]_i_73_n_0\,
      CO(3) => \gray1_reg[11]_i_62_n_0\,
      CO(2) => \NLW_gray1_reg[11]_i_62_CO_UNCONNECTED\(2),
      CO(1) => \gray1_reg[11]_i_62_n_2\,
      CO(0) => \gray1_reg[11]_i_62_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => rgb3(23),
      DI(1) => \gray1[11]_i_84_n_0\,
      DI(0) => \gray1[11]_i_85_n_0\,
      O(3) => \NLW_gray1_reg[11]_i_62_O_UNCONNECTED\(3),
      O(2) => \gray1_reg[11]_i_62_n_5\,
      O(1) => \gray1_reg[11]_i_62_n_6\,
      O(0) => \gray1_reg[11]_i_62_n_7\,
      S(3) => '1',
      S(2) => \gray1[11]_i_86_n_0\,
      S(1) => \gray1[11]_i_87_n_0\,
      S(0) => \gray1[11]_i_88_n_0\
    );
\gray1_reg[11]_i_63\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[11]_i_71_n_0\,
      CO(3) => \gray1_reg[11]_i_63_n_0\,
      CO(2) => \NLW_gray1_reg[11]_i_63_CO_UNCONNECTED\(2),
      CO(1) => \gray1_reg[11]_i_63_n_2\,
      CO(0) => \gray1_reg[11]_i_63_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => rgb1(31),
      DI(1) => \gray1[11]_i_89_n_0\,
      DI(0) => \gray1[11]_i_90_n_0\,
      O(3) => \NLW_gray1_reg[11]_i_63_O_UNCONNECTED\(3),
      O(2) => \gray1_reg[11]_i_63_n_5\,
      O(1) => \gray1_reg[11]_i_63_n_6\,
      O(0) => \gray1_reg[11]_i_63_n_7\,
      S(3) => '1',
      S(2) => \gray1[11]_i_91_n_0\,
      S(1) => \gray1[11]_i_92_n_0\,
      S(0) => \gray1[11]_i_93_n_0\
    );
\gray1_reg[11]_i_65\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[11]_i_81_n_0\,
      CO(3) => \gray1_reg[11]_i_65_n_0\,
      CO(2) => \NLW_gray1_reg[11]_i_65_CO_UNCONNECTED\(2),
      CO(1) => \gray1_reg[11]_i_65_n_2\,
      CO(0) => \gray1_reg[11]_i_65_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => rgb2(15),
      DI(1) => \gray1[11]_i_95_n_0\,
      DI(0) => \gray1[11]_i_96_n_0\,
      O(3) => \NLW_gray1_reg[11]_i_65_O_UNCONNECTED\(3),
      O(2) => \gray1_reg[11]_i_65_n_5\,
      O(1) => \gray1_reg[11]_i_65_n_6\,
      O(0) => \gray1_reg[11]_i_65_n_7\,
      S(3) => '1',
      S(2) => \gray1[11]_i_97_n_0\,
      S(1) => \gray1[11]_i_98_n_0\,
      S(0) => \gray1[11]_i_99_n_0\
    );
\gray1_reg[11]_i_71\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gray1_reg[11]_i_71_n_0\,
      CO(2) => \gray1_reg[11]_i_71_n_1\,
      CO(1) => \gray1_reg[11]_i_71_n_2\,
      CO(0) => \gray1_reg[11]_i_71_n_3\,
      CYINIT => '0',
      DI(3) => \gray1[11]_i_102_n_0\,
      DI(2) => \gray1[11]_i_103_n_0\,
      DI(1) => \gray1[11]_i_104_n_0\,
      DI(0) => rgb1(26),
      O(3) => \gray1_reg[11]_i_71_n_4\,
      O(2) => \gray1_reg[11]_i_71_n_5\,
      O(1) => \gray1_reg[11]_i_71_n_6\,
      O(0) => \gray1_reg[11]_i_71_n_7\,
      S(3) => \gray1[11]_i_105_n_0\,
      S(2) => \gray1[11]_i_106_n_0\,
      S(1) => \gray1[11]_i_107_n_0\,
      S(0) => \gray1[11]_i_108_n_0\
    );
\gray1_reg[11]_i_73\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gray1_reg[11]_i_73_n_0\,
      CO(2) => \gray1_reg[11]_i_73_n_1\,
      CO(1) => \gray1_reg[11]_i_73_n_2\,
      CO(0) => \gray1_reg[11]_i_73_n_3\,
      CYINIT => '0',
      DI(3) => \gray1[11]_i_110_n_0\,
      DI(2) => \gray1[11]_i_111_n_0\,
      DI(1) => \gray1[11]_i_112_n_0\,
      DI(0) => rgb3(18),
      O(3) => \gray1_reg[11]_i_73_n_4\,
      O(2) => \gray1_reg[11]_i_73_n_5\,
      O(1) => \gray1_reg[11]_i_73_n_6\,
      O(0) => \gray1_reg[11]_i_73_n_7\,
      S(3) => \gray1[11]_i_113_n_0\,
      S(2) => \gray1[11]_i_114_n_0\,
      S(1) => \gray1[11]_i_115_n_0\,
      S(0) => \gray1[11]_i_116_n_0\
    );
\gray1_reg[11]_i_81\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gray1_reg[11]_i_81_n_0\,
      CO(2) => \gray1_reg[11]_i_81_n_1\,
      CO(1) => \gray1_reg[11]_i_81_n_2\,
      CO(0) => \gray1_reg[11]_i_81_n_3\,
      CYINIT => '0',
      DI(3) => \gray1[11]_i_118_n_0\,
      DI(2) => \gray1[11]_i_119_n_0\,
      DI(1) => \gray1[11]_i_120_n_0\,
      DI(0) => rgb2(10),
      O(3) => \gray1_reg[11]_i_81_n_4\,
      O(2) => \gray1_reg[11]_i_81_n_5\,
      O(1) => \gray1_reg[11]_i_81_n_6\,
      O(0) => \gray1_reg[11]_i_81_n_7\,
      S(3) => \gray1[11]_i_121_n_0\,
      S(2) => \gray1[11]_i_122_n_0\,
      S(1) => \gray1[11]_i_123_n_0\,
      S(0) => \gray1[11]_i_124_n_0\
    );
\gray1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[15]_i_1_n_7\,
      Q => \^gray1[31]\(12),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[15]_i_1_n_6\,
      Q => \^gray1[31]\(13),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[15]_i_1_n_5\,
      Q => \^gray1[31]\(14),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[15]_i_1_n_4\,
      Q => \^gray1[31]\(15),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[11]_i_1_n_0\,
      CO(3) => \gray1_reg[15]_i_1_n_0\,
      CO(2) => \gray1_reg[15]_i_1_n_1\,
      CO(1) => \gray1_reg[15]_i_1_n_2\,
      CO(0) => \gray1_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gray1_reg[15]_i_1_n_4\,
      O(2) => \gray1_reg[15]_i_1_n_5\,
      O(1) => \gray1_reg[15]_i_1_n_6\,
      O(0) => \gray1_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^gray1[31]\(15 downto 12)
    );
\gray1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[19]_i_1_n_7\,
      Q => \^gray1[31]\(16),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[19]_i_1_n_6\,
      Q => \^gray1[31]\(17),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[19]_i_1_n_5\,
      Q => \^gray1[31]\(18),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[19]_i_1_n_4\,
      Q => \^gray1[31]\(19),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[15]_i_1_n_0\,
      CO(3) => \gray1_reg[19]_i_1_n_0\,
      CO(2) => \gray1_reg[19]_i_1_n_1\,
      CO(1) => \gray1_reg[19]_i_1_n_2\,
      CO(0) => \gray1_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gray1_reg[19]_i_1_n_4\,
      O(2) => \gray1_reg[19]_i_1_n_5\,
      O(1) => \gray1_reg[19]_i_1_n_6\,
      O(0) => \gray1_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^gray1[31]\(19 downto 16)
    );
\gray1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[3]_i_1_n_6\,
      Q => \^gray1[31]\(1),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[23]_i_1_n_7\,
      Q => \^gray1[31]\(20),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[23]_i_1_n_6\,
      Q => \^gray1[31]\(21),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[23]_i_1_n_5\,
      Q => \^gray1[31]\(22),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[23]_i_1_n_4\,
      Q => \^gray1[31]\(23),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[19]_i_1_n_0\,
      CO(3) => \gray1_reg[23]_i_1_n_0\,
      CO(2) => \gray1_reg[23]_i_1_n_1\,
      CO(1) => \gray1_reg[23]_i_1_n_2\,
      CO(0) => \gray1_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gray1_reg[23]_i_1_n_4\,
      O(2) => \gray1_reg[23]_i_1_n_5\,
      O(1) => \gray1_reg[23]_i_1_n_6\,
      O(0) => \gray1_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^gray1[31]\(23 downto 20)
    );
\gray1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[27]_i_1_n_7\,
      Q => \^gray1[31]\(24),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[27]_i_1_n_6\,
      Q => \^gray1[31]\(25),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[27]_i_1_n_5\,
      Q => \^gray1[31]\(26),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[27]_i_1_n_4\,
      Q => \^gray1[31]\(27),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[23]_i_1_n_0\,
      CO(3) => \gray1_reg[27]_i_1_n_0\,
      CO(2) => \gray1_reg[27]_i_1_n_1\,
      CO(1) => \gray1_reg[27]_i_1_n_2\,
      CO(0) => \gray1_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gray1_reg[27]_i_1_n_4\,
      O(2) => \gray1_reg[27]_i_1_n_5\,
      O(1) => \gray1_reg[27]_i_1_n_6\,
      O(0) => \gray1_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^gray1[31]\(27 downto 24)
    );
\gray1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[31]_i_3_n_7\,
      Q => \^gray1[31]\(28),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[31]_i_3_n_6\,
      Q => \^gray1[31]\(29),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[3]_i_1_n_5\,
      Q => \^gray1[31]\(2),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[31]_i_3_n_5\,
      Q => \^gray1[31]\(30),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[31]_i_3_n_4\,
      Q => \^gray1[31]\(31),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[27]_i_1_n_0\,
      CO(3) => \NLW_gray1_reg[31]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \gray1_reg[31]_i_3_n_1\,
      CO(1) => \gray1_reg[31]_i_3_n_2\,
      CO(0) => \gray1_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gray1_reg[31]_i_3_n_4\,
      O(2) => \gray1_reg[31]_i_3_n_5\,
      O(1) => \gray1_reg[31]_i_3_n_6\,
      O(0) => \gray1_reg[31]_i_3_n_7\,
      S(3 downto 0) => \^gray1[31]\(31 downto 28)
    );
\gray1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[3]_i_1_n_4\,
      Q => \^gray1[31]\(3),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gray1_reg[3]_i_1_n_0\,
      CO(2) => \gray1_reg[3]_i_1_n_1\,
      CO(1) => \gray1_reg[3]_i_1_n_2\,
      CO(0) => \gray1_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray1[31]\(3 downto 0),
      O(3) => \gray1_reg[3]_i_1_n_4\,
      O(2) => \gray1_reg[3]_i_1_n_5\,
      O(1) => \gray1_reg[3]_i_1_n_6\,
      O(0) => \gray1_reg[3]_i_1_n_7\,
      S(3) => \gray1[3]_i_2_n_0\,
      S(2) => \gray1[3]_i_3_n_0\,
      S(1) => \gray1[3]_i_4_n_0\,
      S(0) => \gray1[3]_i_5_n_0\
    );
\gray1_reg[3]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gray1_reg[3]_i_10_n_0\,
      CO(2) => \gray1_reg[3]_i_10_n_1\,
      CO(1) => \gray1_reg[3]_i_10_n_2\,
      CO(0) => \gray1_reg[3]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \gray1[3]_i_17_n_0\,
      DI(2) => \gray1[3]_i_18_n_0\,
      DI(1) => \gray1[3]_i_19_n_0\,
      DI(0) => rgb1(2),
      O(3) => \gray1_reg[3]_i_10_n_4\,
      O(2) => \gray1_reg[3]_i_10_n_5\,
      O(1) => \gray1_reg[3]_i_10_n_6\,
      O(0) => \gray1_reg[3]_i_10_n_7\,
      S(3) => \gray1[3]_i_20_n_0\,
      S(2) => \gray1[3]_i_21_n_0\,
      S(1) => \gray1[3]_i_22_n_0\,
      S(0) => \gray1[3]_i_23_n_0\
    );
\gray1_reg[3]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gray1_reg[3]_i_6_n_0\,
      CO(2) => \gray1_reg[3]_i_6_n_1\,
      CO(1) => \gray1_reg[3]_i_6_n_2\,
      CO(0) => \gray1_reg[3]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \gray1[3]_i_7_n_0\,
      DI(2) => \gray1[3]_i_8_n_0\,
      DI(1) => \gray1[3]_i_9_n_0\,
      DI(0) => \gray1_reg[3]_i_10_n_7\,
      O(3 downto 0) => grayResult(3 downto 0),
      S(3) => \gray1[3]_i_11_n_0\,
      S(2) => \gray1[3]_i_12_n_0\,
      S(1) => \gray1[3]_i_13_n_0\,
      S(0) => \gray1[3]_i_14_n_0\
    );
\gray1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[7]_i_1_n_7\,
      Q => \^gray1[31]\(4),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[7]_i_1_n_6\,
      Q => \^gray1[31]\(5),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[7]_i_1_n_5\,
      Q => \^gray1[31]\(6),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[7]_i_1_n_4\,
      Q => \^gray1[31]\(7),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[3]_i_1_n_0\,
      CO(3) => \gray1_reg[7]_i_1_n_0\,
      CO(2) => \gray1_reg[7]_i_1_n_1\,
      CO(1) => \gray1_reg[7]_i_1_n_2\,
      CO(0) => \gray1_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray1[31]\(7 downto 4),
      O(3) => \gray1_reg[7]_i_1_n_4\,
      O(2) => \gray1_reg[7]_i_1_n_5\,
      O(1) => \gray1_reg[7]_i_1_n_6\,
      O(0) => \gray1_reg[7]_i_1_n_7\,
      S(3) => \gray1[7]_i_2_n_0\,
      S(2) => \gray1[7]_i_3_n_0\,
      S(1) => \gray1[7]_i_4_n_0\,
      S(0) => \gray1[7]_i_5_n_0\
    );
\gray1_reg[7]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gray1_reg[7]_i_18_n_0\,
      CO(2) => \gray1_reg[7]_i_18_n_1\,
      CO(1) => \gray1_reg[7]_i_18_n_2\,
      CO(0) => \gray1_reg[7]_i_18_n_3\,
      CYINIT => '0',
      DI(3) => \gray1[7]_i_25_n_0\,
      DI(2) => \gray1[7]_i_26_n_0\,
      DI(1) => \gray1[7]_i_27_n_0\,
      DI(0) => '0',
      O(3) => \gray1_reg[7]_i_18_n_4\,
      O(2) => \gray1_reg[7]_i_18_n_5\,
      O(1) => \gray1_reg[7]_i_18_n_6\,
      O(0) => \gray1_reg[7]_i_18_n_7\,
      S(3) => \gray1[7]_i_28_n_0\,
      S(2) => \gray1[7]_i_29_n_0\,
      S(1) => \gray1[7]_i_30_n_0\,
      S(0) => \gray1[7]_i_31_n_0\
    );
\gray1_reg[7]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gray1_reg[7]_i_19_n_0\,
      CO(2) => \gray1_reg[7]_i_19_n_1\,
      CO(1) => \gray1_reg[7]_i_19_n_2\,
      CO(0) => \gray1_reg[7]_i_19_n_3\,
      CYINIT => '0',
      DI(3) => \gray1[7]_i_32_n_0\,
      DI(2) => \gray1[7]_i_33_n_0\,
      DI(1) => \gray1[7]_i_34_n_0\,
      DI(0) => '0',
      O(3) => \gray1_reg[7]_i_19_n_4\,
      O(2) => \gray1_reg[7]_i_19_n_5\,
      O(1) => \gray1_reg[7]_i_19_n_6\,
      O(0) => \gray1_reg[7]_i_19_n_7\,
      S(3) => \gray1[7]_i_35_n_0\,
      S(2) => \gray1[7]_i_36_n_0\,
      S(1) => \gray1[7]_i_37_n_0\,
      S(0) => \gray1[7]_i_38_n_0\
    );
\gray1_reg[7]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray1_reg[3]_i_6_n_0\,
      CO(3) => \gray1_reg[7]_i_6_n_0\,
      CO(2) => \gray1_reg[7]_i_6_n_1\,
      CO(1) => \gray1_reg[7]_i_6_n_2\,
      CO(0) => \gray1_reg[7]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \gray1[7]_i_7_n_0\,
      DI(2) => \gray1[7]_i_8_n_0\,
      DI(1) => \gray1[7]_i_9_n_0\,
      DI(0) => \gray1[7]_i_10_n_0\,
      O(3 downto 0) => grayResult(7 downto 4),
      S(3) => \gray1[7]_i_11_n_0\,
      S(2) => \gray1[7]_i_12_n_0\,
      S(1) => \gray1[7]_i_13_n_0\,
      S(0) => \gray1[7]_i_14_n_0\
    );
\gray1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[11]_i_1_n_7\,
      Q => \^gray1[31]\(8),
      R => \gray1[31]_i_1_n_0\
    );
\gray1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray10,
      D => \gray1_reg[11]_i_1_n_6\,
      Q => \^gray1[31]\(9),
      R => \gray1[31]_i_1_n_0\
    );
\gray2[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray2[31]\(11),
      I1 => grayResult(11),
      O => \gray2[11]_i_2_n_0\
    );
\gray2[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray2[31]\(10),
      I1 => grayResult(10),
      O => \gray2[11]_i_3_n_0\
    );
\gray2[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray2[31]\(9),
      I1 => grayResult(9),
      O => \gray2[11]_i_4_n_0\
    );
\gray2[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray2[31]\(8),
      I1 => grayResult(8),
      O => \gray2[11]_i_5_n_0\
    );
\gray2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => delay_tvalid,
      I1 => count(0),
      I2 => count(1),
      I3 => p_0_in12_in,
      I4 => start1_i_1_n_0,
      O => \gray2[31]_i_1_n_0\
    );
\gray2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => delay_tvalid,
      I1 => count(0),
      I2 => count(1),
      I3 => p_0_in12_in,
      O => gray20
    );
\gray2[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray2[31]\(3),
      I1 => grayResult(3),
      O => \gray2[3]_i_2_n_0\
    );
\gray2[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray2[31]\(2),
      I1 => grayResult(2),
      O => \gray2[3]_i_3_n_0\
    );
\gray2[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray2[31]\(1),
      I1 => grayResult(1),
      O => \gray2[3]_i_4_n_0\
    );
\gray2[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray2[31]\(0),
      I1 => grayResult(0),
      O => \gray2[3]_i_5_n_0\
    );
\gray2[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray2[31]\(7),
      I1 => grayResult(7),
      O => \gray2[7]_i_2_n_0\
    );
\gray2[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray2[31]\(6),
      I1 => grayResult(6),
      O => \gray2[7]_i_3_n_0\
    );
\gray2[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray2[31]\(5),
      I1 => grayResult(5),
      O => \gray2[7]_i_4_n_0\
    );
\gray2[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gray2[31]\(4),
      I1 => grayResult(4),
      O => \gray2[7]_i_5_n_0\
    );
\gray2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[3]_i_1_n_7\,
      Q => \^gray2[31]\(0),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[11]_i_1_n_5\,
      Q => \^gray2[31]\(10),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[11]_i_1_n_4\,
      Q => \^gray2[31]\(11),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray2_reg[7]_i_1_n_0\,
      CO(3) => \gray2_reg[11]_i_1_n_0\,
      CO(2) => \gray2_reg[11]_i_1_n_1\,
      CO(1) => \gray2_reg[11]_i_1_n_2\,
      CO(0) => \gray2_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray2[31]\(11 downto 8),
      O(3) => \gray2_reg[11]_i_1_n_4\,
      O(2) => \gray2_reg[11]_i_1_n_5\,
      O(1) => \gray2_reg[11]_i_1_n_6\,
      O(0) => \gray2_reg[11]_i_1_n_7\,
      S(3) => \gray2[11]_i_2_n_0\,
      S(2) => \gray2[11]_i_3_n_0\,
      S(1) => \gray2[11]_i_4_n_0\,
      S(0) => \gray2[11]_i_5_n_0\
    );
\gray2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[15]_i_1_n_7\,
      Q => \^gray2[31]\(12),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[15]_i_1_n_6\,
      Q => \^gray2[31]\(13),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[15]_i_1_n_5\,
      Q => \^gray2[31]\(14),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[15]_i_1_n_4\,
      Q => \^gray2[31]\(15),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray2_reg[11]_i_1_n_0\,
      CO(3) => \gray2_reg[15]_i_1_n_0\,
      CO(2) => \gray2_reg[15]_i_1_n_1\,
      CO(1) => \gray2_reg[15]_i_1_n_2\,
      CO(0) => \gray2_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gray2_reg[15]_i_1_n_4\,
      O(2) => \gray2_reg[15]_i_1_n_5\,
      O(1) => \gray2_reg[15]_i_1_n_6\,
      O(0) => \gray2_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^gray2[31]\(15 downto 12)
    );
\gray2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[19]_i_1_n_7\,
      Q => \^gray2[31]\(16),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[19]_i_1_n_6\,
      Q => \^gray2[31]\(17),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[19]_i_1_n_5\,
      Q => \^gray2[31]\(18),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[19]_i_1_n_4\,
      Q => \^gray2[31]\(19),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray2_reg[15]_i_1_n_0\,
      CO(3) => \gray2_reg[19]_i_1_n_0\,
      CO(2) => \gray2_reg[19]_i_1_n_1\,
      CO(1) => \gray2_reg[19]_i_1_n_2\,
      CO(0) => \gray2_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gray2_reg[19]_i_1_n_4\,
      O(2) => \gray2_reg[19]_i_1_n_5\,
      O(1) => \gray2_reg[19]_i_1_n_6\,
      O(0) => \gray2_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^gray2[31]\(19 downto 16)
    );
\gray2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[3]_i_1_n_6\,
      Q => \^gray2[31]\(1),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[23]_i_1_n_7\,
      Q => \^gray2[31]\(20),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[23]_i_1_n_6\,
      Q => \^gray2[31]\(21),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[23]_i_1_n_5\,
      Q => \^gray2[31]\(22),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[23]_i_1_n_4\,
      Q => \^gray2[31]\(23),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray2_reg[19]_i_1_n_0\,
      CO(3) => \gray2_reg[23]_i_1_n_0\,
      CO(2) => \gray2_reg[23]_i_1_n_1\,
      CO(1) => \gray2_reg[23]_i_1_n_2\,
      CO(0) => \gray2_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gray2_reg[23]_i_1_n_4\,
      O(2) => \gray2_reg[23]_i_1_n_5\,
      O(1) => \gray2_reg[23]_i_1_n_6\,
      O(0) => \gray2_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^gray2[31]\(23 downto 20)
    );
\gray2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[27]_i_1_n_7\,
      Q => \^gray2[31]\(24),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[27]_i_1_n_6\,
      Q => \^gray2[31]\(25),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[27]_i_1_n_5\,
      Q => \^gray2[31]\(26),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[27]_i_1_n_4\,
      Q => \^gray2[31]\(27),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray2_reg[23]_i_1_n_0\,
      CO(3) => \gray2_reg[27]_i_1_n_0\,
      CO(2) => \gray2_reg[27]_i_1_n_1\,
      CO(1) => \gray2_reg[27]_i_1_n_2\,
      CO(0) => \gray2_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gray2_reg[27]_i_1_n_4\,
      O(2) => \gray2_reg[27]_i_1_n_5\,
      O(1) => \gray2_reg[27]_i_1_n_6\,
      O(0) => \gray2_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^gray2[31]\(27 downto 24)
    );
\gray2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[31]_i_3_n_7\,
      Q => \^gray2[31]\(28),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[31]_i_3_n_6\,
      Q => \^gray2[31]\(29),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[3]_i_1_n_5\,
      Q => \^gray2[31]\(2),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[31]_i_3_n_5\,
      Q => \^gray2[31]\(30),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[31]_i_3_n_4\,
      Q => \^gray2[31]\(31),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray2_reg[27]_i_1_n_0\,
      CO(3) => \NLW_gray2_reg[31]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \gray2_reg[31]_i_3_n_1\,
      CO(1) => \gray2_reg[31]_i_3_n_2\,
      CO(0) => \gray2_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gray2_reg[31]_i_3_n_4\,
      O(2) => \gray2_reg[31]_i_3_n_5\,
      O(1) => \gray2_reg[31]_i_3_n_6\,
      O(0) => \gray2_reg[31]_i_3_n_7\,
      S(3 downto 0) => \^gray2[31]\(31 downto 28)
    );
\gray2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[3]_i_1_n_4\,
      Q => \^gray2[31]\(3),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gray2_reg[3]_i_1_n_0\,
      CO(2) => \gray2_reg[3]_i_1_n_1\,
      CO(1) => \gray2_reg[3]_i_1_n_2\,
      CO(0) => \gray2_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray2[31]\(3 downto 0),
      O(3) => \gray2_reg[3]_i_1_n_4\,
      O(2) => \gray2_reg[3]_i_1_n_5\,
      O(1) => \gray2_reg[3]_i_1_n_6\,
      O(0) => \gray2_reg[3]_i_1_n_7\,
      S(3) => \gray2[3]_i_2_n_0\,
      S(2) => \gray2[3]_i_3_n_0\,
      S(1) => \gray2[3]_i_4_n_0\,
      S(0) => \gray2[3]_i_5_n_0\
    );
\gray2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[7]_i_1_n_7\,
      Q => \^gray2[31]\(4),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[7]_i_1_n_6\,
      Q => \^gray2[31]\(5),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[7]_i_1_n_5\,
      Q => \^gray2[31]\(6),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[7]_i_1_n_4\,
      Q => \^gray2[31]\(7),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray2_reg[3]_i_1_n_0\,
      CO(3) => \gray2_reg[7]_i_1_n_0\,
      CO(2) => \gray2_reg[7]_i_1_n_1\,
      CO(1) => \gray2_reg[7]_i_1_n_2\,
      CO(0) => \gray2_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray2[31]\(7 downto 4),
      O(3) => \gray2_reg[7]_i_1_n_4\,
      O(2) => \gray2_reg[7]_i_1_n_5\,
      O(1) => \gray2_reg[7]_i_1_n_6\,
      O(0) => \gray2_reg[7]_i_1_n_7\,
      S(3) => \gray2[7]_i_2_n_0\,
      S(2) => \gray2[7]_i_3_n_0\,
      S(1) => \gray2[7]_i_4_n_0\,
      S(0) => \gray2[7]_i_5_n_0\
    );
\gray2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[11]_i_1_n_7\,
      Q => \^gray2[31]\(8),
      R => \gray2[31]_i_1_n_0\
    );
\gray2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => gray20,
      D => \gray2_reg[11]_i_1_n_6\,
      Q => \^gray2[31]\(9),
      R => \gray2[31]_i_1_n_0\
    );
\initS2MMClearSDelay[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => finish_send,
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \initS2MMClearSDelay[0]_i_1_n_0\
    );
\initS2MMClearSDelay[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \initS2MMClearSDelay_reg_n_0_[0]\,
      O => \initS2MMClearSDelay[0]_i_3_n_0\
    );
\initS2MMClearSDelay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[0]_i_2_n_7\,
      Q => \initS2MMClearSDelay_reg_n_0_[0]\,
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \initS2MMClearSDelay_reg[0]_i_2_n_0\,
      CO(2) => \initS2MMClearSDelay_reg[0]_i_2_n_1\,
      CO(1) => \initS2MMClearSDelay_reg[0]_i_2_n_2\,
      CO(0) => \initS2MMClearSDelay_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \initS2MMClearSDelay_reg[0]_i_2_n_4\,
      O(2) => \initS2MMClearSDelay_reg[0]_i_2_n_5\,
      O(1) => \initS2MMClearSDelay_reg[0]_i_2_n_6\,
      O(0) => \initS2MMClearSDelay_reg[0]_i_2_n_7\,
      S(3) => \initS2MMClearSDelay_reg_n_0_[3]\,
      S(2) => \initS2MMClearSDelay_reg_n_0_[2]\,
      S(1) => \initS2MMClearSDelay_reg_n_0_[1]\,
      S(0) => \initS2MMClearSDelay[0]_i_3_n_0\
    );
\initS2MMClearSDelay_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[8]_i_1_n_5\,
      Q => initS2MMClearSDelay_reg(10),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[8]_i_1_n_4\,
      Q => initS2MMClearSDelay_reg(11),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[12]_i_1_n_7\,
      Q => initS2MMClearSDelay_reg(12),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \initS2MMClearSDelay_reg[8]_i_1_n_0\,
      CO(3) => \initS2MMClearSDelay_reg[12]_i_1_n_0\,
      CO(2) => \initS2MMClearSDelay_reg[12]_i_1_n_1\,
      CO(1) => \initS2MMClearSDelay_reg[12]_i_1_n_2\,
      CO(0) => \initS2MMClearSDelay_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \initS2MMClearSDelay_reg[12]_i_1_n_4\,
      O(2) => \initS2MMClearSDelay_reg[12]_i_1_n_5\,
      O(1) => \initS2MMClearSDelay_reg[12]_i_1_n_6\,
      O(0) => \initS2MMClearSDelay_reg[12]_i_1_n_7\,
      S(3 downto 0) => initS2MMClearSDelay_reg(15 downto 12)
    );
\initS2MMClearSDelay_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[12]_i_1_n_6\,
      Q => initS2MMClearSDelay_reg(13),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[12]_i_1_n_5\,
      Q => initS2MMClearSDelay_reg(14),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[12]_i_1_n_4\,
      Q => initS2MMClearSDelay_reg(15),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[16]_i_1_n_7\,
      Q => initS2MMClearSDelay_reg(16),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \initS2MMClearSDelay_reg[12]_i_1_n_0\,
      CO(3) => \initS2MMClearSDelay_reg[16]_i_1_n_0\,
      CO(2) => \initS2MMClearSDelay_reg[16]_i_1_n_1\,
      CO(1) => \initS2MMClearSDelay_reg[16]_i_1_n_2\,
      CO(0) => \initS2MMClearSDelay_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \initS2MMClearSDelay_reg[16]_i_1_n_4\,
      O(2) => \initS2MMClearSDelay_reg[16]_i_1_n_5\,
      O(1) => \initS2MMClearSDelay_reg[16]_i_1_n_6\,
      O(0) => \initS2MMClearSDelay_reg[16]_i_1_n_7\,
      S(3 downto 0) => initS2MMClearSDelay_reg(19 downto 16)
    );
\initS2MMClearSDelay_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[16]_i_1_n_6\,
      Q => initS2MMClearSDelay_reg(17),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[16]_i_1_n_5\,
      Q => initS2MMClearSDelay_reg(18),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[16]_i_1_n_4\,
      Q => initS2MMClearSDelay_reg(19),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[0]_i_2_n_6\,
      Q => \initS2MMClearSDelay_reg_n_0_[1]\,
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[20]_i_1_n_7\,
      Q => initS2MMClearSDelay_reg(20),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \initS2MMClearSDelay_reg[16]_i_1_n_0\,
      CO(3) => \initS2MMClearSDelay_reg[20]_i_1_n_0\,
      CO(2) => \initS2MMClearSDelay_reg[20]_i_1_n_1\,
      CO(1) => \initS2MMClearSDelay_reg[20]_i_1_n_2\,
      CO(0) => \initS2MMClearSDelay_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \initS2MMClearSDelay_reg[20]_i_1_n_4\,
      O(2) => \initS2MMClearSDelay_reg[20]_i_1_n_5\,
      O(1) => \initS2MMClearSDelay_reg[20]_i_1_n_6\,
      O(0) => \initS2MMClearSDelay_reg[20]_i_1_n_7\,
      S(3 downto 0) => initS2MMClearSDelay_reg(23 downto 20)
    );
\initS2MMClearSDelay_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[20]_i_1_n_6\,
      Q => initS2MMClearSDelay_reg(21),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[20]_i_1_n_5\,
      Q => initS2MMClearSDelay_reg(22),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[20]_i_1_n_4\,
      Q => initS2MMClearSDelay_reg(23),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[24]_i_1_n_7\,
      Q => initS2MMClearSDelay_reg(24),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \initS2MMClearSDelay_reg[20]_i_1_n_0\,
      CO(3) => \initS2MMClearSDelay_reg[24]_i_1_n_0\,
      CO(2) => \initS2MMClearSDelay_reg[24]_i_1_n_1\,
      CO(1) => \initS2MMClearSDelay_reg[24]_i_1_n_2\,
      CO(0) => \initS2MMClearSDelay_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \initS2MMClearSDelay_reg[24]_i_1_n_4\,
      O(2) => \initS2MMClearSDelay_reg[24]_i_1_n_5\,
      O(1) => \initS2MMClearSDelay_reg[24]_i_1_n_6\,
      O(0) => \initS2MMClearSDelay_reg[24]_i_1_n_7\,
      S(3 downto 0) => initS2MMClearSDelay_reg(27 downto 24)
    );
\initS2MMClearSDelay_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[24]_i_1_n_6\,
      Q => initS2MMClearSDelay_reg(25),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[24]_i_1_n_5\,
      Q => initS2MMClearSDelay_reg(26),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[24]_i_1_n_4\,
      Q => initS2MMClearSDelay_reg(27),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[28]_i_1_n_7\,
      Q => initS2MMClearSDelay_reg(28),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \initS2MMClearSDelay_reg[24]_i_1_n_0\,
      CO(3) => \NLW_initS2MMClearSDelay_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \initS2MMClearSDelay_reg[28]_i_1_n_1\,
      CO(1) => \initS2MMClearSDelay_reg[28]_i_1_n_2\,
      CO(0) => \initS2MMClearSDelay_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \initS2MMClearSDelay_reg[28]_i_1_n_4\,
      O(2) => \initS2MMClearSDelay_reg[28]_i_1_n_5\,
      O(1) => \initS2MMClearSDelay_reg[28]_i_1_n_6\,
      O(0) => \initS2MMClearSDelay_reg[28]_i_1_n_7\,
      S(3 downto 0) => initS2MMClearSDelay_reg(31 downto 28)
    );
\initS2MMClearSDelay_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[28]_i_1_n_6\,
      Q => initS2MMClearSDelay_reg(29),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[0]_i_2_n_5\,
      Q => \initS2MMClearSDelay_reg_n_0_[2]\,
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[28]_i_1_n_5\,
      Q => initS2MMClearSDelay_reg(30),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[28]_i_1_n_4\,
      Q => initS2MMClearSDelay_reg(31),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[0]_i_2_n_4\,
      Q => \initS2MMClearSDelay_reg_n_0_[3]\,
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[4]_i_1_n_7\,
      Q => initS2MMClearSDelay_reg(4),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \initS2MMClearSDelay_reg[0]_i_2_n_0\,
      CO(3) => \initS2MMClearSDelay_reg[4]_i_1_n_0\,
      CO(2) => \initS2MMClearSDelay_reg[4]_i_1_n_1\,
      CO(1) => \initS2MMClearSDelay_reg[4]_i_1_n_2\,
      CO(0) => \initS2MMClearSDelay_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \initS2MMClearSDelay_reg[4]_i_1_n_4\,
      O(2) => \initS2MMClearSDelay_reg[4]_i_1_n_5\,
      O(1) => \initS2MMClearSDelay_reg[4]_i_1_n_6\,
      O(0) => \initS2MMClearSDelay_reg[4]_i_1_n_7\,
      S(3 downto 0) => initS2MMClearSDelay_reg(7 downto 4)
    );
\initS2MMClearSDelay_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[4]_i_1_n_6\,
      Q => initS2MMClearSDelay_reg(5),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[4]_i_1_n_5\,
      Q => initS2MMClearSDelay_reg(6),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[4]_i_1_n_4\,
      Q => initS2MMClearSDelay_reg(7),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[8]_i_1_n_7\,
      Q => initS2MMClearSDelay_reg(8),
      R => start1_i_1_n_0
    );
\initS2MMClearSDelay_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \initS2MMClearSDelay_reg[4]_i_1_n_0\,
      CO(3) => \initS2MMClearSDelay_reg[8]_i_1_n_0\,
      CO(2) => \initS2MMClearSDelay_reg[8]_i_1_n_1\,
      CO(1) => \initS2MMClearSDelay_reg[8]_i_1_n_2\,
      CO(0) => \initS2MMClearSDelay_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \initS2MMClearSDelay_reg[8]_i_1_n_4\,
      O(2) => \initS2MMClearSDelay_reg[8]_i_1_n_5\,
      O(1) => \initS2MMClearSDelay_reg[8]_i_1_n_6\,
      O(0) => \initS2MMClearSDelay_reg[8]_i_1_n_7\,
      S(3 downto 0) => initS2MMClearSDelay_reg(11 downto 8)
    );
\initS2MMClearSDelay_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \initS2MMClearSDelay[0]_i_1_n_0\,
      D => \initS2MMClearSDelay_reg[8]_i_1_n_6\,
      Q => initS2MMClearSDelay_reg(9),
      R => start1_i_1_n_0
    );
m_handshake1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F8F0"
    )
        port map (
      I0 => write_clear4_n_2,
      I1 => M_AXI_AWREADY,
      I2 => m_handshake1_11,
      I3 => startClear4_reg_n_0,
      I4 => m_handshake3,
      O => m_handshake1_i_1_n_0
    );
\m_handshake1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F8F0"
    )
        port map (
      I0 => clear_awvalid3,
      I1 => M_AXI_AWREADY,
      I2 => m_handshake1_9,
      I3 => startClear3_reg_n_0,
      I4 => m_handshake3,
      O => \m_handshake1_i_1__0_n_0\
    );
\m_handshake1_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F8F0"
    )
        port map (
      I0 => clear_awvalid2,
      I1 => M_AXI_AWREADY,
      I2 => m_handshake1_7,
      I3 => startClear2,
      I4 => m_handshake3,
      O => \m_handshake1_i_1__1_n_0\
    );
\m_handshake1_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F8F0"
    )
        port map (
      I0 => clear_awvalid,
      I1 => M_AXI_AWREADY,
      I2 => m_handshake1_5,
      I3 => startClear_reg_n_0,
      I4 => m_handshake3,
      O => \m_handshake1_i_1__2_n_0\
    );
\m_handshake1_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F8F0"
    )
        port map (
      I0 => w3_awvalid,
      I1 => M_AXI_AWREADY,
      I2 => m_handshake1_3,
      I3 => \^start3\,
      I4 => m_handshake3,
      O => \m_handshake1_i_1__3_n_0\
    );
\m_handshake1_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F8F0"
    )
        port map (
      I0 => w2_awvalid,
      I1 => M_AXI_AWREADY,
      I2 => m_handshake1_1,
      I3 => \^start2\,
      I4 => m_handshake3,
      O => \m_handshake1_i_1__4_n_0\
    );
\m_handshake1_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F8F0"
    )
        port map (
      I0 => w1_awvalid,
      I1 => M_AXI_AWREADY,
      I2 => m_handshake1,
      I3 => \^start1\,
      I4 => m_handshake3,
      O => \m_handshake1_i_1__5_n_0\
    );
m_handshake2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => m_handshake2_10,
      I1 => startClear4_reg_n_0,
      I2 => write_clear4_n_4,
      I3 => M_AXI_WREADY,
      I4 => m_handshake3,
      O => m_handshake2_i_1_n_0
    );
\m_handshake2_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => m_handshake2_8,
      I1 => startClear3_reg_n_0,
      I2 => clear_wvalid3,
      I3 => M_AXI_WREADY,
      I4 => m_handshake3,
      O => \m_handshake2_i_1__0_n_0\
    );
\m_handshake2_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => m_handshake2_6,
      I1 => startClear2,
      I2 => clear_wvalid2,
      I3 => M_AXI_WREADY,
      I4 => m_handshake3,
      O => \m_handshake2_i_1__1_n_0\
    );
\m_handshake2_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => m_handshake2_4,
      I1 => startClear_reg_n_0,
      I2 => clear_wvalid,
      I3 => M_AXI_WREADY,
      I4 => m_handshake3,
      O => \m_handshake2_i_1__2_n_0\
    );
\m_handshake2_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => m_handshake2_2,
      I1 => \^start3\,
      I2 => w3_wvalid,
      I3 => M_AXI_WREADY,
      I4 => m_handshake3,
      O => \m_handshake2_i_1__3_n_0\
    );
\m_handshake2_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => m_handshake2_0,
      I1 => \^start2\,
      I2 => w2_wvalid,
      I3 => M_AXI_WREADY,
      I4 => m_handshake3,
      O => \m_handshake2_i_1__4_n_0\
    );
\m_handshake2_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => m_handshake2,
      I1 => \^start1\,
      I2 => w1_wvalid,
      I3 => M_AXI_WREADY,
      I4 => m_handshake3,
      O => \m_handshake2_i_1__5_n_0\
    );
m_handshake3_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => write_clear4_n_5,
      I1 => startClear4_reg_n_0,
      I2 => M_AXI_BVALID,
      I3 => clear_bready4,
      I4 => m_handshake3,
      O => m_handshake3_i_1_n_0
    );
\m_handshake3_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => write_clear3_n_5,
      I1 => startClear3_reg_n_0,
      I2 => M_AXI_BVALID,
      I3 => clear_bready3,
      I4 => m_handshake3,
      O => \m_handshake3_i_1__0_n_0\
    );
\m_handshake3_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => write_clear2_n_5,
      I1 => startClear2,
      I2 => M_AXI_BVALID,
      I3 => clear_bready2,
      I4 => m_handshake3,
      O => \m_handshake3_i_1__1_n_0\
    );
\m_handshake3_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => write_clear_n_5,
      I1 => startClear_reg_n_0,
      I2 => M_AXI_BVALID,
      I3 => clear_bready,
      I4 => m_handshake3,
      O => \m_handshake3_i_1__2_n_0\
    );
\m_handshake3_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => write_3_n_5,
      I1 => \^start3\,
      I2 => M_AXI_BVALID,
      I3 => w3_bready,
      I4 => m_handshake3,
      O => \m_handshake3_i_1__3_n_0\
    );
\m_handshake3_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => write_2_n_5,
      I1 => \^start2\,
      I2 => M_AXI_BVALID,
      I3 => w2_bready,
      I4 => m_handshake3,
      O => \m_handshake3_i_1__4_n_0\
    );
\m_handshake3_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => write_1_n_5,
      I1 => \^start1\,
      I2 => M_AXI_BVALID,
      I3 => w1_bready,
      I4 => m_handshake3,
      O => \m_handshake3_i_1__5_n_0\
    );
\maxDiffCol[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \maxDiffCol[4]_i_2_n_0\,
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffCol[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      O => \maxDiffCol[4]_i_2_n_0\
    );
\maxDiffCol_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => \column_count_reg_n_0_[0]\,
      Q => maxDiffCol(0),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffCol_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => \column_count_reg_n_0_[1]\,
      Q => maxDiffCol(1),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffCol_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => \column_count_reg_n_0_[2]\,
      Q => maxDiffCol(2),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffCol_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => \column_count_reg_n_0_[3]\,
      Q => maxDiffCol(3),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffCol_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => \column_count_reg_n_0_[4]\,
      Q => maxDiffCol(4),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => \row_count_reg_n_0_[0]\,
      Q => maxDiffRow(0),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => row_count_reg(10),
      Q => maxDiffRow(10),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => row_count_reg(11),
      Q => maxDiffRow(11),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => row_count_reg(12),
      Q => maxDiffRow(12),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => row_count_reg(13),
      Q => maxDiffRow(13),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => row_count_reg(14),
      Q => maxDiffRow(14),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => row_count_reg(15),
      Q => maxDiffRow(15),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => \row_count_reg_n_0_[1]\,
      Q => maxDiffRow(1),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => \row_count_reg_n_0_[2]\,
      Q => maxDiffRow(2),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => \row_count_reg_n_0_[3]\,
      Q => maxDiffRow(3),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => \row_count_reg_n_0_[4]\,
      Q => maxDiffRow(4),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => row_count_reg(5),
      Q => maxDiffRow(5),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => row_count_reg(6),
      Q => maxDiffRow(6),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => row_count_reg(7),
      Q => maxDiffRow(7),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => row_count_reg(8),
      Q => maxDiffRow(8),
      R => \maxDiffCol[4]_i_1_n_0\
    );
\maxDiffRow_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '0',
      D => row_count_reg(9),
      Q => maxDiffRow(9),
      R => \maxDiffCol[4]_i_1_n_0\
    );
motion_detected_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => motion_detected_INST_0_i_1_n_0,
      I1 => motion_detected_INST_0_i_2_n_0,
      I2 => motion_detected_INST_0_i_3_n_0,
      I3 => \^finish_read1\,
      I4 => \^finish_read2\,
      O => \^motion_detected\
    );
motion_detected_INST_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => motion_detected_INST_0_i_4_n_0,
      CO(3) => motion_detected_INST_0_i_1_n_0,
      CO(2) => motion_detected_INST_0_i_1_n_1,
      CO(1) => motion_detected_INST_0_i_1_n_2,
      CO(0) => motion_detected_INST_0_i_1_n_3,
      CYINIT => '0',
      DI(3) => motion_detected_INST_0_i_5_n_0,
      DI(2) => motion_detected_INST_0_i_6_n_0,
      DI(1) => motion_detected_INST_0_i_7_n_0,
      DI(0) => motion_detected_INST_0_i_8_n_0,
      O(3 downto 0) => NLW_motion_detected_INST_0_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => motion_detected_INST_0_i_9_n_0,
      S(2) => motion_detected_INST_0_i_10_n_0,
      S(1) => motion_detected_INST_0_i_11_n_0,
      S(0) => motion_detected_INST_0_i_12_n_0
    );
motion_detected_INST_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[31]_i_8_n_6\,
      I1 => \slv_reg4_reg_n_0_[29]\,
      I2 => \slv_reg5_reg[31]_i_8_n_7\,
      I3 => \slv_reg4_reg_n_0_[28]\,
      O => motion_detected_INST_0_i_10_n_0
    );
motion_detected_INST_0_i_100: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(1),
      I1 => \^gray1[31]\(1),
      I2 => \^gray2[31]\(0),
      I3 => \^gray1[31]\(0),
      O => motion_detected_INST_0_i_100_n_0
    );
motion_detected_INST_0_i_101: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(7),
      I1 => \slv_reg4_reg_n_0_[7]\,
      I2 => slv_reg50(6),
      I3 => \slv_reg4_reg_n_0_[6]\,
      O => motion_detected_INST_0_i_101_n_0
    );
motion_detected_INST_0_i_102: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(5),
      I1 => \slv_reg4_reg_n_0_[5]\,
      I2 => slv_reg50(4),
      I3 => \slv_reg4_reg_n_0_[4]\,
      O => motion_detected_INST_0_i_102_n_0
    );
motion_detected_INST_0_i_103: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(3),
      I1 => \slv_reg4_reg_n_0_[3]\,
      I2 => slv_reg50(2),
      I3 => \slv_reg4_reg_n_0_[2]\,
      O => motion_detected_INST_0_i_103_n_0
    );
motion_detected_INST_0_i_104: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(1),
      I1 => \slv_reg4_reg_n_0_[1]\,
      I2 => slv_reg50(0),
      I3 => \slv_reg4_reg_n_0_[0]\,
      O => motion_detected_INST_0_i_104_n_0
    );
motion_detected_INST_0_i_105: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[7]\,
      I1 => slv_reg50(7),
      I2 => \slv_reg4_reg_n_0_[6]\,
      I3 => slv_reg50(6),
      O => motion_detected_INST_0_i_105_n_0
    );
motion_detected_INST_0_i_106: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[5]\,
      I1 => slv_reg50(5),
      I2 => \slv_reg4_reg_n_0_[4]\,
      I3 => slv_reg50(4),
      O => motion_detected_INST_0_i_106_n_0
    );
motion_detected_INST_0_i_107: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[3]\,
      I1 => slv_reg50(3),
      I2 => \slv_reg4_reg_n_0_[2]\,
      I3 => slv_reg50(2),
      O => motion_detected_INST_0_i_107_n_0
    );
motion_detected_INST_0_i_108: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[1]\,
      I1 => slv_reg50(1),
      I2 => \slv_reg4_reg_n_0_[0]\,
      I3 => slv_reg50(0),
      O => motion_detected_INST_0_i_108_n_0
    );
motion_detected_INST_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[27]_i_3_n_4\,
      I1 => \slv_reg4_reg_n_0_[27]\,
      I2 => \slv_reg5_reg[27]_i_3_n_5\,
      I3 => \slv_reg4_reg_n_0_[26]\,
      O => motion_detected_INST_0_i_11_n_0
    );
motion_detected_INST_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[27]_i_3_n_6\,
      I1 => \slv_reg4_reg_n_0_[25]\,
      I2 => \slv_reg5_reg[27]_i_3_n_7\,
      I3 => \slv_reg4_reg_n_0_[24]\,
      O => motion_detected_INST_0_i_12_n_0
    );
motion_detected_INST_0_i_13: unisim.vcomponents.CARRY4
     port map (
      CI => motion_detected_INST_0_i_40_n_0,
      CO(3) => motion_detected_INST_0_i_13_n_0,
      CO(2) => motion_detected_INST_0_i_13_n_1,
      CO(1) => motion_detected_INST_0_i_13_n_2,
      CO(0) => motion_detected_INST_0_i_13_n_3,
      CYINIT => '0',
      DI(3) => motion_detected_INST_0_i_41_n_0,
      DI(2) => motion_detected_INST_0_i_42_n_0,
      DI(1) => motion_detected_INST_0_i_43_n_0,
      DI(0) => motion_detected_INST_0_i_44_n_0,
      O(3 downto 0) => NLW_motion_detected_INST_0_i_13_O_UNCONNECTED(3 downto 0),
      S(3) => motion_detected_INST_0_i_45_n_0,
      S(2) => motion_detected_INST_0_i_46_n_0,
      S(1) => motion_detected_INST_0_i_47_n_0,
      S(0) => motion_detected_INST_0_i_48_n_0
    );
motion_detected_INST_0_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^gray2[31]\(31),
      I1 => \^gray1[31]\(31),
      I2 => \^gray1[31]\(30),
      I3 => \^gray2[31]\(30),
      O => motion_detected_INST_0_i_14_n_0
    );
motion_detected_INST_0_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(29),
      I1 => \^gray2[31]\(29),
      I2 => \^gray1[31]\(28),
      I3 => \^gray2[31]\(28),
      O => motion_detected_INST_0_i_15_n_0
    );
motion_detected_INST_0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(27),
      I1 => \^gray2[31]\(27),
      I2 => \^gray1[31]\(26),
      I3 => \^gray2[31]\(26),
      O => motion_detected_INST_0_i_16_n_0
    );
motion_detected_INST_0_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(25),
      I1 => \^gray2[31]\(25),
      I2 => \^gray1[31]\(24),
      I3 => \^gray2[31]\(24),
      O => motion_detected_INST_0_i_17_n_0
    );
motion_detected_INST_0_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray1[31]\(31),
      I1 => \^gray2[31]\(31),
      I2 => \^gray2[31]\(30),
      I3 => \^gray1[31]\(30),
      O => motion_detected_INST_0_i_18_n_0
    );
motion_detected_INST_0_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(29),
      I1 => \^gray1[31]\(29),
      I2 => \^gray2[31]\(28),
      I3 => \^gray1[31]\(28),
      O => motion_detected_INST_0_i_19_n_0
    );
motion_detected_INST_0_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => motion_detected_INST_0_i_13_n_0,
      CO(3) => motion_detected_INST_0_i_2_n_0,
      CO(2) => motion_detected_INST_0_i_2_n_1,
      CO(1) => motion_detected_INST_0_i_2_n_2,
      CO(0) => motion_detected_INST_0_i_2_n_3,
      CYINIT => '0',
      DI(3) => motion_detected_INST_0_i_14_n_0,
      DI(2) => motion_detected_INST_0_i_15_n_0,
      DI(1) => motion_detected_INST_0_i_16_n_0,
      DI(0) => motion_detected_INST_0_i_17_n_0,
      O(3 downto 0) => NLW_motion_detected_INST_0_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => motion_detected_INST_0_i_18_n_0,
      S(2) => motion_detected_INST_0_i_19_n_0,
      S(1) => motion_detected_INST_0_i_20_n_0,
      S(0) => motion_detected_INST_0_i_21_n_0
    );
motion_detected_INST_0_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(27),
      I1 => \^gray1[31]\(27),
      I2 => \^gray2[31]\(26),
      I3 => \^gray1[31]\(26),
      O => motion_detected_INST_0_i_20_n_0
    );
motion_detected_INST_0_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(25),
      I1 => \^gray1[31]\(25),
      I2 => \^gray2[31]\(24),
      I3 => \^gray1[31]\(24),
      O => motion_detected_INST_0_i_21_n_0
    );
motion_detected_INST_0_i_22: unisim.vcomponents.CARRY4
     port map (
      CI => motion_detected_INST_0_i_49_n_0,
      CO(3) => motion_detected_INST_0_i_22_n_0,
      CO(2) => motion_detected_INST_0_i_22_n_1,
      CO(1) => motion_detected_INST_0_i_22_n_2,
      CO(0) => motion_detected_INST_0_i_22_n_3,
      CYINIT => '0',
      DI(3) => motion_detected_INST_0_i_50_n_0,
      DI(2) => motion_detected_INST_0_i_51_n_0,
      DI(1) => motion_detected_INST_0_i_52_n_0,
      DI(0) => motion_detected_INST_0_i_53_n_0,
      O(3 downto 0) => NLW_motion_detected_INST_0_i_22_O_UNCONNECTED(3 downto 0),
      S(3) => motion_detected_INST_0_i_54_n_0,
      S(2) => motion_detected_INST_0_i_55_n_0,
      S(1) => motion_detected_INST_0_i_56_n_0,
      S(0) => motion_detected_INST_0_i_57_n_0
    );
motion_detected_INST_0_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(31),
      I1 => \slv_reg4_reg_n_0_[31]\,
      I2 => slv_reg50(30),
      I3 => \slv_reg4_reg_n_0_[30]\,
      O => motion_detected_INST_0_i_23_n_0
    );
motion_detected_INST_0_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(29),
      I1 => \slv_reg4_reg_n_0_[29]\,
      I2 => slv_reg50(28),
      I3 => \slv_reg4_reg_n_0_[28]\,
      O => motion_detected_INST_0_i_24_n_0
    );
motion_detected_INST_0_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(27),
      I1 => \slv_reg4_reg_n_0_[27]\,
      I2 => slv_reg50(26),
      I3 => \slv_reg4_reg_n_0_[26]\,
      O => motion_detected_INST_0_i_25_n_0
    );
motion_detected_INST_0_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(25),
      I1 => \slv_reg4_reg_n_0_[25]\,
      I2 => slv_reg50(24),
      I3 => \slv_reg4_reg_n_0_[24]\,
      O => motion_detected_INST_0_i_26_n_0
    );
motion_detected_INST_0_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[31]\,
      I1 => slv_reg50(31),
      I2 => \slv_reg4_reg_n_0_[30]\,
      I3 => slv_reg50(30),
      O => motion_detected_INST_0_i_27_n_0
    );
motion_detected_INST_0_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[29]\,
      I1 => slv_reg50(29),
      I2 => \slv_reg4_reg_n_0_[28]\,
      I3 => slv_reg50(28),
      O => motion_detected_INST_0_i_28_n_0
    );
motion_detected_INST_0_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[27]\,
      I1 => slv_reg50(27),
      I2 => \slv_reg4_reg_n_0_[26]\,
      I3 => slv_reg50(26),
      O => motion_detected_INST_0_i_29_n_0
    );
motion_detected_INST_0_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => motion_detected_INST_0_i_22_n_0,
      CO(3) => motion_detected_INST_0_i_3_n_0,
      CO(2) => motion_detected_INST_0_i_3_n_1,
      CO(1) => motion_detected_INST_0_i_3_n_2,
      CO(0) => motion_detected_INST_0_i_3_n_3,
      CYINIT => '0',
      DI(3) => motion_detected_INST_0_i_23_n_0,
      DI(2) => motion_detected_INST_0_i_24_n_0,
      DI(1) => motion_detected_INST_0_i_25_n_0,
      DI(0) => motion_detected_INST_0_i_26_n_0,
      O(3 downto 0) => NLW_motion_detected_INST_0_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => motion_detected_INST_0_i_27_n_0,
      S(2) => motion_detected_INST_0_i_28_n_0,
      S(1) => motion_detected_INST_0_i_29_n_0,
      S(0) => motion_detected_INST_0_i_30_n_0
    );
motion_detected_INST_0_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[25]\,
      I1 => slv_reg50(25),
      I2 => \slv_reg4_reg_n_0_[24]\,
      I3 => slv_reg50(24),
      O => motion_detected_INST_0_i_30_n_0
    );
motion_detected_INST_0_i_31: unisim.vcomponents.CARRY4
     port map (
      CI => motion_detected_INST_0_i_58_n_0,
      CO(3) => motion_detected_INST_0_i_31_n_0,
      CO(2) => motion_detected_INST_0_i_31_n_1,
      CO(1) => motion_detected_INST_0_i_31_n_2,
      CO(0) => motion_detected_INST_0_i_31_n_3,
      CYINIT => '0',
      DI(3) => motion_detected_INST_0_i_59_n_0,
      DI(2) => motion_detected_INST_0_i_60_n_0,
      DI(1) => motion_detected_INST_0_i_61_n_0,
      DI(0) => motion_detected_INST_0_i_62_n_0,
      O(3 downto 0) => NLW_motion_detected_INST_0_i_31_O_UNCONNECTED(3 downto 0),
      S(3) => motion_detected_INST_0_i_63_n_0,
      S(2) => motion_detected_INST_0_i_64_n_0,
      S(1) => motion_detected_INST_0_i_65_n_0,
      S(0) => motion_detected_INST_0_i_66_n_0
    );
motion_detected_INST_0_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[23]\,
      I1 => \slv_reg5_reg[23]_i_4_n_4\,
      I2 => \slv_reg5_reg[23]_i_4_n_5\,
      I3 => \slv_reg4_reg_n_0_[22]\,
      O => motion_detected_INST_0_i_32_n_0
    );
motion_detected_INST_0_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[21]\,
      I1 => \slv_reg5_reg[23]_i_4_n_6\,
      I2 => \slv_reg5_reg[23]_i_4_n_7\,
      I3 => \slv_reg4_reg_n_0_[20]\,
      O => motion_detected_INST_0_i_33_n_0
    );
motion_detected_INST_0_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[19]\,
      I1 => \slv_reg5_reg[19]_i_3_n_4\,
      I2 => \slv_reg5_reg[19]_i_3_n_5\,
      I3 => \slv_reg4_reg_n_0_[18]\,
      O => motion_detected_INST_0_i_34_n_0
    );
motion_detected_INST_0_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[17]\,
      I1 => \slv_reg5_reg[19]_i_3_n_6\,
      I2 => \slv_reg5_reg[19]_i_3_n_7\,
      I3 => \slv_reg4_reg_n_0_[16]\,
      O => motion_detected_INST_0_i_35_n_0
    );
motion_detected_INST_0_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[23]_i_4_n_4\,
      I1 => \slv_reg4_reg_n_0_[23]\,
      I2 => \slv_reg5_reg[23]_i_4_n_5\,
      I3 => \slv_reg4_reg_n_0_[22]\,
      O => motion_detected_INST_0_i_36_n_0
    );
motion_detected_INST_0_i_37: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[23]_i_4_n_6\,
      I1 => \slv_reg4_reg_n_0_[21]\,
      I2 => \slv_reg5_reg[23]_i_4_n_7\,
      I3 => \slv_reg4_reg_n_0_[20]\,
      O => motion_detected_INST_0_i_37_n_0
    );
motion_detected_INST_0_i_38: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[19]_i_3_n_4\,
      I1 => \slv_reg4_reg_n_0_[19]\,
      I2 => \slv_reg5_reg[19]_i_3_n_5\,
      I3 => \slv_reg4_reg_n_0_[18]\,
      O => motion_detected_INST_0_i_38_n_0
    );
motion_detected_INST_0_i_39: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[19]_i_3_n_6\,
      I1 => \slv_reg4_reg_n_0_[17]\,
      I2 => \slv_reg5_reg[19]_i_3_n_7\,
      I3 => \slv_reg4_reg_n_0_[16]\,
      O => motion_detected_INST_0_i_39_n_0
    );
motion_detected_INST_0_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => motion_detected_INST_0_i_31_n_0,
      CO(3) => motion_detected_INST_0_i_4_n_0,
      CO(2) => motion_detected_INST_0_i_4_n_1,
      CO(1) => motion_detected_INST_0_i_4_n_2,
      CO(0) => motion_detected_INST_0_i_4_n_3,
      CYINIT => '0',
      DI(3) => motion_detected_INST_0_i_32_n_0,
      DI(2) => motion_detected_INST_0_i_33_n_0,
      DI(1) => motion_detected_INST_0_i_34_n_0,
      DI(0) => motion_detected_INST_0_i_35_n_0,
      O(3 downto 0) => NLW_motion_detected_INST_0_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => motion_detected_INST_0_i_36_n_0,
      S(2) => motion_detected_INST_0_i_37_n_0,
      S(1) => motion_detected_INST_0_i_38_n_0,
      S(0) => motion_detected_INST_0_i_39_n_0
    );
motion_detected_INST_0_i_40: unisim.vcomponents.CARRY4
     port map (
      CI => motion_detected_INST_0_i_67_n_0,
      CO(3) => motion_detected_INST_0_i_40_n_0,
      CO(2) => motion_detected_INST_0_i_40_n_1,
      CO(1) => motion_detected_INST_0_i_40_n_2,
      CO(0) => motion_detected_INST_0_i_40_n_3,
      CYINIT => '0',
      DI(3) => motion_detected_INST_0_i_68_n_0,
      DI(2) => motion_detected_INST_0_i_69_n_0,
      DI(1) => motion_detected_INST_0_i_70_n_0,
      DI(0) => motion_detected_INST_0_i_71_n_0,
      O(3 downto 0) => NLW_motion_detected_INST_0_i_40_O_UNCONNECTED(3 downto 0),
      S(3) => motion_detected_INST_0_i_72_n_0,
      S(2) => motion_detected_INST_0_i_73_n_0,
      S(1) => motion_detected_INST_0_i_74_n_0,
      S(0) => motion_detected_INST_0_i_75_n_0
    );
motion_detected_INST_0_i_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(23),
      I1 => \^gray2[31]\(23),
      I2 => \^gray1[31]\(22),
      I3 => \^gray2[31]\(22),
      O => motion_detected_INST_0_i_41_n_0
    );
motion_detected_INST_0_i_42: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(21),
      I1 => \^gray2[31]\(21),
      I2 => \^gray1[31]\(20),
      I3 => \^gray2[31]\(20),
      O => motion_detected_INST_0_i_42_n_0
    );
motion_detected_INST_0_i_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(19),
      I1 => \^gray2[31]\(19),
      I2 => \^gray1[31]\(18),
      I3 => \^gray2[31]\(18),
      O => motion_detected_INST_0_i_43_n_0
    );
motion_detected_INST_0_i_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(17),
      I1 => \^gray2[31]\(17),
      I2 => \^gray1[31]\(16),
      I3 => \^gray2[31]\(16),
      O => motion_detected_INST_0_i_44_n_0
    );
motion_detected_INST_0_i_45: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(23),
      I1 => \^gray1[31]\(23),
      I2 => \^gray2[31]\(22),
      I3 => \^gray1[31]\(22),
      O => motion_detected_INST_0_i_45_n_0
    );
motion_detected_INST_0_i_46: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(21),
      I1 => \^gray1[31]\(21),
      I2 => \^gray2[31]\(20),
      I3 => \^gray1[31]\(20),
      O => motion_detected_INST_0_i_46_n_0
    );
motion_detected_INST_0_i_47: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(19),
      I1 => \^gray1[31]\(19),
      I2 => \^gray2[31]\(18),
      I3 => \^gray1[31]\(18),
      O => motion_detected_INST_0_i_47_n_0
    );
motion_detected_INST_0_i_48: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(17),
      I1 => \^gray1[31]\(17),
      I2 => \^gray2[31]\(16),
      I3 => \^gray1[31]\(16),
      O => motion_detected_INST_0_i_48_n_0
    );
motion_detected_INST_0_i_49: unisim.vcomponents.CARRY4
     port map (
      CI => motion_detected_INST_0_i_76_n_0,
      CO(3) => motion_detected_INST_0_i_49_n_0,
      CO(2) => motion_detected_INST_0_i_49_n_1,
      CO(1) => motion_detected_INST_0_i_49_n_2,
      CO(0) => motion_detected_INST_0_i_49_n_3,
      CYINIT => '0',
      DI(3) => motion_detected_INST_0_i_77_n_0,
      DI(2) => motion_detected_INST_0_i_78_n_0,
      DI(1) => motion_detected_INST_0_i_79_n_0,
      DI(0) => motion_detected_INST_0_i_80_n_0,
      O(3 downto 0) => NLW_motion_detected_INST_0_i_49_O_UNCONNECTED(3 downto 0),
      S(3) => motion_detected_INST_0_i_81_n_0,
      S(2) => motion_detected_INST_0_i_82_n_0,
      S(1) => motion_detected_INST_0_i_83_n_0,
      S(0) => motion_detected_INST_0_i_84_n_0
    );
motion_detected_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[31]\,
      I1 => \slv_reg5_reg[31]_i_8_n_4\,
      I2 => \slv_reg5_reg[31]_i_8_n_5\,
      I3 => \slv_reg4_reg_n_0_[30]\,
      O => motion_detected_INST_0_i_5_n_0
    );
motion_detected_INST_0_i_50: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(23),
      I1 => \slv_reg4_reg_n_0_[23]\,
      I2 => slv_reg50(22),
      I3 => \slv_reg4_reg_n_0_[22]\,
      O => motion_detected_INST_0_i_50_n_0
    );
motion_detected_INST_0_i_51: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(21),
      I1 => \slv_reg4_reg_n_0_[21]\,
      I2 => slv_reg50(20),
      I3 => \slv_reg4_reg_n_0_[20]\,
      O => motion_detected_INST_0_i_51_n_0
    );
motion_detected_INST_0_i_52: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(19),
      I1 => \slv_reg4_reg_n_0_[19]\,
      I2 => slv_reg50(18),
      I3 => \slv_reg4_reg_n_0_[18]\,
      O => motion_detected_INST_0_i_52_n_0
    );
motion_detected_INST_0_i_53: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(17),
      I1 => \slv_reg4_reg_n_0_[17]\,
      I2 => slv_reg50(16),
      I3 => \slv_reg4_reg_n_0_[16]\,
      O => motion_detected_INST_0_i_53_n_0
    );
motion_detected_INST_0_i_54: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[23]\,
      I1 => slv_reg50(23),
      I2 => \slv_reg4_reg_n_0_[22]\,
      I3 => slv_reg50(22),
      O => motion_detected_INST_0_i_54_n_0
    );
motion_detected_INST_0_i_55: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[21]\,
      I1 => slv_reg50(21),
      I2 => \slv_reg4_reg_n_0_[20]\,
      I3 => slv_reg50(20),
      O => motion_detected_INST_0_i_55_n_0
    );
motion_detected_INST_0_i_56: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[19]\,
      I1 => slv_reg50(19),
      I2 => \slv_reg4_reg_n_0_[18]\,
      I3 => slv_reg50(18),
      O => motion_detected_INST_0_i_56_n_0
    );
motion_detected_INST_0_i_57: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[17]\,
      I1 => slv_reg50(17),
      I2 => \slv_reg4_reg_n_0_[16]\,
      I3 => slv_reg50(16),
      O => motion_detected_INST_0_i_57_n_0
    );
motion_detected_INST_0_i_58: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => motion_detected_INST_0_i_58_n_0,
      CO(2) => motion_detected_INST_0_i_58_n_1,
      CO(1) => motion_detected_INST_0_i_58_n_2,
      CO(0) => motion_detected_INST_0_i_58_n_3,
      CYINIT => '0',
      DI(3) => motion_detected_INST_0_i_85_n_0,
      DI(2) => motion_detected_INST_0_i_86_n_0,
      DI(1) => motion_detected_INST_0_i_87_n_0,
      DI(0) => motion_detected_INST_0_i_88_n_0,
      O(3 downto 0) => NLW_motion_detected_INST_0_i_58_O_UNCONNECTED(3 downto 0),
      S(3) => motion_detected_INST_0_i_89_n_0,
      S(2) => motion_detected_INST_0_i_90_n_0,
      S(1) => motion_detected_INST_0_i_91_n_0,
      S(0) => motion_detected_INST_0_i_92_n_0
    );
motion_detected_INST_0_i_59: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[15]\,
      I1 => \slv_reg5_reg[15]_i_4_n_4\,
      I2 => \slv_reg5_reg[15]_i_4_n_5\,
      I3 => \slv_reg4_reg_n_0_[14]\,
      O => motion_detected_INST_0_i_59_n_0
    );
motion_detected_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[29]\,
      I1 => \slv_reg5_reg[31]_i_8_n_6\,
      I2 => \slv_reg5_reg[31]_i_8_n_7\,
      I3 => \slv_reg4_reg_n_0_[28]\,
      O => motion_detected_INST_0_i_6_n_0
    );
motion_detected_INST_0_i_60: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[13]\,
      I1 => \slv_reg5_reg[15]_i_4_n_6\,
      I2 => \slv_reg5_reg[15]_i_4_n_7\,
      I3 => \slv_reg4_reg_n_0_[12]\,
      O => motion_detected_INST_0_i_60_n_0
    );
motion_detected_INST_0_i_61: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[11]\,
      I1 => \slv_reg5_reg[11]_i_3_n_4\,
      I2 => \slv_reg5_reg[11]_i_3_n_5\,
      I3 => \slv_reg4_reg_n_0_[10]\,
      O => motion_detected_INST_0_i_61_n_0
    );
motion_detected_INST_0_i_62: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[9]\,
      I1 => \slv_reg5_reg[11]_i_3_n_6\,
      I2 => \slv_reg5_reg[11]_i_3_n_7\,
      I3 => \slv_reg4_reg_n_0_[8]\,
      O => motion_detected_INST_0_i_62_n_0
    );
motion_detected_INST_0_i_63: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[15]_i_4_n_4\,
      I1 => \slv_reg4_reg_n_0_[15]\,
      I2 => \slv_reg5_reg[15]_i_4_n_5\,
      I3 => \slv_reg4_reg_n_0_[14]\,
      O => motion_detected_INST_0_i_63_n_0
    );
motion_detected_INST_0_i_64: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[15]_i_4_n_6\,
      I1 => \slv_reg4_reg_n_0_[13]\,
      I2 => \slv_reg5_reg[15]_i_4_n_7\,
      I3 => \slv_reg4_reg_n_0_[12]\,
      O => motion_detected_INST_0_i_64_n_0
    );
motion_detected_INST_0_i_65: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[11]_i_3_n_4\,
      I1 => \slv_reg4_reg_n_0_[11]\,
      I2 => \slv_reg5_reg[11]_i_3_n_5\,
      I3 => \slv_reg4_reg_n_0_[10]\,
      O => motion_detected_INST_0_i_65_n_0
    );
motion_detected_INST_0_i_66: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[11]_i_3_n_6\,
      I1 => \slv_reg4_reg_n_0_[9]\,
      I2 => \slv_reg5_reg[11]_i_3_n_7\,
      I3 => \slv_reg4_reg_n_0_[8]\,
      O => motion_detected_INST_0_i_66_n_0
    );
motion_detected_INST_0_i_67: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => motion_detected_INST_0_i_67_n_0,
      CO(2) => motion_detected_INST_0_i_67_n_1,
      CO(1) => motion_detected_INST_0_i_67_n_2,
      CO(0) => motion_detected_INST_0_i_67_n_3,
      CYINIT => '0',
      DI(3) => motion_detected_INST_0_i_93_n_0,
      DI(2) => motion_detected_INST_0_i_94_n_0,
      DI(1) => motion_detected_INST_0_i_95_n_0,
      DI(0) => motion_detected_INST_0_i_96_n_0,
      O(3 downto 0) => NLW_motion_detected_INST_0_i_67_O_UNCONNECTED(3 downto 0),
      S(3) => motion_detected_INST_0_i_97_n_0,
      S(2) => motion_detected_INST_0_i_98_n_0,
      S(1) => motion_detected_INST_0_i_99_n_0,
      S(0) => motion_detected_INST_0_i_100_n_0
    );
motion_detected_INST_0_i_68: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(15),
      I1 => \^gray2[31]\(15),
      I2 => \^gray1[31]\(14),
      I3 => \^gray2[31]\(14),
      O => motion_detected_INST_0_i_68_n_0
    );
motion_detected_INST_0_i_69: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(13),
      I1 => \^gray2[31]\(13),
      I2 => \^gray1[31]\(12),
      I3 => \^gray2[31]\(12),
      O => motion_detected_INST_0_i_69_n_0
    );
motion_detected_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[27]\,
      I1 => \slv_reg5_reg[27]_i_3_n_4\,
      I2 => \slv_reg5_reg[27]_i_3_n_5\,
      I3 => \slv_reg4_reg_n_0_[26]\,
      O => motion_detected_INST_0_i_7_n_0
    );
motion_detected_INST_0_i_70: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(11),
      I1 => \^gray2[31]\(11),
      I2 => \^gray1[31]\(10),
      I3 => \^gray2[31]\(10),
      O => motion_detected_INST_0_i_70_n_0
    );
motion_detected_INST_0_i_71: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(9),
      I1 => \^gray2[31]\(9),
      I2 => \^gray1[31]\(8),
      I3 => \^gray2[31]\(8),
      O => motion_detected_INST_0_i_71_n_0
    );
motion_detected_INST_0_i_72: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(15),
      I1 => \^gray1[31]\(15),
      I2 => \^gray2[31]\(14),
      I3 => \^gray1[31]\(14),
      O => motion_detected_INST_0_i_72_n_0
    );
motion_detected_INST_0_i_73: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(13),
      I1 => \^gray1[31]\(13),
      I2 => \^gray2[31]\(12),
      I3 => \^gray1[31]\(12),
      O => motion_detected_INST_0_i_73_n_0
    );
motion_detected_INST_0_i_74: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(11),
      I1 => \^gray1[31]\(11),
      I2 => \^gray2[31]\(10),
      I3 => \^gray1[31]\(10),
      O => motion_detected_INST_0_i_74_n_0
    );
motion_detected_INST_0_i_75: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(9),
      I1 => \^gray1[31]\(9),
      I2 => \^gray2[31]\(8),
      I3 => \^gray1[31]\(8),
      O => motion_detected_INST_0_i_75_n_0
    );
motion_detected_INST_0_i_76: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => motion_detected_INST_0_i_76_n_0,
      CO(2) => motion_detected_INST_0_i_76_n_1,
      CO(1) => motion_detected_INST_0_i_76_n_2,
      CO(0) => motion_detected_INST_0_i_76_n_3,
      CYINIT => '0',
      DI(3) => motion_detected_INST_0_i_101_n_0,
      DI(2) => motion_detected_INST_0_i_102_n_0,
      DI(1) => motion_detected_INST_0_i_103_n_0,
      DI(0) => motion_detected_INST_0_i_104_n_0,
      O(3 downto 0) => NLW_motion_detected_INST_0_i_76_O_UNCONNECTED(3 downto 0),
      S(3) => motion_detected_INST_0_i_105_n_0,
      S(2) => motion_detected_INST_0_i_106_n_0,
      S(1) => motion_detected_INST_0_i_107_n_0,
      S(0) => motion_detected_INST_0_i_108_n_0
    );
motion_detected_INST_0_i_77: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(15),
      I1 => \slv_reg4_reg_n_0_[15]\,
      I2 => slv_reg50(14),
      I3 => \slv_reg4_reg_n_0_[14]\,
      O => motion_detected_INST_0_i_77_n_0
    );
motion_detected_INST_0_i_78: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(13),
      I1 => \slv_reg4_reg_n_0_[13]\,
      I2 => slv_reg50(12),
      I3 => \slv_reg4_reg_n_0_[12]\,
      O => motion_detected_INST_0_i_78_n_0
    );
motion_detected_INST_0_i_79: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(11),
      I1 => \slv_reg4_reg_n_0_[11]\,
      I2 => slv_reg50(10),
      I3 => \slv_reg4_reg_n_0_[10]\,
      O => motion_detected_INST_0_i_79_n_0
    );
motion_detected_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[25]\,
      I1 => \slv_reg5_reg[27]_i_3_n_6\,
      I2 => \slv_reg5_reg[27]_i_3_n_7\,
      I3 => \slv_reg4_reg_n_0_[24]\,
      O => motion_detected_INST_0_i_8_n_0
    );
motion_detected_INST_0_i_80: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => slv_reg50(9),
      I1 => \slv_reg4_reg_n_0_[9]\,
      I2 => slv_reg50(8),
      I3 => \slv_reg4_reg_n_0_[8]\,
      O => motion_detected_INST_0_i_80_n_0
    );
motion_detected_INST_0_i_81: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[15]\,
      I1 => slv_reg50(15),
      I2 => \slv_reg4_reg_n_0_[14]\,
      I3 => slv_reg50(14),
      O => motion_detected_INST_0_i_81_n_0
    );
motion_detected_INST_0_i_82: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[13]\,
      I1 => slv_reg50(13),
      I2 => \slv_reg4_reg_n_0_[12]\,
      I3 => slv_reg50(12),
      O => motion_detected_INST_0_i_82_n_0
    );
motion_detected_INST_0_i_83: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[11]\,
      I1 => slv_reg50(11),
      I2 => \slv_reg4_reg_n_0_[10]\,
      I3 => slv_reg50(10),
      O => motion_detected_INST_0_i_83_n_0
    );
motion_detected_INST_0_i_84: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[9]\,
      I1 => slv_reg50(9),
      I2 => \slv_reg4_reg_n_0_[8]\,
      I3 => slv_reg50(8),
      O => motion_detected_INST_0_i_84_n_0
    );
motion_detected_INST_0_i_85: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[7]\,
      I1 => \slv_reg5_reg[7]_i_4_n_4\,
      I2 => \slv_reg5_reg[7]_i_4_n_5\,
      I3 => \slv_reg4_reg_n_0_[6]\,
      O => motion_detected_INST_0_i_85_n_0
    );
motion_detected_INST_0_i_86: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[5]\,
      I1 => \slv_reg5_reg[7]_i_4_n_6\,
      I2 => \slv_reg5_reg[7]_i_4_n_7\,
      I3 => \slv_reg4_reg_n_0_[4]\,
      O => motion_detected_INST_0_i_86_n_0
    );
motion_detected_INST_0_i_87: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[3]\,
      I1 => \slv_reg5_reg[3]_i_3_n_4\,
      I2 => \slv_reg5_reg[3]_i_3_n_5\,
      I3 => \slv_reg4_reg_n_0_[2]\,
      O => motion_detected_INST_0_i_87_n_0
    );
motion_detected_INST_0_i_88: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \slv_reg4_reg_n_0_[1]\,
      I1 => \slv_reg5_reg[3]_i_3_n_6\,
      I2 => \slv_reg5_reg[3]_i_3_n_7\,
      I3 => \slv_reg4_reg_n_0_[0]\,
      O => motion_detected_INST_0_i_88_n_0
    );
motion_detected_INST_0_i_89: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[7]_i_4_n_4\,
      I1 => \slv_reg4_reg_n_0_[7]\,
      I2 => \slv_reg5_reg[7]_i_4_n_5\,
      I3 => \slv_reg4_reg_n_0_[6]\,
      O => motion_detected_INST_0_i_89_n_0
    );
motion_detected_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[31]_i_8_n_4\,
      I1 => \slv_reg4_reg_n_0_[31]\,
      I2 => \slv_reg5_reg[31]_i_8_n_5\,
      I3 => \slv_reg4_reg_n_0_[30]\,
      O => motion_detected_INST_0_i_9_n_0
    );
motion_detected_INST_0_i_90: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[7]_i_4_n_6\,
      I1 => \slv_reg4_reg_n_0_[5]\,
      I2 => \slv_reg5_reg[7]_i_4_n_7\,
      I3 => \slv_reg4_reg_n_0_[4]\,
      O => motion_detected_INST_0_i_90_n_0
    );
motion_detected_INST_0_i_91: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[3]_i_3_n_4\,
      I1 => \slv_reg4_reg_n_0_[3]\,
      I2 => \slv_reg5_reg[3]_i_3_n_5\,
      I3 => \slv_reg4_reg_n_0_[2]\,
      O => motion_detected_INST_0_i_91_n_0
    );
motion_detected_INST_0_i_92: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg5_reg[3]_i_3_n_6\,
      I1 => \slv_reg4_reg_n_0_[1]\,
      I2 => \slv_reg5_reg[3]_i_3_n_7\,
      I3 => \slv_reg4_reg_n_0_[0]\,
      O => motion_detected_INST_0_i_92_n_0
    );
motion_detected_INST_0_i_93: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(7),
      I1 => \^gray2[31]\(7),
      I2 => \^gray1[31]\(6),
      I3 => \^gray2[31]\(6),
      O => motion_detected_INST_0_i_93_n_0
    );
motion_detected_INST_0_i_94: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(5),
      I1 => \^gray2[31]\(5),
      I2 => \^gray1[31]\(4),
      I3 => \^gray2[31]\(4),
      O => motion_detected_INST_0_i_94_n_0
    );
motion_detected_INST_0_i_95: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(3),
      I1 => \^gray2[31]\(3),
      I2 => \^gray1[31]\(2),
      I3 => \^gray2[31]\(2),
      O => motion_detected_INST_0_i_95_n_0
    );
motion_detected_INST_0_i_96: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(1),
      I1 => \^gray2[31]\(1),
      I2 => \^gray1[31]\(0),
      I3 => \^gray2[31]\(0),
      O => motion_detected_INST_0_i_96_n_0
    );
motion_detected_INST_0_i_97: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(7),
      I1 => \^gray1[31]\(7),
      I2 => \^gray2[31]\(6),
      I3 => \^gray1[31]\(6),
      O => motion_detected_INST_0_i_97_n_0
    );
motion_detected_INST_0_i_98: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(5),
      I1 => \^gray1[31]\(5),
      I2 => \^gray2[31]\(4),
      I3 => \^gray1[31]\(4),
      O => motion_detected_INST_0_i_98_n_0
    );
motion_detected_INST_0_i_99: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(3),
      I1 => \^gray1[31]\(3),
      I2 => \^gray2[31]\(2),
      I3 => \^gray1[31]\(2),
      O => motion_detected_INST_0_i_99_n_0
    );
\nextState_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_3_n_6,
      G => \nextState_reg[4]_i_2_n_0\,
      GE => '1',
      Q => nextState(0)
    );
\nextState_reg[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => overlayDelayCounter_reg(31),
      I1 => overlayDelayCounter_reg(12),
      I2 => overlayDelayCounter_reg(15),
      I3 => overlayDelayCounter_reg(10),
      O => \nextState_reg[0]_i_10_n_0\
    );
\nextState_reg[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => overlayDelayCounter_reg(29),
      I1 => overlayDelayCounter_reg(20),
      I2 => overlayDelayCounter_reg(19),
      I3 => overlayDelayCounter_reg(7),
      O => \nextState_reg[0]_i_11_n_0\
    );
\nextState_reg[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => overlayDelayCounter_reg(24),
      I1 => overlayDelayCounter_reg(23),
      I2 => overlayDelayCounter_reg(26),
      I3 => overlayDelayCounter_reg(16),
      O => \nextState_reg[0]_i_12_n_0\
    );
\nextState_reg[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => overlayDelayCounter_reg(30),
      I1 => overlayDelayCounter_reg(25),
      I2 => overlayDelayCounter_reg(8),
      I3 => overlayDelayCounter_reg(21),
      I4 => overlayDelayCounter_reg(13),
      I5 => overlayDelayCounter_reg(14),
      O => \nextState_reg[0]_i_13_n_0\
    );
\nextState_reg[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \nextState_reg[0]_i_3_n_0\
    );
\nextState_reg[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \nextState_reg[0]_i_5_n_0\
    );
\nextState_reg[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \nextState_reg[0]_i_8_n_0\,
      I1 => \nextState_reg[0]_i_9_n_0\,
      I2 => \nextState_reg[0]_i_10_n_0\,
      I3 => \nextState_reg[0]_i_11_n_0\,
      I4 => \nextState_reg[0]_i_12_n_0\,
      I5 => \nextState_reg[0]_i_13_n_0\,
      O => \nextState_reg[0]_i_7_n_0\
    );
\nextState_reg[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE0"
    )
        port map (
      I0 => overlayDelayCounter_reg(4),
      I1 => overlayDelayCounter_reg(5),
      I2 => overlayDelayCounter_reg(6),
      I3 => overlayDelayCounter_reg(9),
      I4 => overlayDelayCounter_reg(22),
      I5 => overlayDelayCounter_reg(11),
      O => \nextState_reg[0]_i_8_n_0\
    );
\nextState_reg[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => overlayDelayCounter_reg(28),
      I1 => overlayDelayCounter_reg(17),
      I2 => overlayDelayCounter_reg(27),
      I3 => overlayDelayCounter_reg(18),
      O => \nextState_reg[0]_i_9_n_0\
    );
\nextState_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_clear_n_6,
      G => \nextState_reg[4]_i_2_n_0\,
      GE => '1',
      Q => nextState(1)
    );
\nextState_reg[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clearDelay_reg(25),
      I1 => clearDelay_reg(11),
      I2 => clearDelay_reg(31),
      I3 => clearDelay_reg(15),
      O => \nextState_reg[1]_i_10_n_0\
    );
\nextState_reg[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE0"
    )
        port map (
      I0 => clearDelay_reg(4),
      I1 => clearDelay_reg(5),
      I2 => clearDelay_reg(6),
      I3 => clearDelay_reg(17),
      I4 => clearDelay_reg(26),
      I5 => clearDelay_reg(21),
      O => \nextState_reg[1]_i_11_n_0\
    );
\nextState_reg[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \nextState_reg[1]_i_14_n_0\,
      I1 => initS2MMClearSDelay_reg(18),
      I2 => initS2MMClearSDelay_reg(17),
      I3 => initS2MMClearSDelay_reg(19),
      I4 => initS2MMClearSDelay_reg(9),
      I5 => \nextState_reg[1]_i_15_n_0\,
      O => \nextState_reg[1]_i_12_n_0\
    );
\nextState_reg[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \nextState_reg[1]_i_16_n_0\,
      I1 => \nextState_reg[1]_i_17_n_0\,
      I2 => initS2MMClearSDelay_reg(28),
      I3 => initS2MMClearSDelay_reg(24),
      I4 => initS2MMClearSDelay_reg(29),
      I5 => initS2MMClearSDelay_reg(16),
      O => \nextState_reg[1]_i_13_n_0\
    );
\nextState_reg[1]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => initS2MMClearSDelay_reg(26),
      I1 => initS2MMClearSDelay_reg(25),
      I2 => initS2MMClearSDelay_reg(22),
      I3 => initS2MMClearSDelay_reg(12),
      O => \nextState_reg[1]_i_14_n_0\
    );
\nextState_reg[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE0"
    )
        port map (
      I0 => initS2MMClearSDelay_reg(4),
      I1 => initS2MMClearSDelay_reg(5),
      I2 => initS2MMClearSDelay_reg(6),
      I3 => initS2MMClearSDelay_reg(10),
      I4 => initS2MMClearSDelay_reg(14),
      I5 => initS2MMClearSDelay_reg(8),
      O => \nextState_reg[1]_i_15_n_0\
    );
\nextState_reg[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => initS2MMClearSDelay_reg(30),
      I1 => initS2MMClearSDelay_reg(23),
      I2 => initS2MMClearSDelay_reg(21),
      I3 => initS2MMClearSDelay_reg(27),
      I4 => initS2MMClearSDelay_reg(7),
      I5 => initS2MMClearSDelay_reg(15),
      O => \nextState_reg[1]_i_16_n_0\
    );
\nextState_reg[1]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => initS2MMClearSDelay_reg(20),
      I1 => initS2MMClearSDelay_reg(13),
      I2 => initS2MMClearSDelay_reg(31),
      I3 => initS2MMClearSDelay_reg(11),
      O => \nextState_reg[1]_i_17_n_0\
    );
\nextState_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \nextState_reg[1]_i_8_n_0\,
      I1 => \nextState_reg[1]_i_9_n_0\,
      I2 => clearDelay_reg(18),
      I3 => clearDelay_reg(9),
      I4 => clearDelay_reg(24),
      I5 => clearDelay_reg(20),
      O => \nextState_reg[1]_i_4_n_0\
    );
\nextState_reg[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \nextState_reg[1]_i_10_n_0\,
      I1 => clearDelay_reg(10),
      I2 => clearDelay_reg(7),
      I3 => clearDelay_reg(28),
      I4 => clearDelay_reg(16),
      I5 => \nextState_reg[1]_i_11_n_0\,
      O => \nextState_reg[1]_i_5_n_0\
    );
\nextState_reg[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202000FFFFFFFF"
    )
        port map (
      I0 => finish_send,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \nextState_reg[1]_i_12_n_0\,
      I4 => \nextState_reg[1]_i_13_n_0\,
      I5 => \^q\(3),
      O => \nextState_reg[1]_i_6_n_0\
    );
\nextState_reg[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => clearDelay_reg(13),
      I1 => clearDelay_reg(8),
      I2 => clearDelay_reg(12),
      I3 => clearDelay_reg(29),
      I4 => clearDelay_reg(19),
      I5 => clearDelay_reg(22),
      O => \nextState_reg[1]_i_8_n_0\
    );
\nextState_reg[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clearDelay_reg(27),
      I1 => clearDelay_reg(23),
      I2 => clearDelay_reg(30),
      I3 => clearDelay_reg(14),
      O => \nextState_reg[1]_i_9_n_0\
    );
\nextState_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_clear2_n_6,
      G => \nextState_reg[4]_i_2_n_0\,
      GE => '1',
      Q => nextState(2)
    );
\nextState_reg[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \nextState_reg[2]_i_16_n_0\,
      I1 => \nextState_reg[2]_i_17_n_0\,
      I2 => \nextState_reg[2]_i_18_n_0\,
      I3 => \nextState_reg[2]_i_19_n_0\,
      O => \nextState_reg[2]_i_10_n_0\
    );
\nextState_reg[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clearDelay2_reg(24),
      I1 => clearDelay2_reg(23),
      I2 => clearDelay2_reg(26),
      I3 => clearDelay2_reg(12),
      O => \nextState_reg[2]_i_12_n_0\
    );
\nextState_reg[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => clearDelay2_reg(4),
      I1 => clearDelay2_reg(21),
      I2 => clearDelay2_reg(6),
      I3 => clearDelay2_reg(10),
      O => \nextState_reg[2]_i_13_n_0\
    );
\nextState_reg[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clearDelay2_reg(20),
      I1 => clearDelay2_reg(9),
      I2 => clearDelay2_reg(15),
      I3 => clearDelay2_reg(8),
      O => \nextState_reg[2]_i_15_n_0\
    );
\nextState_reg[2]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[2]\,
      I1 => \slv_reg3_reg_n_0_[3]\,
      I2 => \slv_reg3_reg_n_0_[0]\,
      I3 => \slv_reg3_reg_n_0_[31]\,
      I4 => \nextState_reg[2]_i_21_n_0\,
      O => \nextState_reg[2]_i_16_n_0\
    );
\nextState_reg[2]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[8]\,
      I1 => \slv_reg3_reg_n_0_[11]\,
      I2 => \slv_reg3_reg_n_0_[9]\,
      I3 => \slv_reg3_reg_n_0_[10]\,
      I4 => \nextState_reg[2]_i_22_n_0\,
      O => \nextState_reg[2]_i_17_n_0\
    );
\nextState_reg[2]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[24]\,
      I1 => \slv_reg3_reg_n_0_[27]\,
      I2 => \slv_reg3_reg_n_0_[25]\,
      I3 => \slv_reg3_reg_n_0_[26]\,
      I4 => \nextState_reg[2]_i_23_n_0\,
      O => \nextState_reg[2]_i_18_n_0\
    );
\nextState_reg[2]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[16]\,
      I1 => \slv_reg3_reg_n_0_[19]\,
      I2 => \slv_reg3_reg_n_0_[17]\,
      I3 => \slv_reg3_reg_n_0_[18]\,
      I4 => \nextState_reg[2]_i_24_n_0\,
      O => \nextState_reg[2]_i_19_n_0\
    );
\nextState_reg[2]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => \nextState_reg[2]_i_25_n_0\,
      CO(3) => nextState1,
      CO(2) => \nextState_reg[2]_i_20_n_1\,
      CO(1) => \nextState_reg[2]_i_20_n_2\,
      CO(0) => \nextState_reg[2]_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \nextState_reg[2]_i_26_n_0\,
      DI(2) => \nextState_reg[2]_i_27_n_0\,
      DI(1) => \nextState_reg[2]_i_28_n_0\,
      DI(0) => \nextState_reg[2]_i_29_n_0\,
      O(3 downto 0) => \NLW_nextState_reg[2]_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \nextState_reg[2]_i_30_n_0\,
      S(2) => \nextState_reg[2]_i_31_n_0\,
      S(1) => \nextState_reg[2]_i_32_n_0\,
      S(0) => \nextState_reg[2]_i_33_n_0\
    );
\nextState_reg[2]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[5]\,
      I1 => \slv_reg3_reg_n_0_[4]\,
      I2 => \slv_reg3_reg_n_0_[7]\,
      I3 => \slv_reg3_reg_n_0_[6]\,
      O => \nextState_reg[2]_i_21_n_0\
    );
\nextState_reg[2]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[13]\,
      I1 => \slv_reg3_reg_n_0_[12]\,
      I2 => \slv_reg3_reg_n_0_[15]\,
      I3 => \slv_reg3_reg_n_0_[14]\,
      O => \nextState_reg[2]_i_22_n_0\
    );
\nextState_reg[2]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[1]\,
      I1 => \slv_reg3_reg_n_0_[30]\,
      I2 => \slv_reg3_reg_n_0_[29]\,
      I3 => \slv_reg3_reg_n_0_[28]\,
      O => \nextState_reg[2]_i_23_n_0\
    );
\nextState_reg[2]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[21]\,
      I1 => \slv_reg3_reg_n_0_[20]\,
      I2 => \slv_reg3_reg_n_0_[23]\,
      I3 => \slv_reg3_reg_n_0_[22]\,
      O => \nextState_reg[2]_i_24_n_0\
    );
\nextState_reg[2]_i_25\: unisim.vcomponents.CARRY4
     port map (
      CI => \nextState_reg[2]_i_34_n_0\,
      CO(3) => \nextState_reg[2]_i_25_n_0\,
      CO(2) => \nextState_reg[2]_i_25_n_1\,
      CO(1) => \nextState_reg[2]_i_25_n_2\,
      CO(0) => \nextState_reg[2]_i_25_n_3\,
      CYINIT => '0',
      DI(3) => \nextState_reg[2]_i_35_n_0\,
      DI(2) => \nextState_reg[2]_i_36_n_0\,
      DI(1) => \nextState_reg[2]_i_37_n_0\,
      DI(0) => \nextState_reg[2]_i_38_n_0\,
      O(3 downto 0) => \NLW_nextState_reg[2]_i_25_O_UNCONNECTED\(3 downto 0),
      S(3) => \nextState_reg[2]_i_39_n_0\,
      S(2) => \nextState_reg[2]_i_40_n_0\,
      S(1) => \nextState_reg[2]_i_41_n_0\,
      S(0) => \nextState_reg[2]_i_42_n_0\
    );
\nextState_reg[2]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[31]\,
      I1 => delayCounter_reg(31),
      I2 => \slv_reg7_reg_n_0_[30]\,
      I3 => delayCounter_reg(30),
      O => \nextState_reg[2]_i_26_n_0\
    );
\nextState_reg[2]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[29]\,
      I1 => delayCounter_reg(29),
      I2 => \slv_reg7_reg_n_0_[28]\,
      I3 => delayCounter_reg(28),
      O => \nextState_reg[2]_i_27_n_0\
    );
\nextState_reg[2]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[27]\,
      I1 => delayCounter_reg(27),
      I2 => \slv_reg7_reg_n_0_[26]\,
      I3 => delayCounter_reg(26),
      O => \nextState_reg[2]_i_28_n_0\
    );
\nextState_reg[2]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[25]\,
      I1 => delayCounter_reg(25),
      I2 => \slv_reg7_reg_n_0_[24]\,
      I3 => delayCounter_reg(24),
      O => \nextState_reg[2]_i_29_n_0\
    );
\nextState_reg[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \nextState_reg[2]_i_3_n_0\
    );
\nextState_reg[2]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(31),
      I1 => \slv_reg7_reg_n_0_[31]\,
      I2 => delayCounter_reg(30),
      I3 => \slv_reg7_reg_n_0_[30]\,
      O => \nextState_reg[2]_i_30_n_0\
    );
\nextState_reg[2]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(29),
      I1 => \slv_reg7_reg_n_0_[29]\,
      I2 => delayCounter_reg(28),
      I3 => \slv_reg7_reg_n_0_[28]\,
      O => \nextState_reg[2]_i_31_n_0\
    );
\nextState_reg[2]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(27),
      I1 => \slv_reg7_reg_n_0_[27]\,
      I2 => delayCounter_reg(26),
      I3 => \slv_reg7_reg_n_0_[26]\,
      O => \nextState_reg[2]_i_32_n_0\
    );
\nextState_reg[2]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(25),
      I1 => \slv_reg7_reg_n_0_[25]\,
      I2 => delayCounter_reg(24),
      I3 => \slv_reg7_reg_n_0_[24]\,
      O => \nextState_reg[2]_i_33_n_0\
    );
\nextState_reg[2]_i_34\: unisim.vcomponents.CARRY4
     port map (
      CI => \nextState_reg[2]_i_43_n_0\,
      CO(3) => \nextState_reg[2]_i_34_n_0\,
      CO(2) => \nextState_reg[2]_i_34_n_1\,
      CO(1) => \nextState_reg[2]_i_34_n_2\,
      CO(0) => \nextState_reg[2]_i_34_n_3\,
      CYINIT => '0',
      DI(3) => \nextState_reg[2]_i_44_n_0\,
      DI(2) => \nextState_reg[2]_i_45_n_0\,
      DI(1) => \nextState_reg[2]_i_46_n_0\,
      DI(0) => \nextState_reg[2]_i_47_n_0\,
      O(3 downto 0) => \NLW_nextState_reg[2]_i_34_O_UNCONNECTED\(3 downto 0),
      S(3) => \nextState_reg[2]_i_48_n_0\,
      S(2) => \nextState_reg[2]_i_49_n_0\,
      S(1) => \nextState_reg[2]_i_50_n_0\,
      S(0) => \nextState_reg[2]_i_51_n_0\
    );
\nextState_reg[2]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[23]\,
      I1 => delayCounter_reg(23),
      I2 => \slv_reg7_reg_n_0_[22]\,
      I3 => delayCounter_reg(22),
      O => \nextState_reg[2]_i_35_n_0\
    );
\nextState_reg[2]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[21]\,
      I1 => delayCounter_reg(21),
      I2 => \slv_reg7_reg_n_0_[20]\,
      I3 => delayCounter_reg(20),
      O => \nextState_reg[2]_i_36_n_0\
    );
\nextState_reg[2]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[19]\,
      I1 => delayCounter_reg(19),
      I2 => \slv_reg7_reg_n_0_[18]\,
      I3 => delayCounter_reg(18),
      O => \nextState_reg[2]_i_37_n_0\
    );
\nextState_reg[2]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[17]\,
      I1 => delayCounter_reg(17),
      I2 => \slv_reg7_reg_n_0_[16]\,
      I3 => delayCounter_reg(16),
      O => \nextState_reg[2]_i_38_n_0\
    );
\nextState_reg[2]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(23),
      I1 => \slv_reg7_reg_n_0_[23]\,
      I2 => delayCounter_reg(22),
      I3 => \slv_reg7_reg_n_0_[22]\,
      O => \nextState_reg[2]_i_39_n_0\
    );
\nextState_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000044444440444"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^motion_detected\,
      I3 => \^finish_read2\,
      I4 => \^q\(0),
      I5 => \nextState_reg[2]_i_10_n_0\,
      O => \nextState_reg[2]_i_4_n_0\
    );
\nextState_reg[2]_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(21),
      I1 => \slv_reg7_reg_n_0_[21]\,
      I2 => delayCounter_reg(20),
      I3 => \slv_reg7_reg_n_0_[20]\,
      O => \nextState_reg[2]_i_40_n_0\
    );
\nextState_reg[2]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(19),
      I1 => \slv_reg7_reg_n_0_[19]\,
      I2 => delayCounter_reg(18),
      I3 => \slv_reg7_reg_n_0_[18]\,
      O => \nextState_reg[2]_i_41_n_0\
    );
\nextState_reg[2]_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(17),
      I1 => \slv_reg7_reg_n_0_[17]\,
      I2 => delayCounter_reg(16),
      I3 => \slv_reg7_reg_n_0_[16]\,
      O => \nextState_reg[2]_i_42_n_0\
    );
\nextState_reg[2]_i_43\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \nextState_reg[2]_i_43_n_0\,
      CO(2) => \nextState_reg[2]_i_43_n_1\,
      CO(1) => \nextState_reg[2]_i_43_n_2\,
      CO(0) => \nextState_reg[2]_i_43_n_3\,
      CYINIT => '1',
      DI(3) => \nextState_reg[2]_i_52_n_0\,
      DI(2) => \nextState_reg[2]_i_53_n_0\,
      DI(1) => \nextState_reg[2]_i_54_n_0\,
      DI(0) => \nextState_reg[2]_i_55_n_0\,
      O(3 downto 0) => \NLW_nextState_reg[2]_i_43_O_UNCONNECTED\(3 downto 0),
      S(3) => \nextState_reg[2]_i_56_n_0\,
      S(2) => \nextState_reg[2]_i_57_n_0\,
      S(1) => \nextState_reg[2]_i_58_n_0\,
      S(0) => \nextState_reg[2]_i_59_n_0\
    );
\nextState_reg[2]_i_44\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[15]\,
      I1 => delayCounter_reg(15),
      I2 => \slv_reg7_reg_n_0_[14]\,
      I3 => delayCounter_reg(14),
      O => \nextState_reg[2]_i_44_n_0\
    );
\nextState_reg[2]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[13]\,
      I1 => delayCounter_reg(13),
      I2 => \slv_reg7_reg_n_0_[12]\,
      I3 => delayCounter_reg(12),
      O => \nextState_reg[2]_i_45_n_0\
    );
\nextState_reg[2]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[11]\,
      I1 => delayCounter_reg(11),
      I2 => \slv_reg7_reg_n_0_[10]\,
      I3 => delayCounter_reg(10),
      O => \nextState_reg[2]_i_46_n_0\
    );
\nextState_reg[2]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[9]\,
      I1 => delayCounter_reg(9),
      I2 => \slv_reg7_reg_n_0_[8]\,
      I3 => delayCounter_reg(8),
      O => \nextState_reg[2]_i_47_n_0\
    );
\nextState_reg[2]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(15),
      I1 => \slv_reg7_reg_n_0_[15]\,
      I2 => delayCounter_reg(14),
      I3 => \slv_reg7_reg_n_0_[14]\,
      O => \nextState_reg[2]_i_48_n_0\
    );
\nextState_reg[2]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(13),
      I1 => \slv_reg7_reg_n_0_[13]\,
      I2 => delayCounter_reg(12),
      I3 => \slv_reg7_reg_n_0_[12]\,
      O => \nextState_reg[2]_i_49_n_0\
    );
\nextState_reg[2]_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(11),
      I1 => \slv_reg7_reg_n_0_[11]\,
      I2 => delayCounter_reg(10),
      I3 => \slv_reg7_reg_n_0_[10]\,
      O => \nextState_reg[2]_i_50_n_0\
    );
\nextState_reg[2]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(9),
      I1 => \slv_reg7_reg_n_0_[9]\,
      I2 => delayCounter_reg(8),
      I3 => \slv_reg7_reg_n_0_[8]\,
      O => \nextState_reg[2]_i_51_n_0\
    );
\nextState_reg[2]_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[7]\,
      I1 => delayCounter_reg(7),
      I2 => \slv_reg7_reg_n_0_[6]\,
      I3 => delayCounter_reg(6),
      O => \nextState_reg[2]_i_52_n_0\
    );
\nextState_reg[2]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[5]\,
      I1 => delayCounter_reg(5),
      I2 => \slv_reg7_reg_n_0_[4]\,
      I3 => delayCounter_reg(4),
      O => \nextState_reg[2]_i_53_n_0\
    );
\nextState_reg[2]_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[3]\,
      I1 => delayCounter_reg(3),
      I2 => \slv_reg7_reg_n_0_[2]\,
      I3 => delayCounter_reg(2),
      O => \nextState_reg[2]_i_54_n_0\
    );
\nextState_reg[2]_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \slv_reg7_reg_n_0_[1]\,
      I1 => delayCounter_reg(1),
      I2 => \slv_reg7_reg_n_0_[0]\,
      I3 => delayCounter_reg(0),
      O => \nextState_reg[2]_i_55_n_0\
    );
\nextState_reg[2]_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(7),
      I1 => \slv_reg7_reg_n_0_[7]\,
      I2 => delayCounter_reg(6),
      I3 => \slv_reg7_reg_n_0_[6]\,
      O => \nextState_reg[2]_i_56_n_0\
    );
\nextState_reg[2]_i_57\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(5),
      I1 => \slv_reg7_reg_n_0_[5]\,
      I2 => delayCounter_reg(4),
      I3 => \slv_reg7_reg_n_0_[4]\,
      O => \nextState_reg[2]_i_57_n_0\
    );
\nextState_reg[2]_i_58\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(3),
      I1 => \slv_reg7_reg_n_0_[3]\,
      I2 => delayCounter_reg(2),
      I3 => \slv_reg7_reg_n_0_[2]\,
      O => \nextState_reg[2]_i_58_n_0\
    );
\nextState_reg[2]_i_59\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => delayCounter_reg(1),
      I1 => \slv_reg7_reg_n_0_[1]\,
      I2 => delayCounter_reg(0),
      I3 => \slv_reg7_reg_n_0_[0]\,
      O => \nextState_reg[2]_i_59_n_0\
    );
\nextState_reg[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => clearDelay2_reg(2),
      I1 => clearDelay2_reg(7),
      I2 => \^q\(0),
      I3 => clearDelay2_reg(16),
      I4 => \nextState_reg[2]_i_12_n_0\,
      I5 => \nextState_reg[2]_i_13_n_0\,
      O => \nextState_reg[2]_i_6_n_0\
    );
\nextState_reg[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => clearDelay2_reg(19),
      I1 => clearDelay2_reg(27),
      I2 => clearDelay2_reg(13),
      I3 => clearDelay2_reg(25),
      I4 => \nextState_reg[2]_i_15_n_0\,
      O => \nextState_reg[2]_i_8_n_0\
    );
\nextState_reg[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => clearDelay2_reg(30),
      I1 => clearDelay2_reg(11),
      I2 => clearDelay2_reg(0),
      I3 => clearDelay2_reg(22),
      I4 => clearDelay2_reg(14),
      I5 => clearDelay2_reg(17),
      O => \nextState_reg[2]_i_9_n_0\
    );
\nextState_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_clear3_n_7,
      G => \nextState_reg[4]_i_2_n_0\,
      GE => '1',
      Q => nextState(3)
    );
\nextState_reg[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => clearDelay4_reg(2),
      I1 => clearDelay4_reg(3),
      I2 => clearDelay4_reg(4),
      I3 => clearDelay4_reg(6),
      I4 => \nextState_reg[3]_i_14_n_0\,
      O => \nextState_reg[3]_i_10_n_0\
    );
\nextState_reg[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => clearDelay4_reg(10),
      I1 => clearDelay4_reg(11),
      I2 => clearDelay4_reg(8),
      I3 => clearDelay4_reg(9),
      I4 => \nextState_reg[3]_i_15_n_0\,
      O => \nextState_reg[3]_i_11_n_0\
    );
\nextState_reg[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clearDelay4_reg(21),
      I1 => clearDelay4_reg(20),
      I2 => clearDelay4_reg(23),
      I3 => clearDelay4_reg(22),
      O => \nextState_reg[3]_i_12_n_0\
    );
\nextState_reg[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clearDelay4_reg(30),
      I1 => clearDelay4_reg(31),
      I2 => clearDelay4_reg(29),
      I3 => clearDelay4_reg(28),
      O => \nextState_reg[3]_i_13_n_0\
    );
\nextState_reg[3]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clearDelay4_reg(5),
      I1 => clearDelay4_reg(0),
      I2 => clearDelay4_reg(7),
      I3 => clearDelay4_reg(1),
      O => \nextState_reg[3]_i_14_n_0\
    );
\nextState_reg[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clearDelay4_reg(13),
      I1 => clearDelay4_reg(12),
      I2 => clearDelay4_reg(15),
      I3 => clearDelay4_reg(14),
      O => \nextState_reg[3]_i_15_n_0\
    );
\nextState_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^motion_detected\,
      I1 => \^finish_read2\,
      I2 => \nextState_reg[3]_i_6_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \nextState_reg[3]_i_3_n_0\
    );
\nextState_reg[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(4),
      O => \nextState_reg[3]_i_5_n_0\
    );
\nextState_reg[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      O => \nextState_reg[3]_i_6_n_0\
    );
\nextState_reg[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => clearDelay4_reg(18),
      I1 => clearDelay4_reg(19),
      I2 => clearDelay4_reg(16),
      I3 => clearDelay4_reg(17),
      I4 => \nextState_reg[3]_i_12_n_0\,
      O => \nextState_reg[3]_i_8_n_0\
    );
\nextState_reg[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => clearDelay4_reg(26),
      I1 => clearDelay4_reg(27),
      I2 => clearDelay4_reg(24),
      I3 => clearDelay4_reg(25),
      I4 => \nextState_reg[3]_i_13_n_0\,
      O => \nextState_reg[3]_i_9_n_0\
    );
\nextState_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => write_clear3_n_6,
      G => \nextState_reg[4]_i_2_n_0\,
      GE => '1',
      Q => nextState(4)
    );
\nextState_reg[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => clearDelay3_reg(13),
      I1 => clearDelay3_reg(8),
      I2 => clearDelay3_reg(12),
      I3 => clearDelay3_reg(29),
      I4 => clearDelay3_reg(19),
      I5 => clearDelay3_reg(22),
      O => \nextState_reg[4]_i_10_n_0\
    );
\nextState_reg[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clearDelay3_reg(27),
      I1 => clearDelay3_reg(23),
      I2 => clearDelay3_reg(30),
      I3 => clearDelay3_reg(14),
      O => \nextState_reg[4]_i_11_n_0\
    );
\nextState_reg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5545455F"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(2),
      O => \nextState_reg[4]_i_2_n_0\
    );
\nextState_reg[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \nextState_reg[4]_i_8_n_0\,
      I1 => clearDelay3_reg(10),
      I2 => clearDelay3_reg(7),
      I3 => clearDelay3_reg(28),
      I4 => clearDelay3_reg(16),
      I5 => \nextState_reg[4]_i_9_n_0\,
      O => \nextState_reg[4]_i_6_n_0\
    );
\nextState_reg[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \nextState_reg[4]_i_10_n_0\,
      I1 => \nextState_reg[4]_i_11_n_0\,
      I2 => clearDelay3_reg(18),
      I3 => clearDelay3_reg(9),
      I4 => clearDelay3_reg(24),
      I5 => clearDelay3_reg(20),
      O => \nextState_reg[4]_i_7_n_0\
    );
\nextState_reg[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => clearDelay3_reg(25),
      I1 => clearDelay3_reg(11),
      I2 => clearDelay3_reg(31),
      I3 => clearDelay3_reg(15),
      O => \nextState_reg[4]_i_8_n_0\
    );
\nextState_reg[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE0"
    )
        port map (
      I0 => clearDelay3_reg(4),
      I1 => clearDelay3_reg(5),
      I2 => clearDelay3_reg(6),
      I3 => clearDelay3_reg(17),
      I4 => clearDelay3_reg(26),
      I5 => clearDelay3_reg(21),
      O => \nextState_reg[4]_i_9_n_0\
    );
\overlayDelayCounter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(2),
      O => transfer_length_offset(6)
    );
\overlayDelayCounter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \overlayDelayCounter_reg_n_0_[0]\,
      O => \overlayDelayCounter[0]_i_3_n_0\
    );
\overlayDelayCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[0]_i_2_n_7\,
      Q => \overlayDelayCounter_reg_n_0_[0]\,
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \overlayDelayCounter_reg[0]_i_2_n_0\,
      CO(2) => \overlayDelayCounter_reg[0]_i_2_n_1\,
      CO(1) => \overlayDelayCounter_reg[0]_i_2_n_2\,
      CO(0) => \overlayDelayCounter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \overlayDelayCounter_reg[0]_i_2_n_4\,
      O(2) => \overlayDelayCounter_reg[0]_i_2_n_5\,
      O(1) => \overlayDelayCounter_reg[0]_i_2_n_6\,
      O(0) => \overlayDelayCounter_reg[0]_i_2_n_7\,
      S(3) => \overlayDelayCounter_reg_n_0_[3]\,
      S(2) => \overlayDelayCounter_reg_n_0_[2]\,
      S(1) => \overlayDelayCounter_reg_n_0_[1]\,
      S(0) => \overlayDelayCounter[0]_i_3_n_0\
    );
\overlayDelayCounter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[8]_i_1_n_5\,
      Q => overlayDelayCounter_reg(10),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[8]_i_1_n_4\,
      Q => overlayDelayCounter_reg(11),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[12]_i_1_n_7\,
      Q => overlayDelayCounter_reg(12),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \overlayDelayCounter_reg[8]_i_1_n_0\,
      CO(3) => \overlayDelayCounter_reg[12]_i_1_n_0\,
      CO(2) => \overlayDelayCounter_reg[12]_i_1_n_1\,
      CO(1) => \overlayDelayCounter_reg[12]_i_1_n_2\,
      CO(0) => \overlayDelayCounter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \overlayDelayCounter_reg[12]_i_1_n_4\,
      O(2) => \overlayDelayCounter_reg[12]_i_1_n_5\,
      O(1) => \overlayDelayCounter_reg[12]_i_1_n_6\,
      O(0) => \overlayDelayCounter_reg[12]_i_1_n_7\,
      S(3 downto 0) => overlayDelayCounter_reg(15 downto 12)
    );
\overlayDelayCounter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[12]_i_1_n_6\,
      Q => overlayDelayCounter_reg(13),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[12]_i_1_n_5\,
      Q => overlayDelayCounter_reg(14),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[12]_i_1_n_4\,
      Q => overlayDelayCounter_reg(15),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[16]_i_1_n_7\,
      Q => overlayDelayCounter_reg(16),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \overlayDelayCounter_reg[12]_i_1_n_0\,
      CO(3) => \overlayDelayCounter_reg[16]_i_1_n_0\,
      CO(2) => \overlayDelayCounter_reg[16]_i_1_n_1\,
      CO(1) => \overlayDelayCounter_reg[16]_i_1_n_2\,
      CO(0) => \overlayDelayCounter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \overlayDelayCounter_reg[16]_i_1_n_4\,
      O(2) => \overlayDelayCounter_reg[16]_i_1_n_5\,
      O(1) => \overlayDelayCounter_reg[16]_i_1_n_6\,
      O(0) => \overlayDelayCounter_reg[16]_i_1_n_7\,
      S(3 downto 0) => overlayDelayCounter_reg(19 downto 16)
    );
\overlayDelayCounter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[16]_i_1_n_6\,
      Q => overlayDelayCounter_reg(17),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[16]_i_1_n_5\,
      Q => overlayDelayCounter_reg(18),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[16]_i_1_n_4\,
      Q => overlayDelayCounter_reg(19),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[0]_i_2_n_6\,
      Q => \overlayDelayCounter_reg_n_0_[1]\,
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[20]_i_1_n_7\,
      Q => overlayDelayCounter_reg(20),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \overlayDelayCounter_reg[16]_i_1_n_0\,
      CO(3) => \overlayDelayCounter_reg[20]_i_1_n_0\,
      CO(2) => \overlayDelayCounter_reg[20]_i_1_n_1\,
      CO(1) => \overlayDelayCounter_reg[20]_i_1_n_2\,
      CO(0) => \overlayDelayCounter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \overlayDelayCounter_reg[20]_i_1_n_4\,
      O(2) => \overlayDelayCounter_reg[20]_i_1_n_5\,
      O(1) => \overlayDelayCounter_reg[20]_i_1_n_6\,
      O(0) => \overlayDelayCounter_reg[20]_i_1_n_7\,
      S(3 downto 0) => overlayDelayCounter_reg(23 downto 20)
    );
\overlayDelayCounter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[20]_i_1_n_6\,
      Q => overlayDelayCounter_reg(21),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[20]_i_1_n_5\,
      Q => overlayDelayCounter_reg(22),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[20]_i_1_n_4\,
      Q => overlayDelayCounter_reg(23),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[24]_i_1_n_7\,
      Q => overlayDelayCounter_reg(24),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \overlayDelayCounter_reg[20]_i_1_n_0\,
      CO(3) => \overlayDelayCounter_reg[24]_i_1_n_0\,
      CO(2) => \overlayDelayCounter_reg[24]_i_1_n_1\,
      CO(1) => \overlayDelayCounter_reg[24]_i_1_n_2\,
      CO(0) => \overlayDelayCounter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \overlayDelayCounter_reg[24]_i_1_n_4\,
      O(2) => \overlayDelayCounter_reg[24]_i_1_n_5\,
      O(1) => \overlayDelayCounter_reg[24]_i_1_n_6\,
      O(0) => \overlayDelayCounter_reg[24]_i_1_n_7\,
      S(3 downto 0) => overlayDelayCounter_reg(27 downto 24)
    );
\overlayDelayCounter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[24]_i_1_n_6\,
      Q => overlayDelayCounter_reg(25),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[24]_i_1_n_5\,
      Q => overlayDelayCounter_reg(26),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[24]_i_1_n_4\,
      Q => overlayDelayCounter_reg(27),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[28]_i_1_n_7\,
      Q => overlayDelayCounter_reg(28),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \overlayDelayCounter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_overlayDelayCounter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \overlayDelayCounter_reg[28]_i_1_n_1\,
      CO(1) => \overlayDelayCounter_reg[28]_i_1_n_2\,
      CO(0) => \overlayDelayCounter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \overlayDelayCounter_reg[28]_i_1_n_4\,
      O(2) => \overlayDelayCounter_reg[28]_i_1_n_5\,
      O(1) => \overlayDelayCounter_reg[28]_i_1_n_6\,
      O(0) => \overlayDelayCounter_reg[28]_i_1_n_7\,
      S(3 downto 0) => overlayDelayCounter_reg(31 downto 28)
    );
\overlayDelayCounter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[28]_i_1_n_6\,
      Q => overlayDelayCounter_reg(29),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[0]_i_2_n_5\,
      Q => \overlayDelayCounter_reg_n_0_[2]\,
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[28]_i_1_n_5\,
      Q => overlayDelayCounter_reg(30),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[28]_i_1_n_4\,
      Q => overlayDelayCounter_reg(31),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[0]_i_2_n_4\,
      Q => \overlayDelayCounter_reg_n_0_[3]\,
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[4]_i_1_n_7\,
      Q => overlayDelayCounter_reg(4),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \overlayDelayCounter_reg[0]_i_2_n_0\,
      CO(3) => \overlayDelayCounter_reg[4]_i_1_n_0\,
      CO(2) => \overlayDelayCounter_reg[4]_i_1_n_1\,
      CO(1) => \overlayDelayCounter_reg[4]_i_1_n_2\,
      CO(0) => \overlayDelayCounter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \overlayDelayCounter_reg[4]_i_1_n_4\,
      O(2) => \overlayDelayCounter_reg[4]_i_1_n_5\,
      O(1) => \overlayDelayCounter_reg[4]_i_1_n_6\,
      O(0) => \overlayDelayCounter_reg[4]_i_1_n_7\,
      S(3 downto 0) => overlayDelayCounter_reg(7 downto 4)
    );
\overlayDelayCounter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[4]_i_1_n_6\,
      Q => overlayDelayCounter_reg(5),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[4]_i_1_n_5\,
      Q => overlayDelayCounter_reg(6),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[4]_i_1_n_4\,
      Q => overlayDelayCounter_reg(7),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[8]_i_1_n_7\,
      Q => overlayDelayCounter_reg(8),
      R => start1_i_1_n_0
    );
\overlayDelayCounter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \overlayDelayCounter_reg[4]_i_1_n_0\,
      CO(3) => \overlayDelayCounter_reg[8]_i_1_n_0\,
      CO(2) => \overlayDelayCounter_reg[8]_i_1_n_1\,
      CO(1) => \overlayDelayCounter_reg[8]_i_1_n_2\,
      CO(0) => \overlayDelayCounter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \overlayDelayCounter_reg[8]_i_1_n_4\,
      O(2) => \overlayDelayCounter_reg[8]_i_1_n_5\,
      O(1) => \overlayDelayCounter_reg[8]_i_1_n_6\,
      O(0) => \overlayDelayCounter_reg[8]_i_1_n_7\,
      S(3 downto 0) => overlayDelayCounter_reg(11 downto 8)
    );
\overlayDelayCounter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_length_offset(6),
      D => \overlayDelayCounter_reg[8]_i_1_n_6\,
      Q => overlayDelayCounter_reg(9),
      R => start1_i_1_n_0
    );
\pixel_word_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFF9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => pixel_word_count1,
      O => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_word_count_reg(0),
      O => \pixel_word_count[0]_i_3_n_0\
    );
\pixel_word_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[0]_i_2_n_7\,
      Q => pixel_word_count_reg(0),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pixel_word_count_reg[0]_i_2_n_0\,
      CO(2) => \pixel_word_count_reg[0]_i_2_n_1\,
      CO(1) => \pixel_word_count_reg[0]_i_2_n_2\,
      CO(0) => \pixel_word_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pixel_word_count_reg[0]_i_2_n_4\,
      O(2) => \pixel_word_count_reg[0]_i_2_n_5\,
      O(1) => \pixel_word_count_reg[0]_i_2_n_6\,
      O(0) => \pixel_word_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => pixel_word_count_reg(3 downto 1),
      S(0) => \pixel_word_count[0]_i_3_n_0\
    );
\pixel_word_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[8]_i_1_n_5\,
      Q => pixel_word_count_reg(10),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[8]_i_1_n_4\,
      Q => pixel_word_count_reg(11),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[12]_i_1_n_7\,
      Q => pixel_word_count_reg(12),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_word_count_reg[8]_i_1_n_0\,
      CO(3) => \pixel_word_count_reg[12]_i_1_n_0\,
      CO(2) => \pixel_word_count_reg[12]_i_1_n_1\,
      CO(1) => \pixel_word_count_reg[12]_i_1_n_2\,
      CO(0) => \pixel_word_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pixel_word_count_reg[12]_i_1_n_4\,
      O(2) => \pixel_word_count_reg[12]_i_1_n_5\,
      O(1) => \pixel_word_count_reg[12]_i_1_n_6\,
      O(0) => \pixel_word_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => pixel_word_count_reg(15 downto 12)
    );
\pixel_word_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[12]_i_1_n_6\,
      Q => pixel_word_count_reg(13),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[12]_i_1_n_5\,
      Q => pixel_word_count_reg(14),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[12]_i_1_n_4\,
      Q => pixel_word_count_reg(15),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[16]_i_1_n_7\,
      Q => pixel_word_count_reg(16),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_word_count_reg[12]_i_1_n_0\,
      CO(3) => \pixel_word_count_reg[16]_i_1_n_0\,
      CO(2) => \pixel_word_count_reg[16]_i_1_n_1\,
      CO(1) => \pixel_word_count_reg[16]_i_1_n_2\,
      CO(0) => \pixel_word_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pixel_word_count_reg[16]_i_1_n_4\,
      O(2) => \pixel_word_count_reg[16]_i_1_n_5\,
      O(1) => \pixel_word_count_reg[16]_i_1_n_6\,
      O(0) => \pixel_word_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => pixel_word_count_reg(19 downto 16)
    );
\pixel_word_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[16]_i_1_n_6\,
      Q => pixel_word_count_reg(17),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[16]_i_1_n_5\,
      Q => pixel_word_count_reg(18),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[16]_i_1_n_4\,
      Q => pixel_word_count_reg(19),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[0]_i_2_n_6\,
      Q => pixel_word_count_reg(1),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[20]_i_1_n_7\,
      Q => pixel_word_count_reg(20),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_word_count_reg[16]_i_1_n_0\,
      CO(3) => \pixel_word_count_reg[20]_i_1_n_0\,
      CO(2) => \pixel_word_count_reg[20]_i_1_n_1\,
      CO(1) => \pixel_word_count_reg[20]_i_1_n_2\,
      CO(0) => \pixel_word_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pixel_word_count_reg[20]_i_1_n_4\,
      O(2) => \pixel_word_count_reg[20]_i_1_n_5\,
      O(1) => \pixel_word_count_reg[20]_i_1_n_6\,
      O(0) => \pixel_word_count_reg[20]_i_1_n_7\,
      S(3 downto 0) => pixel_word_count_reg(23 downto 20)
    );
\pixel_word_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[20]_i_1_n_6\,
      Q => pixel_word_count_reg(21),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[20]_i_1_n_5\,
      Q => pixel_word_count_reg(22),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[20]_i_1_n_4\,
      Q => pixel_word_count_reg(23),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[24]_i_1_n_7\,
      Q => pixel_word_count_reg(24),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_word_count_reg[20]_i_1_n_0\,
      CO(3) => \pixel_word_count_reg[24]_i_1_n_0\,
      CO(2) => \pixel_word_count_reg[24]_i_1_n_1\,
      CO(1) => \pixel_word_count_reg[24]_i_1_n_2\,
      CO(0) => \pixel_word_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pixel_word_count_reg[24]_i_1_n_4\,
      O(2) => \pixel_word_count_reg[24]_i_1_n_5\,
      O(1) => \pixel_word_count_reg[24]_i_1_n_6\,
      O(0) => \pixel_word_count_reg[24]_i_1_n_7\,
      S(3 downto 0) => pixel_word_count_reg(27 downto 24)
    );
\pixel_word_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[24]_i_1_n_6\,
      Q => pixel_word_count_reg(25),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[24]_i_1_n_5\,
      Q => pixel_word_count_reg(26),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[24]_i_1_n_4\,
      Q => pixel_word_count_reg(27),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[28]_i_1_n_7\,
      Q => pixel_word_count_reg(28),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_word_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_pixel_word_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pixel_word_count_reg[28]_i_1_n_1\,
      CO(1) => \pixel_word_count_reg[28]_i_1_n_2\,
      CO(0) => \pixel_word_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pixel_word_count_reg[28]_i_1_n_4\,
      O(2) => \pixel_word_count_reg[28]_i_1_n_5\,
      O(1) => \pixel_word_count_reg[28]_i_1_n_6\,
      O(0) => \pixel_word_count_reg[28]_i_1_n_7\,
      S(3 downto 0) => pixel_word_count_reg(31 downto 28)
    );
\pixel_word_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[28]_i_1_n_6\,
      Q => pixel_word_count_reg(29),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[0]_i_2_n_5\,
      Q => pixel_word_count_reg(2),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[28]_i_1_n_5\,
      Q => pixel_word_count_reg(30),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[28]_i_1_n_4\,
      Q => pixel_word_count_reg(31),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[0]_i_2_n_4\,
      Q => pixel_word_count_reg(3),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[4]_i_1_n_7\,
      Q => pixel_word_count_reg(4),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_word_count_reg[0]_i_2_n_0\,
      CO(3) => \pixel_word_count_reg[4]_i_1_n_0\,
      CO(2) => \pixel_word_count_reg[4]_i_1_n_1\,
      CO(1) => \pixel_word_count_reg[4]_i_1_n_2\,
      CO(0) => \pixel_word_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pixel_word_count_reg[4]_i_1_n_4\,
      O(2) => \pixel_word_count_reg[4]_i_1_n_5\,
      O(1) => \pixel_word_count_reg[4]_i_1_n_6\,
      O(0) => \pixel_word_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => pixel_word_count_reg(7 downto 4)
    );
\pixel_word_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[4]_i_1_n_6\,
      Q => pixel_word_count_reg(5),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[4]_i_1_n_5\,
      Q => pixel_word_count_reg(6),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[4]_i_1_n_4\,
      Q => pixel_word_count_reg(7),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[8]_i_1_n_7\,
      Q => pixel_word_count_reg(8),
      R => \pixel_word_count[0]_i_1_n_0\
    );
\pixel_word_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_word_count_reg[4]_i_1_n_0\,
      CO(3) => \pixel_word_count_reg[8]_i_1_n_0\,
      CO(2) => \pixel_word_count_reg[8]_i_1_n_1\,
      CO(1) => \pixel_word_count_reg[8]_i_1_n_2\,
      CO(0) => \pixel_word_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pixel_word_count_reg[8]_i_1_n_4\,
      O(2) => \pixel_word_count_reg[8]_i_1_n_5\,
      O(1) => \pixel_word_count_reg[8]_i_1_n_6\,
      O(0) => \pixel_word_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => pixel_word_count_reg(11 downto 8)
    );
\pixel_word_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \pixel_word_count_reg[8]_i_1_n_6\,
      Q => pixel_word_count_reg(9),
      R => \pixel_word_count[0]_i_1_n_0\
    );
receive_1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \gray1[31]_i_1_n_0\,
      I1 => \^finish_read1\,
      I2 => p_0_in13_in,
      I3 => delay_S_AXI_TLAST_reg_n_0,
      O => receive_1_i_1_n_0
    );
receive_1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(4),
      O => p_0_in13_in
    );
receive_1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => receive_1_i_1_n_0,
      Q => \^finish_read1\,
      R => '0'
    );
receive_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \gray2[31]_i_1_n_0\,
      I1 => \^finish_read2\,
      I2 => p_0_in12_in,
      I3 => delay_S_AXI_TLAST_reg_n_0,
      O => receive_2_i_1_n_0
    );
receive_2_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(4),
      O => p_0_in12_in
    );
receive_2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => receive_2_i_1_n_0,
      Q => \^finish_read2\,
      R => '0'
    );
\rgb1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(12),
      Q => rgb1(12),
      R => '0'
    );
\rgb1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(13),
      Q => rgb1(13),
      R => '0'
    );
\rgb1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(14),
      Q => rgb1(14),
      R => '0'
    );
\rgb1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(15),
      Q => rgb1(15),
      R => '0'
    );
\rgb1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(17),
      Q => rgb1(17),
      R => '0'
    );
\rgb1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(18),
      Q => rgb1(18),
      R => '0'
    );
\rgb1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(19),
      Q => rgb1(19),
      R => '0'
    );
\rgb1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(20),
      Q => rgb1(20),
      R => '0'
    );
\rgb1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(21),
      Q => rgb1(21),
      R => '0'
    );
\rgb1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(22),
      Q => rgb1(22),
      R => '0'
    );
\rgb1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(23),
      Q => rgb1(23),
      R => '0'
    );
\rgb1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(26),
      Q => rgb1(26),
      R => '0'
    );
\rgb1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(27),
      Q => rgb1(27),
      R => '0'
    );
\rgb1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(28),
      Q => rgb1(28),
      R => '0'
    );
\rgb1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(29),
      Q => rgb1(29),
      R => '0'
    );
\rgb1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(2),
      Q => rgb1(2),
      R => '0'
    );
\rgb1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(30),
      Q => rgb1(30),
      R => '0'
    );
\rgb1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(31),
      Q => rgb1(31),
      R => '0'
    );
\rgb1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(3),
      Q => rgb1(3),
      R => '0'
    );
\rgb1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(4),
      Q => rgb1(4),
      R => '0'
    );
\rgb1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(5),
      Q => rgb1(5),
      R => '0'
    );
\rgb1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(6),
      Q => rgb1(6),
      R => '0'
    );
\rgb1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb2(7),
      Q => rgb1(7),
      R => '0'
    );
\rgb2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(10),
      Q => rgb2(10),
      R => '0'
    );
\rgb2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(11),
      Q => rgb2(11),
      R => '0'
    );
\rgb2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(12),
      Q => rgb2(12),
      R => '0'
    );
\rgb2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(13),
      Q => rgb2(13),
      R => '0'
    );
\rgb2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(14),
      Q => rgb2(14),
      R => '0'
    );
\rgb2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(15),
      Q => rgb2(15),
      R => '0'
    );
\rgb2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(17),
      Q => rgb2(17),
      R => '0'
    );
\rgb2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(18),
      Q => rgb2(18),
      R => '0'
    );
\rgb2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(19),
      Q => rgb2(19),
      R => '0'
    );
\rgb2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(1),
      Q => rgb2(1),
      R => '0'
    );
\rgb2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(20),
      Q => rgb2(20),
      R => '0'
    );
\rgb2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(21),
      Q => rgb2(21),
      R => '0'
    );
\rgb2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(22),
      Q => rgb2(22),
      R => '0'
    );
\rgb2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(23),
      Q => rgb2(23),
      R => '0'
    );
\rgb2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(25),
      Q => rgb2(25),
      R => '0'
    );
\rgb2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(26),
      Q => rgb2(26),
      R => '0'
    );
\rgb2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(27),
      Q => rgb2(27),
      R => '0'
    );
\rgb2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(28),
      Q => rgb2(28),
      R => '0'
    );
\rgb2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(29),
      Q => rgb2(29),
      R => '0'
    );
\rgb2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(2),
      Q => rgb2(2),
      R => '0'
    );
\rgb2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(30),
      Q => rgb2(30),
      R => '0'
    );
\rgb2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(31),
      Q => rgb2(31),
      R => '0'
    );
\rgb2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(3),
      Q => rgb2(3),
      R => '0'
    );
\rgb2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(4),
      Q => rgb2(4),
      R => '0'
    );
\rgb2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(5),
      Q => rgb2(5),
      R => '0'
    );
\rgb2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(6),
      Q => rgb2(6),
      R => '0'
    );
\rgb2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => rgb3(7),
      Q => rgb2(7),
      R => '0'
    );
\rgb3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(8),
      Q => rgb3(10),
      R => '0'
    );
\rgb3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(9),
      Q => rgb3(11),
      R => '0'
    );
\rgb3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(10),
      Q => rgb3(12),
      R => '0'
    );
\rgb3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(11),
      Q => rgb3(13),
      R => '0'
    );
\rgb3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(12),
      Q => rgb3(14),
      R => '0'
    );
\rgb3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(13),
      Q => rgb3(15),
      R => '0'
    );
\rgb3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(14),
      Q => rgb3(17),
      R => '0'
    );
\rgb3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(15),
      Q => rgb3(18),
      R => '0'
    );
\rgb3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(16),
      Q => rgb3(19),
      R => '0'
    );
\rgb3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(0),
      Q => rgb3(1),
      R => '0'
    );
\rgb3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(17),
      Q => rgb3(20),
      R => '0'
    );
\rgb3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(18),
      Q => rgb3(21),
      R => '0'
    );
\rgb3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(19),
      Q => rgb3(22),
      R => '0'
    );
\rgb3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(20),
      Q => rgb3(23),
      R => '0'
    );
\rgb3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(21),
      Q => rgb3(25),
      R => '0'
    );
\rgb3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(22),
      Q => rgb3(26),
      R => '0'
    );
\rgb3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(23),
      Q => rgb3(27),
      R => '0'
    );
\rgb3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(24),
      Q => rgb3(28),
      R => '0'
    );
\rgb3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(25),
      Q => rgb3(29),
      R => '0'
    );
\rgb3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(1),
      Q => rgb3(2),
      R => '0'
    );
\rgb3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(26),
      Q => rgb3(30),
      R => '0'
    );
\rgb3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(27),
      Q => rgb3(31),
      R => '0'
    );
\rgb3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(2),
      Q => rgb3(3),
      R => '0'
    );
\rgb3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(3),
      Q => rgb3(4),
      R => '0'
    );
\rgb3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(4),
      Q => rgb3(5),
      R => '0'
    );
\rgb3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(5),
      Q => rgb3(6),
      R => '0'
    );
\rgb3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(6),
      Q => rgb3(7),
      R => '0'
    );
\rgb3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => S_AXI_TVALID,
      D => S_AXI_TDATA(7),
      Q => rgb3(9),
      R => '0'
    );
\row_count[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg_n_0_[3]\,
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(3),
      O => \row_count[0]_i_2_n_0\
    );
\row_count[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg_n_0_[2]\,
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(2),
      O => \row_count[0]_i_3_n_0\
    );
\row_count[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg_n_0_[1]\,
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(1),
      O => \row_count[0]_i_4_n_0\
    );
\row_count[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => pixel_word_count1,
      I1 => \row_count_reg_n_0_[0]\,
      I2 => \^s_axi_tready\,
      O => \row_count[0]_i_5_n_0\
    );
\row_count[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => row_count_reg(15),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(15),
      O => \row_count[12]_i_2_n_0\
    );
\row_count[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => row_count_reg(14),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(14),
      O => \row_count[12]_i_3_n_0\
    );
\row_count[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => row_count_reg(13),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(13),
      O => \row_count[12]_i_4_n_0\
    );
\row_count[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => row_count_reg(12),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(12),
      O => \row_count[12]_i_5_n_0\
    );
\row_count[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg__0\(19),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(19),
      O => \row_count[16]_i_2_n_0\
    );
\row_count[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg__0\(18),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(18),
      O => \row_count[16]_i_3_n_0\
    );
\row_count[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg__0\(17),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(17),
      O => \row_count[16]_i_4_n_0\
    );
\row_count[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg__0\(16),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(16),
      O => \row_count[16]_i_5_n_0\
    );
\row_count[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg__0\(23),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(23),
      O => \row_count[20]_i_2_n_0\
    );
\row_count[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg__0\(22),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(22),
      O => \row_count[20]_i_3_n_0\
    );
\row_count[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg__0\(21),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(21),
      O => \row_count[20]_i_4_n_0\
    );
\row_count[20]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg__0\(20),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(20),
      O => \row_count[20]_i_5_n_0\
    );
\row_count[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg__0\(26),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(26),
      O => \row_count[24]_i_2_n_0\
    );
\row_count[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg__0\(25),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(25),
      O => \row_count[24]_i_3_n_0\
    );
\row_count[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg__0\(24),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(24),
      O => \row_count[24]_i_4_n_0\
    );
\row_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => row_count_reg(7),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(7),
      O => \row_count[4]_i_2_n_0\
    );
\row_count[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => row_count_reg(6),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(6),
      O => \row_count[4]_i_3_n_0\
    );
\row_count[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => row_count_reg(5),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(5),
      O => \row_count[4]_i_4_n_0\
    );
\row_count[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \row_count_reg_n_0_[4]\,
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(4),
      O => \row_count[4]_i_5_n_0\
    );
\row_count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => row_count_reg(11),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(11),
      O => \row_count[8]_i_2_n_0\
    );
\row_count[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => row_count_reg(10),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(10),
      O => \row_count[8]_i_3_n_0\
    );
\row_count[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => row_count_reg(9),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(9),
      O => \row_count[8]_i_4_n_0\
    );
\row_count[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => row_count_reg(8),
      I1 => \^s_axi_tready\,
      I2 => pixel_word_count1,
      I3 => row_count0(8),
      O => \row_count[8]_i_5_n_0\
    );
\row_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[0]_i_1_n_7\,
      Q => \row_count_reg_n_0_[0]\,
      R => '0'
    );
\row_count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \row_count_reg[0]_i_1_n_0\,
      CO(2) => \row_count_reg[0]_i_1_n_1\,
      CO(1) => \row_count_reg[0]_i_1_n_2\,
      CO(0) => \row_count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^s_axi_tready\,
      O(3) => \row_count_reg[0]_i_1_n_4\,
      O(2) => \row_count_reg[0]_i_1_n_5\,
      O(1) => \row_count_reg[0]_i_1_n_6\,
      O(0) => \row_count_reg[0]_i_1_n_7\,
      S(3) => \row_count[0]_i_2_n_0\,
      S(2) => \row_count[0]_i_3_n_0\,
      S(1) => \row_count[0]_i_4_n_0\,
      S(0) => \row_count[0]_i_5_n_0\
    );
\row_count_reg[0]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \row_count_reg[0]_i_6_n_0\,
      CO(2) => \row_count_reg[0]_i_6_n_1\,
      CO(1) => \row_count_reg[0]_i_6_n_2\,
      CO(0) => \row_count_reg[0]_i_6_n_3\,
      CYINIT => \row_count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => row_count0(4 downto 1),
      S(3) => \row_count_reg_n_0_[4]\,
      S(2) => \row_count_reg_n_0_[3]\,
      S(1) => \row_count_reg_n_0_[2]\,
      S(0) => \row_count_reg_n_0_[1]\
    );
\row_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[8]_i_1_n_5\,
      Q => row_count_reg(10),
      R => '0'
    );
\row_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[8]_i_1_n_4\,
      Q => row_count_reg(11),
      R => '0'
    );
\row_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[12]_i_1_n_7\,
      Q => row_count_reg(12),
      R => '0'
    );
\row_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_count_reg[8]_i_1_n_0\,
      CO(3) => \row_count_reg[12]_i_1_n_0\,
      CO(2) => \row_count_reg[12]_i_1_n_1\,
      CO(1) => \row_count_reg[12]_i_1_n_2\,
      CO(0) => \row_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_count_reg[12]_i_1_n_4\,
      O(2) => \row_count_reg[12]_i_1_n_5\,
      O(1) => \row_count_reg[12]_i_1_n_6\,
      O(0) => \row_count_reg[12]_i_1_n_7\,
      S(3) => \row_count[12]_i_2_n_0\,
      S(2) => \row_count[12]_i_3_n_0\,
      S(1) => \row_count[12]_i_4_n_0\,
      S(0) => \row_count[12]_i_5_n_0\
    );
\row_count_reg[12]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_count_reg[8]_i_6_n_0\,
      CO(3) => \row_count_reg[12]_i_6_n_0\,
      CO(2) => \row_count_reg[12]_i_6_n_1\,
      CO(1) => \row_count_reg[12]_i_6_n_2\,
      CO(0) => \row_count_reg[12]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => row_count0(16 downto 13),
      S(3) => \row_count_reg__0\(16),
      S(2 downto 0) => row_count_reg(15 downto 13)
    );
\row_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[12]_i_1_n_6\,
      Q => row_count_reg(13),
      R => '0'
    );
\row_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[12]_i_1_n_5\,
      Q => row_count_reg(14),
      R => '0'
    );
\row_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[12]_i_1_n_4\,
      Q => row_count_reg(15),
      R => '0'
    );
\row_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[16]_i_1_n_7\,
      Q => \row_count_reg__0\(16),
      R => '0'
    );
\row_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_count_reg[12]_i_1_n_0\,
      CO(3) => \row_count_reg[16]_i_1_n_0\,
      CO(2) => \row_count_reg[16]_i_1_n_1\,
      CO(1) => \row_count_reg[16]_i_1_n_2\,
      CO(0) => \row_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_count_reg[16]_i_1_n_4\,
      O(2) => \row_count_reg[16]_i_1_n_5\,
      O(1) => \row_count_reg[16]_i_1_n_6\,
      O(0) => \row_count_reg[16]_i_1_n_7\,
      S(3) => \row_count[16]_i_2_n_0\,
      S(2) => \row_count[16]_i_3_n_0\,
      S(1) => \row_count[16]_i_4_n_0\,
      S(0) => \row_count[16]_i_5_n_0\
    );
\row_count_reg[16]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_count_reg[12]_i_6_n_0\,
      CO(3) => \row_count_reg[16]_i_6_n_0\,
      CO(2) => \row_count_reg[16]_i_6_n_1\,
      CO(1) => \row_count_reg[16]_i_6_n_2\,
      CO(0) => \row_count_reg[16]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => row_count0(20 downto 17),
      S(3 downto 0) => \row_count_reg__0\(20 downto 17)
    );
\row_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[16]_i_1_n_6\,
      Q => \row_count_reg__0\(17),
      R => '0'
    );
\row_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[16]_i_1_n_5\,
      Q => \row_count_reg__0\(18),
      R => '0'
    );
\row_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[16]_i_1_n_4\,
      Q => \row_count_reg__0\(19),
      R => '0'
    );
\row_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[0]_i_1_n_6\,
      Q => \row_count_reg_n_0_[1]\,
      R => '0'
    );
\row_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[20]_i_1_n_7\,
      Q => \row_count_reg__0\(20),
      R => '0'
    );
\row_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_count_reg[16]_i_1_n_0\,
      CO(3) => \row_count_reg[20]_i_1_n_0\,
      CO(2) => \row_count_reg[20]_i_1_n_1\,
      CO(1) => \row_count_reg[20]_i_1_n_2\,
      CO(0) => \row_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_count_reg[20]_i_1_n_4\,
      O(2) => \row_count_reg[20]_i_1_n_5\,
      O(1) => \row_count_reg[20]_i_1_n_6\,
      O(0) => \row_count_reg[20]_i_1_n_7\,
      S(3) => \row_count[20]_i_2_n_0\,
      S(2) => \row_count[20]_i_3_n_0\,
      S(1) => \row_count[20]_i_4_n_0\,
      S(0) => \row_count[20]_i_5_n_0\
    );
\row_count_reg[20]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_count_reg[16]_i_6_n_0\,
      CO(3) => \row_count_reg[20]_i_6_n_0\,
      CO(2) => \row_count_reg[20]_i_6_n_1\,
      CO(1) => \row_count_reg[20]_i_6_n_2\,
      CO(0) => \row_count_reg[20]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => row_count0(24 downto 21),
      S(3 downto 0) => \row_count_reg__0\(24 downto 21)
    );
\row_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[20]_i_1_n_6\,
      Q => \row_count_reg__0\(21),
      R => '0'
    );
\row_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[20]_i_1_n_5\,
      Q => \row_count_reg__0\(22),
      R => '0'
    );
\row_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[20]_i_1_n_4\,
      Q => \row_count_reg__0\(23),
      R => '0'
    );
\row_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[24]_i_1_n_7\,
      Q => \row_count_reg__0\(24),
      R => '0'
    );
\row_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_count_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_row_count_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \row_count_reg[24]_i_1_n_2\,
      CO(0) => \row_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_row_count_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \row_count_reg[24]_i_1_n_5\,
      O(1) => \row_count_reg[24]_i_1_n_6\,
      O(0) => \row_count_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2) => \row_count[24]_i_2_n_0\,
      S(1) => \row_count[24]_i_3_n_0\,
      S(0) => \row_count[24]_i_4_n_0\
    );
\row_count_reg[24]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_count_reg[20]_i_6_n_0\,
      CO(3 downto 1) => \NLW_row_count_reg[24]_i_5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \row_count_reg[24]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_row_count_reg[24]_i_5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => row_count0(26 downto 25),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \row_count_reg__0\(26 downto 25)
    );
\row_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[24]_i_1_n_6\,
      Q => \row_count_reg__0\(25),
      R => '0'
    );
\row_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[24]_i_1_n_5\,
      Q => \row_count_reg__0\(26),
      R => '0'
    );
\row_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[0]_i_1_n_5\,
      Q => \row_count_reg_n_0_[2]\,
      R => '0'
    );
\row_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[0]_i_1_n_4\,
      Q => \row_count_reg_n_0_[3]\,
      R => '0'
    );
\row_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[4]_i_1_n_7\,
      Q => \row_count_reg_n_0_[4]\,
      R => '0'
    );
\row_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_count_reg[0]_i_1_n_0\,
      CO(3) => \row_count_reg[4]_i_1_n_0\,
      CO(2) => \row_count_reg[4]_i_1_n_1\,
      CO(1) => \row_count_reg[4]_i_1_n_2\,
      CO(0) => \row_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_count_reg[4]_i_1_n_4\,
      O(2) => \row_count_reg[4]_i_1_n_5\,
      O(1) => \row_count_reg[4]_i_1_n_6\,
      O(0) => \row_count_reg[4]_i_1_n_7\,
      S(3) => \row_count[4]_i_2_n_0\,
      S(2) => \row_count[4]_i_3_n_0\,
      S(1) => \row_count[4]_i_4_n_0\,
      S(0) => \row_count[4]_i_5_n_0\
    );
\row_count_reg[4]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_count_reg[0]_i_6_n_0\,
      CO(3) => \row_count_reg[4]_i_6_n_0\,
      CO(2) => \row_count_reg[4]_i_6_n_1\,
      CO(1) => \row_count_reg[4]_i_6_n_2\,
      CO(0) => \row_count_reg[4]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => row_count0(8 downto 5),
      S(3 downto 0) => row_count_reg(8 downto 5)
    );
\row_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[4]_i_1_n_6\,
      Q => row_count_reg(5),
      R => '0'
    );
\row_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[4]_i_1_n_5\,
      Q => row_count_reg(6),
      R => '0'
    );
\row_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[4]_i_1_n_4\,
      Q => row_count_reg(7),
      R => '0'
    );
\row_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[8]_i_1_n_7\,
      Q => row_count_reg(8),
      R => '0'
    );
\row_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_count_reg[4]_i_1_n_0\,
      CO(3) => \row_count_reg[8]_i_1_n_0\,
      CO(2) => \row_count_reg[8]_i_1_n_1\,
      CO(1) => \row_count_reg[8]_i_1_n_2\,
      CO(0) => \row_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \row_count_reg[8]_i_1_n_4\,
      O(2) => \row_count_reg[8]_i_1_n_5\,
      O(1) => \row_count_reg[8]_i_1_n_6\,
      O(0) => \row_count_reg[8]_i_1_n_7\,
      S(3) => \row_count[8]_i_2_n_0\,
      S(2) => \row_count[8]_i_3_n_0\,
      S(1) => \row_count[8]_i_4_n_0\,
      S(0) => \row_count[8]_i_5_n_0\
    );
\row_count_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \row_count_reg[4]_i_6_n_0\,
      CO(3) => \row_count_reg[8]_i_6_n_0\,
      CO(2) => \row_count_reg[8]_i_6_n_1\,
      CO(1) => \row_count_reg[8]_i_6_n_2\,
      CO(0) => \row_count_reg[8]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => row_count0(12 downto 9),
      S(3 downto 0) => row_count_reg(12 downto 9)
    );
\row_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_1_n_0\,
      D => \row_count_reg[8]_i_1_n_6\,
      Q => row_count_reg(9),
      R => '0'
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => slv_reg_wren,
      I5 => S_AXI_WSTRB(1),
      O => slv_reg0(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => slv_reg_wren,
      I5 => S_AXI_WSTRB(2),
      O => slv_reg0(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => slv_reg_wren,
      I5 => S_AXI_WSTRB(3),
      O => slv_reg0(31)
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => slv_reg_wren,
      I5 => S_AXI_WSTRB(0),
      O => slv_reg0(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(7),
      D => S_AXI_WDATA(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(15),
      D => S_AXI_WDATA(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(15),
      D => S_AXI_WDATA(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(15),
      D => S_AXI_WDATA(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(15),
      D => S_AXI_WDATA(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(15),
      D => S_AXI_WDATA(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(15),
      D => S_AXI_WDATA(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(23),
      D => S_AXI_WDATA(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(23),
      D => S_AXI_WDATA(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(23),
      D => S_AXI_WDATA(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(23),
      D => S_AXI_WDATA(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(7),
      D => S_AXI_WDATA(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(23),
      D => S_AXI_WDATA(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(23),
      D => S_AXI_WDATA(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(23),
      D => S_AXI_WDATA(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(23),
      D => S_AXI_WDATA(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(31),
      D => S_AXI_WDATA(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(31),
      D => S_AXI_WDATA(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(31),
      D => S_AXI_WDATA(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(31),
      D => S_AXI_WDATA(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(31),
      D => S_AXI_WDATA(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(31),
      D => S_AXI_WDATA(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(7),
      D => S_AXI_WDATA(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(31),
      D => S_AXI_WDATA(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(31),
      D => S_AXI_WDATA(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(7),
      D => S_AXI_WDATA(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(7),
      D => S_AXI_WDATA(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(7),
      D => S_AXI_WDATA(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(7),
      D => S_AXI_WDATA(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(7),
      D => S_AXI_WDATA(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(15),
      D => S_AXI_WDATA(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg0(15),
      D => S_AXI_WDATA(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg11_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffCol(0),
      Q => slv_reg11(0),
      R => '0'
    );
\slv_reg11_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(0),
      Q => slv_reg11(16),
      R => '0'
    );
\slv_reg11_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(1),
      Q => slv_reg11(17),
      R => '0'
    );
\slv_reg11_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(2),
      Q => slv_reg11(18),
      R => '0'
    );
\slv_reg11_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(3),
      Q => slv_reg11(19),
      R => '0'
    );
\slv_reg11_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffCol(1),
      Q => slv_reg11(1),
      R => '0'
    );
\slv_reg11_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(4),
      Q => slv_reg11(20),
      R => '0'
    );
\slv_reg11_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(5),
      Q => slv_reg11(21),
      R => '0'
    );
\slv_reg11_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(6),
      Q => slv_reg11(22),
      R => '0'
    );
\slv_reg11_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(7),
      Q => slv_reg11(23),
      R => '0'
    );
\slv_reg11_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(8),
      Q => slv_reg11(24),
      R => '0'
    );
\slv_reg11_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(9),
      Q => slv_reg11(25),
      R => '0'
    );
\slv_reg11_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(10),
      Q => slv_reg11(26),
      R => '0'
    );
\slv_reg11_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(11),
      Q => slv_reg11(27),
      R => '0'
    );
\slv_reg11_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(12),
      Q => slv_reg11(28),
      R => '0'
    );
\slv_reg11_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(13),
      Q => slv_reg11(29),
      R => '0'
    );
\slv_reg11_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffCol(2),
      Q => slv_reg11(2),
      R => '0'
    );
\slv_reg11_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(14),
      Q => slv_reg11(30),
      R => '0'
    );
\slv_reg11_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffRow(15),
      Q => slv_reg11(31),
      R => '0'
    );
\slv_reg11_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffCol(3),
      Q => slv_reg11(3),
      R => '0'
    );
\slv_reg11_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => maxDiffCol(4),
      Q => slv_reg11(4),
      R => '0'
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => S_AXI_WSTRB(1),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => S_AXI_WSTRB(2),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => p_0_in(0),
      I1 => slv_reg_wren,
      I2 => S_AXI_WSTRB(3),
      I3 => p_0_in(3),
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => S_AXI_WSTRB(0),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => S_AXI_WSTRB(1),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => slv_reg_wren,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => S_AXI_WSTRB(2),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => slv_reg_wren,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => S_AXI_WSTRB(3),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => slv_reg_wren,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => S_AXI_WVALID,
      O => slv_reg_wren
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => S_AXI_WSTRB(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => slv_reg_wren,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \^dma_base\(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \^dma_base\(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \^dma_base\(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \^dma_base\(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \^dma_base\(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \^dma_base\(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \^dma_base\(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \^dma_base\(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \^dma_base\(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \^dma_base\(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \^dma_base\(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \^dma_base\(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \^dma_base\(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \^dma_base\(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \^dma_base\(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \^dma_base\(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \^dma_base\(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \^dma_base\(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \^dma_base\(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \^dma_base\(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \^dma_base\(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \^dma_base\(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \^dma_base\(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \^dma_base\(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \^dma_base\(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \^dma_base\(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \^dma_base\(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \^dma_base\(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \^dma_base\(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \^dma_base\(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \^dma_base\(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \^dma_base\(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => S_AXI_WSTRB(1),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => S_AXI_WSTRB(2),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => slv_reg_wren,
      I2 => S_AXI_WSTRB(3),
      I3 => p_0_in(3),
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => S_AXI_WSTRB(0),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \slv_reg3_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \slv_reg3_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \slv_reg3_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \slv_reg3_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \slv_reg3_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \slv_reg3_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \slv_reg3_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \slv_reg3_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \slv_reg3_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \slv_reg3_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \slv_reg3_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \slv_reg3_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \slv_reg3_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \slv_reg3_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \slv_reg3_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \slv_reg3_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \slv_reg3_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \slv_reg3_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \slv_reg3_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \slv_reg3_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \slv_reg3_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \slv_reg3_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \slv_reg3_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \slv_reg3_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \slv_reg3_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \slv_reg3_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \slv_reg3_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \slv_reg3_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \slv_reg3_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \slv_reg3_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \slv_reg3_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \slv_reg3_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => S_AXI_WSTRB(1),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => slv_reg_wren,
      O => slv_reg4(15)
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => S_AXI_WSTRB(2),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => slv_reg_wren,
      O => slv_reg4(23)
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => S_AXI_WSTRB(3),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => slv_reg_wren,
      O => slv_reg4(31)
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => S_AXI_WSTRB(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => slv_reg_wren,
      O => slv_reg4(7)
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(7),
      D => S_AXI_WDATA(0),
      Q => \slv_reg4_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(15),
      D => S_AXI_WDATA(10),
      Q => \slv_reg4_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(15),
      D => S_AXI_WDATA(11),
      Q => \slv_reg4_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(15),
      D => S_AXI_WDATA(12),
      Q => \slv_reg4_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(15),
      D => S_AXI_WDATA(13),
      Q => \slv_reg4_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(15),
      D => S_AXI_WDATA(14),
      Q => \slv_reg4_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(15),
      D => S_AXI_WDATA(15),
      Q => \slv_reg4_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(23),
      D => S_AXI_WDATA(16),
      Q => \slv_reg4_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(23),
      D => S_AXI_WDATA(17),
      Q => \slv_reg4_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(23),
      D => S_AXI_WDATA(18),
      Q => \slv_reg4_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(23),
      D => S_AXI_WDATA(19),
      Q => \slv_reg4_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(7),
      D => S_AXI_WDATA(1),
      Q => \slv_reg4_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(23),
      D => S_AXI_WDATA(20),
      Q => \slv_reg4_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(23),
      D => S_AXI_WDATA(21),
      Q => \slv_reg4_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(23),
      D => S_AXI_WDATA(22),
      Q => \slv_reg4_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(23),
      D => S_AXI_WDATA(23),
      Q => \slv_reg4_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(31),
      D => S_AXI_WDATA(24),
      Q => \slv_reg4_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(31),
      D => S_AXI_WDATA(25),
      Q => \slv_reg4_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(31),
      D => S_AXI_WDATA(26),
      Q => \slv_reg4_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(31),
      D => S_AXI_WDATA(27),
      Q => \slv_reg4_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(31),
      D => S_AXI_WDATA(28),
      Q => \slv_reg4_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(31),
      D => S_AXI_WDATA(29),
      Q => \slv_reg4_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(7),
      D => S_AXI_WDATA(2),
      Q => \slv_reg4_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(31),
      D => S_AXI_WDATA(30),
      Q => \slv_reg4_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(31),
      D => S_AXI_WDATA(31),
      Q => \slv_reg4_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(7),
      D => S_AXI_WDATA(3),
      Q => \slv_reg4_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(7),
      D => S_AXI_WDATA(4),
      Q => \slv_reg4_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(7),
      D => S_AXI_WDATA(5),
      Q => \slv_reg4_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(7),
      D => S_AXI_WDATA(6),
      Q => \slv_reg4_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(7),
      D => S_AXI_WDATA(7),
      Q => \slv_reg4_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(15),
      D => S_AXI_WDATA(8),
      Q => \slv_reg4_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg4(15),
      D => S_AXI_WDATA(9),
      Q => \slv_reg4_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg5[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(0),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[3]_i_3_n_7\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(0),
      O => \slv_reg5[0]_i_1_n_0\
    );
\slv_reg5[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(10),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[11]_i_3_n_5\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(10),
      O => \slv_reg5[10]_i_1_n_0\
    );
\slv_reg5[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(11),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[11]_i_3_n_4\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(11),
      O => \slv_reg5[11]_i_1_n_0\
    );
\slv_reg5[11]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(9),
      I1 => \^gray1[31]\(9),
      O => \slv_reg5[11]_i_10_n_0\
    );
\slv_reg5[11]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(8),
      I1 => \^gray1[31]\(8),
      O => \slv_reg5[11]_i_11_n_0\
    );
\slv_reg5[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(11),
      I1 => \^gray2[31]\(11),
      O => \slv_reg5[11]_i_4_n_0\
    );
\slv_reg5[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(10),
      I1 => \^gray2[31]\(10),
      O => \slv_reg5[11]_i_5_n_0\
    );
\slv_reg5[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(9),
      I1 => \^gray2[31]\(9),
      O => \slv_reg5[11]_i_6_n_0\
    );
\slv_reg5[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(8),
      I1 => \^gray2[31]\(8),
      O => \slv_reg5[11]_i_7_n_0\
    );
\slv_reg5[11]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(11),
      I1 => \^gray1[31]\(11),
      O => \slv_reg5[11]_i_8_n_0\
    );
\slv_reg5[11]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(10),
      I1 => \^gray1[31]\(10),
      O => \slv_reg5[11]_i_9_n_0\
    );
\slv_reg5[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(12),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[15]_i_4_n_7\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(12),
      O => \slv_reg5[12]_i_1_n_0\
    );
\slv_reg5[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(13),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[15]_i_4_n_6\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(13),
      O => \slv_reg5[13]_i_1_n_0\
    );
\slv_reg5[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(14),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[15]_i_4_n_5\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(14),
      O => \slv_reg5[14]_i_1_n_0\
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAAAAAA"
    )
        port map (
      I0 => slv_reg51,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg5[31]_i_5_n_0\,
      I4 => p_0_in(3),
      I5 => S_AXI_WSTRB(1),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(14),
      I1 => \^gray1[31]\(14),
      O => \slv_reg5[15]_i_10_n_0\
    );
\slv_reg5[15]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(13),
      I1 => \^gray1[31]\(13),
      O => \slv_reg5[15]_i_11_n_0\
    );
\slv_reg5[15]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(12),
      I1 => \^gray1[31]\(12),
      O => \slv_reg5[15]_i_12_n_0\
    );
\slv_reg5[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(15),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[15]_i_4_n_4\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(15),
      O => \slv_reg5[15]_i_2_n_0\
    );
\slv_reg5[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(15),
      I1 => \^gray2[31]\(15),
      O => \slv_reg5[15]_i_5_n_0\
    );
\slv_reg5[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(14),
      I1 => \^gray2[31]\(14),
      O => \slv_reg5[15]_i_6_n_0\
    );
\slv_reg5[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(13),
      I1 => \^gray2[31]\(13),
      O => \slv_reg5[15]_i_7_n_0\
    );
\slv_reg5[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(12),
      I1 => \^gray2[31]\(12),
      O => \slv_reg5[15]_i_8_n_0\
    );
\slv_reg5[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(15),
      I1 => \^gray1[31]\(15),
      O => \slv_reg5[15]_i_9_n_0\
    );
\slv_reg5[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(16),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[19]_i_3_n_7\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(16),
      O => \slv_reg5[16]_i_1_n_0\
    );
\slv_reg5[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(17),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[19]_i_3_n_6\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(17),
      O => \slv_reg5[17]_i_1_n_0\
    );
\slv_reg5[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(18),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[19]_i_3_n_5\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(18),
      O => \slv_reg5[18]_i_1_n_0\
    );
\slv_reg5[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(19),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[19]_i_3_n_4\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(19),
      O => \slv_reg5[19]_i_1_n_0\
    );
\slv_reg5[19]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(17),
      I1 => \^gray1[31]\(17),
      O => \slv_reg5[19]_i_10_n_0\
    );
\slv_reg5[19]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(16),
      I1 => \^gray1[31]\(16),
      O => \slv_reg5[19]_i_11_n_0\
    );
\slv_reg5[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(19),
      I1 => \^gray1[31]\(19),
      O => \slv_reg5[19]_i_4_n_0\
    );
\slv_reg5[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(18),
      I1 => \^gray1[31]\(18),
      O => \slv_reg5[19]_i_5_n_0\
    );
\slv_reg5[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(17),
      I1 => \^gray1[31]\(17),
      O => \slv_reg5[19]_i_6_n_0\
    );
\slv_reg5[19]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(16),
      I1 => \^gray1[31]\(16),
      O => \slv_reg5[19]_i_7_n_0\
    );
\slv_reg5[19]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(19),
      I1 => \^gray1[31]\(19),
      O => \slv_reg5[19]_i_8_n_0\
    );
\slv_reg5[19]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(18),
      I1 => \^gray1[31]\(18),
      O => \slv_reg5[19]_i_9_n_0\
    );
\slv_reg5[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(1),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[3]_i_3_n_6\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(1),
      O => \slv_reg5[1]_i_1_n_0\
    );
\slv_reg5[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(20),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[23]_i_4_n_7\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(20),
      O => \slv_reg5[20]_i_1_n_0\
    );
\slv_reg5[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(21),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[23]_i_4_n_6\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(21),
      O => \slv_reg5[21]_i_1_n_0\
    );
\slv_reg5[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(22),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[23]_i_4_n_5\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(22),
      O => \slv_reg5[22]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAAAAAA"
    )
        port map (
      I0 => slv_reg51,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg5[31]_i_5_n_0\,
      I4 => p_0_in(3),
      I5 => S_AXI_WSTRB(2),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[23]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(22),
      I1 => \^gray1[31]\(22),
      O => \slv_reg5[23]_i_10_n_0\
    );
\slv_reg5[23]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(21),
      I1 => \^gray1[31]\(21),
      O => \slv_reg5[23]_i_11_n_0\
    );
\slv_reg5[23]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(20),
      I1 => \^gray1[31]\(20),
      O => \slv_reg5[23]_i_12_n_0\
    );
\slv_reg5[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(23),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[23]_i_4_n_4\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(23),
      O => \slv_reg5[23]_i_2_n_0\
    );
\slv_reg5[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(23),
      I1 => \^gray1[31]\(23),
      O => \slv_reg5[23]_i_5_n_0\
    );
\slv_reg5[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(22),
      I1 => \^gray1[31]\(22),
      O => \slv_reg5[23]_i_6_n_0\
    );
\slv_reg5[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(21),
      I1 => \^gray1[31]\(21),
      O => \slv_reg5[23]_i_7_n_0\
    );
\slv_reg5[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(20),
      I1 => \^gray1[31]\(20),
      O => \slv_reg5[23]_i_8_n_0\
    );
\slv_reg5[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(23),
      I1 => \^gray1[31]\(23),
      O => \slv_reg5[23]_i_9_n_0\
    );
\slv_reg5[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(24),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[27]_i_3_n_7\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(24),
      O => \slv_reg5[24]_i_1_n_0\
    );
\slv_reg5[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(25),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[27]_i_3_n_6\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(25),
      O => \slv_reg5[25]_i_1_n_0\
    );
\slv_reg5[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(26),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[27]_i_3_n_5\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(26),
      O => \slv_reg5[26]_i_1_n_0\
    );
\slv_reg5[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(27),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[27]_i_3_n_4\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(27),
      O => \slv_reg5[27]_i_1_n_0\
    );
\slv_reg5[27]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(25),
      I1 => \^gray1[31]\(25),
      O => \slv_reg5[27]_i_10_n_0\
    );
\slv_reg5[27]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(24),
      I1 => \^gray1[31]\(24),
      O => \slv_reg5[27]_i_11_n_0\
    );
\slv_reg5[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(27),
      I1 => \^gray1[31]\(27),
      O => \slv_reg5[27]_i_4_n_0\
    );
\slv_reg5[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(26),
      I1 => \^gray1[31]\(26),
      O => \slv_reg5[27]_i_5_n_0\
    );
\slv_reg5[27]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(25),
      I1 => \^gray1[31]\(25),
      O => \slv_reg5[27]_i_6_n_0\
    );
\slv_reg5[27]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(24),
      I1 => \^gray1[31]\(24),
      O => \slv_reg5[27]_i_7_n_0\
    );
\slv_reg5[27]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(27),
      I1 => \^gray1[31]\(27),
      O => \slv_reg5[27]_i_8_n_0\
    );
\slv_reg5[27]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(26),
      I1 => \^gray1[31]\(26),
      O => \slv_reg5[27]_i_9_n_0\
    );
\slv_reg5[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(28),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[31]_i_8_n_7\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(28),
      O => \slv_reg5[28]_i_1_n_0\
    );
\slv_reg5[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(29),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[31]_i_8_n_6\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(29),
      O => \slv_reg5[29]_i_1_n_0\
    );
\slv_reg5[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(2),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[3]_i_3_n_5\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(2),
      O => \slv_reg5[2]_i_1_n_0\
    );
\slv_reg5[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(30),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[31]_i_8_n_5\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(30),
      O => \slv_reg5[30]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \^finish_read1\,
      I1 => \^finish_read2\,
      I2 => aresetn,
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(30),
      I1 => \^gray1[31]\(30),
      O => \slv_reg5[31]_i_10_n_0\
    );
\slv_reg5[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(29),
      I1 => \^gray1[31]\(29),
      O => \slv_reg5[31]_i_11_n_0\
    );
\slv_reg5[31]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(28),
      I1 => \^gray1[31]\(28),
      O => \slv_reg5[31]_i_12_n_0\
    );
\slv_reg5[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^gray2[31]\(31),
      I1 => \^gray1[31]\(31),
      I2 => \^gray1[31]\(30),
      I3 => \^gray2[31]\(30),
      O => \slv_reg5[31]_i_14_n_0\
    );
\slv_reg5[31]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(29),
      I1 => \^gray2[31]\(29),
      I2 => \^gray1[31]\(28),
      I3 => \^gray2[31]\(28),
      O => \slv_reg5[31]_i_15_n_0\
    );
\slv_reg5[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(27),
      I1 => \^gray2[31]\(27),
      I2 => \^gray1[31]\(26),
      I3 => \^gray2[31]\(26),
      O => \slv_reg5[31]_i_16_n_0\
    );
\slv_reg5[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(25),
      I1 => \^gray2[31]\(25),
      I2 => \^gray1[31]\(24),
      I3 => \^gray2[31]\(24),
      O => \slv_reg5[31]_i_17_n_0\
    );
\slv_reg5[31]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray1[31]\(31),
      I1 => \^gray2[31]\(31),
      I2 => \^gray2[31]\(30),
      I3 => \^gray1[31]\(30),
      O => \slv_reg5[31]_i_18_n_0\
    );
\slv_reg5[31]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(29),
      I1 => \^gray1[31]\(29),
      I2 => \^gray2[31]\(28),
      I3 => \^gray1[31]\(28),
      O => \slv_reg5[31]_i_19_n_0\
    );
\slv_reg5[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAAAAAAAA"
    )
        port map (
      I0 => slv_reg51,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => S_AXI_WSTRB(3),
      I5 => \slv_reg5[31]_i_5_n_0\,
      O => \slv_reg5[31]_i_2_n_0\
    );
\slv_reg5[31]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(27),
      I1 => \^gray1[31]\(27),
      I2 => \^gray2[31]\(26),
      I3 => \^gray1[31]\(26),
      O => \slv_reg5[31]_i_20_n_0\
    );
\slv_reg5[31]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(25),
      I1 => \^gray1[31]\(25),
      I2 => \^gray2[31]\(24),
      I3 => \^gray1[31]\(24),
      O => \slv_reg5[31]_i_21_n_0\
    );
\slv_reg5[31]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(31),
      I1 => \^gray2[31]\(31),
      O => \slv_reg5[31]_i_22_n_0\
    );
\slv_reg5[31]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(30),
      I1 => \^gray1[31]\(30),
      O => \slv_reg5[31]_i_23_n_0\
    );
\slv_reg5[31]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(29),
      I1 => \^gray1[31]\(29),
      O => \slv_reg5[31]_i_24_n_0\
    );
\slv_reg5[31]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(28),
      I1 => \^gray1[31]\(28),
      O => \slv_reg5[31]_i_25_n_0\
    );
\slv_reg5[31]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(23),
      I1 => \^gray2[31]\(23),
      I2 => \^gray1[31]\(22),
      I3 => \^gray2[31]\(22),
      O => \slv_reg5[31]_i_27_n_0\
    );
\slv_reg5[31]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(21),
      I1 => \^gray2[31]\(21),
      I2 => \^gray1[31]\(20),
      I3 => \^gray2[31]\(20),
      O => \slv_reg5[31]_i_28_n_0\
    );
\slv_reg5[31]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(19),
      I1 => \^gray2[31]\(19),
      I2 => \^gray1[31]\(18),
      I3 => \^gray2[31]\(18),
      O => \slv_reg5[31]_i_29_n_0\
    );
\slv_reg5[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(31),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[31]_i_8_n_4\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(31),
      O => \slv_reg5[31]_i_3_n_0\
    );
\slv_reg5[31]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(17),
      I1 => \^gray2[31]\(17),
      I2 => \^gray1[31]\(16),
      I3 => \^gray2[31]\(16),
      O => \slv_reg5[31]_i_30_n_0\
    );
\slv_reg5[31]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(23),
      I1 => \^gray1[31]\(23),
      I2 => \^gray2[31]\(22),
      I3 => \^gray1[31]\(22),
      O => \slv_reg5[31]_i_31_n_0\
    );
\slv_reg5[31]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(21),
      I1 => \^gray1[31]\(21),
      I2 => \^gray2[31]\(20),
      I3 => \^gray1[31]\(20),
      O => \slv_reg5[31]_i_32_n_0\
    );
\slv_reg5[31]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(19),
      I1 => \^gray1[31]\(19),
      I2 => \^gray2[31]\(18),
      I3 => \^gray1[31]\(18),
      O => \slv_reg5[31]_i_33_n_0\
    );
\slv_reg5[31]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(17),
      I1 => \^gray1[31]\(17),
      I2 => \^gray2[31]\(16),
      I3 => \^gray1[31]\(16),
      O => \slv_reg5[31]_i_34_n_0\
    );
\slv_reg5[31]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(15),
      I1 => \^gray2[31]\(15),
      I2 => \^gray1[31]\(14),
      I3 => \^gray2[31]\(14),
      O => \slv_reg5[31]_i_36_n_0\
    );
\slv_reg5[31]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(13),
      I1 => \^gray2[31]\(13),
      I2 => \^gray1[31]\(12),
      I3 => \^gray2[31]\(12),
      O => \slv_reg5[31]_i_37_n_0\
    );
\slv_reg5[31]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(11),
      I1 => \^gray2[31]\(11),
      I2 => \^gray1[31]\(10),
      I3 => \^gray2[31]\(10),
      O => \slv_reg5[31]_i_38_n_0\
    );
\slv_reg5[31]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(9),
      I1 => \^gray2[31]\(9),
      I2 => \^gray1[31]\(8),
      I3 => \^gray2[31]\(8),
      O => \slv_reg5[31]_i_39_n_0\
    );
\slv_reg5[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^finish_read2\,
      I1 => \^finish_read1\,
      O => slv_reg51
    );
\slv_reg5[31]_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(15),
      I1 => \^gray1[31]\(15),
      I2 => \^gray2[31]\(14),
      I3 => \^gray1[31]\(14),
      O => \slv_reg5[31]_i_40_n_0\
    );
\slv_reg5[31]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(13),
      I1 => \^gray1[31]\(13),
      I2 => \^gray2[31]\(12),
      I3 => \^gray1[31]\(12),
      O => \slv_reg5[31]_i_41_n_0\
    );
\slv_reg5[31]_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(11),
      I1 => \^gray1[31]\(11),
      I2 => \^gray2[31]\(10),
      I3 => \^gray1[31]\(10),
      O => \slv_reg5[31]_i_42_n_0\
    );
\slv_reg5[31]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(9),
      I1 => \^gray1[31]\(9),
      I2 => \^gray2[31]\(8),
      I3 => \^gray1[31]\(8),
      O => \slv_reg5[31]_i_43_n_0\
    );
\slv_reg5[31]_i_44\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(7),
      I1 => \^gray2[31]\(7),
      I2 => \^gray1[31]\(6),
      I3 => \^gray2[31]\(6),
      O => \slv_reg5[31]_i_44_n_0\
    );
\slv_reg5[31]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(5),
      I1 => \^gray2[31]\(5),
      I2 => \^gray1[31]\(4),
      I3 => \^gray2[31]\(4),
      O => \slv_reg5[31]_i_45_n_0\
    );
\slv_reg5[31]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(3),
      I1 => \^gray2[31]\(3),
      I2 => \^gray1[31]\(2),
      I3 => \^gray2[31]\(2),
      O => \slv_reg5[31]_i_46_n_0\
    );
\slv_reg5[31]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^gray1[31]\(1),
      I1 => \^gray2[31]\(1),
      I2 => \^gray1[31]\(0),
      I3 => \^gray2[31]\(0),
      O => \slv_reg5[31]_i_47_n_0\
    );
\slv_reg5[31]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(7),
      I1 => \^gray1[31]\(7),
      I2 => \^gray2[31]\(6),
      I3 => \^gray1[31]\(6),
      O => \slv_reg5[31]_i_48_n_0\
    );
\slv_reg5[31]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(5),
      I1 => \^gray1[31]\(5),
      I2 => \^gray2[31]\(4),
      I3 => \^gray1[31]\(4),
      O => \slv_reg5[31]_i_49_n_0\
    );
\slv_reg5[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => S_AXI_AWVALID,
      O => \slv_reg5[31]_i_5_n_0\
    );
\slv_reg5[31]_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(3),
      I1 => \^gray1[31]\(3),
      I2 => \^gray2[31]\(2),
      I3 => \^gray1[31]\(2),
      O => \slv_reg5[31]_i_50_n_0\
    );
\slv_reg5[31]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gray2[31]\(1),
      I1 => \^gray1[31]\(1),
      I2 => \^gray2[31]\(0),
      I3 => \^gray1[31]\(0),
      O => \slv_reg5[31]_i_51_n_0\
    );
\slv_reg5[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(31),
      I1 => \^gray2[31]\(31),
      O => \slv_reg5[31]_i_9_n_0\
    );
\slv_reg5[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(3),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[3]_i_3_n_4\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(3),
      O => \slv_reg5[3]_i_1_n_0\
    );
\slv_reg5[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(1),
      I1 => \^gray1[31]\(1),
      O => \slv_reg5[3]_i_10_n_0\
    );
\slv_reg5[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(0),
      I1 => \^gray1[31]\(0),
      O => \slv_reg5[3]_i_11_n_0\
    );
\slv_reg5[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(3),
      I1 => \^gray2[31]\(3),
      O => \slv_reg5[3]_i_4_n_0\
    );
\slv_reg5[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(2),
      I1 => \^gray2[31]\(2),
      O => \slv_reg5[3]_i_5_n_0\
    );
\slv_reg5[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(1),
      I1 => \^gray2[31]\(1),
      O => \slv_reg5[3]_i_6_n_0\
    );
\slv_reg5[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(0),
      I1 => \^gray2[31]\(0),
      O => \slv_reg5[3]_i_7_n_0\
    );
\slv_reg5[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(3),
      I1 => \^gray1[31]\(3),
      O => \slv_reg5[3]_i_8_n_0\
    );
\slv_reg5[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(2),
      I1 => \^gray1[31]\(2),
      O => \slv_reg5[3]_i_9_n_0\
    );
\slv_reg5[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(4),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[7]_i_4_n_7\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(4),
      O => \slv_reg5[4]_i_1_n_0\
    );
\slv_reg5[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(5),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[7]_i_4_n_6\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(5),
      O => \slv_reg5[5]_i_1_n_0\
    );
\slv_reg5[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(6),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[7]_i_4_n_5\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(6),
      O => \slv_reg5[6]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAAAAAA"
    )
        port map (
      I0 => slv_reg51,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg5[31]_i_5_n_0\,
      I4 => p_0_in(3),
      I5 => S_AXI_WSTRB(0),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(6),
      I1 => \^gray1[31]\(6),
      O => \slv_reg5[7]_i_10_n_0\
    );
\slv_reg5[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(5),
      I1 => \^gray1[31]\(5),
      O => \slv_reg5[7]_i_11_n_0\
    );
\slv_reg5[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(4),
      I1 => \^gray1[31]\(4),
      O => \slv_reg5[7]_i_12_n_0\
    );
\slv_reg5[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(7),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[7]_i_4_n_4\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(7),
      O => \slv_reg5[7]_i_2_n_0\
    );
\slv_reg5[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(7),
      I1 => \^gray2[31]\(7),
      O => \slv_reg5[7]_i_5_n_0\
    );
\slv_reg5[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(6),
      I1 => \^gray2[31]\(6),
      O => \slv_reg5[7]_i_6_n_0\
    );
\slv_reg5[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(5),
      I1 => \^gray2[31]\(5),
      O => \slv_reg5[7]_i_7_n_0\
    );
\slv_reg5[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray1[31]\(4),
      I1 => \^gray2[31]\(4),
      O => \slv_reg5[7]_i_8_n_0\
    );
\slv_reg5[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray2[31]\(7),
      I1 => \^gray1[31]\(7),
      O => \slv_reg5[7]_i_9_n_0\
    );
\slv_reg5[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(8),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[11]_i_3_n_7\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(8),
      O => \slv_reg5[8]_i_1_n_0\
    );
\slv_reg5[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => slv_reg50(9),
      I1 => \slv_reg5_reg[31]_i_7_n_0\,
      I2 => \slv_reg5_reg[11]_i_3_n_6\,
      I3 => \^finish_read2\,
      I4 => \^finish_read1\,
      I5 => S_AXI_WDATA(9),
      O => \slv_reg5[9]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => \slv_reg5[0]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[0]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => \slv_reg5[10]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[10]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => \slv_reg5[11]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[11]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[7]_i_3_n_0\,
      CO(3) => \slv_reg5_reg[11]_i_2_n_0\,
      CO(2) => \slv_reg5_reg[11]_i_2_n_1\,
      CO(1) => \slv_reg5_reg[11]_i_2_n_2\,
      CO(0) => \slv_reg5_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray1[31]\(11 downto 8),
      O(3 downto 0) => slv_reg50(11 downto 8),
      S(3) => \slv_reg5[11]_i_4_n_0\,
      S(2) => \slv_reg5[11]_i_5_n_0\,
      S(1) => \slv_reg5[11]_i_6_n_0\,
      S(0) => \slv_reg5[11]_i_7_n_0\
    );
\slv_reg5_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[7]_i_4_n_0\,
      CO(3) => \slv_reg5_reg[11]_i_3_n_0\,
      CO(2) => \slv_reg5_reg[11]_i_3_n_1\,
      CO(1) => \slv_reg5_reg[11]_i_3_n_2\,
      CO(0) => \slv_reg5_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray2[31]\(11 downto 8),
      O(3) => \slv_reg5_reg[11]_i_3_n_4\,
      O(2) => \slv_reg5_reg[11]_i_3_n_5\,
      O(1) => \slv_reg5_reg[11]_i_3_n_6\,
      O(0) => \slv_reg5_reg[11]_i_3_n_7\,
      S(3) => \slv_reg5[11]_i_8_n_0\,
      S(2) => \slv_reg5[11]_i_9_n_0\,
      S(1) => \slv_reg5[11]_i_10_n_0\,
      S(0) => \slv_reg5[11]_i_11_n_0\
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => \slv_reg5[12]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[12]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => \slv_reg5[13]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[13]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => \slv_reg5[14]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[14]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => \slv_reg5[15]_i_2_n_0\,
      Q => \slv_reg5_reg_n_0_[15]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[11]_i_2_n_0\,
      CO(3) => \slv_reg5_reg[15]_i_3_n_0\,
      CO(2) => \slv_reg5_reg[15]_i_3_n_1\,
      CO(1) => \slv_reg5_reg[15]_i_3_n_2\,
      CO(0) => \slv_reg5_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray1[31]\(15 downto 12),
      O(3 downto 0) => slv_reg50(15 downto 12),
      S(3) => \slv_reg5[15]_i_5_n_0\,
      S(2) => \slv_reg5[15]_i_6_n_0\,
      S(1) => \slv_reg5[15]_i_7_n_0\,
      S(0) => \slv_reg5[15]_i_8_n_0\
    );
\slv_reg5_reg[15]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[11]_i_3_n_0\,
      CO(3) => \slv_reg5_reg[15]_i_4_n_0\,
      CO(2) => \slv_reg5_reg[15]_i_4_n_1\,
      CO(1) => \slv_reg5_reg[15]_i_4_n_2\,
      CO(0) => \slv_reg5_reg[15]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray2[31]\(15 downto 12),
      O(3) => \slv_reg5_reg[15]_i_4_n_4\,
      O(2) => \slv_reg5_reg[15]_i_4_n_5\,
      O(1) => \slv_reg5_reg[15]_i_4_n_6\,
      O(0) => \slv_reg5_reg[15]_i_4_n_7\,
      S(3) => \slv_reg5[15]_i_9_n_0\,
      S(2) => \slv_reg5[15]_i_10_n_0\,
      S(1) => \slv_reg5[15]_i_11_n_0\,
      S(0) => \slv_reg5[15]_i_12_n_0\
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => \slv_reg5[16]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[16]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => \slv_reg5[17]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[17]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => \slv_reg5[18]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[18]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => \slv_reg5[19]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[19]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[15]_i_3_n_0\,
      CO(3) => \slv_reg5_reg[19]_i_2_n_0\,
      CO(2) => \slv_reg5_reg[19]_i_2_n_1\,
      CO(1) => \slv_reg5_reg[19]_i_2_n_2\,
      CO(0) => \slv_reg5_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray1[31]\(19 downto 16),
      O(3 downto 0) => slv_reg50(19 downto 16),
      S(3) => \slv_reg5[19]_i_4_n_0\,
      S(2) => \slv_reg5[19]_i_5_n_0\,
      S(1) => \slv_reg5[19]_i_6_n_0\,
      S(0) => \slv_reg5[19]_i_7_n_0\
    );
\slv_reg5_reg[19]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[15]_i_4_n_0\,
      CO(3) => \slv_reg5_reg[19]_i_3_n_0\,
      CO(2) => \slv_reg5_reg[19]_i_3_n_1\,
      CO(1) => \slv_reg5_reg[19]_i_3_n_2\,
      CO(0) => \slv_reg5_reg[19]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray2[31]\(19 downto 16),
      O(3) => \slv_reg5_reg[19]_i_3_n_4\,
      O(2) => \slv_reg5_reg[19]_i_3_n_5\,
      O(1) => \slv_reg5_reg[19]_i_3_n_6\,
      O(0) => \slv_reg5_reg[19]_i_3_n_7\,
      S(3) => \slv_reg5[19]_i_8_n_0\,
      S(2) => \slv_reg5[19]_i_9_n_0\,
      S(1) => \slv_reg5[19]_i_10_n_0\,
      S(0) => \slv_reg5[19]_i_11_n_0\
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => \slv_reg5[1]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[1]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => \slv_reg5[20]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[20]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => \slv_reg5[21]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[21]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => \slv_reg5[22]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[22]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => \slv_reg5[23]_i_2_n_0\,
      Q => \slv_reg5_reg_n_0_[23]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[23]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[19]_i_2_n_0\,
      CO(3) => \slv_reg5_reg[23]_i_3_n_0\,
      CO(2) => \slv_reg5_reg[23]_i_3_n_1\,
      CO(1) => \slv_reg5_reg[23]_i_3_n_2\,
      CO(0) => \slv_reg5_reg[23]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray1[31]\(23 downto 20),
      O(3 downto 0) => slv_reg50(23 downto 20),
      S(3) => \slv_reg5[23]_i_5_n_0\,
      S(2) => \slv_reg5[23]_i_6_n_0\,
      S(1) => \slv_reg5[23]_i_7_n_0\,
      S(0) => \slv_reg5[23]_i_8_n_0\
    );
\slv_reg5_reg[23]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[19]_i_3_n_0\,
      CO(3) => \slv_reg5_reg[23]_i_4_n_0\,
      CO(2) => \slv_reg5_reg[23]_i_4_n_1\,
      CO(1) => \slv_reg5_reg[23]_i_4_n_2\,
      CO(0) => \slv_reg5_reg[23]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray2[31]\(23 downto 20),
      O(3) => \slv_reg5_reg[23]_i_4_n_4\,
      O(2) => \slv_reg5_reg[23]_i_4_n_5\,
      O(1) => \slv_reg5_reg[23]_i_4_n_6\,
      O(0) => \slv_reg5_reg[23]_i_4_n_7\,
      S(3) => \slv_reg5[23]_i_9_n_0\,
      S(2) => \slv_reg5[23]_i_10_n_0\,
      S(1) => \slv_reg5[23]_i_11_n_0\,
      S(0) => \slv_reg5[23]_i_12_n_0\
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => \slv_reg5[24]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[24]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => \slv_reg5[25]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[25]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => \slv_reg5[26]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[26]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => \slv_reg5[27]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[27]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[23]_i_3_n_0\,
      CO(3) => \slv_reg5_reg[27]_i_2_n_0\,
      CO(2) => \slv_reg5_reg[27]_i_2_n_1\,
      CO(1) => \slv_reg5_reg[27]_i_2_n_2\,
      CO(0) => \slv_reg5_reg[27]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray1[31]\(27 downto 24),
      O(3 downto 0) => slv_reg50(27 downto 24),
      S(3) => \slv_reg5[27]_i_4_n_0\,
      S(2) => \slv_reg5[27]_i_5_n_0\,
      S(1) => \slv_reg5[27]_i_6_n_0\,
      S(0) => \slv_reg5[27]_i_7_n_0\
    );
\slv_reg5_reg[27]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[23]_i_4_n_0\,
      CO(3) => \slv_reg5_reg[27]_i_3_n_0\,
      CO(2) => \slv_reg5_reg[27]_i_3_n_1\,
      CO(1) => \slv_reg5_reg[27]_i_3_n_2\,
      CO(0) => \slv_reg5_reg[27]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray2[31]\(27 downto 24),
      O(3) => \slv_reg5_reg[27]_i_3_n_4\,
      O(2) => \slv_reg5_reg[27]_i_3_n_5\,
      O(1) => \slv_reg5_reg[27]_i_3_n_6\,
      O(0) => \slv_reg5_reg[27]_i_3_n_7\,
      S(3) => \slv_reg5[27]_i_8_n_0\,
      S(2) => \slv_reg5[27]_i_9_n_0\,
      S(1) => \slv_reg5[27]_i_10_n_0\,
      S(0) => \slv_reg5[27]_i_11_n_0\
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => \slv_reg5[28]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[28]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => \slv_reg5[29]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[29]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => \slv_reg5[2]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[2]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => \slv_reg5[30]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[30]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[31]_i_2_n_0\,
      D => \slv_reg5[31]_i_3_n_0\,
      Q => \slv_reg5_reg_n_0_[31]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[31]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[31]_i_26_n_0\,
      CO(3) => \slv_reg5_reg[31]_i_13_n_0\,
      CO(2) => \slv_reg5_reg[31]_i_13_n_1\,
      CO(1) => \slv_reg5_reg[31]_i_13_n_2\,
      CO(0) => \slv_reg5_reg[31]_i_13_n_3\,
      CYINIT => '0',
      DI(3) => \slv_reg5[31]_i_27_n_0\,
      DI(2) => \slv_reg5[31]_i_28_n_0\,
      DI(1) => \slv_reg5[31]_i_29_n_0\,
      DI(0) => \slv_reg5[31]_i_30_n_0\,
      O(3 downto 0) => \NLW_slv_reg5_reg[31]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3) => \slv_reg5[31]_i_31_n_0\,
      S(2) => \slv_reg5[31]_i_32_n_0\,
      S(1) => \slv_reg5[31]_i_33_n_0\,
      S(0) => \slv_reg5[31]_i_34_n_0\
    );
\slv_reg5_reg[31]_i_26\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[31]_i_35_n_0\,
      CO(3) => \slv_reg5_reg[31]_i_26_n_0\,
      CO(2) => \slv_reg5_reg[31]_i_26_n_1\,
      CO(1) => \slv_reg5_reg[31]_i_26_n_2\,
      CO(0) => \slv_reg5_reg[31]_i_26_n_3\,
      CYINIT => '0',
      DI(3) => \slv_reg5[31]_i_36_n_0\,
      DI(2) => \slv_reg5[31]_i_37_n_0\,
      DI(1) => \slv_reg5[31]_i_38_n_0\,
      DI(0) => \slv_reg5[31]_i_39_n_0\,
      O(3 downto 0) => \NLW_slv_reg5_reg[31]_i_26_O_UNCONNECTED\(3 downto 0),
      S(3) => \slv_reg5[31]_i_40_n_0\,
      S(2) => \slv_reg5[31]_i_41_n_0\,
      S(1) => \slv_reg5[31]_i_42_n_0\,
      S(0) => \slv_reg5[31]_i_43_n_0\
    );
\slv_reg5_reg[31]_i_35\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \slv_reg5_reg[31]_i_35_n_0\,
      CO(2) => \slv_reg5_reg[31]_i_35_n_1\,
      CO(1) => \slv_reg5_reg[31]_i_35_n_2\,
      CO(0) => \slv_reg5_reg[31]_i_35_n_3\,
      CYINIT => '1',
      DI(3) => \slv_reg5[31]_i_44_n_0\,
      DI(2) => \slv_reg5[31]_i_45_n_0\,
      DI(1) => \slv_reg5[31]_i_46_n_0\,
      DI(0) => \slv_reg5[31]_i_47_n_0\,
      O(3 downto 0) => \NLW_slv_reg5_reg[31]_i_35_O_UNCONNECTED\(3 downto 0),
      S(3) => \slv_reg5[31]_i_48_n_0\,
      S(2) => \slv_reg5[31]_i_49_n_0\,
      S(1) => \slv_reg5[31]_i_50_n_0\,
      S(0) => \slv_reg5[31]_i_51_n_0\
    );
\slv_reg5_reg[31]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[27]_i_2_n_0\,
      CO(3) => \NLW_slv_reg5_reg[31]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \slv_reg5_reg[31]_i_6_n_1\,
      CO(1) => \slv_reg5_reg[31]_i_6_n_2\,
      CO(0) => \slv_reg5_reg[31]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^gray1[31]\(30 downto 28),
      O(3 downto 0) => slv_reg50(31 downto 28),
      S(3) => \slv_reg5[31]_i_9_n_0\,
      S(2) => \slv_reg5[31]_i_10_n_0\,
      S(1) => \slv_reg5[31]_i_11_n_0\,
      S(0) => \slv_reg5[31]_i_12_n_0\
    );
\slv_reg5_reg[31]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[31]_i_13_n_0\,
      CO(3) => \slv_reg5_reg[31]_i_7_n_0\,
      CO(2) => \slv_reg5_reg[31]_i_7_n_1\,
      CO(1) => \slv_reg5_reg[31]_i_7_n_2\,
      CO(0) => \slv_reg5_reg[31]_i_7_n_3\,
      CYINIT => '0',
      DI(3) => \slv_reg5[31]_i_14_n_0\,
      DI(2) => \slv_reg5[31]_i_15_n_0\,
      DI(1) => \slv_reg5[31]_i_16_n_0\,
      DI(0) => \slv_reg5[31]_i_17_n_0\,
      O(3 downto 0) => \NLW_slv_reg5_reg[31]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \slv_reg5[31]_i_18_n_0\,
      S(2) => \slv_reg5[31]_i_19_n_0\,
      S(1) => \slv_reg5[31]_i_20_n_0\,
      S(0) => \slv_reg5[31]_i_21_n_0\
    );
\slv_reg5_reg[31]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[27]_i_3_n_0\,
      CO(3) => \NLW_slv_reg5_reg[31]_i_8_CO_UNCONNECTED\(3),
      CO(2) => \slv_reg5_reg[31]_i_8_n_1\,
      CO(1) => \slv_reg5_reg[31]_i_8_n_2\,
      CO(0) => \slv_reg5_reg[31]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^gray2[31]\(30 downto 28),
      O(3) => \slv_reg5_reg[31]_i_8_n_4\,
      O(2) => \slv_reg5_reg[31]_i_8_n_5\,
      O(1) => \slv_reg5_reg[31]_i_8_n_6\,
      O(0) => \slv_reg5_reg[31]_i_8_n_7\,
      S(3) => \slv_reg5[31]_i_22_n_0\,
      S(2) => \slv_reg5[31]_i_23_n_0\,
      S(1) => \slv_reg5[31]_i_24_n_0\,
      S(0) => \slv_reg5[31]_i_25_n_0\
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => \slv_reg5[3]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[3]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \slv_reg5_reg[3]_i_2_n_0\,
      CO(2) => \slv_reg5_reg[3]_i_2_n_1\,
      CO(1) => \slv_reg5_reg[3]_i_2_n_2\,
      CO(0) => \slv_reg5_reg[3]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^gray1[31]\(3 downto 0),
      O(3 downto 0) => slv_reg50(3 downto 0),
      S(3) => \slv_reg5[3]_i_4_n_0\,
      S(2) => \slv_reg5[3]_i_5_n_0\,
      S(1) => \slv_reg5[3]_i_6_n_0\,
      S(0) => \slv_reg5[3]_i_7_n_0\
    );
\slv_reg5_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \slv_reg5_reg[3]_i_3_n_0\,
      CO(2) => \slv_reg5_reg[3]_i_3_n_1\,
      CO(1) => \slv_reg5_reg[3]_i_3_n_2\,
      CO(0) => \slv_reg5_reg[3]_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^gray2[31]\(3 downto 0),
      O(3) => \slv_reg5_reg[3]_i_3_n_4\,
      O(2) => \slv_reg5_reg[3]_i_3_n_5\,
      O(1) => \slv_reg5_reg[3]_i_3_n_6\,
      O(0) => \slv_reg5_reg[3]_i_3_n_7\,
      S(3) => \slv_reg5[3]_i_8_n_0\,
      S(2) => \slv_reg5[3]_i_9_n_0\,
      S(1) => \slv_reg5[3]_i_10_n_0\,
      S(0) => \slv_reg5[3]_i_11_n_0\
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => \slv_reg5[4]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[4]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => \slv_reg5[5]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[5]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => \slv_reg5[6]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[6]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => \slv_reg5[7]_i_2_n_0\,
      Q => \slv_reg5_reg_n_0_[7]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[3]_i_2_n_0\,
      CO(3) => \slv_reg5_reg[7]_i_3_n_0\,
      CO(2) => \slv_reg5_reg[7]_i_3_n_1\,
      CO(1) => \slv_reg5_reg[7]_i_3_n_2\,
      CO(0) => \slv_reg5_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray1[31]\(7 downto 4),
      O(3 downto 0) => slv_reg50(7 downto 4),
      S(3) => \slv_reg5[7]_i_5_n_0\,
      S(2) => \slv_reg5[7]_i_6_n_0\,
      S(1) => \slv_reg5[7]_i_7_n_0\,
      S(0) => \slv_reg5[7]_i_8_n_0\
    );
\slv_reg5_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \slv_reg5_reg[3]_i_3_n_0\,
      CO(3) => \slv_reg5_reg[7]_i_4_n_0\,
      CO(2) => \slv_reg5_reg[7]_i_4_n_1\,
      CO(1) => \slv_reg5_reg[7]_i_4_n_2\,
      CO(0) => \slv_reg5_reg[7]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^gray2[31]\(7 downto 4),
      O(3) => \slv_reg5_reg[7]_i_4_n_4\,
      O(2) => \slv_reg5_reg[7]_i_4_n_5\,
      O(1) => \slv_reg5_reg[7]_i_4_n_6\,
      O(0) => \slv_reg5_reg[7]_i_4_n_7\,
      S(3) => \slv_reg5[7]_i_9_n_0\,
      S(2) => \slv_reg5[7]_i_10_n_0\,
      S(1) => \slv_reg5[7]_i_11_n_0\,
      S(0) => \slv_reg5[7]_i_12_n_0\
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => \slv_reg5[8]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[8]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => \slv_reg5[9]_i_1_n_0\,
      Q => \slv_reg5_reg_n_0_[9]\,
      R => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg6[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => \^q\(0),
      O => \slv_reg6[1]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \^motion_detected\,
      Q => slv_reg6(0),
      R => '0'
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \slv_reg6[1]_i_1_n_0\,
      Q => slv_reg6(1),
      R => '0'
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => S_AXI_WSTRB(1),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => slv_reg7(15)
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => S_AXI_WSTRB(2),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => slv_reg7(23)
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => slv_reg_wren,
      I2 => S_AXI_WSTRB(3),
      I3 => p_0_in(3),
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => slv_reg7(31)
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => S_AXI_WSTRB(0),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => slv_reg_wren,
      I4 => p_0_in(2),
      I5 => p_0_in(1),
      O => slv_reg7(7)
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(7),
      D => S_AXI_WDATA(0),
      Q => \slv_reg7_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(15),
      D => S_AXI_WDATA(10),
      Q => \slv_reg7_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(15),
      D => S_AXI_WDATA(11),
      Q => \slv_reg7_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(15),
      D => S_AXI_WDATA(12),
      Q => \slv_reg7_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(15),
      D => S_AXI_WDATA(13),
      Q => \slv_reg7_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(15),
      D => S_AXI_WDATA(14),
      Q => \slv_reg7_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(15),
      D => S_AXI_WDATA(15),
      Q => \slv_reg7_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(23),
      D => S_AXI_WDATA(16),
      Q => \slv_reg7_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(23),
      D => S_AXI_WDATA(17),
      Q => \slv_reg7_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(23),
      D => S_AXI_WDATA(18),
      Q => \slv_reg7_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(23),
      D => S_AXI_WDATA(19),
      Q => \slv_reg7_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(7),
      D => S_AXI_WDATA(1),
      Q => \slv_reg7_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(23),
      D => S_AXI_WDATA(20),
      Q => \slv_reg7_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(23),
      D => S_AXI_WDATA(21),
      Q => \slv_reg7_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(23),
      D => S_AXI_WDATA(22),
      Q => \slv_reg7_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(23),
      D => S_AXI_WDATA(23),
      Q => \slv_reg7_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(31),
      D => S_AXI_WDATA(24),
      Q => \slv_reg7_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(31),
      D => S_AXI_WDATA(25),
      Q => \slv_reg7_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(31),
      D => S_AXI_WDATA(26),
      Q => \slv_reg7_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(31),
      D => S_AXI_WDATA(27),
      Q => \slv_reg7_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(31),
      D => S_AXI_WDATA(28),
      Q => \slv_reg7_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(31),
      D => S_AXI_WDATA(29),
      Q => \slv_reg7_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(7),
      D => S_AXI_WDATA(2),
      Q => \slv_reg7_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(31),
      D => S_AXI_WDATA(30),
      Q => \slv_reg7_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(31),
      D => S_AXI_WDATA(31),
      Q => \slv_reg7_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(7),
      D => S_AXI_WDATA(3),
      Q => \slv_reg7_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(7),
      D => S_AXI_WDATA(4),
      Q => \slv_reg7_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(7),
      D => S_AXI_WDATA(5),
      Q => \slv_reg7_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(7),
      D => S_AXI_WDATA(6),
      Q => \slv_reg7_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(7),
      D => S_AXI_WDATA(7),
      Q => \slv_reg7_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(15),
      D => S_AXI_WDATA(8),
      Q => \slv_reg7_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg7(15),
      D => S_AXI_WDATA(9),
      Q => \slv_reg7_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => S_AXI_WSTRB(1),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => slv_reg_wren,
      I5 => p_0_in(3),
      O => \slv_reg8[15]_i_1_n_0\
    );
\slv_reg8[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => S_AXI_WSTRB(2),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => slv_reg_wren,
      I5 => p_0_in(3),
      O => \slv_reg8[23]_i_1_n_0\
    );
\slv_reg8[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => S_AXI_WSTRB(3),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => slv_reg_wren,
      I5 => p_0_in(3),
      O => \slv_reg8[31]_i_1_n_0\
    );
\slv_reg8[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => S_AXI_WSTRB(0),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => slv_reg_wren,
      I5 => p_0_in(3),
      O => \slv_reg8[7]_i_1_n_0\
    );
\slv_reg8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \slv_reg8_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \slv_reg8_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \slv_reg8_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \slv_reg8_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \slv_reg8_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \slv_reg8_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \slv_reg8_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \slv_reg8_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \slv_reg8_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \slv_reg8_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \slv_reg8_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \slv_reg8_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \slv_reg8_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \slv_reg8_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \slv_reg8_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \slv_reg8_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \slv_reg8_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \slv_reg8_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \slv_reg8_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \slv_reg8_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \slv_reg8_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \slv_reg8_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \slv_reg8_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \slv_reg8_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \slv_reg8_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \slv_reg8_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \slv_reg8_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \slv_reg8_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \slv_reg8_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \slv_reg8_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \slv_reg8_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg8_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \slv_reg8[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \slv_reg8_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => S_AXI_WSTRB(1),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => slv_reg_wren,
      I5 => p_0_in(3),
      O => slv_reg9(15)
    );
\slv_reg9[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => S_AXI_WSTRB(2),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => slv_reg_wren,
      I5 => p_0_in(3),
      O => slv_reg9(23)
    );
\slv_reg9[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => S_AXI_WSTRB(3),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => slv_reg_wren,
      I5 => p_0_in(3),
      O => slv_reg9(31)
    );
\slv_reg9[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => S_AXI_WSTRB(0),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => slv_reg_wren,
      I5 => p_0_in(3),
      O => slv_reg9(7)
    );
\slv_reg9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(7),
      D => S_AXI_WDATA(0),
      Q => \slv_reg9_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(15),
      D => S_AXI_WDATA(10),
      Q => \slv_reg9_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(15),
      D => S_AXI_WDATA(11),
      Q => \slv_reg9_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(15),
      D => S_AXI_WDATA(12),
      Q => \slv_reg9_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(15),
      D => S_AXI_WDATA(13),
      Q => \slv_reg9_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(15),
      D => S_AXI_WDATA(14),
      Q => \slv_reg9_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(15),
      D => S_AXI_WDATA(15),
      Q => \slv_reg9_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(23),
      D => S_AXI_WDATA(16),
      Q => \slv_reg9_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(23),
      D => S_AXI_WDATA(17),
      Q => \slv_reg9_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(23),
      D => S_AXI_WDATA(18),
      Q => \slv_reg9_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(23),
      D => S_AXI_WDATA(19),
      Q => \slv_reg9_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(7),
      D => S_AXI_WDATA(1),
      Q => \slv_reg9_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(23),
      D => S_AXI_WDATA(20),
      Q => \slv_reg9_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(23),
      D => S_AXI_WDATA(21),
      Q => \slv_reg9_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(23),
      D => S_AXI_WDATA(22),
      Q => \slv_reg9_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(23),
      D => S_AXI_WDATA(23),
      Q => \slv_reg9_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(31),
      D => S_AXI_WDATA(24),
      Q => \slv_reg9_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(31),
      D => S_AXI_WDATA(25),
      Q => \slv_reg9_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(31),
      D => S_AXI_WDATA(26),
      Q => \slv_reg9_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(31),
      D => S_AXI_WDATA(27),
      Q => \slv_reg9_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(31),
      D => S_AXI_WDATA(28),
      Q => \slv_reg9_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(31),
      D => S_AXI_WDATA(29),
      Q => \slv_reg9_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(7),
      D => S_AXI_WDATA(2),
      Q => \slv_reg9_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(31),
      D => S_AXI_WDATA(30),
      Q => \slv_reg9_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(31),
      D => S_AXI_WDATA(31),
      Q => \slv_reg9_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(7),
      D => S_AXI_WDATA(3),
      Q => \slv_reg9_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(7),
      D => S_AXI_WDATA(4),
      Q => \slv_reg9_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(7),
      D => S_AXI_WDATA(5),
      Q => \slv_reg9_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(7),
      D => S_AXI_WDATA(6),
      Q => \slv_reg9_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(7),
      D => S_AXI_WDATA(7),
      Q => \slv_reg9_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(15),
      D => S_AXI_WDATA(8),
      Q => \slv_reg9_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg9_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => slv_reg9(15),
      D => S_AXI_WDATA(9),
      Q => \slv_reg9_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\small_column_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \small_column_count_reg_n_0_[0]\,
      O => \small_column_count[0]_i_1_n_0\
    );
\small_column_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \small_column_count_reg_n_0_[0]\,
      I1 => \small_column_count_reg_n_0_[1]\,
      O => \small_column_count[1]_i_1_n_0\
    );
\small_column_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \small_column_count_reg_n_0_[2]\,
      I1 => \small_column_count_reg_n_0_[1]\,
      I2 => \small_column_count_reg_n_0_[0]\,
      O => \small_column_count[2]_i_1_n_0\
    );
\small_column_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80008000C000FFFF"
    )
        port map (
      I0 => S_AXI_TVALID,
      I1 => \small_column_count_reg_n_0_[1]\,
      I2 => \small_column_count_reg_n_0_[3]\,
      I3 => \small_column_count_reg_n_0_[2]\,
      I4 => pixel_word_count1,
      I5 => \^s_axi_tready\,
      O => \small_column_count[3]_i_1_n_0\
    );
\small_column_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEB"
    )
        port map (
      I0 => S_AXI_TVALID,
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(0),
      I5 => \^q\(4),
      O => \small_column_count[3]_i_2_n_0\
    );
\small_column_count[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \small_column_count_reg_n_0_[3]\,
      I1 => \small_column_count_reg_n_0_[0]\,
      I2 => \small_column_count_reg_n_0_[1]\,
      I3 => \small_column_count_reg_n_0_[2]\,
      O => \small_column_count[3]_i_3_n_0\
    );
\small_column_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \small_column_count[0]_i_1_n_0\,
      Q => \small_column_count_reg_n_0_[0]\,
      R => \small_column_count[3]_i_1_n_0\
    );
\small_column_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \small_column_count[1]_i_1_n_0\,
      Q => \small_column_count_reg_n_0_[1]\,
      R => \small_column_count[3]_i_1_n_0\
    );
\small_column_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \small_column_count[2]_i_1_n_0\,
      Q => \small_column_count_reg_n_0_[2]\,
      R => \small_column_count[3]_i_1_n_0\
    );
\small_column_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_column_count[3]_i_2_n_0\,
      D => \small_column_count[3]_i_3_n_0\,
      Q => \small_column_count_reg_n_0_[3]\,
      R => \small_column_count[3]_i_1_n_0\
    );
\small_row_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \small_row_count_reg_n_0_[0]\,
      O => \small_row_count[0]_i_1_n_0\
    );
\small_row_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \small_row_count_reg_n_0_[0]\,
      I1 => \small_row_count_reg_n_0_[1]\,
      O => \small_row_count[1]_i_1_n_0\
    );
\small_row_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \small_row_count_reg_n_0_[2]\,
      I1 => \small_row_count_reg_n_0_[1]\,
      I2 => \small_row_count_reg_n_0_[0]\,
      O => \small_row_count[2]_i_1_n_0\
    );
\small_row_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \small_row_count_reg_n_0_[3]\,
      I1 => \small_row_count_reg_n_0_[2]\,
      I2 => \small_row_count_reg_n_0_[0]\,
      I3 => \small_row_count_reg_n_0_[1]\,
      O => \small_row_count[3]_i_1_n_0\
    );
\small_row_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888088808880AAAA"
    )
        port map (
      I0 => \small_row_count[4]_i_2_n_0\,
      I1 => \small_row_count_reg_n_0_[4]\,
      I2 => \small_row_count_reg_n_0_[3]\,
      I3 => \small_row_count_reg_n_0_[2]\,
      I4 => pixel_word_count1,
      I5 => \^s_axi_tready\,
      O => \small_row_count[4]_i_1_n_0\
    );
\small_row_count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808080AA"
    )
        port map (
      I0 => \column_count[4]_i_1_n_0\,
      I1 => \small_row_count[4]_i_4_n_0\,
      I2 => \column_count_reg_n_0_[4]\,
      I3 => pixel_word_count1,
      I4 => \^s_axi_tready\,
      O => \small_row_count[4]_i_2_n_0\
    );
\small_row_count[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C00080AA"
    )
        port map (
      I0 => \small_row_count_reg_n_0_[4]\,
      I1 => \small_row_count_reg_n_0_[1]\,
      I2 => \small_row_count_reg_n_0_[0]\,
      I3 => \small_row_count_reg_n_0_[2]\,
      I4 => \small_row_count_reg_n_0_[3]\,
      O => \small_row_count[4]_i_3_n_0\
    );
\small_row_count[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \column_count_reg_n_0_[0]\,
      I1 => \column_count_reg_n_0_[3]\,
      I2 => \column_count_reg_n_0_[2]\,
      I3 => \column_count_reg_n_0_[1]\,
      O => \small_row_count[4]_i_4_n_0\
    );
\small_row_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_2_n_0\,
      D => \small_row_count[0]_i_1_n_0\,
      Q => \small_row_count_reg_n_0_[0]\,
      R => \small_row_count[4]_i_1_n_0\
    );
\small_row_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_2_n_0\,
      D => \small_row_count[1]_i_1_n_0\,
      Q => \small_row_count_reg_n_0_[1]\,
      R => \small_row_count[4]_i_1_n_0\
    );
\small_row_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_2_n_0\,
      D => \small_row_count[2]_i_1_n_0\,
      Q => \small_row_count_reg_n_0_[2]\,
      R => \small_row_count[4]_i_1_n_0\
    );
\small_row_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_2_n_0\,
      D => \small_row_count[3]_i_1_n_0\,
      Q => \small_row_count_reg_n_0_[3]\,
      R => \small_row_count[4]_i_1_n_0\
    );
\small_row_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \small_row_count[4]_i_2_n_0\,
      D => \small_row_count[4]_i_3_n_0\,
      Q => \small_row_count_reg_n_0_[4]\,
      R => \small_row_count[4]_i_1_n_0\
    );
start1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(4),
      O => start1_i_1_n_0
    );
start1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFBEF00001104"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^start1\,
      O => start1_i_2_n_0
    );
start1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => start1_i_2_n_0,
      Q => \^start1\,
      R => start1_i_1_n_0
    );
startClear2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022200020"
    )
        port map (
      I0 => startClear2_i_2_n_0,
      I1 => startClear,
      I2 => startClear2,
      I3 => startClear2_i_3_n_0,
      I4 => startClear3,
      I5 => start1_i_1_n_0,
      O => startClear2_i_1_n_0
    );
startClear2_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDBFFFB"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => startClear2_i_2_n_0
    );
startClear2_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20103000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(0),
      O => startClear2_i_3_n_0
    );
startClear2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => startClear2_i_1_n_0,
      Q => startClear2,
      R => '0'
    );
startClear3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000A220022"
    )
        port map (
      I0 => startClear3_i_2_n_0,
      I1 => \^q\(0),
      I2 => \slv_reg6[1]_i_1_n_0\,
      I3 => startClear3_i_3_n_0,
      I4 => startClear3_reg_n_0,
      I5 => startClear3_i_4_n_0,
      O => startClear3_i_1_n_0
    );
startClear3_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDFFF3FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => start1_i_1_n_0,
      O => startClear3_i_2_n_0
    );
startClear3_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => startClear3_i_3_n_0
    );
startClear3_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(4),
      O => startClear3_i_4_n_0
    );
startClear3_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => startClear3_i_1_n_0,
      Q => startClear3_reg_n_0,
      R => '0'
    );
startClear4_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022002220"
    )
        port map (
      I0 => startClear3_i_2_n_0,
      I1 => startClear3_i_4_n_0,
      I2 => startClear4_reg_n_0,
      I3 => \clearDelay4[0]_i_1_n_0\,
      I4 => \slv_reg6[1]_i_1_n_0\,
      I5 => \clearDelay3[0]_i_1_n_0\,
      O => startClear4_i_1_n_0
    );
startClear4_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => startClear4_i_1_n_0,
      Q => startClear4_reg_n_0,
      R => '0'
    );
startClear_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFEBCFFB02000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(0),
      I5 => startClear_reg_n_0,
      O => startClear_i_1_n_0
    );
startClear_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => startClear_i_1_n_0,
      Q => startClear_reg_n_0,
      R => start1_i_1_n_0
    );
\transfer_length_offset[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4051440400110004"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \transfer_length_offset_reg_n_0_[3]\,
      O => \transfer_length_offset[3]_i_1_n_0\
    );
\transfer_length_offset[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4051440000110000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \transfer_length_offset_reg_n_0_[5]\,
      O => \transfer_length_offset[5]_i_1_n_0\
    );
\transfer_length_offset[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040440400000004"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \transfer_length_offset_reg_n_0_[6]\,
      O => \transfer_length_offset[6]_i_1_n_0\
    );
\transfer_length_offset_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \transfer_length_offset[3]_i_1_n_0\,
      Q => \transfer_length_offset_reg_n_0_[3]\,
      R => '0'
    );
\transfer_length_offset_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \transfer_length_offset[5]_i_1_n_0\,
      Q => \transfer_length_offset_reg_n_0_[5]\,
      R => '0'
    );
\transfer_length_offset_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \transfer_length_offset[6]_i_1_n_0\,
      Q => \transfer_length_offset_reg_n_0_[6]\,
      R => '0'
    );
write_1: entity work.hdmi_motion_detection_0_0_write_DMA
     port map (
      D(31) => write_1_n_9,
      D(30) => write_1_n_10,
      D(29) => write_1_n_11,
      D(28) => write_1_n_12,
      D(27) => write_1_n_13,
      D(26) => write_1_n_14,
      D(25) => write_1_n_15,
      D(24) => write_1_n_16,
      D(23) => write_1_n_17,
      D(22) => write_1_n_18,
      D(21) => write_1_n_19,
      D(20) => write_1_n_20,
      D(19) => write_1_n_21,
      D(18) => write_1_n_22,
      D(17) => write_1_n_23,
      D(16) => write_1_n_24,
      D(15) => write_1_n_25,
      D(14) => write_1_n_26,
      D(13) => write_1_n_27,
      D(12) => write_1_n_28,
      D(11) => write_1_n_29,
      D(10) => write_1_n_30,
      D(9) => write_1_n_31,
      D(8) => write_1_n_32,
      D(7) => write_1_n_33,
      D(6) => write_1_n_34,
      D(5) => write_1_n_35,
      D(4) => write_1_n_36,
      D(3) => write_1_n_37,
      D(2) => write_1_n_38,
      D(1) => write_1_n_39,
      D(0) => write_1_n_40,
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_AWVALID_reg => write_1_n_42,
      M_AXI_BREADY_reg => write_1_n_8,
      M_AXI_BREADY_reg_0 => write_1_n_49,
      M_AXI_BVALID => M_AXI_BVALID,
      \M_AXI_WDATA_reg[12]\ => write_1_n_44,
      \M_AXI_WDATA_reg[17]\ => write_1_n_45,
      \M_AXI_WDATA_reg[18]\ => write_1_n_46,
      \M_AXI_WDATA_reg[19]\ => write_1_n_47,
      \M_AXI_WDATA_reg[2]\(0) => write_1_n_41,
      \M_AXI_WDATA_reg[31]\ => write_1_n_5,
      \M_AXI_WDATA_reg[31]_0\ => write_1_n_6,
      M_AXI_WREADY => M_AXI_WREADY,
      \M_AXI_WSTRB_reg[3]\ => write_1_n_43,
      M_AXI_WVALID_reg => write_1_n_48,
      Q(4 downto 0) => \^q\(4 downto 0),
      aclk => aclk,
      addr0(27 downto 0) => addr0(31 downto 4),
      addr02_out(27 downto 0) => addr02_out(31 downto 4),
      aresetn => aresetn,
      clear_awvalid => clear_awvalid,
      clear_bready => clear_bready,
      clear_wvalid => clear_wvalid,
      \dma_init_reg[31]\(31 downto 0) => w1_addr(31 downto 0),
      m_awvalid_reg_0 => write_1_n_50,
      m_awvalid_reg_1 => \m_handshake1_i_1__5_n_0\,
      m_awvalid_reg_2 => write_clear4_n_7,
      m_handshake1 => m_handshake1,
      m_handshake1_1 => m_handshake1_1,
      m_handshake1_reg_0 => \^start3\,
      m_handshake2 => m_handshake2,
      m_handshake2_0 => m_handshake2_0,
      m_handshake2_reg_0 => \m_handshake2_i_1__5_n_0\,
      m_handshake3 => m_handshake3,
      m_handshake3_reg_0 => \m_handshake3_i_1__5_n_0\,
      m_handshake3_reg_1 => write_2_n_5,
      \slv_reg2_reg[3]\(3 downto 0) => \^dma_base\(3 downto 0),
      \slv_reg8_reg[12]\ => \M_AXI_WDATA[12]_i_2_n_0\,
      \slv_reg8_reg[17]\ => \M_AXI_WDATA[17]_i_2_n_0\,
      \slv_reg8_reg[18]\ => \M_AXI_WDATA[18]_i_2_n_0\,
      \slv_reg8_reg[19]\ => \M_AXI_WDATA[19]_i_2_n_0\,
      \slv_reg8_reg[2]\ => \M_AXI_WDATA[2]_i_5_n_0\,
      start1_reg => \^start1\,
      start2 => \^start2\,
      startClear2 => startClear2,
      startClear3_reg => startClear3_reg_n_0,
      startClear4_reg => startClear4_reg_n_0,
      startClear_reg => startClear_reg_n_0,
      \transfer_length_offset_reg[3]\ => \transfer_length_offset_reg_n_0_[3]\,
      w1_awvalid => w1_awvalid,
      w1_bready => w1_bready,
      w1_wvalid => w1_wvalid,
      w2_awvalid => w2_awvalid,
      w2_bready => w2_bready,
      w2_wvalid => w2_wvalid,
      w3_awvalid => w3_awvalid
    );
write_2: entity work.hdmi_motion_detection_0_0_write_DMA_0
     port map (
      D(0) => write_2_n_6,
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_WREADY => M_AXI_WREADY,
      Q(1) => \^q\(4),
      Q(0) => \^q\(2),
      aclk => aclk,
      \currentState_reg[0]\ => write_1_n_50,
      m_awvalid_reg_0 => \m_handshake1_i_1__4_n_0\,
      m_bready_reg_0 => write_2_n_5,
      m_handshake1 => m_handshake1_1,
      m_handshake1_reg_0 => \^start2\,
      m_handshake2 => m_handshake2_0,
      m_handshake2_reg_0 => \m_handshake2_i_1__4_n_0\,
      m_handshake3_reg_0 => \m_handshake3_i_1__4_n_0\,
      \slv_reg8_reg[0]\ => \M_AXI_WDATA[0]_i_2_n_0\,
      start1_reg => \^start1\,
      start3 => \^start3\,
      w2_awvalid => w2_awvalid,
      w2_bready => w2_bready,
      w2_wvalid => w2_wvalid
    );
write_3: entity work.hdmi_motion_detection_0_0_write_DMA_1
     port map (
      CO(0) => nextState1,
      D(0) => write_3_n_6,
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_BREADY_reg => write_3_n_10,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WVALID_reg => write_3_n_9,
      Q(4 downto 0) => \^q\(4 downto 0),
      aclk => aclk,
      clear_bready4 => clear_bready4,
      \currentState_reg[0]\ => write_1_n_50,
      \currentState_reg[1]\ => write_3_n_11,
      \currentState_reg[1]_0\ => \nextState_reg[3]_i_5_n_0\,
      \currentState_reg[2]\ => write_3_n_8,
      \currentState_reg[2]_0\ => \nextState_reg[0]_i_5_n_0\,
      \currentState_reg[3]\ => \nextState_reg[0]_i_3_n_0\,
      \currentState_reg[3]_0\ => write_clear3_n_9,
      done => \^done\,
      finish_send_reg => \nextState_reg[1]_i_6_n_0\,
      m_awvalid_reg_0 => \m_handshake1_i_1__3_n_0\,
      m_bready_reg_0 => write_3_n_5,
      m_bready_reg_1 => write_1_n_49,
      m_bready_reg_2 => write_clear3_n_11,
      m_handshake1 => m_handshake1_3,
      m_handshake1_reg_0 => \^start3\,
      m_handshake2 => m_handshake2_2,
      m_handshake2_reg_0 => \m_handshake2_i_1__3_n_0\,
      m_handshake3_reg_0 => \m_handshake3_i_1__3_n_0\,
      m_wvalid_reg_0 => write_1_n_48,
      m_wvalid_reg_1 => write_clear4_n_4,
      m_wvalid_reg_2 => write_clear3_n_12,
      \overlayDelayCounter_reg[4]\ => \nextState_reg[0]_i_7_n_0\,
      receive_1_reg(0) => \^motion_detected\,
      receive_1_reg_0 => \^finish_read1\,
      receive_2_reg => \^finish_read2\,
      \slv_reg3_reg[0]\(0) => \slv_reg3_reg_n_0_[0]\,
      \slv_reg3_reg[2]\ => \nextState_reg[2]_i_10_n_0\,
      startClear2_reg => M_AXI_WVALID_i_3_n_0,
      w3_awvalid => w3_awvalid,
      w3_bready => w3_bready,
      w3_wvalid => w3_wvalid
    );
write_clear: entity work.hdmi_motion_detection_0_0_write_DMA_2
     port map (
      D(0) => write_clear_n_6,
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_WREADY => M_AXI_WREADY,
      Q(0) => \^q\(2),
      aclk => aclk,
      \clearDelay_reg[10]\ => \nextState_reg[1]_i_5_n_0\,
      \clearDelay_reg[18]\ => \nextState_reg[1]_i_4_n_0\,
      clear_awvalid => clear_awvalid,
      clear_bready => clear_bready,
      clear_wvalid => clear_wvalid,
      \currentState_reg[0]\ => write_1_n_50,
      \currentState_reg[1]\ => write_clear_n_7,
      \currentState_reg[2]\ => write_clear3_n_8,
      \currentState_reg[4]\ => write_3_n_11,
      m_awvalid_reg_0 => \m_handshake1_i_1__2_n_0\,
      m_bready_reg_0 => write_clear_n_5,
      m_handshake1 => m_handshake1_5,
      m_handshake2 => m_handshake2_4,
      m_handshake2_reg_0 => \m_handshake2_i_1__2_n_0\,
      m_handshake3_reg_0 => \m_handshake3_i_1__2_n_0\,
      startClear_reg => startClear_reg_n_0
    );
write_clear2: entity work.hdmi_motion_detection_0_0_write_DMA_3
     port map (
      D(0) => write_clear2_n_6,
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_WREADY => M_AXI_WREADY,
      Q(3) => \^q\(4),
      Q(2 downto 0) => \^q\(2 downto 0),
      aclk => aclk,
      clearDelay2_reg(6) => clearDelay2_reg(31),
      clearDelay2_reg(5 downto 4) => clearDelay2_reg(29 downto 28),
      clearDelay2_reg(3) => clearDelay2_reg(18),
      clearDelay2_reg(2) => clearDelay2_reg(5),
      clearDelay2_reg(1) => clearDelay2_reg(3),
      clearDelay2_reg(0) => clearDelay2_reg(1),
      \clearDelay2_reg[19]\ => \nextState_reg[2]_i_8_n_0\,
      \clearDelay2_reg[30]\ => \nextState_reg[2]_i_9_n_0\,
      clearDelay2_reg_2_sp_1 => \nextState_reg[2]_i_6_n_0\,
      clear_awvalid2 => clear_awvalid2,
      clear_bready2 => clear_bready2,
      clear_wvalid2 => clear_wvalid2,
      \currentState_reg[0]\ => write_clear3_n_10,
      \currentState_reg[0]_0\ => write_1_n_50,
      \currentState_reg[3]\ => write_clear2_n_7,
      \currentState_reg[3]_0\ => \nextState_reg[2]_i_3_n_0\,
      \currentState_reg[3]_1\ => \nextState_reg[2]_i_4_n_0\,
      m_awvalid_reg_0 => \m_handshake1_i_1__1_n_0\,
      m_bready_reg_0 => write_clear2_n_5,
      m_handshake1 => m_handshake1_7,
      m_handshake2 => m_handshake2_6,
      m_handshake2_reg_0 => \m_handshake2_i_1__1_n_0\,
      m_handshake3_reg_0 => \m_handshake3_i_1__1_n_0\,
      startClear2 => startClear2
    );
write_clear3: entity work.hdmi_motion_detection_0_0_write_DMA_4
     port map (
      D(1) => write_clear3_n_6,
      D(0) => write_clear3_n_7,
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_BREADY_reg => write_clear3_n_11,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WVALID_reg => write_clear3_n_12,
      Q(4 downto 0) => \^q\(4 downto 0),
      aclk => aclk,
      \clearDelay3_reg[10]\ => \nextState_reg[4]_i_6_n_0\,
      \clearDelay3_reg[18]\ => \nextState_reg[4]_i_7_n_0\,
      clear_awvalid3 => clear_awvalid3,
      clear_bready2 => clear_bready2,
      clear_bready3 => clear_bready3,
      clear_wvalid2 => clear_wvalid2,
      clear_wvalid3 => clear_wvalid3,
      \currentState_reg[0]\ => write_clear3_n_9,
      \currentState_reg[0]_0\ => write_1_n_50,
      \currentState_reg[1]\ => \nextState_reg[3]_i_5_n_0\,
      \currentState_reg[2]\ => write_clear3_n_10,
      \currentState_reg[2]_0\ => write_3_n_8,
      \currentState_reg[3]\ => write_clear3_n_8,
      \currentState_reg[4]\ => write_clear2_n_7,
      done => \^done\,
      m_awvalid_reg_0 => \m_handshake1_i_1__0_n_0\,
      m_bready_reg_0 => write_clear3_n_5,
      m_handshake1 => m_handshake1_9,
      m_handshake1_reg_0 => write_clear4_n_6,
      m_handshake2 => m_handshake2_8,
      m_handshake2_reg_0 => \m_handshake2_i_1__0_n_0\,
      m_handshake3_reg_0 => \m_handshake3_i_1__0_n_0\,
      m_handshake3_reg_1 => write_clear_n_7,
      receive_1_reg => \^finish_read1\,
      receive_2_reg => \nextState_reg[3]_i_3_n_0\,
      startClear2 => startClear2,
      startClear3_reg => startClear3_reg_n_0,
      startClear_reg => write_1_n_8
    );
write_clear4: entity work.hdmi_motion_detection_0_0_write_DMA_5
     port map (
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_AWVALID_reg => write_clear4_n_7,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_WREADY => M_AXI_WREADY,
      aclk => aclk,
      \clearDelay4_reg[10]\ => \nextState_reg[3]_i_11_n_0\,
      \clearDelay4_reg[18]\ => \nextState_reg[3]_i_8_n_0\,
      \clearDelay4_reg[26]\ => \nextState_reg[3]_i_9_n_0\,
      \clearDelay4_reg[2]\ => \nextState_reg[3]_i_10_n_0\,
      clear_awvalid2 => clear_awvalid2,
      clear_awvalid3 => clear_awvalid3,
      clear_bready4 => clear_bready4,
      \currentState_reg[0]\ => write_1_n_50,
      \currentState_reg[3]\ => write_clear4_n_6,
      m_awvalid_reg_0 => write_clear4_n_2,
      m_awvalid_reg_1 => m_handshake1_i_1_n_0,
      m_bready_reg_0 => write_clear4_n_5,
      m_handshake1 => m_handshake1_11,
      m_handshake2 => m_handshake2_10,
      m_handshake2_reg_0 => m_handshake2_i_1_n_0,
      m_handshake3_reg_0 => m_handshake3_i_1_n_0,
      m_wvalid_reg_0 => write_clear4_n_4,
      startClear2 => startClear2,
      startClear3_reg => startClear3_reg_n_0,
      startClear4_reg => startClear4_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_motion_detection_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hdmi_motion_detection_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hdmi_motion_detection_0_0 : entity is "hdmi_motion_detection_0_0,motion_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of hdmi_motion_detection_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of hdmi_motion_detection_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of hdmi_motion_detection_0_0 : entity is "motion_v1_0,Vivado 2018.2";
end hdmi_motion_detection_0_0;

architecture STRUCTURE of hdmi_motion_detection_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^s_axi_s2mm_tdata\ : STD_LOGIC_VECTOR ( 31 to 31 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of M_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M_AXI_BREADY : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of M_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_INFO of M_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID";
  attribute X_INTERFACE_INFO of S_AXI_S2MM_TLAST : signal is "xilinx.com:interface:axis:1.0 S2MM_AXIS TLAST";
  attribute X_INTERFACE_INFO of S_AXI_S2MM_TREADY : signal is "xilinx.com:interface:axis:1.0 S2MM_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_S2MM_TREADY : signal is "XIL_INTERFACENAME S2MM_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of S_AXI_S2MM_TVALID : signal is "xilinx.com:interface:axis:1.0 S2MM_AXIS TVALID";
  attribute X_INTERFACE_INFO of S_AXI_TLAST : signal is "xilinx.com:interface:axis:1.0 S_AXI TLAST";
  attribute X_INTERFACE_INFO of S_AXI_TREADY : signal is "xilinx.com:interface:axis:1.0 S_AXI TREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_TREADY : signal is "XIL_INTERFACENAME S_AXI, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of S_AXI_TVALID : signal is "xilinx.com:interface:axis:1.0 S_AXI TVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXI:M_AXI:S_AXI_LITE:S2MM_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of M_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of M_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of M_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP";
  attribute X_INTERFACE_INFO of S_AXI_S2MM_TDATA : signal is "xilinx.com:interface:axis:1.0 S2MM_AXIS TDATA";
  attribute X_INTERFACE_INFO of S_AXI_S2MM_TKEEP : signal is "xilinx.com:interface:axis:1.0 S2MM_AXIS TKEEP";
  attribute X_INTERFACE_INFO of S_AXI_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXI TDATA";
  attribute X_INTERFACE_INFO of S_AXI_TKEEP : signal is "xilinx.com:interface:axis:1.0 S_AXI TKEEP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB";
begin
  M_AXI_WSTRB(3) <= \^m_axi_wstrb\(3);
  M_AXI_WSTRB(2) <= \^m_axi_wstrb\(3);
  M_AXI_WSTRB(1) <= \^m_axi_wstrb\(3);
  M_AXI_WSTRB(0) <= \^m_axi_wstrb\(3);
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_S2MM_TDATA(31) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(30) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(29) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(28) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(27) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(26) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(25) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(24) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(23) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(22) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(21) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(20) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(19) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(18) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(17) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(16) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(15) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(14) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(13) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(12) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(11) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(10) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(9) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(8) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(7) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(6) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(5) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(4) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(3) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(2) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(1) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TDATA(0) <= \^s_axi_s2mm_tdata\(31);
  S_AXI_S2MM_TKEEP(3) <= \<const1>\;
  S_AXI_S2MM_TKEEP(2) <= \<const1>\;
  S_AXI_S2MM_TKEEP(1) <= \<const1>\;
  S_AXI_S2MM_TKEEP(0) <= \<const1>\;
  S_AXI_S2MM_TLAST <= \<const0>\;
  S_AXI_S2MM_TVALID <= \<const0>\;
  M_AXI_ARVALID <= 'Z';
  M_AXI_RREADY <= 'Z';
  M_AXI_ARADDR(0) <= 'Z';
  M_AXI_ARADDR(1) <= 'Z';
  M_AXI_ARADDR(2) <= 'Z';
  M_AXI_ARADDR(3) <= 'Z';
  M_AXI_ARADDR(4) <= 'Z';
  M_AXI_ARADDR(5) <= 'Z';
  M_AXI_ARADDR(6) <= 'Z';
  M_AXI_ARADDR(7) <= 'Z';
  M_AXI_ARADDR(8) <= 'Z';
  M_AXI_ARADDR(9) <= 'Z';
  M_AXI_ARADDR(10) <= 'Z';
  M_AXI_ARADDR(11) <= 'Z';
  M_AXI_ARADDR(12) <= 'Z';
  M_AXI_ARADDR(13) <= 'Z';
  M_AXI_ARADDR(14) <= 'Z';
  M_AXI_ARADDR(15) <= 'Z';
  M_AXI_ARADDR(16) <= 'Z';
  M_AXI_ARADDR(17) <= 'Z';
  M_AXI_ARADDR(18) <= 'Z';
  M_AXI_ARADDR(19) <= 'Z';
  M_AXI_ARADDR(20) <= 'Z';
  M_AXI_ARADDR(21) <= 'Z';
  M_AXI_ARADDR(22) <= 'Z';
  M_AXI_ARADDR(23) <= 'Z';
  M_AXI_ARADDR(24) <= 'Z';
  M_AXI_ARADDR(25) <= 'Z';
  M_AXI_ARADDR(26) <= 'Z';
  M_AXI_ARADDR(27) <= 'Z';
  M_AXI_ARADDR(28) <= 'Z';
  M_AXI_ARADDR(29) <= 'Z';
  M_AXI_ARADDR(30) <= 'Z';
  M_AXI_ARADDR(31) <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.hdmi_motion_detection_0_0_motion_v1_0
     port map (
      M_AXI_AWADDR(31 downto 0) => M_AXI_AWADDR(31 downto 0),
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_WDATA(31 downto 0) => M_AXI_WDATA(31 downto 0),
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WSTRB(0) => \^m_axi_wstrb\(3),
      M_AXI_WVALID => M_AXI_WVALID,
      Q(4 downto 0) => state(4 downto 0),
      S_AXI_ARADDR(3 downto 0) => S_AXI_ARADDR(5 downto 2),
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 0) => S_AXI_AWADDR(5 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_S2MM_TDATA(0) => \^s_axi_s2mm_tdata\(31),
      S_AXI_S2MM_TREADY => S_AXI_S2MM_TREADY,
      S_AXI_TDATA(27 downto 21) => S_AXI_TDATA(31 downto 25),
      S_AXI_TDATA(20 downto 14) => S_AXI_TDATA(23 downto 17),
      S_AXI_TDATA(13 downto 7) => S_AXI_TDATA(15 downto 9),
      S_AXI_TDATA(6 downto 0) => S_AXI_TDATA(7 downto 1),
      S_AXI_TLAST => S_AXI_TLAST,
      S_AXI_TREADY => S_AXI_TREADY,
      S_AXI_TVALID => S_AXI_TVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      aclk => aclk,
      aresetn => aresetn,
      dma_base(31 downto 0) => dma_base(31 downto 0),
      done => done,
      finish_read1 => finish_read1,
      finish_read2 => finish_read2,
      \gray1[31]\(31 downto 0) => gray1(31 downto 0),
      \gray2[31]\(31 downto 0) => gray2(31 downto 0),
      motion_detected => motion_detected,
      start1 => start1,
      start2 => start2,
      start3 => start3
    );
end STRUCTURE;
