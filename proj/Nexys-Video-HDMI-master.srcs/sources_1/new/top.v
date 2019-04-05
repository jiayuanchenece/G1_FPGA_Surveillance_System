`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2019 08:10:28 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(

    // HDMI
    output [0:0]hdmi_hpd,
    output [0:0]hdmi_rx_txen,
    output TMDS_OUT_clk_n,
    output TMDS_OUT_clk_p,
    output [2:0]TMDS_OUT_data_n,
    output [2:0]TMDS_OUT_data_p,

    // DDR Interface
    output [14:0]   DDR3_0_addr,
    output [2:0]    DDR3_0_ba,
    output          DDR3_0_cas_n,
    output [0:0]    DDR3_0_ck_n,
    output [0:0]    DDR3_0_ck_p,
    output [0:0]    DDR3_0_cke,
    output [1:0]    DDR3_0_dm,
    inout [15:0]    DDR3_0_dq,
    inout [1:0]     DDR3_0_dqs_n,
    inout [1:0]     DDR3_0_dqs_p,
    output [0:0]    DDR3_0_odt,
    output          DDR3_0_ras_n,
    output          DDR3_0_reset_n,
    output          DDR3_0_we_n,

    // System Clock and reset
    input         sys_clk_i,
    input         reset,

    // Camera Interface
    input         OV5640_PCLK,
    output        OV5640_XCLK,
    input         OV5640_VSYNC,
    input         OV5640_HREF,
    input  [ 7:0] OV5640_D,
    output        OV5640_RESET,
    output        OV5640_PWDN,

    inout         IIC_0_scl_io,
    inout         IIC_0_sda_io,
    
    output eth_mdio_mdc_mdc,
    inout eth_mdio_mdc_mdio_io,
    input [3:0]eth_rgmii_rd,
    input eth_rgmii_rx_ctl,
    input eth_rgmii_rxc,
    output [3:0]eth_rgmii_td,
    output eth_rgmii_tx_ctl,
    output eth_rgmii_txc,
    output [0:0]phy_reset_out,
    
    input usb_uart_rxd,
    output usb_uart_txd

    );

    // Camera Wires
    wire [ 3:0] frame_in_tkeep;
    wire [23:0] frame_in_tdata;
    wire [23:0] data_out;
    wire        frame_in_tlast;
    wire        frame_in_tready;
    wire        frame_in_tuser;
    wire        frame_in_tvalid;

    // Force powerdown and reset to enable the camera
    assign OV5640_RESET = 1'b1;
    assign OV5640_PWDN = 1'b0;    
    assign frame_in_tdata = data_out;
    assign frame_in_tkeep = 4'b1111;
    assign frame_in_tuser = 4'b0001;

    hdmi_wrapper hdmi_top (
    
        .DDR3_0_addr(DDR3_0_addr),
        .DDR3_0_ba(DDR3_0_ba),
        .DDR3_0_cas_n(DDR3_0_cas_n),
        .DDR3_0_ck_n(DDR3_0_ck_n),
        .DDR3_0_ck_p(DDR3_0_ck_p),
        .DDR3_0_cke(DDR3_0_cke),
        .DDR3_0_dm(DDR3_0_dm),
        .DDR3_0_dq(DDR3_0_dq),
        .DDR3_0_dqs_n(DDR3_0_dqs_n),
        .DDR3_0_dqs_p(DDR3_0_dqs_p),
        .DDR3_0_odt(DDR3_0_odt),
        .DDR3_0_ras_n(DDR3_0_ras_n),
        .DDR3_0_reset_n(DDR3_0_reset_n),
        .DDR3_0_we_n(DDR3_0_we_n),
        
        .IIC_0_scl_io(IIC_0_scl_io),
        .IIC_0_sda_io(IIC_0_sda_io),
        
        .hdmi_hpd(hdmi_hpd),
        .hdmi_rx_txen(hdmi_rx_txen),
        .TMDS_OUT_clk_n(TMDS_OUT_clk_n),
        .TMDS_OUT_clk_p(TMDS_OUT_clk_p),
        .TMDS_OUT_data_n(TMDS_OUT_data_n),
        .TMDS_OUT_data_p(TMDS_OUT_data_p),
        
        .camera_clk(OV5640_XCLK),
        .s2mm_fsync_0(OV5640_VSYNC),
        .pclk(OV5640_PCLK),
        .frame_in_tdata(frame_in_tdata),
        .frame_in_tkeep(frame_in_tkeep),
        .frame_in_tlast(frame_in_tlast),
        .frame_in_tready(frame_in_tready),
        .frame_in_tuser(frame_in_tuser),
        .frame_in_tvalid(frame_in_tvalid),
        
        .reset(reset),
        .sys_clk_i(sys_clk_i),
        
        .eth_mdio_mdc_mdc(eth_mdio_mdc_mdc),
        .eth_mdio_mdc_mdio_io(eth_mdio_mdc_mdio_io),
        .eth_rgmii_rd(eth_rgmii_rd),
        .eth_rgmii_rx_ctl(eth_rgmii_rx_ctl),
        .eth_rgmii_rxc(eth_rgmii_rxc),
        .eth_rgmii_td(eth_rgmii_td),
        .eth_rgmii_tx_ctl(eth_rgmii_tx_ctl),
        .eth_rgmii_txc(eth_rgmii_txc),
        .phy_reset_out(phy_reset_out),
        
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd)

    );

    
    ////////////////////////////////////////
    // Capture Input from OV5640 Camera
    ////////////////////////////////////////
    camera_source cam_source (
        .pclk(OV5640_PCLK),
        .vsync(OV5640_VSYNC),
        .href(OV5640_HREF),
        .d(OV5640_D),
        .dout(data_out),
        .valid(frame_in_tvalid),
        .last(frame_in_tlast)
    );
endmodule
