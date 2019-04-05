# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "initRead1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "initRead2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "read1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "read2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "resetS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "waitforClear" -parent ${Page_0}


}

proc update_PARAM_VALUE.delayBetweenFrames { PARAM_VALUE.delayBetweenFrames } {
	# Procedure called to update delayBetweenFrames when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.delayBetweenFrames { PARAM_VALUE.delayBetweenFrames } {
	# Procedure called to validate delayBetweenFrames
	return true
}

proc update_PARAM_VALUE.initRead1 { PARAM_VALUE.initRead1 } {
	# Procedure called to update initRead1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.initRead1 { PARAM_VALUE.initRead1 } {
	# Procedure called to validate initRead1
	return true
}

proc update_PARAM_VALUE.initRead2 { PARAM_VALUE.initRead2 } {
	# Procedure called to update initRead2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.initRead2 { PARAM_VALUE.initRead2 } {
	# Procedure called to validate initRead2
	return true
}

proc update_PARAM_VALUE.initRead3 { PARAM_VALUE.initRead3 } {
	# Procedure called to update initRead3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.initRead3 { PARAM_VALUE.initRead3 } {
	# Procedure called to validate initRead3
	return true
}

proc update_PARAM_VALUE.initS2MMClearS { PARAM_VALUE.initS2MMClearS } {
	# Procedure called to update initS2MMClearS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.initS2MMClearS { PARAM_VALUE.initS2MMClearS } {
	# Procedure called to validate initS2MMClearS
	return true
}

proc update_PARAM_VALUE.initS2MMClearS2 { PARAM_VALUE.initS2MMClearS2 } {
	# Procedure called to update initS2MMClearS2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.initS2MMClearS2 { PARAM_VALUE.initS2MMClearS2 } {
	# Procedure called to validate initS2MMClearS2
	return true
}

proc update_PARAM_VALUE.overlayCompleteS { PARAM_VALUE.overlayCompleteS } {
	# Procedure called to update overlayCompleteS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.overlayCompleteS { PARAM_VALUE.overlayCompleteS } {
	# Procedure called to validate overlayCompleteS
	return true
}

proc update_PARAM_VALUE.overlayS { PARAM_VALUE.overlayS } {
	# Procedure called to update overlayS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.overlayS { PARAM_VALUE.overlayS } {
	# Procedure called to validate overlayS
	return true
}

proc update_PARAM_VALUE.read1 { PARAM_VALUE.read1 } {
	# Procedure called to update read1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read1 { PARAM_VALUE.read1 } {
	# Procedure called to validate read1
	return true
}

proc update_PARAM_VALUE.read2 { PARAM_VALUE.read2 } {
	# Procedure called to update read2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read2 { PARAM_VALUE.read2 } {
	# Procedure called to validate read2
	return true
}

proc update_PARAM_VALUE.readClearS { PARAM_VALUE.readClearS } {
	# Procedure called to update readClearS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.readClearS { PARAM_VALUE.readClearS } {
	# Procedure called to validate readClearS
	return true
}

proc update_PARAM_VALUE.readClearS2 { PARAM_VALUE.readClearS2 } {
	# Procedure called to update readClearS2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.readClearS2 { PARAM_VALUE.readClearS2 } {
	# Procedure called to validate readClearS2
	return true
}

proc update_PARAM_VALUE.read_addr_offset { PARAM_VALUE.read_addr_offset } {
	# Procedure called to update read_addr_offset when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_addr_offset { PARAM_VALUE.read_addr_offset } {
	# Procedure called to validate read_addr_offset
	return true
}

proc update_PARAM_VALUE.read_transfer_length_offst { PARAM_VALUE.read_transfer_length_offst } {
	# Procedure called to update read_transfer_length_offst when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.read_transfer_length_offst { PARAM_VALUE.read_transfer_length_offst } {
	# Procedure called to validate read_transfer_length_offst
	return true
}

proc update_PARAM_VALUE.resetS { PARAM_VALUE.resetS } {
	# Procedure called to update resetS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.resetS { PARAM_VALUE.resetS } {
	# Procedure called to validate resetS
	return true
}

proc update_PARAM_VALUE.transitS { PARAM_VALUE.transitS } {
	# Procedure called to update transitS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.transitS { PARAM_VALUE.transitS } {
	# Procedure called to validate transitS
	return true
}

proc update_PARAM_VALUE.transitS2 { PARAM_VALUE.transitS2 } {
	# Procedure called to update transitS2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.transitS2 { PARAM_VALUE.transitS2 } {
	# Procedure called to validate transitS2
	return true
}

proc update_PARAM_VALUE.transitS3 { PARAM_VALUE.transitS3 } {
	# Procedure called to update transitS3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.transitS3 { PARAM_VALUE.transitS3 } {
	# Procedure called to validate transitS3
	return true
}

proc update_PARAM_VALUE.waitforClear { PARAM_VALUE.waitforClear } {
	# Procedure called to update waitforClear when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.waitforClear { PARAM_VALUE.waitforClear } {
	# Procedure called to validate waitforClear
	return true
}

proc update_PARAM_VALUE.write_addr_offset { PARAM_VALUE.write_addr_offset } {
	# Procedure called to update write_addr_offset when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.write_addr_offset { PARAM_VALUE.write_addr_offset } {
	# Procedure called to validate write_addr_offset
	return true
}

proc update_PARAM_VALUE.write_enable { PARAM_VALUE.write_enable } {
	# Procedure called to update write_enable when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.write_enable { PARAM_VALUE.write_enable } {
	# Procedure called to validate write_enable
	return true
}

proc update_PARAM_VALUE.write_length_offset { PARAM_VALUE.write_length_offset } {
	# Procedure called to update write_length_offset when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.write_length_offset { PARAM_VALUE.write_length_offset } {
	# Procedure called to validate write_length_offset
	return true
}


proc update_MODELPARAM_VALUE.resetS { MODELPARAM_VALUE.resetS PARAM_VALUE.resetS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.resetS}] ${MODELPARAM_VALUE.resetS}
}

proc update_MODELPARAM_VALUE.initRead1 { MODELPARAM_VALUE.initRead1 PARAM_VALUE.initRead1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.initRead1}] ${MODELPARAM_VALUE.initRead1}
}

proc update_MODELPARAM_VALUE.read1 { MODELPARAM_VALUE.read1 PARAM_VALUE.read1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read1}] ${MODELPARAM_VALUE.read1}
}

proc update_MODELPARAM_VALUE.initRead2 { MODELPARAM_VALUE.initRead2 PARAM_VALUE.initRead2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.initRead2}] ${MODELPARAM_VALUE.initRead2}
}

proc update_MODELPARAM_VALUE.read2 { MODELPARAM_VALUE.read2 PARAM_VALUE.read2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read2}] ${MODELPARAM_VALUE.read2}
}

proc update_MODELPARAM_VALUE.waitforClear { MODELPARAM_VALUE.waitforClear PARAM_VALUE.waitforClear } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.waitforClear}] ${MODELPARAM_VALUE.waitforClear}
}

proc update_MODELPARAM_VALUE.delayBetweenFrames { MODELPARAM_VALUE.delayBetweenFrames PARAM_VALUE.delayBetweenFrames } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.delayBetweenFrames}] ${MODELPARAM_VALUE.delayBetweenFrames}
}

proc update_MODELPARAM_VALUE.initRead3 { MODELPARAM_VALUE.initRead3 PARAM_VALUE.initRead3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.initRead3}] ${MODELPARAM_VALUE.initRead3}
}

proc update_MODELPARAM_VALUE.overlayS { MODELPARAM_VALUE.overlayS PARAM_VALUE.overlayS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.overlayS}] ${MODELPARAM_VALUE.overlayS}
}

proc update_MODELPARAM_VALUE.overlayCompleteS { MODELPARAM_VALUE.overlayCompleteS PARAM_VALUE.overlayCompleteS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.overlayCompleteS}] ${MODELPARAM_VALUE.overlayCompleteS}
}

proc update_MODELPARAM_VALUE.initS2MMClearS { MODELPARAM_VALUE.initS2MMClearS PARAM_VALUE.initS2MMClearS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.initS2MMClearS}] ${MODELPARAM_VALUE.initS2MMClearS}
}

proc update_MODELPARAM_VALUE.initS2MMClearS2 { MODELPARAM_VALUE.initS2MMClearS2 PARAM_VALUE.initS2MMClearS2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.initS2MMClearS2}] ${MODELPARAM_VALUE.initS2MMClearS2}
}

proc update_MODELPARAM_VALUE.transitS { MODELPARAM_VALUE.transitS PARAM_VALUE.transitS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.transitS}] ${MODELPARAM_VALUE.transitS}
}

proc update_MODELPARAM_VALUE.readClearS { MODELPARAM_VALUE.readClearS PARAM_VALUE.readClearS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.readClearS}] ${MODELPARAM_VALUE.readClearS}
}

proc update_MODELPARAM_VALUE.readClearS2 { MODELPARAM_VALUE.readClearS2 PARAM_VALUE.readClearS2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.readClearS2}] ${MODELPARAM_VALUE.readClearS2}
}

proc update_MODELPARAM_VALUE.transitS2 { MODELPARAM_VALUE.transitS2 PARAM_VALUE.transitS2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.transitS2}] ${MODELPARAM_VALUE.transitS2}
}

proc update_MODELPARAM_VALUE.transitS3 { MODELPARAM_VALUE.transitS3 PARAM_VALUE.transitS3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.transitS3}] ${MODELPARAM_VALUE.transitS3}
}

proc update_MODELPARAM_VALUE.read_transfer_length_offst { MODELPARAM_VALUE.read_transfer_length_offst PARAM_VALUE.read_transfer_length_offst } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_transfer_length_offst}] ${MODELPARAM_VALUE.read_transfer_length_offst}
}

proc update_MODELPARAM_VALUE.read_addr_offset { MODELPARAM_VALUE.read_addr_offset PARAM_VALUE.read_addr_offset } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.read_addr_offset}] ${MODELPARAM_VALUE.read_addr_offset}
}

proc update_MODELPARAM_VALUE.write_addr_offset { MODELPARAM_VALUE.write_addr_offset PARAM_VALUE.write_addr_offset } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.write_addr_offset}] ${MODELPARAM_VALUE.write_addr_offset}
}

proc update_MODELPARAM_VALUE.write_enable { MODELPARAM_VALUE.write_enable PARAM_VALUE.write_enable } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.write_enable}] ${MODELPARAM_VALUE.write_enable}
}

proc update_MODELPARAM_VALUE.write_length_offset { MODELPARAM_VALUE.write_length_offset PARAM_VALUE.write_length_offset } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.write_length_offset}] ${MODELPARAM_VALUE.write_length_offset}
}

