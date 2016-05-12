# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -display_name {Top Level}]
  ipgui::add_param $IPINST -name "C_CTL_IFACE_TYPE" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_NUM_AXI_SLAVE" -parent ${Page_0}
  set C_S_AXI_LITE_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S_AXI_LITE_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S_AXI_LITE_DATA_WIDTH}
  set C_S_AXI_LITE_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S_AXI_LITE_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_S_AXI_LITE_ADDR_WIDTH}
  ipgui::add_param $IPINST -name "C_S_AXI_LITE_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_LITE_HIGHADDR" -parent ${Page_0}

  #Adding Page
  set AXI_PAGED [ipgui::add_page $IPINST -name "AXI_PAGED" -display_name {Slave Interfaces}]
  #Adding Group
  set Full [ipgui::add_group $IPINST -name "Full" -parent ${AXI_PAGED}]
  ipgui::add_param $IPINST -name "C_S_AXI_FULL_HIGHADDR" -parent ${Full}
  ipgui::add_param $IPINST -name "C_S_AXI_FULL_BASEADDR" -parent ${Full}

  ipgui::add_param $IPINST -name "C_M_AXI_TARGET_SLAVE_BASE_ADDR" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_M_AXI_BURST_LEN" -parent ${AXI_PAGED} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_ID_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_M_AXI_ADDR_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_M_AXI_DATA_WIDTH" -parent ${AXI_PAGED} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_AWUSER_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_M_AXI_ARUSER_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_M_AXI_WUSER_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_M_AXI_RUSER_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_M_AXI_BUSER_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_S_AXI_PAGED_ID_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_S_AXI_PAGED_DATA_WIDTH" -parent ${AXI_PAGED} -widget comboBox
  ipgui::add_param $IPINST -name "C_S_AXI_PAGED_ADDR_WIDTH" -parent ${AXI_PAGED} -widget comboBox
  ipgui::add_param $IPINST -name "C_S_AXI_PAGED_AWUSER_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_S_AXI_PAGED_ARUSER_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_S_AXI_PAGED_WUSER_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_S_AXI_PAGED_RUSER_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_S_AXI_PAGED_BUSER_WIDTH" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_S_AXI_PAGED_BASEADDR" -parent ${AXI_PAGED}
  ipgui::add_param $IPINST -name "C_S_AXI_PAGED_HIGHADDR" -parent ${AXI_PAGED}


}

proc update_PARAM_VALUE.C_CTL_IFACE_TYPE { PARAM_VALUE.C_CTL_IFACE_TYPE } {
	# Procedure called to update C_CTL_IFACE_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CTL_IFACE_TYPE { PARAM_VALUE.C_CTL_IFACE_TYPE } {
	# Procedure called to validate C_CTL_IFACE_TYPE
	return true
}

proc update_PARAM_VALUE.C_NUM_AXI_SLAVE { PARAM_VALUE.C_NUM_AXI_SLAVE } {
	# Procedure called to update C_NUM_AXI_SLAVE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_AXI_SLAVE { PARAM_VALUE.C_NUM_AXI_SLAVE } {
	# Procedure called to validate C_NUM_AXI_SLAVE
	return true
}

proc update_PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH { PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_LITE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH { PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_LITE_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_LITE_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_LITE_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_LITE_BASEADDR { PARAM_VALUE.C_S_AXI_LITE_BASEADDR } {
	# Procedure called to update C_S_AXI_LITE_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_LITE_BASEADDR { PARAM_VALUE.C_S_AXI_LITE_BASEADDR } {
	# Procedure called to validate C_S_AXI_LITE_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S_AXI_LITE_HIGHADDR { PARAM_VALUE.C_S_AXI_LITE_HIGHADDR } {
	# Procedure called to update C_S_AXI_LITE_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_LITE_HIGHADDR { PARAM_VALUE.C_S_AXI_LITE_HIGHADDR } {
	# Procedure called to validate C_S_AXI_LITE_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M_AXI_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M_AXI_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BURST_LEN { PARAM_VALUE.C_M_AXI_BURST_LEN } {
	# Procedure called to update C_M_AXI_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BURST_LEN { PARAM_VALUE.C_M_AXI_BURST_LEN } {
	# Procedure called to validate C_M_AXI_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ID_WIDTH { PARAM_VALUE.C_M_AXI_ID_WIDTH } {
	# Procedure called to update C_M_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ID_WIDTH { PARAM_VALUE.C_M_AXI_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_PAGED_ID_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_ID_WIDTH } {
	# Procedure called to update C_S_AXI_PAGED_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_PAGED_ID_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_ID_WIDTH } {
	# Procedure called to validate C_S_AXI_PAGED_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_PAGED_DATA_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_PAGED_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_PAGED_DATA_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_PAGED_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_PAGED_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_PAGED_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_PAGED_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_PAGED_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_PAGED_AWUSER_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_AWUSER_WIDTH } {
	# Procedure called to update C_S_AXI_PAGED_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_PAGED_AWUSER_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_AWUSER_WIDTH } {
	# Procedure called to validate C_S_AXI_PAGED_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_PAGED_ARUSER_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_ARUSER_WIDTH } {
	# Procedure called to update C_S_AXI_PAGED_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_PAGED_ARUSER_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_ARUSER_WIDTH } {
	# Procedure called to validate C_S_AXI_PAGED_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_PAGED_WUSER_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_WUSER_WIDTH } {
	# Procedure called to update C_S_AXI_PAGED_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_PAGED_WUSER_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_WUSER_WIDTH } {
	# Procedure called to validate C_S_AXI_PAGED_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_PAGED_RUSER_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_RUSER_WIDTH } {
	# Procedure called to update C_S_AXI_PAGED_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_PAGED_RUSER_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_RUSER_WIDTH } {
	# Procedure called to validate C_S_AXI_PAGED_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_PAGED_BUSER_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_BUSER_WIDTH } {
	# Procedure called to update C_S_AXI_PAGED_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_PAGED_BUSER_WIDTH { PARAM_VALUE.C_S_AXI_PAGED_BUSER_WIDTH } {
	# Procedure called to validate C_S_AXI_PAGED_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_PAGED_BASEADDR { PARAM_VALUE.C_S_AXI_PAGED_BASEADDR } {
	# Procedure called to update C_S_AXI_PAGED_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_PAGED_BASEADDR { PARAM_VALUE.C_S_AXI_PAGED_BASEADDR } {
	# Procedure called to validate C_S_AXI_PAGED_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S_AXI_PAGED_HIGHADDR { PARAM_VALUE.C_S_AXI_PAGED_HIGHADDR } {
	# Procedure called to update C_S_AXI_PAGED_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_PAGED_HIGHADDR { PARAM_VALUE.C_S_AXI_PAGED_HIGHADDR } {
	# Procedure called to validate C_S_AXI_PAGED_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C_S_AXI_FULL_BASEADDR { PARAM_VALUE.C_S_AXI_FULL_BASEADDR } {
	# Procedure called to update C_S_AXI_FULL_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_FULL_BASEADDR { PARAM_VALUE.C_S_AXI_FULL_BASEADDR } {
	# Procedure called to validate C_S_AXI_FULL_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S_AXI_FULL_HIGHADDR { PARAM_VALUE.C_S_AXI_FULL_HIGHADDR } {
	# Procedure called to update C_S_AXI_FULL_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_FULL_HIGHADDR { PARAM_VALUE.C_S_AXI_FULL_HIGHADDR } {
	# Procedure called to validate C_S_AXI_FULL_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BURST_LEN { MODELPARAM_VALUE.C_M_AXI_BURST_LEN PARAM_VALUE.C_M_AXI_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BURST_LEN}] ${MODELPARAM_VALUE.C_M_AXI_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_ID_WIDTH PARAM_VALUE.C_M_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_WUSER_WIDTH PARAM_VALUE.C_M_AXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_RUSER_WIDTH PARAM_VALUE.C_M_AXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_PAGED_ID_WIDTH { MODELPARAM_VALUE.C_S_AXI_PAGED_ID_WIDTH PARAM_VALUE.C_S_AXI_PAGED_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_PAGED_ID_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_PAGED_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_PAGED_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_PAGED_DATA_WIDTH PARAM_VALUE.C_S_AXI_PAGED_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_PAGED_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_PAGED_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_PAGED_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_PAGED_ADDR_WIDTH PARAM_VALUE.C_S_AXI_PAGED_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_PAGED_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_PAGED_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_PAGED_AWUSER_WIDTH { MODELPARAM_VALUE.C_S_AXI_PAGED_AWUSER_WIDTH PARAM_VALUE.C_S_AXI_PAGED_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_PAGED_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_PAGED_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_PAGED_ARUSER_WIDTH { MODELPARAM_VALUE.C_S_AXI_PAGED_ARUSER_WIDTH PARAM_VALUE.C_S_AXI_PAGED_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_PAGED_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_PAGED_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_PAGED_WUSER_WIDTH { MODELPARAM_VALUE.C_S_AXI_PAGED_WUSER_WIDTH PARAM_VALUE.C_S_AXI_PAGED_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_PAGED_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_PAGED_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_PAGED_RUSER_WIDTH { MODELPARAM_VALUE.C_S_AXI_PAGED_RUSER_WIDTH PARAM_VALUE.C_S_AXI_PAGED_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_PAGED_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_PAGED_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_PAGED_BUSER_WIDTH { MODELPARAM_VALUE.C_S_AXI_PAGED_BUSER_WIDTH PARAM_VALUE.C_S_AXI_PAGED_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_PAGED_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_PAGED_BUSER_WIDTH}
}

