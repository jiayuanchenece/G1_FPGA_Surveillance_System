// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb 21 01:09:46 2019
// Host        : DESKTOP-GD2UNUH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top bd_e87d_c_shift_ram_0_0 -prefix
//               bd_e87d_c_shift_ram_0_0_ bd_e87d_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_e87d_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_e87d_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module bd_e87d_c_shift_ram_0_0
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AcH6O9bO3zj3e+WIKKzQ3tGoQ8+7tvatcw0wndubWcNWVpJuWFs64u1EbdQBmVMS5VgyGqiQMiBi
hwSV5lC5Pg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WzT0JcWfiuNhwzy8lNU4g7UuX+JvUt6aiyixPUleOR0u+NdhKBbxILEuEuRnK8YYP35/bahdRnyA
XKnMFCYgA+QsecIqj5X4Rw7Xb6LsBLykyOFwIwfEholDHQ76SyVo3cyHHhYgR2bgHuMXJg2rBbRT
QQnUjJfI63xAfydMVTU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NfFbJSzo0Q9Yd/VjEyGFK3pd2NFVmeE1oqShliu4d5hQadOU/sdDVbTXdkcYJZl7NtD3gI57ikaO
tDP435BmCUEcVllWLm5HyEUFR8v/7EzcgdUNcFcVigeLOmTZv8vyL7VQR+c/0pV1B3QrLFZWKp2W
48sFu+cBUelVJ9IPrhNnts4mY+jyeT+PndEnI1kzzYTOby+qXE3yZtY5NlB6FibtUHmxIh8pQ7ij
DM99E8rB9QHsHpiO0O+iQ3ihQwq6U9Bh9jbllhybyuDUrlpaZm7f+6Rvwj7E3d+c9Dgwuo6GXOcm
LWXlyNOcGo5g7oWEpDcyxRSaE90c5SSoyakK5A==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gG6AM7tE6d153mOB646PQd+jcKxQS5MN2462/cvyChYUMeMct7G3Ma9LG+jZBi9aUrmrjk5wMgiB
ocBwczfb3uPIny/E7kbiFrKMiHSWHq3tKWkDjYgudymUQ82fyddl8uBeXnBqqKno21TQnN7ivdWv
jTen2WwVKQj1SE7fWRkzWXpn+8q55AZ7zYPl88YqttuOnH5qIurA+oUZYwD7kcePlwrAmjuqrQQE
N1UsTp9vMyk5UHn+lGhWoHE8dtM5O+WcotqJEW24XH3x7F5wdEGRoBhCtWQg2+hbiGMEQiqCs1Hl
jwuttVehh4hikU2ld2oybYuHmyaHzd8P6X0tcw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ud2ECTLyD85tsVvgtuFWTTLoWHfVt+VLmQrzHxkmjiLiqeTcwPqu0bhdgvluEoTF5DZZ4XuWs17+
JfeQruldEe1lT9JPO1a6QWkwATIDMuPDh4sXdE0OisihQLkSdrA7/IUtAklu7h4P8XtbQu0UGIkn
AQ/IAANs7p//FABRISp9YbJWI7WPRMJX2O8FOX+w++NUHXaO8JkQpDRmE7r2+UBcouFx0at/cnbM
X9SMTHsA1jeYJm2nq/4aeKw8zxL87GOQotKSeaWwm4fmBr86NZ9zL2dgihEMgXqJL25tkxLch10c
eRyppNzkHZw1bBP8mAFOvu0Dt4uoMwGW7nHHSw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rAq68pKr78hDP/iWJayHOxyuEJu1BL5Yjw1SHgbOw8UhrUj3PE/TtS/YAHr6dmvN5M5P9KR3fzCV
FBC74xmGura4L89F9odMAJ4B50dD0XSop042LIpHJFRFbrTs0uH5lTk7m26e/mZQq4OnHW3BSKm2
92hDz0MZH1LC5NDzzZQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SQMPDiP8jExtpJ5lMWcuEFp7zwek/On6bGjhgSTOTQobQuPgLwNPX0a5A2kvPN2VsbzzweKfU4md
z6sBWcsLHrp2oFSYMFBAllFwU44BUaISnypger/G9/oDstPTffQx0MaYt5sj/5DbZ+jG99V5H/kf
8zOJSQorZZABtPQZok+kmzWfZXSSSJsy8cY0RuvfglrB3koCU5eUl8hnS6Fhtl7iG4cK2Pxo6eAJ
KwQlfI8E2rVzWmAbeqvi4wBRwmK5c6rmSjCnBP46JhWQrxeOT1IdZQEzpJ1WcDskhCsEwGB72vks
DTM3EhnVlSzTX2izm/kJk/rkbOCvxMMhFnihfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g4Gxb3xJp3ZWfGz2S2G1ZNCvG9B7ov8rNm1z9UEa1N2LKS10yWUaVDhmElQwQHqkSJc0m8UjicAf
6uVvtJbTrqoen53qYXZK96/aub6pYCd3ullaiTjOY1nfKzmKFCaobUZxsX20ZA475motUPnVZhGZ
sawFucgD8q5k+aTsM6dnBDw7vd4mlbWtBH+ZExfk+g9WBdlY+V09gNZAQJHqnqxsWrCuWfbPY2cL
JsgkFaiyBnhm6e9/5wzOhiQFvXFJkJq2m0C1fpi4LMdRgppuQqlw4w48tz1ThegLhUwEpqIabKFS
za9pa6JEgcQQq5yPf1d2/TqG3+fvYXdMqqPd4A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4hwGBGQw6LXAZ/26U210UroqSa/CHxazaNFETvsqob/P+vyvnHAzHQ5adSqzPBvwG8ch+e6BmTlL
Fr1f035ERzL/kf7tU+rlak9rBY0MmuDRCMFzTJXN9+opON4iu92MTHclJvjO/OZf9xq9ZvoRxno7
NDyLJ7U/nPtT15+9L62ki1uDuBrnzobGp1UtXaMKPp079d3oWcE42R/FHIq9Zl/1EyngsTLopQH9
y774kJVovoKWSI7v0fGnuTNgMPP9DF7UNHQjujEhrw5/ToqoB4dL4cOgZ3dxZLKqi2kLVCpeivJE
aiVFnyYLb6LZkwWYMZ9QSoFwOyYrjNmZ78zetA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4576)
`pragma protect data_block
+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
`pragma protect end_protected
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
