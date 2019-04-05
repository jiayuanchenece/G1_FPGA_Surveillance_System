#--------------------Physical Constraints-----------------

set_property BOARD_PIN {eth_rx_clk} [get_ports rgmii_rxc]
set_property BOARD_PIN {eth_rx_ctl} [get_ports rgmii_rx_ctl]
set_property BOARD_PIN {eth_rxd_0} [get_ports rgmii_rxd[0]]

set_property BOARD_PIN {eth_rxd_1} [get_ports rgmii_rxd[1]]

set_property BOARD_PIN {eth_rxd_2} [get_ports rgmii_rxd[2]]

set_property BOARD_PIN {eth_rxd_3} [get_ports rgmii_rxd[3]]

set_property BOARD_PIN {eth_tx_clk} [get_ports rgmii_txc]
set_property BOARD_PIN {eth_tx_ctl} [get_ports rgmii_tx_ctl]
set_property BOARD_PIN {eth_txd_0} [get_ports rgmii_txd[0]]

set_property BOARD_PIN {eth_txd_1} [get_ports rgmii_txd[1]]

set_property BOARD_PIN {eth_txd_2} [get_ports rgmii_txd[2]]

set_property BOARD_PIN {eth_txd_3} [get_ports rgmii_txd[3]]

set_property BOARD_PIN {eth_mdc} [get_ports mdc]
set_property BOARD_PIN {eth_mdio_i} [get_ports mdio_t]
