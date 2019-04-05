-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb 21 01:09:47 2019
-- Host        : DESKTOP-GD2UNUH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top bd_e87d_c_shift_ram_0_0 -prefix
--               bd_e87d_c_shift_ram_0_0_ bd_e87d_c_shift_ram_0_0_sim_netlist.vhdl
-- Design      : bd_e87d_c_shift_ram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
AcH6O9bO3zj3e+WIKKzQ3tGoQ8+7tvatcw0wndubWcNWVpJuWFs64u1EbdQBmVMS5VgyGqiQMiBi
hwSV5lC5Pg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
WzT0JcWfiuNhwzy8lNU4g7UuX+JvUt6aiyixPUleOR0u+NdhKBbxILEuEuRnK8YYP35/bahdRnyA
XKnMFCYgA+QsecIqj5X4Rw7Xb6LsBLykyOFwIwfEholDHQ76SyVo3cyHHhYgR2bgHuMXJg2rBbRT
QQnUjJfI63xAfydMVTU=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
NfFbJSzo0Q9Yd/VjEyGFK3pd2NFVmeE1oqShliu4d5hQadOU/sdDVbTXdkcYJZl7NtD3gI57ikaO
tDP435BmCUEcVllWLm5HyEUFR8v/7EzcgdUNcFcVigeLOmTZv8vyL7VQR+c/0pV1B3QrLFZWKp2W
48sFu+cBUelVJ9IPrhNnts4mY+jyeT+PndEnI1kzzYTOby+qXE3yZtY5NlB6FibtUHmxIh8pQ7ij
DM99E8rB9QHsHpiO0O+iQ3ihQwq6U9Bh9jbllhybyuDUrlpaZm7f+6Rvwj7E3d+c9Dgwuo6GXOcm
LWXlyNOcGo5g7oWEpDcyxRSaE90c5SSoyakK5A==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gG6AM7tE6d153mOB646PQd+jcKxQS5MN2462/cvyChYUMeMct7G3Ma9LG+jZBi9aUrmrjk5wMgiB
ocBwczfb3uPIny/E7kbiFrKMiHSWHq3tKWkDjYgudymUQ82fyddl8uBeXnBqqKno21TQnN7ivdWv
jTen2WwVKQj1SE7fWRkzWXpn+8q55AZ7zYPl88YqttuOnH5qIurA+oUZYwD7kcePlwrAmjuqrQQE
N1UsTp9vMyk5UHn+lGhWoHE8dtM5O+WcotqJEW24XH3x7F5wdEGRoBhCtWQg2+hbiGMEQiqCs1Hl
jwuttVehh4hikU2ld2oybYuHmyaHzd8P6X0tcw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Ud2ECTLyD85tsVvgtuFWTTLoWHfVt+VLmQrzHxkmjiLiqeTcwPqu0bhdgvluEoTF5DZZ4XuWs17+
JfeQruldEe1lT9JPO1a6QWkwATIDMuPDh4sXdE0OisihQLkSdrA7/IUtAklu7h4P8XtbQu0UGIkn
AQ/IAANs7p//FABRISp9YbJWI7WPRMJX2O8FOX+w++NUHXaO8JkQpDRmE7r2+UBcouFx0at/cnbM
X9SMTHsA1jeYJm2nq/4aeKw8zxL87GOQotKSeaWwm4fmBr86NZ9zL2dgihEMgXqJL25tkxLch10c
eRyppNzkHZw1bBP8mAFOvu0Dt4uoMwGW7nHHSw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
rAq68pKr78hDP/iWJayHOxyuEJu1BL5Yjw1SHgbOw8UhrUj3PE/TtS/YAHr6dmvN5M5P9KR3fzCV
FBC74xmGura4L89F9odMAJ4B50dD0XSop042LIpHJFRFbrTs0uH5lTk7m26e/mZQq4OnHW3BSKm2
92hDz0MZH1LC5NDzzZQ=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
SQMPDiP8jExtpJ5lMWcuEFp7zwek/On6bGjhgSTOTQobQuPgLwNPX0a5A2kvPN2VsbzzweKfU4md
z6sBWcsLHrp2oFSYMFBAllFwU44BUaISnypger/G9/oDstPTffQx0MaYt5sj/5DbZ+jG99V5H/kf
8zOJSQorZZABtPQZok+kmzWfZXSSSJsy8cY0RuvfglrB3koCU5eUl8hnS6Fhtl7iG4cK2Pxo6eAJ
KwQlfI8E2rVzWmAbeqvi4wBRwmK5c6rmSjCnBP46JhWQrxeOT1IdZQEzpJ1WcDskhCsEwGB72vks
DTM3EhnVlSzTX2izm/kJk/rkbOCvxMMhFnihfA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Nk/tY9B9KnemAn0twz3NDaEjhvuv4yW0llHBpJ3mhnReCy3E0izzKiu/bzXENt/7pt/M/OMimyd9
eUWebBhyspYVoIR2g/4VHsxQkUeLgA0Jza559w0mM2PGl2K3rJRsCDPZtc3ygbejS9/5sumtwtnR
eoI6DZ/k8toHjcdOASLtzK7FPOJmh8brq4ZWnR1pUCRJjTiNxmcDvwvDAln2OWpkm7Un1lL51zMs
9a4Z9kY46LX8PC/aY2ShMfIPRvWlJnAuWaP5Xw9odleLdBb1NEJV1GqvElH0RgqpS/8a/bSbavPO
hNmvHIPQMfxL/8a+uQnZYUK4y+DrO0IMov/ZWQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
qXSkHHh0dstMPhK9PnztM4GzIW0hlN6PRwAaYiyrDpxGqFpW/9lJ5BA9u7UNU6OLWRuUUQrdQz5m
e35tIcetEXcCY7CBDuBKZAGX6mWfBHSKo7T3kQ01B3BcKObfjYZcGEQiT1hRz/3yFnip8DPP67lO
6hICiAgnuZLs7BtEhRsEXUeSJNKBEAd77fWhJatEOeo4X90jn1yLvOChtI+bTSzh+wux+RmbIfpv
1F8iemwaeYLFj9wCF8TDI6ksI9diqZujBU6TdLpOjJ6alToJxbsY8NVMguNiyhAUsC5A3H0PbaJd
BwoiUufOdDNCw+qGe8/g+iCV6QIc0mD6PLcFCA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14176)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 4;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "0";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "./";
  attribute C_HAS_A : integer;
  attribute C_HAS_A of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "no_coe_file_loaded";
  attribute C_OPT_GOAL : integer;
  attribute C_OPT_GOAL of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_REG_LAST_BIT : integer;
  attribute C_REG_LAST_BIT of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_SHIFT_TYPE : integer;
  attribute C_SHIFT_TYPE of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "0";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "yes";
end bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12;

architecture STRUCTURE of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 is
  attribute C_AINIT_VAL of i_synth : label is "0";
  attribute C_HAS_CE of i_synth : label is 1;
  attribute C_HAS_SCLR of i_synth : label is 1;
  attribute C_HAS_SINIT of i_synth : label is 0;
  attribute C_HAS_SSET of i_synth : label is 0;
  attribute C_SINIT_VAL of i_synth : label is "0";
  attribute C_SYNC_ENABLE of i_synth : label is 0;
  attribute C_SYNC_PRIORITY of i_synth : label is 1;
  attribute C_WIDTH of i_synth : label is 1;
  attribute c_addr_width of i_synth : label is 4;
  attribute c_default_data of i_synth : label is "0";
  attribute c_depth of i_synth : label is 1;
  attribute c_elaboration_dir of i_synth : label is "./";
  attribute c_has_a of i_synth : label is 0;
  attribute c_mem_init_file of i_synth : label is "no_coe_file_loaded";
  attribute c_opt_goal of i_synth : label is 0;
  attribute c_parser_type of i_synth : label is 0;
  attribute c_read_mif of i_synth : label is 0;
  attribute c_reg_last_bit of i_synth : label is 1;
  attribute c_shift_type of i_synth : label is 0;
  attribute c_verbosity of i_synth : label is 0;
  attribute c_xdevicefamily of i_synth : label is "artix7";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
i_synth: entity work.bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12_viv
     port map (
      A(3 downto 0) => B"0000",
      CE => CE,
      CLK => CLK,
      D(0) => D(0),
      Q(0) => Q(0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_e87d_c_shift_ram_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_e87d_c_shift_ram_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_e87d_c_shift_ram_0_0 : entity is "bd_e87d_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_e87d_c_shift_ram_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of bd_e87d_c_shift_ram_0_0 : entity is "c_shift_ram_v12_0_12,Vivado 2018.2";
end bd_e87d_c_shift_ram_0_0;

architecture STRUCTURE of bd_e87d_c_shift_ram_0_0 is
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of U0 : label is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of U0 : label is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of U0 : label is 1;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 4;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 1;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_a : integer;
  attribute c_has_a of U0 : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "no_coe_file_loaded";
  attribute c_opt_goal : integer;
  attribute c_opt_goal of U0 : label is 0;
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 0;
  attribute c_reg_last_bit : integer;
  attribute c_reg_last_bit of U0 : label is 1;
  attribute c_shift_type : integer;
  attribute c_shift_type of U0 : label is 0;
  attribute c_verbosity : integer;
  attribute c_verbosity of U0 : label is 0;
  attribute c_xdevicefamily : string;
  attribute c_xdevicefamily of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW";
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk";
  attribute x_interface_info of SCLR : signal is "xilinx.com:signal:reset:1.0 sclr_intf RST";
  attribute x_interface_parameter of SCLR : signal is "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of D : signal is "xilinx.com:signal:data:1.0 d_intf DATA";
  attribute x_interface_parameter of D : signal is "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}";
begin
U0: entity work.bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12
     port map (
      A(3 downto 0) => B"0000",
      CE => CE,
      CLK => CLK,
      D(0) => D(0),
      Q(0) => Q(0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
