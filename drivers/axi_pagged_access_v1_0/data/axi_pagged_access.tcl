

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "axi_pagged_access" "NUM_INSTANCES" "DEVICE_ID"  "C_S_AXI_LITE_BASEADDR" "C_S_AXI_LITE_HIGHADDR" "C_S_AXI_FULL_BASEADDR" "C_S_AXI_FULL_HIGHADDR" "C_S_AXI_PAGED_BASEADDR" "C_S_AXI_PAGED_HIGHADDR"
}
