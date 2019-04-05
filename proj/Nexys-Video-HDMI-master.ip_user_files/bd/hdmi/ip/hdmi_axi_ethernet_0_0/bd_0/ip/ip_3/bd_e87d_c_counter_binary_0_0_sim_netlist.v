// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb 21 01:09:48 2019
// Host        : DESKTOP-GD2UNUH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top bd_e87d_c_counter_binary_0_0 -prefix
//               bd_e87d_c_counter_binary_0_0_ bd_e87d_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_e87d_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_e87d_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module bd_e87d_c_counter_binary_0_0
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_e87d_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1100000000000000000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1100000000000000000000" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "24" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_e87d_c_counter_binary_0_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [23:0]L;
  output THRESH0;
  output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_e87d_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QGinOnAAXZO/nyLhiq0xDjPYzyQFwtA+HRmF/wcoEHUt80tko+5n2+2b6PLO2ZjD+ns6QCj2CLRN
VsiDA5E7szQGymvioJc6JlZV7DAbNi6dgNRjs5lPsLE8WCb31joQIX/FlGkMB2GvVTPQyX2F0i+f
BPKBrq5MQAM98YUNlpvkq88xG00p6YfBcSCaH5OD29JPaWR2+fcyBZEFOGtiIyHvaRZ+8cIoVQBD
UsEJh9prc+W9TqdIFy+27bKOC+CagXJ297OaCi4jNAhsbmrTAeG029gWWXejVqQyZ8/giyj6NENv
onMZ9hMvnm5wA/ME6hbvwrw46qXiiHsu2N9CUA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PZKMEtokp/h9hMw/1uBXbr6zDFwDBTaaMfpszEdRhNRaF+r8+wbvO+l1gQfSWO6mNwdB3Wpo8R64
wPMexUrhTCG24lWJs57A8H6x5lLuusmGpptr6aj2t9bE3LIhxr2PxmQ+/JE2Rs+5hmXujsLb60C5
FY+kWJ/6SWcTR6mA7rS89gEJjg+QZmDfK1Aiw8BneZE3XNYitwIEwRb3Ioe/w2WAnk6KOvAcKUbD
MvyzB9vh+2VYu2dfWyfostXy0xMX3n75ECZYnh3XsML0SCKAyhnjylRIW7NaG+ABO6jMoKsmVFO0
sMAcuAMTuB5nX/wzD4hvQBNTwQCbXGZilbBleA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12672)
`pragma protect data_block
4dTa88SskgrJdm3KnMGwmOQ3dtiaZtXmzz1S4MYFPEheYr0st/0rZUmQwHRYMT9kE+4wMidYbjRb
DoY/7CEGrfc6KxbK/7CRf//aNauWkWDCxzJr1FE2PWWxdWmg97yfK0wL9QHtLuCNfZ8xbL36oXJ8
RmZUiNcWU1D3Vlze91urixI+Z34YfytHtxz//bn++VxzMH7B8WaUjNJ6Qi30QU8/4/wPk3n4B6n6
GB6OchjZd5YBnSkBhhIihzEQyhA4HKzpxeJlDBqN9kfp+sjs3Y6QZ8RI1VIUqi/ZrBXtd7V4kk6I
n7EmyP9l3ZdhT0VPvVBEGlY1QN6EDuEOWEpIMZ/R/+U56sIgJTkLdxDKqgzsVj0Sllw1FlzQ02Kr
J48BBGJs5EzeNs1VBM78228LVPwk7UiDf/q6IfgZy5gMqnkPuDfhCafL4lxqSms8vsPnNsZG3Kgh
4XggNGZFvJq5iwNG71Y/r5tMVt05kexwbnJfxeEmUE72b559e75C6hXSQAD1D1kxq0MHA6Y0vA8K
uAIJG8jXKW33F4kT+cZssz0OFQ9FjJge5QTOC5xURq0u8x6DwburiVEYhqwqoG95lMGKav+4ez7p
SDxOEWnyPbjFvvZk6yh8e2eO4GN8xe4TVfnF1SvNE3eYLj6rxThl+f0UjUwNcPwzNCHLwoe6X5+K
n7YarT08usiJkTpk9GVXjG9IZSYQ1CnvBYZQyiTwHFficJgajiIADWf8j13zS7wY1BcMxI+q4AYc
u4Y3PaUDOvMrpNXkxDgTaaa8RnLbzyCNR/DYbQM7CajBrjjlJBpbUzoy3n0DJjUhGZXA1d8R2XHP
NZjrFtHT80P8s3xUOo7i1qbd7wTh3J0GS1mRa4UmRBlxI+4QeOFsrTekbHGLM7ZdxmMBkjltVXlX
mWi35zFcbGk37pFI9gb1RKmvMmdvqeCUtqORIhSfapV1pDdOj35QspFLy3K8jJaKmlMAdC5Oyw0O
weqln3MkPAiAqOTiIu3lCDalK1ThtHtBWPLt6rIv9KVaC6U5QGTlr5OeZGIhvmLpVl3zhuo7J1+S
9qNnIn/y7bQWElhJw3GMgisQdsx45tJl3XKhd/KKkmUQ5GSaG4LMvZHquAFAsyHg2FXoZN/zq+Pb
FpnkaTQAQ2V3zARQQjrCqX7eOA2j3BOet9/eywhL47uj6aTNbiaU/Q3uw5gEr07ZH5m7VNkc2ifz
oZgGFaeCT8nPUJYkUGA9nl6zSKtOnCNT2fl/zPiT9gv9FKGCuZPODlc5q0BD40bkiRCX5jBlZ4Oj
H7DfYcdN5coLtoY0zQ4UsKZyY0nMQuwS06SbqPKg4jLxNW0vHbPwaR2KOGJEqdRcGBna6qgCyKBl
HCu8tHH8LUduHmmHVaiqmW6hcHkDVz168uapeHIGMn8rUBBVY7m22bOMAnrtyA8aHSoBQrGDsdd0
QkdyVxv7ruMs9VJsaoz9jYWw+fYXSsy2Gt3e1HrgAf2Nt7ai2dxc/QujMoXGqNZi32PkhiOvkXqp
5fcSfXDxIP7kN5rK658eWRoDM1kg/nG/tOiTQahy7i7eP9OjIzcMmbTQSr/eMB0fKM0IiiyKHnsZ
YiqpTEBHx1eAu1SgH+7LVQKmKE/tOh0DNnB+Mpg7HW+6UnE1C+hqz9aXsiekyuYkcGVjgBcxNju5
ap2TW6CQ8FCGgDmmxQ2HsTMJLqNjoOnqK080rcp5LyZrmV2D7kaJAbjsvJ826L5ccEmmKeYpTzYl
RPXEK4/DMEauOh77LnDKgRZOy3qguCi6t2BIN+6uXbdAMEKbr03mHeRkbqlbvKRsuv5CR1rOU080
kqbHpl30TMqLhcm8a6cPQucuRmM43GY0fq4FGi4t1bB5SlmZWYMdNTewdWSYnrXFuLiURt7cck80
IQ+2lD5Fgo9HpGcYf71KCIO1G6WbMS7d1YF/pgfi8unlbnwSDVw3U4sFOqrsw8/CZgaN09a+6N3N
HVSKcyVVV0V/pOvsrE9ozjHVPpKXhp37Np7F8Ai5iU36fmb5g33g/H1CPMfAl2rTXKtvOv+Z5G3Z
1Zsuc/K4305RUR4Ph5Uo0ABFz5ei42jzwuBD4K+ubXznGG8hBYI3c0oiqwynhmSIEZ1ejmgBDHFk
nRxG6QWnhzqRQ9lzyX+HyeJN7xUPfySdA64iiecrdeGCKZ9U2QVP2zMNNnlAMNjKvTfxc/AjfFae
LhcvPro2UfrCud/hQMVTQ9DyjMsMbPYoXHS9Qtghkp+ekOGya1CESNkxBgMl0PKvaKtorOYxTYFg
f/bfe3M2Sg4G3fPpNXTpzGuRI9/i0ghcMTCJmj8Rr0A+j9rHPva3G1jd6RhefCCcoyWfhUwVnklV
PinoXbL178fvpIEb28iTTOGe4y9Trl4LB8aEC1BrO5vAchbuABV01ckt72UuUWl7i+IAcnTZM2+2
zIau1aoaunU5aaAhFT8I8zorJmtDmOa5GCfmI+TkENpayeeJ10HbByU+9VmfLLN+Ls+E1yeKJXTl
vjyai6YlpMTkv3WD+x3dGog1+l3TrVJl8UQl0OdVXsXP8q6Vi+FiR74TE2+LNyf/PQKLUDByEbKE
2qk4hcDd8xI9oeMM/tUzlte6tMtFLFgju7YH0JhjqnxUtnCmE3+gD+iTc1KFjdVrJmDzAgSWNJGm
KlM2NNtHe9hjZ411e8tVDHnoHP7VS3hx3Xy/0K6TtogU0GykuoJK0xaXrxE4feAP4aUtzckD6LwM
bgKrTpNYnRRafhR+IU+yMTaoRdWfzDDujV+bKRFQ2144ZA08GQVBei2FvepP/lZIViNKZngYhAMn
DWdWHnKejteC0RB4kL7Ed9ihI2+9StqMOmtos74pIICnleXmMq1dm/QkJVtjaQ6jA2oenkcGBDYQ
2Q5MBFCowXgycVhzW84S7yF8sjju5wcKzcKjWvo42pi5GiPK2ipsnOS4aweP7Xl9jYjW3Pmi1qnb
WXHeWh3z6rRflwVg9804oFxJhscmRkQMchPdF0ATzRt+GAU86nX4bk2BMIA/EzuvLrYzHLOtI+yQ
ciW29gb/OwVKujqkbrrCNx5edOQu8ymyS/yNPqNJ6bA711V1z1fBEYGB9d1NeWF9OgPJ981t/uSP
6FAyOZd9/p2zDDtH8CR6fs0mR45hslQG7zAyM+GdqF1nCKihbucOQQQ3Tpk06p8w0deXIgHup0cc
H9Rm5nzVkNiPvooxa/qAHHegV0xtjSkFIfNfFLMeOl/jATf3rGiZ/yiphk6eZhFwBv7mK0C3rTve
OKVJU6BfaSr0QNXzOFTZ0U1i/TqLKwRDxV5Dq0/UbCF2X/zkm4BBDLhs+2soV4Npz44DmuJW4XGx
n/w0+J/+zLedFuyKBbYSCYF5utIgWb6paMJX60MWYts6sdpBhNQy9qNoqQWd5UKhCsPTuX1ArORE
4GCVhg9RhP8oKHN0wnehfjGySWISWxoTwlLq2b9U1jcxfgw79roEb0BcWwZIkFKXamZ1zmknHwio
SvdqSeHIB9z8+f/0bqzjG9eUkMY1Xx3av2KtvSuPSVpyT6VGo2NiV6vDePzcMpsl6tM0gPK6x7zH
rgx/kWeieAC32/Afh4ZNB4E8+t336RVeVUVFsFMiGDeHYtTbFK6JXOx+EdyF8/AHP85PmeEusuwb
l8BFI047aT+5am65oR8hQNCLYgXjzuWqpftpK9zkBEQOU10q9wQ2P1/CXomoetee4fp7MQ/ubUfN
JVf6B36BUUP2t6ISD6jsNrx7srIfZ0o7WJm2f5hQ1pRwUnDBLN8zZm/HH3KaCKygoshVyWvtxTEA
AyG0x6ySO4Cq9VAkKb9yb9JMp1x6MJad8qYRqnCMCjUdehuGqt4TL08gSGmetvGMsZROrWGkQwYu
Ap0mX7zgdVAREQCsN5d6DDG9tSV+O+fk8/NWEr1F1yXwblAFk//sk6LOY0M6TULdi7dPpdXnEKyd
J2lkkBAafiRKjH/SNBaKA8fPSy6YfLo16mJ0i8gQCC5UDAzIZWq0wX2oX6QgGyTGXEadTGrFmYjm
6V3TKHKsFwsDKjFaZHeYD3Ni6B6Pek48nvKScMB7ZACSoJEsIZsGYmmpGnBYLVm39Hv6va+YvTob
HYQ3RakXlTxtE8y2qXRlyAfCdNA3gg65GZJhAdyP5kzXPCAfRCFVNSlDEBqILk3OY5S2vUvn/dhB
QZQFq/eukSp0x4RXk5hRfwbyJp8AeyS8LUsnGEiaCNwVJGyObVeqsf1hue6ILUwdWW+9avftrj1D
wG2WNRyS/jaJDgm5FARR8OvUoIsqegGj0tUDK9X2mYQ5RAl8ZM+lziWxzV1dqyhmQ96Im6FLlZLQ
DiNac1NEaphJcNXIvLw6Br+wlomrCMz/hCQYoR0/adAXnoFVjQ2zngnMy46Wls9fN6uu/S6j0MgN
MGvJvTgpOqCAg4XMa6icH7VWcdPXcCszMEXmZvOuGjm1dg17fLkyI5q1fFuK646aHIj1kf9EYWxo
a02QgqtiHN8CqUEp6FmBb4KkazHZRPhhr8cM1CSnc0F7U9v/I6YFRIt7R9dpgiI6sZzVKiUcnJ4l
1C+ZnUnyBCfWdlSDftkvi3w2/jGezjhfvgkC95vHI04DmGyGfsQ25A91g62X5rMxTVRuqhlmus0n
yCOAc0aI8Ey/qxQX+AqQOCJ9LjywpPCTEyuV2BzgjUvPgftVJxWgxMuveXlq8udv+VkpIIe/OCT0
7VeR7QpyUHe+UDfU9V6YnVVxusSeyicYhoXULV1Zb0vxzgjOfxCpQtF0Yhi31F1VWfrvX6UdsehB
rbY0ZgJz3n3P+wXx0Y2NZMDgE2yFH0c0MYNxVXkE72de2F33yaeY+u8Sg4sAbiF/NgPiFGwk9+Uk
l6/y1dySThP2BwojTuXQBIs1m5MW+lIPmNac7eQti1ypKF4YC6qSbeYFhfongovL4GXUmKJjQ2i9
Uj2v+Tl104rGrTFLcWefbVdLKJ6sw+zMXqvczpIbGX516oBx1rfSXe9jHPVjagbXdE4BoboXaGN5
0szmc4xa5Rs8C3lzE8TLIYts7vqrzm34e8OuDxUz8g2tjsW91w5usNAGpNwyws4jSv1arX3dI++d
yjh24FabSt5+pPVwJ8jxaDRF1GHGN5fXKk97dAlHH2V+iC5GJB4AYAXI19YL1sL/jnhI80mWVDj5
Pn2ql0kYAWcqt82oYXTXowzaL6Oe+bHfaw5Df9gjDVEzg7SP6J5w+JODasjfXdAyt8y0odwyME2o
+6ohU3ZW04UQCWGJ7ZzdMmYWrYnL3K4pfEojm3hUunw8lqvs98Ymz7qKdYU3chtqcnHh5tEEFKOo
BDQu48C09mf1SS3wfpYaJczAWzWBBduwIJLhIHgiWJx1oGCVG8CbWLbsF6CxNh13il1BqXjQ5vug
ejJyebsEKs2dX3L3UYL6DEjvunlIEhbVpi/agHT7wQLEc34Sles9EYj8QHFJSzL0XzGFXYU+Q4r3
x8lDmhjnj53+S7Gp0vA4HmxUqx7fAKin41YTZ9QZYiButN2YoWeonos5+Xg2yGPMr5HGPvMHpVHY
HBHorTElnkjbohfaM6G3rAGtDrvJUp/BcjRaCAOsOfvD+ypFVQRMcEbOGVWPgu7S1ecFIykNtQyd
/gaf22j4SoDVPDTV12P8sL2F/nXBDMSsEfkYigsKXLYjDS/5KSsxxwDHe6ux5EZj2vJnQg/7YvLe
h8ZRRBIZj1Zx6vKk1qBhbp/1ZPzVhRF/GULCNPaZ9+Il6HL+dWmuDKyJibxa/rLANjX9rrhnKUzj
VcwpaaK2j/z/pzzyEtOSynT2+ZWjGTewUw/RA4vl9N6wJsU9eA4PhPQr+U1p5Tzx6EhxEQsZUOuo
sg7VnRCdByxcGysGoY241DN+ZSJMkgCgOiOKxRZEcpcDx9xEWyRb4mGdGTffqvpPslKP7I0NV4Ye
3i+eObDxIEJPnew3zXxKFfpYRirI6eEL+PTTcKPxP2byEXXPI5RC0SrtGNGpjIkVw8c7Ugl921Df
i5QN/SULXLh2bLP9rVc+OWMnoLjBGSyMOdQHLVGS14+tvgZtaf0lzIuuKSUgM2fGy7QY+10TG5oN
4dcRA4kcPN+dyVGFIIqZ4ha/HHfKkzuDl/mo9vEzMBlviWo8Gq73yMC5Bg1zJ+XFQM14WFiiZ3tX
Mc3fdc2ej5cuWEJm1ID7DntZcLsjJ8P11tsjoz5AULjt03Em3GbK/J0ZuHl6ENM815gOjTz6nYmj
0jDpZ3LCoFP9fyUKVwspFiZb8qHmN59vi/e9WoHN+5Lpyj3x/A5ZVRuOHy5puykmr4JNszs6bQBX
Wln8+WDr/bsewsBatjAUnYf/mmSdOxmbJVBWxRulVhG0rOxXI1CywMmDDxIxrObf4wfaCFrOzVs4
LYtVqIot015wuo+KsBxVn/Z1ytmEdrrveyoKp4lkSgHEzjgozsh4hSTqHjt0Ai4Bhe2RFG5KK2ZA
6nBAtefMdAtQr1XjdwneNRY/QiyGn4AdDK6IyBNS1jgeBN5zimnhDigkb1s4tOAgOE9lumfQEOr3
bAtKIT6IUYttU8dz/5vzbPlnRDdhq6GZUApOyo3b2dNYA9oXsuVgHoQItkjnopJ8lXKALGfgbEyY
/RhEc0ScypnpTgsKZetzBhQmPXUa+TYkg6nD+rKZKi8wzSKgCLNxJqBhNmJxDh0vOsLeM+Jh11Ar
rFBZWb5ehx7p+1AYuYmQXiY/I0mYR4c9mCRxXHU/HC8Cu7bQ4es6snhwcmk50QIwJH+DsEASy+oL
ycsw1RrEeJ8t44wFXhqFyY++h6TMDXL6rx86KPUSb2Y01Kqg2EfRNeosFe6C6hlWpENyru6Xc+4v
gRcnTV4UuGmQ2Eks/ydFacQjYRCiyBi8OmG83TNk6sLUWQwZPOwLyUuVaujWHgD6WV05w1eq5UQM
L20mKQJjHS3KMsU2GHke2Yujh7kZ+8+eFX3VMbmRMXPEWpoEELWJ/9NSm86fopAzgz3oSyRMCaof
Zxm7G/03wkJ11r1E4/2yD2UQHzakiC8tyH+qCyKw5jPnzTJ6x9faXCiIgiccr1pG31dtpKDe1nVx
GIf52ReO5lu/mGd2w/bf5kTv6Cs+u0RP53Vz2O1V2KGhr40/6PWVtKOM8j4qHCx96EpMxBMo7XU1
EUJtUOny5Lnjlap3zVz5/TVNeLHE3bFOfpMT93UAFhcdjQYffilcDwOMjMc3FFoyl0vGf87YKB1A
nBGAoGakUEH+AvJkZUe6TssDg8oDfURHrHWsJvVPMIkkYHgSlKSGWEp//MSTgAh6J2L0qgaoX1HC
Mskm1nbZ7Se05uMpo/CylK6wltf5xUfI338kpY8IQqgqnxsf9dCG/OyZDtgwrDd6uNrVWUWyqbyr
GLao3x9M4kYCvhH9lmudfY/vcvh4FQXUNT7eKZ2BmeUyQAyEuVDaJRejiHOGJdA/zkdAUae/b4/a
jekuH7B6V/1fd5CyIKi1hvHa69dm8JoCM5PHF8cQ5fg6tPtv8Tk9RODyGkd+UJtsNPT3tWSPrzC1
FRohXzij0CivfGPYLdaGOg5QlBFdhgKy3vVENgFugxWMKiXadhkmW354XdqdQMYUZBPAQ08wklm5
zSawT+MSFWdzrOmA7GO2fjJKtuZWG6stiN6UCf6e3CZxnw6Z2wfYZncVkGCscszVIJBgTaxHkKT4
+TwlVN+kdqovxwMhqbzGr0CEUcaxUxYo5z1D/LF09Cx3mPAB0OwsQujYAEmcvY+dIaNjQ67kXfcO
LWNXQZo7N++lsY6XNjHa4VOcU85m1eaCGKHImRD1qOzcbpNkqTNZxioEj4vGdCG8GreyMtQLmekt
ZrXf+g2Sbf1fbNl7o7ZsoBPlBvmgUXbleEggwRfEVl7roiLgzLv3GQ03fD/ulPrCxa6DhHOrgDwx
G5vTNnKAGKyqT1vC2cvdzoNlF77Z7+ihI+t+Tt4MgGrjeZogaXVdOfQPQBeqj4DbW2yX+tSTMd8G
CRWu5kCHS/OHRsmKrbXp74ydW27AizFiVGgAAVqxc4LRj8CoxY/VHBnwwAX7Y5DPkCIqQE/Vrx42
1z2y7qDl2H9kjlagJgANIbEDvRCz0VN3cEwz5tEybzQbR2NeeM90Igpd4H206G/s46ElSblLF9pF
ALzPX+RGqkxreU+zLPy0m+Fob0dOMYS8ynHXeb7Z/k4Tra0SWPK6qinSjhph8CImLpZO8ybM/Nm5
XoYjMNMOx4105bDyUhNQo49ZJKn3TJHSFAhE6KtHSwpdAQ57BON3NoVrT7/HWSuM+pG+6jOqUfcm
gXDZZy23x651sVA5gVwC32IRT67elicAGUPZ5P5q21liq+PLQSYLjz4aWFOVRa5U13gyIZuvhMZq
/zZLjjEvJQ5wTzVLsGT73CiIWGzx9bQXNm+8Fi/zlB8F58n5a2xllb9mVv6gVaFButPIZcG16pmZ
Q5gVdqzCHjK+2MZSjAsmGxBw48F5qLnpSTdXkV4+vuxktgwmgyqdu8lLQ5FgMNBQjzTd3URDbhDr
MdxzliFVOe2FwHDFhPbfKSzxsnTveli+htTrU+VSjuRDukatU7KPmn7Pc0PWaXCgs82bILX3Awgg
XkPx7PlRIyTUJRdQRGLBXq9amTYh9gAWEafFRNbxFEOr2ejoLc0wMw6DsfkYYLY4V4iVSdhFV0tJ
nLENGBxYjnTmpRRaroNuHO4yIblGRCh3AtmLdKibdGG2tdNewnWO+E5zB4LbOHvx75HodV17ubDC
fKzQbXhysx12O9oloa6RcAyMO83iTIGtojNsoegoFcovJTKmhESOIlVUxK9OxyVLOOhFxSUot/mn
q/ivlk7VGsdRQSywMaWu2LIVVkMFPUOiY17XFNjDgOBytIPtxfju34YUQHihYxytRJ8L+SV515sE
f9JoyN12VAck1jPSYaB+GKjxjG3hmKJsn8zYgfctpdTdDgXQR/b9DhZ6ss0pTb/D45WSweYXTFXN
JmM/UbYDlBpzigNgpylNGJD8VM6zN9rIYbS/b2WABVvwWJEtN7/s9ONw8vSlvsuron2gQKPcEIKk
nFqdf53k5yd+x0BcyNwZlEL8kkGw1mC4YtPWXu42toDLc5FYYnkhj1QalGiJQepsxuOVpR9uErvA
qjnX6eArqL++fG/GmS9w1rEnu4p38VEOchrmZCPYdjRppvmQZHYirbrtPOB1HfYd3ictMuT1ShNE
o3bFCcQlD5cf9Wk+/uBKUE5f2S4T6WyR62RKlJY5CDItVmMyriM8kivVhM4CJos/K2ApAdHSDu0a
1gbBZik17a0LHMvOWsLlGR9wEYnbMhDWORkZrvG4uGGke4j4q9R6tnYDcDNOZj4Ko4nL7gEPRSok
Meq2ODR77ZTTOh8+TkphnbofV4JceHQeH5xnJbyekwOluNTrkq6c9+SqI+C3qA+/Ttrm/WFBffgq
07a3D7IwfPwmecwRaVaswNgY9PtoZPVrjAxsQNwPpkmQ3E5j4pn0Yd8fOsskcqebAc5s3ppegBF5
i53Fv4f7znAWIomeiSGiXUn1+cAa64G+FgtnFSYM2gypoYEYrDLpt2q89btcqY0JWgRWGan7ju5K
RsG1oqLjedFk1ENQSx/jcJ2GiTmxwvByjLEjvKUK+AHu5hbNQPYZaYEHl3qgeDUI04qPsjHuxRZW
IM5VZX2XfOWYXtwR4dBD4Ys9s+SP2U2/bidOh56M34y5aRCFBtWnuHcuD8EXfN9rlRZ9cSko9gEf
9Wk97g0X/mwVc5buPND0sHpWrgShU03i+ZSK5q2q2o1qj4ayrVU4dgvxF8hr05RStfopRGzouZGB
75pymic0En/2vxtsz0GTBhRnXj4f3/U9Kq3aAK3QocAenGsPBZ5w6JX/HH+u3B9IHqJZb/HMmT8j
NxD8pHBCulRJRwTaPhR03+cfsQCu2nXaByjFpj0jJNIhcJUNDcDQwpDanXbpre3eaH4Z7o88uavD
ejpKvgVXHHwCxaAkWRt1iswl4ddBVK0Whdl6uRA8P7TGv3H7i0B5fNrdHGESPpjOT9pC+Z/CuO35
vSy8KeKI4C9o084fnPLfFPYy0kNgXpiqmMszFJG1QcjV+AssC9K9Cg7qBcR5uR1ZAsaVuCUCnXuT
6cQEJeEcRe5Ac/8V6tl3IgDxfnb4phLmadmkw8IXxu/hbPPNNiUVleiFz4il1KjEUjtw2uwoMmhu
bvgPQ2sFkAfQrGtIaBsYKfJh5c9vmmuLUY7T7dKyHIwpZG4JlWlX+b1Spo/Zug1O0eGjhF/GknL5
zOc5jp3mI2NCSfZDWUwjVhE0AibIRVrjOwFGysyo2jTQRMTl3lBTlQghdEl0L43bxxzjlbvSgPaM
ogkw8k78Xn/Ul7+HoRR3/chNTD/0ADhpZJ0+jdov1KUlRgt3bojaR2QEK36Ofaj9PPbHLVxFGDI6
b48zuak61yQku2lZQN/WC/BJh0Gm5cGD7ollIKIOjq5ElGN+l66ITpR6GUMn+CstX2dSqP+K4A9Z
MlcHKlCXKXT00PLriK/Fa+Mh0UcPSWVNkfTlOTSEm7p69htA+ArAimZiAqlix/cn2r/LAk/Mvh+7
jZM3pQ4ObMol/5IFKAuaqUBdI8tm0sOD46+1dNMdaPG1ne9n0rxHLX/WddsuO8Qy2Xnw3NOnEwII
KP0xPriNvcip2fIwBZ+WVmZcgO9wvWSGzgs53EEV1EyL2Zayj7HR3/+qti2z6ccqDAGpOS6DTkoT
ALVTa5yWwmHnEht/sKdFq6w3T1E7V7uhMk54MPmbhbr2t8jywpQOohnDvno47OeYOnwDcw04Mz2g
mqp29wZEYCiH0zsAQ0t+t7TK6rFZ3pyP3ub0qk/hEBZcTzInslZnbfks0FrJRS3hULBbsvHTWzxk
VojkPPhpeGX3QnQPS5NlvgH6a7ixFSEyOUALF79HOmym81Qrc4DeOEJMPxO3hNSfwdLBsiEUNMUZ
uPpvSKAYAOiStFgWoGhOroaaXBlQ0jwtzoIhK3s8xz4T3bjJ64GNGzuYZ/zAB7tSaNAJgBeuzQ2n
xi235Q1EZmESlG5uCmMkcFNT7X4IJ9jiQyI/qlTlthmZqHCfVExuY82Jzkab5txu0R/Hae6/ZjC7
98lMAbPRWrryE/MyBwp9D3zmSRtSNGeW1fStaXPC2ZRknNsqi+QfQk5KCMMoIJVO5EDwNxNGK5NW
qaevPjQTh/EpDGLqsnN6vaMhJW/QhwKCm1u0F+VrPu+i7YQjexOoY1WuIoMYILm2sEpaSQrMrJLJ
82ppMDnIivreOhyq/6DYCxb2clN8XDzu/wblslwO5b5Qiu9XNYBXMfMQ5fioyG/0QJ5UfYQT3paP
aTM4pcbAN2Fra4liyc6DgXPVQvWnBUPINkbma58hF8k4X9kkacqPFgxSUSZheUY3wz5Ry3bc9hmN
uigo8FAkZmiXxzuUun+qdYT+euGJ2be14IAbsJJfC8PVBxbhSffiCoupgeKbGD79QT2IqDy8UNWe
tALTJHKujfABVEy+i7Z3stUuFYY/thd4hy0eu/IPWOgJnwCfoEEomoJYK4eB2/zBcK8OXiC/GnDD
Ae74Eac94/CLzusLKrc9tQ+P+VsCHrPa3NtJr5NXRSbgJDQTl8hp5oCb74PJB0YnRM5YtAmBS8yc
aoxWjTiyYUpa5KLAzwi7YSaO7k3lyZ4X+5qxtvFasJY1c5laF3anKThyjd2unzK7PdLdXxswhUTu
TmOqAATBLlF0OmvA0FOvcphT8O1PicENAMCfhMegwXvMtow2MuzEO2NBdpYmqL6r4UefgMmAKe+r
btpr69Jx6EzsuKDp2//DybC6U3VSGpujidrIsptHXTwafNsInZzrkuXcchS5ISS50Kknj1Sf6FkN
QvKw4AZK87PMLuMTKJaEvfGOM6VjGRt+UKdVq7h5PEHTHgC5A590+kQEakV1i+C8PDPRjuP5p067
FOuJUr7SJMMRSSE+92IHIXXX0vyWEYjyr1TtacNtu7+cmMOIFsoBwLb3fCz784WkKJW/uFWo7J97
mtz6CarluVSAyZemtpocMLGaRVyqi3vYj9ieUyiOXu2QF5vIujpK5SDIhTN29EOPeIOLSgaCn0Sg
Y/5643dXGOG3CFJQfdgsur02/bplc7S84j34iD6FP7NtiLvsLsoO4SfLZfUQj6y7WZx++gaSV+aY
bgJe1QnRV6ntKdsd/8+CvR3VSVFGMAyKOe8KRyiU4Bx+rNu4sum8Zx7lFyViO0M7bhY3fxdJgZN7
pZgHNptRvwNxc+ol+WukXckqiOmQioPsfEVwicCROy38/adhv4lalBS+i0HeHeOoSygod7W8vr6w
yg6VtiM78HVxnaBHKqAAp4I3AfWqRXs+wU42GON5+YzCL4vyKSfnA1c3+Wh1T3nmA766cJRn8Pa0
9ODszMkBtFALNkMBJlzKa3rvIcPYyTnHrgW3GII3TwpWhHJCLiIilYAEHSr8hlEqb94hjcWDigvQ
Bq49kqUlzS1i3TlrSNiitnetVwA1P9VdDIuzXImPxxFUj0KNYUixbivN6MGiAT6xBKi40LAN3qjz
+x+KcreFI8NHqh95edVvcaOZ5E8aayKjoKAwvwyM3QTz5B8RxtPo69n1vE4x1jVxlmTmkvYk/Q2l
N023sl+COrlgrnKfTFmGpBIdPEblV4zjTbKLzFa9jEC5RxUmjKH71l887LhFg6kWjy4HA0WNSRFN
AflgrrxjCwmV5zwWey4ZCynwLrg5lGi3exk2do1NNomZbYy+LBlvpWS9oEC3pz8ijCEao7Wx24Q6
bDfI2nkmXq/d9IpHUqwFRhU45uR9hmJkRZK6SFxHO7oYvvh5EHuTvsG+52IR7fvDck68ZDusIMZP
urzbjKz+b7MFMor0oJsc8ezM4OOKNoVtC+j3JHwDJxEDuCzmo7r/jmH+P2Gl0PhOIwo6rR13s/ch
/+FVRaDY3Ib9iqr5R0wO0kmiOCpHse6A8fVM0ha4u3zpL6ETvDFVZIan9joH3CQc8YercM5mhBPy
W1GvnDnmdnmb/CpMsiI4n+1ogyTLTA5qXSd228JoPDXBVbIYcZQEmJB8GWi7kDJ5M+NycZtqTD+7
BmT1rselDVXq3nw0Hl8nfeignjs9Ebsi6X2uguKZ6G1L3Va6ZaaG3wazWdYowrNv6B3qBFC7pl2Z
uhjZpcJF/mikBEjj1xqYOUqwCvZAN1Ws/2scmnenkZ85KYbqjXLFxfDx139O336uJ7NaHblvoBno
9d5CUglI+A+1TVl6Zy7FY5AoYvZP0dzWYywM0H8qOrmy6BUIHkoBUUH8SWCYzkxFtFX7DqNgAJ0P
nFv5PMpvrGJBnNfF6nwt4sl7rIb/KsVv4MqZJCz/HPqw5Nr+q9/6iYMiZcDSCHFJxKY5/qih8TS6
oOAB1cuQv1QfgXY2ysuN7l5sMN2ufGoUoYGuhNlFBn7xxj1tZm0v0YKEzvB6W2nhvGEJXiPmUtjN
QSs0oSHdcHqNszDWS+Gg2ln7B/4BNiyok0AxckizdpiDFQjXsHvzYjx+KIdLm8le0s4xfrOnlIXN
ivLREnXtF41zerhWRPbFJlxtT0IaeVzyvkJbDls0CqJxqnz1beA00Nws03CJPS30tFX9AyzrZmyr
GlcgsZRdhXMhjdkgQZQ9PmCliFkP3c6j5mYL+QLWufChmNfY+Kx/7hjwZjU+3lyOn/IbqvgUOrwf
xiNjPyn4NRv5WvYT44DNXg6UDTy7BgtOm2wQCvam1zWZpaPk36eKJHNHIvv6aEqW7R44XI4BMXOS
eAGkbFwKcGdoyR0ghunZCFjkGNuubZDydgw/qtMzjiz1nCU4FoNG7ZLJ7D+6+QUQm+v1DhPRFDoi
9oR8U6tzCYRWI12mfpyngF7g6nxFBQ4McZ/H6lpuix7HNEF/vcKkz6bfCVjw7C2iNlJryIFCsrVF
PV8Wk+WjdUMQPzZQLGquCxsQ/6NJjCmaNKzj9DdQa5ByTpVMQDpfUqc4Q7kazmJOtDIQg2eaf0/9
t4ukNuASwfqjv0gJfKSwfgy5BCNTjL9y6YVx6E3I6FKkFYFjhiJPE7Dx0+NUip1zJMKfkHVx16A7
tQ8z38gxBJLGv/06LdJJgN6Alv8m8tXfmAVFW5efJJfrkJ6e025l9HhUv3b15N9obCgsqTPOQDZX
uICirEn95Wj0Kn4RTtOPQfOw2iNqX2jIp6yOWDr27UPJ+R5yw83BJ2JEeQ6y9ff47Yq5ralLrT7T
h9xzveR9E9Rr9cOhAUurClRm1oYkB70m6DVv978rni1Hquv6v13RI8H0FQaHDS9lUQf9PL0oFKax
iQDLS5vIT92ekgb3VY5plDmAF99ml4ghGwOCLMFImwb0bn/Wf0Pi3k+81wn/lnoOiVkqF7x3NGZE
IfMLx/c+gcyeMAtPYZtY9xtING6QzDq8nMN6aIYlP1kRy3/P2pm1QuHK1yFQ2LMTsS+7tjvmHgc3
eJMAOMjp2pG/vwbJqMTqtzu8CljLKi7TjiFxVJWV8rxh1uGQrPdyLCqRWQ8eq3ySGNkXCVZYxHLp
VrI05t95FkVQJ0/vh1tBb9l/dlejlsNJBFnSuKuas9KZ9JQ2TEsQ9/bO7pCAK7AdDXq0QIvUmcV7
5uNueqN4gmgEAdDuSDbe/BA1gka5N/8xMWr2iRLz7lS/FGS0cshsFNGwe5JWPaGvqyVdMTKRHNNn
chyQslIAeCjyYCbmBRB7RLrl1F0cEWeL4JBlvuzO4WOEJTZDkTsMSqRXgKomp0d3VOLea5eUKP27
mzeECXiPmoJalhvDoJztWUyrMdayiSV6fZjSHDENQDr+2c9jAcYZ0tBrhhUqzlxWpPnQIB+bcrHY
IsJQ7S355PGV30TYw2rkhRTK9s/Y0F9izG83q8/ytZFYiOr6QOK2zzFcN0y1AGrmzFNdF+rU6JSC
Ua/qCDaV+OjoczTT1Wmg07tli+/B+lcIRooO7xFvmR/Jbaji+0qqtzdNAjyuoF/+kDOhxQz2M27/
V1Acnm5YaHtFO7Z/1oXIb/rujC65gJ+9Tp2L4yiRWBuHnmovgFfen+3bh6SE8u2X5J327rNvlGsA
JTAcD/d9aBuBazKoX9B9rUcK/NCJzYGzCthQAOSfwBRSviuK+xdaD1p3BMo263x7BggPM1n21wLF
RjgiNZ6WhXz5Jj1IEqjfQQ/jIH53gsYhVa50nH1qkvhSA9aqd2m0rMGjmRUeiNalvX5mQqFZ+GMj
n7m+hvlwlHSunmDc+0ZIBJIsBEGdgfdM0ArWyyRKQd+T+9lR87TSGlXOwElYQA5EBO0xZM6mkVEf
7e5Ss26//NB//FHjtcyLBWXjApEcTa5s+hQatoJHrXWFmFX79OvocuhIDupvxHoG9O/2NKg3/MpM
YNk20zzWWLWesHTXeclaJgG5s3+atQn398sTuZb+Q5833Lf+oOEyAlIJho/kAMmIaEvhycWomRbL
bXgSTTJMIHHW6/JuGFwLv/+wLg5I1+2XPabIej/GEQFwjRrgBmmd8od9+nvnImeERnSG2Y1flfjX
0BvuGoKEbXcyZgqhwKNYhKSslbl/uZPwSUP9F/6+zEw2SaJ3ChtiQqPE/daDCErtG6BQzgpk4VbI
i1kYMtESCQcLRyX9o8kwldm4htTTSztGaznZ2eqt2oRwrERAXcib5SFfG7VXKNn7utpatsz5rzG8
FQQkubD4Az8+m5llmSJZNrweKj0vR0B9B5Nn7awe6TMumD7Dzd1YhGhhtink1eSGY7WwQn/WDnwO
zQ00bw0Xh5hxZPQrmxEJ/WRNmWF+4VRmSGny1NOq/wsMrWWuqxi4YvITQ7h2obV6po6IO9mGGwtc
TgwcsHvjM3XPfinhljD4unT8bcDDWS57kyWpbc7CxlqG/JWWVrbgzrOxyFxhyuJikzezuiXxHVwX
7Eq+Q94Qy1ET/H/ePpH89RbPK46HjcK2zUpTt5sOI/cHFs2QSUgOtCTme286oHmodZlzPSLGCZYi
1t7U7cTV2faGqCk7W8lmA/zpw9DtKttonAtsVO0PtwEtWcLFita2C3hSoCABKXLOlHOf6FPw0/8s
gJ8AJXx3msey2SSQfuH3KxjY1QdXF2tgKKb5wz0dB54B19jQiLKbrXRJyXLuvKbwuq88jZFYWJ1d
dmSeMg8+vgPItkw6jNxXT188ApX22SC1fQ62JYs7TLOOdTTApS6DRKBxNWyfxeldrwRQF3iM+5us
BXgg6c+48TZYPThKgGf0FD9QU2J+7kEGVjuNhKe8JpUY4hgSN6cgQvUfZwB+WAp0QDElntGKmlHU
CHH8C82VSvevTgDbHgnQTPjNJP8Yu2qQp6J46Q+hY76tLIYxNSiIt8kdx5DpPGsEvcZDDBlfga2+
V4ejOPYvj7W+cShX53Vzk6aa+xd26xpW5nza5ZA5vJIqn4Pfp/atTSaMZ+lrf0WwwUQKx+HnpcvF
GTI5qzBuZluP3LOG0yuxhABBgx+UYtgArAIs8RMuu12crUd1vpKq3mymT8zNwSlYZZZbEYSSXhBQ
hBhTgoVwGA9CugjUNw7iFFmnjJvkcwwNiXXAKnmEbpCYmXaolbHqyFOVFET+mmzI9//ed+eY4ckq
qjLT7UAAf9EVqUmfjuCkVpeRDkmenTMM7Xvo3iBxOIVghNgUx4dU/o/cuRB2mU+kAVC3aJhXlxrT
yvh7BNWMcvpvJp4I6sUZKwYcIpQnI9tm3jiSckQHq+GVGvgG2PWDwQM+oJl4
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
