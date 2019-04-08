set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR NO [current_design]

# Global reset
set_property IOSTANDARD LVCMOS18 [get_ports sys_reset_n]
set_property PACKAGE_PIN F18 [get_ports sys_reset_n]

# 100MHz reference clock
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports user_ref_100_p]
set_property ODT RTT_48 [get_ports user_ref_100_p]
set_property PACKAGE_PIN BH27 [get_ports user_ref_100_p]
create_clock -period 10.000 -name user_ref_100_p [get_ports user_ref_100_p]

# LED pins for debug
set_property IOSTANDARD LVCMOS18 [get_ports {led_pins[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led_pins[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led_pins[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led_pins[3]}]
set_property PACKAGE_PIN L19 [get_ports {led_pins[0]}]
set_property PACKAGE_PIN L18 [get_ports {led_pins[1]}]
set_property PACKAGE_PIN L21 [get_ports {led_pins[2]}]
set_property PACKAGE_PIN L20 [get_ports {led_pins[3]}]

# USB-UART connections
set_property IOSTANDARD LVCMOS18 [get_ports usb_uart_txd]
set_property IOSTANDARD LVCMOS18 [get_ports usb_uart_rxd]
set_property PACKAGE_PIN G21 [get_ports usb_uart_txd]
set_property PACKAGE_PIN F21 [get_ports usb_uart_rxd]


#Debug
connect_debug_port u_ila_0/probe6 [get_nets [list interrupt_r]]
connect_debug_port u_ila_0/probe7 [get_nets [list tx]]
connect_debug_port u_ila_0/probe8 [get_nets [list tx2]]
connect_debug_port u_ila_0/probe15 [get_nets [list usb_uart_txd_IBUF]]

connect_debug_port u_ila_0/clk [get_nets [list clk_wiz_pll/inst/clk_out300]]
connect_debug_port u_ila_0/probe2 [get_nets [list {check_rst[0]} {check_rst[1]} {check_rst[2]} {check_rst[3]} {check_rst[4]} {check_rst[5]} {check_rst[6]} {check_rst[7]}]]
connect_debug_port u_ila_0/probe5 [get_nets [list {clk_out300_rst_r[0]} {clk_out300_rst_r[1]} {clk_out300_rst_r[2]}]]
connect_debug_port u_ila_1/clk [get_nets [list clk_wiz_pll/inst/clk_out100]]
connect_debug_port u_ila_1/probe0 [get_nets [list {clk_out100_rst_r[0]} {clk_out100_rst_r[1]} {clk_out100_rst_r[2]}]]
connect_debug_port dbg_hub/clk [get_nets clk_out100]



connect_debug_port u_ila_0/probe1 [get_nets [list {uart_state[0]} {uart_state[1]} {uart_state[2]} {uart_state[3]} {uart_state[4]} {uart_state[5]} {uart_state[6]} {uart_state[7]} {uart_state[8]} {uart_state[9]} {uart_state[10]} {uart_state[11]} {uart_state[12]} {uart_state[13]} {uart_state[14]} {uart_state[15]} {uart_state[16]} {uart_state[17]} {uart_state[18]} {uart_state[19]} {uart_state[20]} {uart_state[21]} {uart_state[22]} {uart_state[23]} {uart_state[24]} {uart_state[25]} {uart_state[26]} {uart_state[27]} {uart_state[28]} {uart_state[29]} {uart_state[30]} {uart_state[31]}]]
connect_debug_port u_ila_0/probe2 [get_nets [list {uart_axi_awaddr[0]} {uart_axi_awaddr[1]} {uart_axi_awaddr[2]} {uart_axi_awaddr[3]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list {uart_axi_rdata[0]} {uart_axi_rdata[1]} {uart_axi_rdata[2]} {uart_axi_rdata[3]} {uart_axi_rdata[4]} {uart_axi_rdata[5]} {uart_axi_rdata[6]} {uart_axi_rdata[7]} {uart_axi_rdata[8]} {uart_axi_rdata[9]} {uart_axi_rdata[10]} {uart_axi_rdata[11]} {uart_axi_rdata[12]} {uart_axi_rdata[13]} {uart_axi_rdata[14]} {uart_axi_rdata[15]} {uart_axi_rdata[16]} {uart_axi_rdata[17]} {uart_axi_rdata[18]} {uart_axi_rdata[19]} {uart_axi_rdata[20]} {uart_axi_rdata[21]} {uart_axi_rdata[22]} {uart_axi_rdata[23]} {uart_axi_rdata[24]} {uart_axi_rdata[25]} {uart_axi_rdata[26]} {uart_axi_rdata[27]} {uart_axi_rdata[28]} {uart_axi_rdata[29]} {uart_axi_rdata[30]} {uart_axi_rdata[31]}]]
connect_debug_port u_ila_0/probe4 [get_nets [list {uart_axi_rresp[0]} {uart_axi_rresp[1]}]]
connect_debug_port u_ila_0/probe5 [get_nets [list {uart_axi_araddr[0]} {uart_axi_araddr[1]} {uart_axi_araddr[2]} {uart_axi_araddr[3]}]]
connect_debug_port u_ila_0/probe6 [get_nets [list {uart_axi_wdata[0]} {uart_axi_wdata[1]} {uart_axi_wdata[2]} {uart_axi_wdata[3]} {uart_axi_wdata[4]} {uart_axi_wdata[5]} {uart_axi_wdata[6]} {uart_axi_wdata[7]} {uart_axi_wdata[8]} {uart_axi_wdata[9]} {uart_axi_wdata[10]} {uart_axi_wdata[11]} {uart_axi_wdata[12]} {uart_axi_wdata[13]} {uart_axi_wdata[14]} {uart_axi_wdata[15]} {uart_axi_wdata[16]} {uart_axi_wdata[17]} {uart_axi_wdata[18]} {uart_axi_wdata[19]} {uart_axi_wdata[20]} {uart_axi_wdata[21]} {uart_axi_wdata[22]} {uart_axi_wdata[23]} {uart_axi_wdata[24]} {uart_axi_wdata[25]} {uart_axi_wdata[26]} {uart_axi_wdata[27]} {uart_axi_wdata[28]} {uart_axi_wdata[29]} {uart_axi_wdata[30]} {uart_axi_wdata[31]}]]
connect_debug_port u_ila_0/probe7 [get_nets [list eop_l]]
connect_debug_port u_ila_0/probe9 [get_nets [list interrupt]]
connect_debug_port u_ila_0/probe10 [get_nets [list sop_l]]
connect_debug_port u_ila_0/probe11 [get_nets [list uart_axi_arready]]
connect_debug_port u_ila_0/probe12 [get_nets [list uart_axi_arvalid]]
connect_debug_port u_ila_0/probe13 [get_nets [list uart_axi_awready]]
connect_debug_port u_ila_0/probe14 [get_nets [list uart_axi_awvalid]]
connect_debug_port u_ila_0/probe15 [get_nets [list uart_axi_rvalid]]
connect_debug_port u_ila_0/probe16 [get_nets [list uart_axi_wready]]

connect_debug_port u_ila_1/probe5 [get_nets [list {uart_wrapper/uart_axi_wdata_0[0]} {uart_wrapper/uart_axi_wdata_0[1]} {uart_wrapper/uart_axi_wdata_0[2]} {uart_wrapper/uart_axi_wdata_0[3]} {uart_wrapper/uart_axi_wdata_0[4]} {uart_wrapper/uart_axi_wdata_0[5]} {uart_wrapper/uart_axi_wdata_0[6]} {uart_wrapper/uart_axi_wdata_0[7]} {uart_wrapper/uart_axi_wdata_0[8]} {uart_wrapper/uart_axi_wdata_0[9]} {uart_wrapper/uart_axi_wdata_0[10]} {uart_wrapper/uart_axi_wdata_0[11]} {uart_wrapper/uart_axi_wdata_0[12]} {uart_wrapper/uart_axi_wdata_0[13]} {uart_wrapper/uart_axi_wdata_0[14]} {uart_wrapper/uart_axi_wdata_0[15]} {uart_wrapper/uart_axi_wdata_0[16]} {uart_wrapper/uart_axi_wdata_0[17]} {uart_wrapper/uart_axi_wdata_0[18]} {uart_wrapper/uart_axi_wdata_0[19]} {uart_wrapper/uart_axi_wdata_0[20]} {uart_wrapper/uart_axi_wdata_0[21]} {uart_wrapper/uart_axi_wdata_0[22]} {uart_wrapper/uart_axi_wdata_0[23]} {uart_wrapper/uart_axi_wdata_0[24]} {uart_wrapper/uart_axi_wdata_0[25]} {uart_wrapper/uart_axi_wdata_0[26]} {uart_wrapper/uart_axi_wdata_0[27]} {uart_wrapper/uart_axi_wdata_0[28]} {uart_wrapper/uart_axi_wdata_0[29]} {uart_wrapper/uart_axi_wdata_0[30]} {uart_wrapper/uart_axi_wdata_0[31]}]]

connect_debug_port u_ila_0/probe0 [get_nets [list {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[0]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[1]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[2]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[3]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[4]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[5]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[6]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[7]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[8]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[9]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[10]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[11]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[12]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[13]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[14]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[15]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[16]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[17]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[18]} {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_dat_a[19]}]]
connect_debug_port u_ila_0/probe9 [get_nets [list zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/i_val_a]]
connect_debug_port u_ila_0/probe11 [get_nets [list zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/o_rdy_a]]
connect_debug_port u_ila_0/probe12 [get_nets [list zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/o_val_b]]
connect_debug_port u_ila_1/probe1 [get_nets [list {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[0]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[1]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[2]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[3]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[4]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[5]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[6]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[7]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[8]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[9]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[10]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[11]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[12]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[13]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[14]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[15]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[16]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[17]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[18]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[19]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[20]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[21]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[22]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[23]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[24]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[25]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[26]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[27]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[28]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[29]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[30]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[31]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[32]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[33]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[34]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[35]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[36]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[37]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[38]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[39]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[40]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[41]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[42]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[43]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[44]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[45]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[46]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[47]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[48]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[49]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[50]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[51]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[52]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[53]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[54]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[55]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[56]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[57]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[58]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[59]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[60]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[61]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[62]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[63]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[64]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[65]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[66]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[67]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[68]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[69]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[70]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[71]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[72]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[73]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[74]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[75]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[76]} {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_dat_a[77]}]]
connect_debug_port u_ila_1/probe2 [get_nets [list zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/i_val_a]]
connect_debug_port u_ila_1/probe3 [get_nets [list zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/o_rdy_a]]
connect_debug_port u_ila_1/probe4 [get_nets [list zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/o_val_b]]

connect_debug_port u_ila_0/probe8 [get_nets [list {zcash_fpga_top/control_top/debug_if/mod[0]} {zcash_fpga_top/control_top/debug_if/mod[-1]}]]


connect_debug_port u_ila_0/probe5 [get_nets [list zcash_fpga_top/control_top/debug_if2/mod]]

connect_debug_port u_ila_0/probe2 [get_nets [list {uart_wrapper/uart_axi_wdata_0[0]} {uart_wrapper/uart_axi_wdata_0[1]} {uart_wrapper/uart_axi_wdata_0[2]} {uart_wrapper/uart_axi_wdata_0[3]} {uart_wrapper/uart_axi_wdata_0[4]} {uart_wrapper/uart_axi_wdata_0[5]} {uart_wrapper/uart_axi_wdata_0[6]} {uart_wrapper/uart_axi_wdata_0[7]} {uart_wrapper/uart_axi_wdata_0[8]} {uart_wrapper/uart_axi_wdata_0[9]} {uart_wrapper/uart_axi_wdata_0[10]} {uart_wrapper/uart_axi_wdata_0[11]} {uart_wrapper/uart_axi_wdata_0[12]} {uart_wrapper/uart_axi_wdata_0[13]} {uart_wrapper/uart_axi_wdata_0[14]} {uart_wrapper/uart_axi_wdata_0[15]} {uart_wrapper/uart_axi_wdata_0[16]} {uart_wrapper/uart_axi_wdata_0[17]} {uart_wrapper/uart_axi_wdata_0[18]} {uart_wrapper/uart_axi_wdata_0[19]} {uart_wrapper/uart_axi_wdata_0[20]} {uart_wrapper/uart_axi_wdata_0[21]} {uart_wrapper/uart_axi_wdata_0[22]} {uart_wrapper/uart_axi_wdata_0[23]} {uart_wrapper/uart_axi_wdata_0[24]} {uart_wrapper/uart_axi_wdata_0[25]} {uart_wrapper/uart_axi_wdata_0[26]} {uart_wrapper/uart_axi_wdata_0[27]} {uart_wrapper/uart_axi_wdata_0[28]} {uart_wrapper/uart_axi_wdata_0[29]} {uart_wrapper/uart_axi_wdata_0[30]} {uart_wrapper/uart_axi_wdata_0[31]}]]
connect_debug_port u_ila_0/probe8 [get_nets [list {zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/o_dat_b[0]}]]
connect_debug_port u_ila_0/probe11 [get_nets [list uart_wrapper/eop_l]]
connect_debug_port u_ila_0/probe17 [get_nets [list uart_wrapper/sop_l]]
connect_debug_port u_ila_1/probe4 [get_nets [list {zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/o_dat_b[0]}]]



connect_debug_port u_ila_0/probe2 [get_nets [list {uart_wrapper/debug_if/dat[0]} {uart_wrapper/debug_if/dat[1]} {uart_wrapper/debug_if/dat[2]} {uart_wrapper/debug_if/dat[3]} {uart_wrapper/debug_if/dat[4]} {uart_wrapper/debug_if/dat[5]} {uart_wrapper/debug_if/dat[6]} {uart_wrapper/debug_if/dat[7]}]]
connect_debug_port u_ila_0/probe13 [get_nets [list uart_wrapper/debug_if/ctl]]
connect_debug_port u_ila_0/probe15 [get_nets [list uart_wrapper/debug_if/eop]]
connect_debug_port u_ila_0/probe16 [get_nets [list uart_wrapper/debug_if/err]]
connect_debug_port u_ila_0/probe19 [get_nets [list uart_wrapper/debug_if/mod]]
connect_debug_port u_ila_0/probe21 [get_nets [list uart_wrapper/debug_if/rdy]]
connect_debug_port u_ila_0/probe23 [get_nets [list uart_wrapper/debug_if/sop]]
connect_debug_port u_ila_0/probe31 [get_nets [list uart_wrapper/debug_if/val]]


connect_debug_port u_ila_0/probe11 [get_nets [list {zcash_fpga_top/control_top/debug_if/dat[0]} {zcash_fpga_top/control_top/debug_if/dat[1]} {zcash_fpga_top/control_top/debug_if/dat[2]} {zcash_fpga_top/control_top/debug_if/dat[3]} {zcash_fpga_top/control_top/debug_if/dat[4]} {zcash_fpga_top/control_top/debug_if/dat[5]} {zcash_fpga_top/control_top/debug_if/dat[6]} {zcash_fpga_top/control_top/debug_if/dat[7]}]]
connect_debug_port u_ila_0/probe13 [get_nets [list zcash_fpga_top/control_top/debug_if/ctl]]
connect_debug_port u_ila_0/probe14 [get_nets [list zcash_fpga_top/control_top/debug_if/eop]]
connect_debug_port u_ila_0/probe17 [get_nets [list zcash_fpga_top/control_top/debug_if/err]]
connect_debug_port u_ila_0/probe20 [get_nets [list zcash_fpga_top/control_top/debug_if/mod]]
connect_debug_port u_ila_0/probe22 [get_nets [list zcash_fpga_top/control_top/debug_if/rdy]]
connect_debug_port u_ila_0/probe23 [get_nets [list zcash_fpga_top/control_top/debug_if/sop]]
connect_debug_port u_ila_0/probe32 [get_nets [list zcash_fpga_top/control_top/debug_if/val]]
connect_debug_port u_ila_1/probe0 [get_nets [list {zcash_fpga_top/control_top/debug_if2/mod[0]} {zcash_fpga_top/control_top/debug_if2/mod[1]} {zcash_fpga_top/control_top/debug_if2/mod[2]}]]
connect_debug_port u_ila_1/probe1 [get_nets [list {zcash_fpga_top/control_top/debug_if2/dat[0]} {zcash_fpga_top/control_top/debug_if2/dat[1]} {zcash_fpga_top/control_top/debug_if2/dat[2]} {zcash_fpga_top/control_top/debug_if2/dat[3]} {zcash_fpga_top/control_top/debug_if2/dat[4]} {zcash_fpga_top/control_top/debug_if2/dat[5]} {zcash_fpga_top/control_top/debug_if2/dat[6]} {zcash_fpga_top/control_top/debug_if2/dat[7]} {zcash_fpga_top/control_top/debug_if2/dat[8]} {zcash_fpga_top/control_top/debug_if2/dat[9]} {zcash_fpga_top/control_top/debug_if2/dat[10]} {zcash_fpga_top/control_top/debug_if2/dat[11]} {zcash_fpga_top/control_top/debug_if2/dat[12]} {zcash_fpga_top/control_top/debug_if2/dat[13]} {zcash_fpga_top/control_top/debug_if2/dat[14]} {zcash_fpga_top/control_top/debug_if2/dat[15]} {zcash_fpga_top/control_top/debug_if2/dat[16]} {zcash_fpga_top/control_top/debug_if2/dat[17]} {zcash_fpga_top/control_top/debug_if2/dat[18]} {zcash_fpga_top/control_top/debug_if2/dat[19]} {zcash_fpga_top/control_top/debug_if2/dat[20]} {zcash_fpga_top/control_top/debug_if2/dat[21]} {zcash_fpga_top/control_top/debug_if2/dat[22]} {zcash_fpga_top/control_top/debug_if2/dat[23]} {zcash_fpga_top/control_top/debug_if2/dat[24]} {zcash_fpga_top/control_top/debug_if2/dat[25]} {zcash_fpga_top/control_top/debug_if2/dat[26]} {zcash_fpga_top/control_top/debug_if2/dat[27]} {zcash_fpga_top/control_top/debug_if2/dat[28]} {zcash_fpga_top/control_top/debug_if2/dat[29]} {zcash_fpga_top/control_top/debug_if2/dat[30]} {zcash_fpga_top/control_top/debug_if2/dat[31]} {zcash_fpga_top/control_top/debug_if2/dat[32]} {zcash_fpga_top/control_top/debug_if2/dat[33]} {zcash_fpga_top/control_top/debug_if2/dat[34]} {zcash_fpga_top/control_top/debug_if2/dat[35]} {zcash_fpga_top/control_top/debug_if2/dat[36]} {zcash_fpga_top/control_top/debug_if2/dat[37]} {zcash_fpga_top/control_top/debug_if2/dat[38]} {zcash_fpga_top/control_top/debug_if2/dat[39]} {zcash_fpga_top/control_top/debug_if2/dat[40]} {zcash_fpga_top/control_top/debug_if2/dat[41]} {zcash_fpga_top/control_top/debug_if2/dat[42]} {zcash_fpga_top/control_top/debug_if2/dat[43]} {zcash_fpga_top/control_top/debug_if2/dat[44]} {zcash_fpga_top/control_top/debug_if2/dat[45]} {zcash_fpga_top/control_top/debug_if2/dat[46]} {zcash_fpga_top/control_top/debug_if2/dat[47]} {zcash_fpga_top/control_top/debug_if2/dat[48]} {zcash_fpga_top/control_top/debug_if2/dat[49]} {zcash_fpga_top/control_top/debug_if2/dat[50]} {zcash_fpga_top/control_top/debug_if2/dat[51]} {zcash_fpga_top/control_top/debug_if2/dat[52]} {zcash_fpga_top/control_top/debug_if2/dat[53]} {zcash_fpga_top/control_top/debug_if2/dat[54]} {zcash_fpga_top/control_top/debug_if2/dat[55]} {zcash_fpga_top/control_top/debug_if2/dat[56]} {zcash_fpga_top/control_top/debug_if2/dat[57]} {zcash_fpga_top/control_top/debug_if2/dat[58]} {zcash_fpga_top/control_top/debug_if2/dat[59]} {zcash_fpga_top/control_top/debug_if2/dat[60]} {zcash_fpga_top/control_top/debug_if2/dat[61]} {zcash_fpga_top/control_top/debug_if2/dat[62]} {zcash_fpga_top/control_top/debug_if2/dat[63]}]]
connect_debug_port u_ila_1/probe2 [get_nets [list {zcash_fpga_top/control_top/debug_if3/dat[0]} {zcash_fpga_top/control_top/debug_if3/dat[1]} {zcash_fpga_top/control_top/debug_if3/dat[2]} {zcash_fpga_top/control_top/debug_if3/dat[3]} {zcash_fpga_top/control_top/debug_if3/dat[4]} {zcash_fpga_top/control_top/debug_if3/dat[5]} {zcash_fpga_top/control_top/debug_if3/dat[6]} {zcash_fpga_top/control_top/debug_if3/dat[7]} {zcash_fpga_top/control_top/debug_if3/dat[8]} {zcash_fpga_top/control_top/debug_if3/dat[9]} {zcash_fpga_top/control_top/debug_if3/dat[10]} {zcash_fpga_top/control_top/debug_if3/dat[11]} {zcash_fpga_top/control_top/debug_if3/dat[12]} {zcash_fpga_top/control_top/debug_if3/dat[13]} {zcash_fpga_top/control_top/debug_if3/dat[14]} {zcash_fpga_top/control_top/debug_if3/dat[15]} {zcash_fpga_top/control_top/debug_if3/dat[16]} {zcash_fpga_top/control_top/debug_if3/dat[17]} {zcash_fpga_top/control_top/debug_if3/dat[18]} {zcash_fpga_top/control_top/debug_if3/dat[19]} {zcash_fpga_top/control_top/debug_if3/dat[20]} {zcash_fpga_top/control_top/debug_if3/dat[21]} {zcash_fpga_top/control_top/debug_if3/dat[22]} {zcash_fpga_top/control_top/debug_if3/dat[23]} {zcash_fpga_top/control_top/debug_if3/dat[24]} {zcash_fpga_top/control_top/debug_if3/dat[25]} {zcash_fpga_top/control_top/debug_if3/dat[26]} {zcash_fpga_top/control_top/debug_if3/dat[27]} {zcash_fpga_top/control_top/debug_if3/dat[28]} {zcash_fpga_top/control_top/debug_if3/dat[29]} {zcash_fpga_top/control_top/debug_if3/dat[30]} {zcash_fpga_top/control_top/debug_if3/dat[31]} {zcash_fpga_top/control_top/debug_if3/dat[32]} {zcash_fpga_top/control_top/debug_if3/dat[33]} {zcash_fpga_top/control_top/debug_if3/dat[34]} {zcash_fpga_top/control_top/debug_if3/dat[35]} {zcash_fpga_top/control_top/debug_if3/dat[36]} {zcash_fpga_top/control_top/debug_if3/dat[37]} {zcash_fpga_top/control_top/debug_if3/dat[38]} {zcash_fpga_top/control_top/debug_if3/dat[39]} {zcash_fpga_top/control_top/debug_if3/dat[40]} {zcash_fpga_top/control_top/debug_if3/dat[41]} {zcash_fpga_top/control_top/debug_if3/dat[42]} {zcash_fpga_top/control_top/debug_if3/dat[43]} {zcash_fpga_top/control_top/debug_if3/dat[44]} {zcash_fpga_top/control_top/debug_if3/dat[45]} {zcash_fpga_top/control_top/debug_if3/dat[46]} {zcash_fpga_top/control_top/debug_if3/dat[47]} {zcash_fpga_top/control_top/debug_if3/dat[48]} {zcash_fpga_top/control_top/debug_if3/dat[49]} {zcash_fpga_top/control_top/debug_if3/dat[50]} {zcash_fpga_top/control_top/debug_if3/dat[51]} {zcash_fpga_top/control_top/debug_if3/dat[52]} {zcash_fpga_top/control_top/debug_if3/dat[53]} {zcash_fpga_top/control_top/debug_if3/dat[54]} {zcash_fpga_top/control_top/debug_if3/dat[55]} {zcash_fpga_top/control_top/debug_if3/dat[56]} {zcash_fpga_top/control_top/debug_if3/dat[57]} {zcash_fpga_top/control_top/debug_if3/dat[58]} {zcash_fpga_top/control_top/debug_if3/dat[59]} {zcash_fpga_top/control_top/debug_if3/dat[60]} {zcash_fpga_top/control_top/debug_if3/dat[61]} {zcash_fpga_top/control_top/debug_if3/dat[62]} {zcash_fpga_top/control_top/debug_if3/dat[63]}]]
connect_debug_port u_ila_1/probe3 [get_nets [list {zcash_fpga_top/control_top/debug_if3/mod[0]} {zcash_fpga_top/control_top/debug_if3/mod[1]} {zcash_fpga_top/control_top/debug_if3/mod[2]}]]
connect_debug_port u_ila_1/probe4 [get_nets [list zcash_fpga_top/control_top/debug_if2/ctl]]
connect_debug_port u_ila_1/probe5 [get_nets [list zcash_fpga_top/control_top/debug_if3/ctl]]
connect_debug_port u_ila_1/probe6 [get_nets [list zcash_fpga_top/control_top/debug_if3/eop]]
connect_debug_port u_ila_1/probe7 [get_nets [list zcash_fpga_top/control_top/debug_if2/eop]]
connect_debug_port u_ila_1/probe8 [get_nets [list zcash_fpga_top/control_top/debug_if2/err]]
connect_debug_port u_ila_1/probe9 [get_nets [list zcash_fpga_top/control_top/debug_if3/err]]
connect_debug_port u_ila_1/probe10 [get_nets [list zcash_fpga_top/control_top/debug_if3/rdy]]
connect_debug_port u_ila_1/probe11 [get_nets [list zcash_fpga_top/control_top/debug_if2/rdy]]
connect_debug_port u_ila_1/probe12 [get_nets [list zcash_fpga_top/control_top/debug_if3/sop]]
connect_debug_port u_ila_1/probe13 [get_nets [list zcash_fpga_top/control_top/debug_if2/sop]]
connect_debug_port u_ila_1/probe14 [get_nets [list zcash_fpga_top/control_top/debug_if2/val]]
connect_debug_port u_ila_1/probe15 [get_nets [list zcash_fpga_top/control_top/debug_if3/val]]



connect_debug_port u_ila_1/probe10 [get_nets [list {uart_wrapper/uart_debug_if/dat[0]} {uart_wrapper/uart_debug_if/dat[1]} {uart_wrapper/uart_debug_if/dat[2]} {uart_wrapper/uart_debug_if/dat[3]} {uart_wrapper/uart_debug_if/dat[4]} {uart_wrapper/uart_debug_if/dat[5]} {uart_wrapper/uart_debug_if/dat[6]} {uart_wrapper/uart_debug_if/dat[7]}]]
connect_debug_port u_ila_1/probe12 [get_nets [list uart_wrapper/uart_debug_if/ctl]]
connect_debug_port u_ila_1/probe15 [get_nets [list uart_wrapper/uart_debug_if/eop]]
connect_debug_port u_ila_1/probe16 [get_nets [list uart_wrapper/uart_debug_if/err]]
connect_debug_port u_ila_1/probe19 [get_nets [list uart_wrapper/uart_debug_if/mod]]
connect_debug_port u_ila_1/probe21 [get_nets [list uart_wrapper/uart_debug_if/rdy]]
connect_debug_port u_ila_1/probe24 [get_nets [list uart_wrapper/uart_debug_if/sop]]
connect_debug_port u_ila_1/probe31 [get_nets [list uart_wrapper/uart_debug_if/val]]

connect_debug_port u_ila_0/probe0 [get_nets [list {zcash_fpga_top/control_top/debug_if2/dat[0]} {zcash_fpga_top/control_top/debug_if2/dat[1]} {zcash_fpga_top/control_top/debug_if2/dat[2]} {zcash_fpga_top/control_top/debug_if2/dat[3]} {zcash_fpga_top/control_top/debug_if2/dat[4]} {zcash_fpga_top/control_top/debug_if2/dat[5]} {zcash_fpga_top/control_top/debug_if2/dat[6]} {zcash_fpga_top/control_top/debug_if2/dat[7]}]]
connect_debug_port u_ila_0/probe1 [get_nets [list {uart_wrapper/rx_byt_len[0]} {uart_wrapper/rx_byt_len[1]} {uart_wrapper/rx_byt_len[2]} {uart_wrapper/rx_byt_len[3]} {uart_wrapper/rx_byt_len[4]} {uart_wrapper/rx_byt_len[5]} {uart_wrapper/rx_byt_len[6]} {uart_wrapper/rx_byt_len[7]} {uart_wrapper/rx_byt_len[8]} {uart_wrapper/rx_byt_len[9]} {uart_wrapper/rx_byt_len[10]} {uart_wrapper/rx_byt_len[11]} {uart_wrapper/rx_byt_len[12]} {uart_wrapper/rx_byt_len[13]} {uart_wrapper/rx_byt_len[14]} {uart_wrapper/rx_byt_len[15]}]]
connect_debug_port u_ila_0/probe2 [get_nets [list {uart_wrapper/rx_byt_cnt[0]} {uart_wrapper/rx_byt_cnt[1]} {uart_wrapper/rx_byt_cnt[2]} {uart_wrapper/rx_byt_cnt[3]} {uart_wrapper/rx_byt_cnt[4]} {uart_wrapper/rx_byt_cnt[5]} {uart_wrapper/rx_byt_cnt[6]} {uart_wrapper/rx_byt_cnt[7]} {uart_wrapper/rx_byt_cnt[8]} {uart_wrapper/rx_byt_cnt[9]} {uart_wrapper/rx_byt_cnt[10]} {uart_wrapper/rx_byt_cnt[11]} {uart_wrapper/rx_byt_cnt[12]} {uart_wrapper/rx_byt_cnt[13]} {uart_wrapper/rx_byt_cnt[14]} {uart_wrapper/rx_byt_cnt[15]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list {uart_wrapper/tx_byt_cnt[0]} {uart_wrapper/tx_byt_cnt[1]} {uart_wrapper/tx_byt_cnt[2]} {uart_wrapper/tx_byt_cnt[3]} {uart_wrapper/tx_byt_cnt[4]} {uart_wrapper/tx_byt_cnt[5]} {uart_wrapper/tx_byt_cnt[6]} {uart_wrapper/tx_byt_cnt[7]} {uart_wrapper/tx_byt_cnt[8]} {uart_wrapper/tx_byt_cnt[9]} {uart_wrapper/tx_byt_cnt[10]} {uart_wrapper/tx_byt_cnt[11]} {uart_wrapper/tx_byt_cnt[12]} {uart_wrapper/tx_byt_cnt[13]} {uart_wrapper/tx_byt_cnt[14]} {uart_wrapper/tx_byt_cnt[15]}]]
connect_debug_port u_ila_0/probe4 [get_nets [list {uart_wrapper/uart_axi_araddr[0]} {uart_wrapper/uart_axi_araddr[1]} {uart_wrapper/uart_axi_araddr[2]} {uart_wrapper/uart_axi_araddr[3]}]]
connect_debug_port u_ila_0/probe6 [get_nets [list {uart_wrapper/uart_axi_bresp[1]}]]
connect_debug_port u_ila_0/probe12 [get_nets [list {uart_wrapper/uart_axi_wdata[0]} {uart_wrapper/uart_axi_wdata[1]} {uart_wrapper/uart_axi_wdata[2]} {uart_wrapper/uart_axi_wdata[3]} {uart_wrapper/uart_axi_wdata[4]} {uart_wrapper/uart_axi_wdata[5]} {uart_wrapper/uart_axi_wdata[6]} {uart_wrapper/uart_axi_wdata[7]} {uart_wrapper/uart_axi_wdata[8]} {uart_wrapper/uart_axi_wdata[9]} {uart_wrapper/uart_axi_wdata[10]} {uart_wrapper/uart_axi_wdata[11]} {uart_wrapper/uart_axi_wdata[12]} {uart_wrapper/uart_axi_wdata[13]} {uart_wrapper/uart_axi_wdata[14]} {uart_wrapper/uart_axi_wdata[15]} {uart_wrapper/uart_axi_wdata[16]} {uart_wrapper/uart_axi_wdata[17]} {uart_wrapper/uart_axi_wdata[18]} {uart_wrapper/uart_axi_wdata[19]} {uart_wrapper/uart_axi_wdata[20]} {uart_wrapper/uart_axi_wdata[21]} {uart_wrapper/uart_axi_wdata[22]} {uart_wrapper/uart_axi_wdata[23]} {uart_wrapper/uart_axi_wdata[24]} {uart_wrapper/uart_axi_wdata[25]} {uart_wrapper/uart_axi_wdata[26]} {uart_wrapper/uart_axi_wdata[27]} {uart_wrapper/uart_axi_wdata[28]} {uart_wrapper/uart_axi_wdata[29]} {uart_wrapper/uart_axi_wdata[30]} {uart_wrapper/uart_axi_wdata[31]}]]
connect_debug_port u_ila_0/probe13 [get_nets [list {uart_wrapper/uart_state[0]} {uart_wrapper/uart_state[1]} {uart_wrapper/uart_state[2]} {uart_wrapper/uart_state[3]} {uart_wrapper/uart_state[4]} {uart_wrapper/uart_state[5]} {uart_wrapper/uart_state[6]} {uart_wrapper/uart_state[7]} {uart_wrapper/uart_state[8]} {uart_wrapper/uart_state[9]} {uart_wrapper/uart_state[10]} {uart_wrapper/uart_state[11]} {uart_wrapper/uart_state[12]} {uart_wrapper/uart_state[13]} {uart_wrapper/uart_state[14]} {uart_wrapper/uart_state[15]} {uart_wrapper/uart_state[16]} {uart_wrapper/uart_state[17]} {uart_wrapper/uart_state[18]} {uart_wrapper/uart_state[19]} {uart_wrapper/uart_state[20]} {uart_wrapper/uart_state[21]} {uart_wrapper/uart_state[22]} {uart_wrapper/uart_state[23]} {uart_wrapper/uart_state[24]} {uart_wrapper/uart_state[25]} {uart_wrapper/uart_state[26]} {uart_wrapper/uart_state[27]} {uart_wrapper/uart_state[28]} {uart_wrapper/uart_state[29]} {uart_wrapper/uart_state[30]} {uart_wrapper/uart_state[31]}]]
connect_debug_port u_ila_0/probe16 [get_nets [list zcash_fpga_top/control_top/debug_if2/ctl]]
connect_debug_port u_ila_0/probe19 [get_nets [list zcash_fpga_top/control_top/debug_if2/eop]]
connect_debug_port u_ila_0/probe21 [get_nets [list zcash_fpga_top/control_top/debug_if2/err]]
connect_debug_port u_ila_0/probe26 [get_nets [list zcash_fpga_top/control_top/debug_if2/mod]]
connect_debug_port u_ila_0/probe27 [get_nets [list zcash_fpga_top/control_top/debug_if2/rdy]]
connect_debug_port u_ila_0/probe30 [get_nets [list zcash_fpga_top/control_top/debug_if2/sop]]
connect_debug_port u_ila_0/probe34 [get_nets [list uart_wrapper/uart_axi_arvalid]]
connect_debug_port u_ila_0/probe36 [get_nets [list uart_wrapper/uart_axi_awvalid]]
connect_debug_port u_ila_0/probe38 [get_nets [list uart_wrapper/uart_axi_wready]]
connect_debug_port u_ila_0/probe40 [get_nets [list zcash_fpga_top/control_top/debug_if2/val]]
connect_debug_port u_ila_1/probe0 [get_nets [list {zcash_fpga_top/control_top/debug_if0/mod[0]} {zcash_fpga_top/control_top/debug_if0/mod[1]} {zcash_fpga_top/control_top/debug_if0/mod[2]}]]
connect_debug_port u_ila_1/probe1 [get_nets [list {zcash_fpga_top/control_top/debug_if1/dat[0]} {zcash_fpga_top/control_top/debug_if1/dat[1]} {zcash_fpga_top/control_top/debug_if1/dat[2]} {zcash_fpga_top/control_top/debug_if1/dat[3]} {zcash_fpga_top/control_top/debug_if1/dat[4]} {zcash_fpga_top/control_top/debug_if1/dat[5]} {zcash_fpga_top/control_top/debug_if1/dat[6]} {zcash_fpga_top/control_top/debug_if1/dat[7]} {zcash_fpga_top/control_top/debug_if1/dat[8]} {zcash_fpga_top/control_top/debug_if1/dat[9]} {zcash_fpga_top/control_top/debug_if1/dat[10]} {zcash_fpga_top/control_top/debug_if1/dat[11]} {zcash_fpga_top/control_top/debug_if1/dat[12]} {zcash_fpga_top/control_top/debug_if1/dat[13]} {zcash_fpga_top/control_top/debug_if1/dat[14]} {zcash_fpga_top/control_top/debug_if1/dat[15]} {zcash_fpga_top/control_top/debug_if1/dat[16]} {zcash_fpga_top/control_top/debug_if1/dat[17]} {zcash_fpga_top/control_top/debug_if1/dat[18]} {zcash_fpga_top/control_top/debug_if1/dat[19]} {zcash_fpga_top/control_top/debug_if1/dat[20]} {zcash_fpga_top/control_top/debug_if1/dat[21]} {zcash_fpga_top/control_top/debug_if1/dat[22]} {zcash_fpga_top/control_top/debug_if1/dat[23]} {zcash_fpga_top/control_top/debug_if1/dat[24]} {zcash_fpga_top/control_top/debug_if1/dat[25]} {zcash_fpga_top/control_top/debug_if1/dat[26]} {zcash_fpga_top/control_top/debug_if1/dat[27]} {zcash_fpga_top/control_top/debug_if1/dat[28]} {zcash_fpga_top/control_top/debug_if1/dat[29]} {zcash_fpga_top/control_top/debug_if1/dat[30]} {zcash_fpga_top/control_top/debug_if1/dat[31]} {zcash_fpga_top/control_top/debug_if1/dat[32]} {zcash_fpga_top/control_top/debug_if1/dat[33]} {zcash_fpga_top/control_top/debug_if1/dat[34]} {zcash_fpga_top/control_top/debug_if1/dat[35]} {zcash_fpga_top/control_top/debug_if1/dat[36]} {zcash_fpga_top/control_top/debug_if1/dat[37]} {zcash_fpga_top/control_top/debug_if1/dat[38]} {zcash_fpga_top/control_top/debug_if1/dat[39]} {zcash_fpga_top/control_top/debug_if1/dat[40]} {zcash_fpga_top/control_top/debug_if1/dat[41]} {zcash_fpga_top/control_top/debug_if1/dat[42]} {zcash_fpga_top/control_top/debug_if1/dat[43]} {zcash_fpga_top/control_top/debug_if1/dat[44]} {zcash_fpga_top/control_top/debug_if1/dat[45]} {zcash_fpga_top/control_top/debug_if1/dat[46]} {zcash_fpga_top/control_top/debug_if1/dat[47]} {zcash_fpga_top/control_top/debug_if1/dat[48]} {zcash_fpga_top/control_top/debug_if1/dat[49]} {zcash_fpga_top/control_top/debug_if1/dat[50]} {zcash_fpga_top/control_top/debug_if1/dat[51]} {zcash_fpga_top/control_top/debug_if1/dat[52]} {zcash_fpga_top/control_top/debug_if1/dat[53]} {zcash_fpga_top/control_top/debug_if1/dat[54]} {zcash_fpga_top/control_top/debug_if1/dat[55]} {zcash_fpga_top/control_top/debug_if1/dat[56]} {zcash_fpga_top/control_top/debug_if1/dat[57]} {zcash_fpga_top/control_top/debug_if1/dat[58]} {zcash_fpga_top/control_top/debug_if1/dat[59]} {zcash_fpga_top/control_top/debug_if1/dat[60]} {zcash_fpga_top/control_top/debug_if1/dat[61]} {zcash_fpga_top/control_top/debug_if1/dat[62]} {zcash_fpga_top/control_top/debug_if1/dat[63]}]]
connect_debug_port u_ila_1/probe2 [get_nets [list {zcash_fpga_top/control_top/debug_if1/mod[0]} {zcash_fpga_top/control_top/debug_if1/mod[1]} {zcash_fpga_top/control_top/debug_if1/mod[2]}]]
connect_debug_port u_ila_1/probe3 [get_nets [list {zcash_fpga_top/control_top/debug_if0/dat[0]} {zcash_fpga_top/control_top/debug_if0/dat[1]} {zcash_fpga_top/control_top/debug_if0/dat[2]} {zcash_fpga_top/control_top/debug_if0/dat[3]} {zcash_fpga_top/control_top/debug_if0/dat[4]} {zcash_fpga_top/control_top/debug_if0/dat[5]} {zcash_fpga_top/control_top/debug_if0/dat[6]} {zcash_fpga_top/control_top/debug_if0/dat[7]} {zcash_fpga_top/control_top/debug_if0/dat[8]} {zcash_fpga_top/control_top/debug_if0/dat[9]} {zcash_fpga_top/control_top/debug_if0/dat[10]} {zcash_fpga_top/control_top/debug_if0/dat[11]} {zcash_fpga_top/control_top/debug_if0/dat[12]} {zcash_fpga_top/control_top/debug_if0/dat[13]} {zcash_fpga_top/control_top/debug_if0/dat[14]} {zcash_fpga_top/control_top/debug_if0/dat[15]} {zcash_fpga_top/control_top/debug_if0/dat[16]} {zcash_fpga_top/control_top/debug_if0/dat[17]} {zcash_fpga_top/control_top/debug_if0/dat[18]} {zcash_fpga_top/control_top/debug_if0/dat[19]} {zcash_fpga_top/control_top/debug_if0/dat[20]} {zcash_fpga_top/control_top/debug_if0/dat[21]} {zcash_fpga_top/control_top/debug_if0/dat[22]} {zcash_fpga_top/control_top/debug_if0/dat[23]} {zcash_fpga_top/control_top/debug_if0/dat[24]} {zcash_fpga_top/control_top/debug_if0/dat[25]} {zcash_fpga_top/control_top/debug_if0/dat[26]} {zcash_fpga_top/control_top/debug_if0/dat[27]} {zcash_fpga_top/control_top/debug_if0/dat[28]} {zcash_fpga_top/control_top/debug_if0/dat[29]} {zcash_fpga_top/control_top/debug_if0/dat[30]} {zcash_fpga_top/control_top/debug_if0/dat[31]} {zcash_fpga_top/control_top/debug_if0/dat[32]} {zcash_fpga_top/control_top/debug_if0/dat[33]} {zcash_fpga_top/control_top/debug_if0/dat[34]} {zcash_fpga_top/control_top/debug_if0/dat[35]} {zcash_fpga_top/control_top/debug_if0/dat[36]} {zcash_fpga_top/control_top/debug_if0/dat[37]} {zcash_fpga_top/control_top/debug_if0/dat[38]} {zcash_fpga_top/control_top/debug_if0/dat[39]} {zcash_fpga_top/control_top/debug_if0/dat[40]} {zcash_fpga_top/control_top/debug_if0/dat[41]} {zcash_fpga_top/control_top/debug_if0/dat[42]} {zcash_fpga_top/control_top/debug_if0/dat[43]} {zcash_fpga_top/control_top/debug_if0/dat[44]} {zcash_fpga_top/control_top/debug_if0/dat[45]} {zcash_fpga_top/control_top/debug_if0/dat[46]} {zcash_fpga_top/control_top/debug_if0/dat[47]} {zcash_fpga_top/control_top/debug_if0/dat[48]} {zcash_fpga_top/control_top/debug_if0/dat[49]} {zcash_fpga_top/control_top/debug_if0/dat[50]} {zcash_fpga_top/control_top/debug_if0/dat[51]} {zcash_fpga_top/control_top/debug_if0/dat[52]} {zcash_fpga_top/control_top/debug_if0/dat[53]} {zcash_fpga_top/control_top/debug_if0/dat[54]} {zcash_fpga_top/control_top/debug_if0/dat[55]} {zcash_fpga_top/control_top/debug_if0/dat[56]} {zcash_fpga_top/control_top/debug_if0/dat[57]} {zcash_fpga_top/control_top/debug_if0/dat[58]} {zcash_fpga_top/control_top/debug_if0/dat[59]} {zcash_fpga_top/control_top/debug_if0/dat[60]} {zcash_fpga_top/control_top/debug_if0/dat[61]} {zcash_fpga_top/control_top/debug_if0/dat[62]} {zcash_fpga_top/control_top/debug_if0/dat[63]}]]
connect_debug_port u_ila_1/probe4 [get_nets [list zcash_fpga_top/control_top/debug_if0/ctl]]
connect_debug_port u_ila_1/probe5 [get_nets [list zcash_fpga_top/control_top/debug_if1/ctl]]
connect_debug_port u_ila_1/probe6 [get_nets [list zcash_fpga_top/control_top/debug_if1/eop]]
connect_debug_port u_ila_1/probe7 [get_nets [list zcash_fpga_top/control_top/debug_if0/eop]]
connect_debug_port u_ila_1/probe8 [get_nets [list zcash_fpga_top/control_top/debug_if0/err]]
connect_debug_port u_ila_1/probe9 [get_nets [list zcash_fpga_top/control_top/debug_if1/err]]
connect_debug_port u_ila_1/probe10 [get_nets [list zcash_fpga_top/control_top/debug_if0/rdy]]
connect_debug_port u_ila_1/probe11 [get_nets [list zcash_fpga_top/control_top/debug_if1/rdy]]
connect_debug_port u_ila_1/probe12 [get_nets [list zcash_fpga_top/control_top/debug_if1/sop]]
connect_debug_port u_ila_1/probe13 [get_nets [list zcash_fpga_top/control_top/debug_if0/sop]]
connect_debug_port u_ila_1/probe14 [get_nets [list zcash_fpga_top/control_top/debug_if0/val]]
connect_debug_port u_ila_1/probe15 [get_nets [list zcash_fpga_top/control_top/debug_if1/val]]




#Timing paths for CDC
set_bus_skew -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/synchronizer_wr_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/synchronizer_wr_ptr/* }]] 2.500
set_max_delay -datapath_only -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/synchronizer_wr_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/synchronizer_wr_ptr/* }]] 2.500
set_bus_skew -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/synchronizer_rd_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/synchronizer_rd_ptr/* }]] 1.667
set_max_delay -datapath_only -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/synchronizer_rd_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_rx/cdc_fifo/synchronizer_rd_ptr/* }]] 1.667
set_bus_skew -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/synchronizer_wr_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/synchronizer_wr_ptr/* }]] 1.667
set_max_delay -datapath_only -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/synchronizer_wr_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/synchronizer_wr_ptr/* }]] 1.667
set_bus_skew -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/synchronizer_rd_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/synchronizer_rd_ptr/* }]] 2.500
set_max_delay -datapath_only -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/synchronizer_rd_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/control_top/cdc_fifo_tx/cdc_fifo/synchronizer_rd_ptr/* }]] 2.500
set_bus_skew -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_in/synchronizer_wr_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_in/synchronizer_wr_ptr/* }]] 1.667
set_max_delay -datapath_only -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_in/synchronizer_wr_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_in/synchronizer_wr_ptr/* }]] 1.667
set_bus_skew -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_in/synchronizer_rd_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_in/synchronizer_rd_ptr/* }]] 2.500
set_max_delay -datapath_only -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_in/synchronizer_rd_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_in/synchronizer_rd_ptr/* }]] 2.500
set_bus_skew -from [get_pins -filter { NAME =~  "*ram*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_in/* }]] -to [get_pins -filter { NAME =~  "*o_dat_b*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_in/* }]] 2.500
set_max_delay -datapath_only -from [get_pins -filter { NAME =~  "*ram*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_in/* }]] -to [get_pins -filter { NAME =~  "*o_dat_b*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_in/* }]] 2.500
set_bus_skew -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_out/synchronizer_wr_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_out/synchronizer_wr_ptr/* }]] 2.500
set_max_delay -datapath_only -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_out/synchronizer_wr_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_out/synchronizer_wr_ptr/* }]] 2.500
set_bus_skew -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_out/synchronizer_rd_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_out/synchronizer_rd_ptr/* }]] 1.667
set_max_delay -datapath_only -from [get_pins -filter { NAME =~  "*dat_reg[0]*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_out/synchronizer_rd_ptr/* }]] -to [get_pins -filter { NAME =~  "*dat_reg[1]*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_out/synchronizer_rd_ptr/* }]] 1.667
set_bus_skew -from [get_pins -filter { NAME =~  "*ram*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_out/* }]] -to [get_pins -filter { NAME =~  "*o_dat_b*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_out/* }]] 1.667
set_max_delay -datapath_only -from [get_pins -filter { NAME =~  "*ram*C" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_out/* }]] -to [get_pins -filter { NAME =~  "*o_dat_b*D" } -of_objects [get_cells -hierarchical -filter {NAME =~ zcash_fpga_top/equihash_verif_top/dup_check_fifo_out/* }]] 1.667


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_300]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 2 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {uart_wrapper/uart_axi_rresp[0]} {uart_wrapper/uart_axi_rresp[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 8 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {uart_wrapper/rxuart_debug_if/dat[0]} {uart_wrapper/rxuart_debug_if/dat[1]} {uart_wrapper/rxuart_debug_if/dat[2]} {uart_wrapper/rxuart_debug_if/dat[3]} {uart_wrapper/rxuart_debug_if/dat[4]} {uart_wrapper/rxuart_debug_if/dat[5]} {uart_wrapper/rxuart_debug_if/dat[6]} {uart_wrapper/rxuart_debug_if/dat[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {uart_wrapper/txuart_debug_if/dat[0]} {uart_wrapper/txuart_debug_if/dat[1]} {uart_wrapper/txuart_debug_if/dat[2]} {uart_wrapper/txuart_debug_if/dat[3]} {uart_wrapper/txuart_debug_if/dat[4]} {uart_wrapper/txuart_debug_if/dat[5]} {uart_wrapper/txuart_debug_if/dat[6]} {uart_wrapper/txuart_debug_if/dat[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 2 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {uart_wrapper/uart_axi_awaddr[2]} {uart_wrapper/uart_axi_awaddr[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 8 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {uart_wrapper/tx_byt_len[8]} {uart_wrapper/tx_byt_len[9]} {uart_wrapper/tx_byt_len[10]} {uart_wrapper/tx_byt_len[11]} {uart_wrapper/tx_byt_len[12]} {uart_wrapper/tx_byt_len[13]} {uart_wrapper/tx_byt_len[14]} {uart_wrapper/tx_byt_len[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {uart_wrapper/uart_axi_rdata[0]} {uart_wrapper/uart_axi_rdata[1]} {uart_wrapper/uart_axi_rdata[2]} {uart_wrapper/uart_axi_rdata[3]} {uart_wrapper/uart_axi_rdata[4]} {uart_wrapper/uart_axi_rdata[5]} {uart_wrapper/uart_axi_rdata[6]} {uart_wrapper/uart_axi_rdata[7]} {uart_wrapper/uart_axi_rdata[8]} {uart_wrapper/uart_axi_rdata[9]} {uart_wrapper/uart_axi_rdata[10]} {uart_wrapper/uart_axi_rdata[11]} {uart_wrapper/uart_axi_rdata[12]} {uart_wrapper/uart_axi_rdata[13]} {uart_wrapper/uart_axi_rdata[14]} {uart_wrapper/uart_axi_rdata[15]} {uart_wrapper/uart_axi_rdata[16]} {uart_wrapper/uart_axi_rdata[17]} {uart_wrapper/uart_axi_rdata[18]} {uart_wrapper/uart_axi_rdata[19]} {uart_wrapper/uart_axi_rdata[20]} {uart_wrapper/uart_axi_rdata[21]} {uart_wrapper/uart_axi_rdata[22]} {uart_wrapper/uart_axi_rdata[23]} {uart_wrapper/uart_axi_rdata[24]} {uart_wrapper/uart_axi_rdata[25]} {uart_wrapper/uart_axi_rdata[26]} {uart_wrapper/uart_axi_rdata[27]} {uart_wrapper/uart_axi_rdata[28]} {uart_wrapper/uart_axi_rdata[29]} {uart_wrapper/uart_axi_rdata[30]} {uart_wrapper/uart_axi_rdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list uart_wrapper/txuart_debug_if/ctl]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list uart_wrapper/rxuart_debug_if/ctl]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list uart_wrapper/txuart_debug_if/eop]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list uart_wrapper/rxuart_debug_if/eop]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list uart_wrapper/rxuart_debug_if/err]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list uart_wrapper/txuart_debug_if/err]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list uart_wrapper/txuart_debug_if/mod]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list uart_wrapper/rxuart_debug_if/mod]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list uart_wrapper/txuart_debug_if/rdy]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list uart_wrapper/rxuart_debug_if/rdy]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list uart_wrapper/rxuart_debug_if/sop]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list uart_wrapper/txuart_debug_if/sop]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list uart_wrapper/uart_axi_arready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list uart_wrapper/uart_axi_awready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list uart_wrapper/uart_axi_rvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list uart_wrapper/rxuart_debug_if/val]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list uart_wrapper/txuart_debug_if/val]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list clk_wiz_mmcm/inst/clk_200]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 3 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list {zcash_fpga_top/secp256k1_top/debug_if_rx/mod[0]} {zcash_fpga_top/secp256k1_top/debug_if_rx/mod[1]} {zcash_fpga_top/secp256k1_top/debug_if_rx/mod[2]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 64 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[0]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[1]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[2]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[3]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[4]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[5]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[6]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[7]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[8]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[9]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[10]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[11]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[12]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[13]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[14]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[15]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[16]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[17]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[18]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[19]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[20]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[21]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[22]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[23]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[24]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[25]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[26]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[27]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[28]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[29]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[30]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[31]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[32]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[33]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[34]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[35]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[36]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[37]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[38]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[39]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[40]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[41]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[42]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[43]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[44]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[45]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[46]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[47]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[48]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[49]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[50]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[51]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[52]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[53]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[54]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[55]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[56]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[57]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[58]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[59]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[60]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[61]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[62]} {zcash_fpga_top/secp256k1_top/debug_if_tx/dat[63]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe2]
set_property port_width 3 [get_debug_ports u_ila_1/probe2]
connect_debug_port u_ila_1/probe2 [get_nets [list {zcash_fpga_top/secp256k1_top/debug_if_tx/mod[0]} {zcash_fpga_top/secp256k1_top/debug_if_tx/mod[1]} {zcash_fpga_top/secp256k1_top/debug_if_tx/mod[2]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe3]
set_property port_width 64 [get_debug_ports u_ila_1/probe3]
connect_debug_port u_ila_1/probe3 [get_nets [list {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[0]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[1]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[2]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[3]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[4]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[5]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[6]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[7]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[8]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[9]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[10]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[11]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[12]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[13]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[14]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[15]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[16]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[17]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[18]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[19]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[20]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[21]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[22]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[23]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[24]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[25]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[26]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[27]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[28]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[29]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[30]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[31]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[32]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[33]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[34]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[35]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[36]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[37]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[38]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[39]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[40]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[41]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[42]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[43]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[44]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[45]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[46]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[47]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[48]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[49]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[50]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[51]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[52]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[53]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[54]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[55]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[56]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[57]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[58]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[59]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[60]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[61]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[62]} {zcash_fpga_top/secp256k1_top/debug_if_rx/dat[63]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe4]
set_property port_width 64 [get_debug_ports u_ila_1/probe4]
connect_debug_port u_ila_1/probe4 [get_nets [list {zcash_fpga_top/control_top/debug_if_tx/dat[0]} {zcash_fpga_top/control_top/debug_if_tx/dat[1]} {zcash_fpga_top/control_top/debug_if_tx/dat[2]} {zcash_fpga_top/control_top/debug_if_tx/dat[3]} {zcash_fpga_top/control_top/debug_if_tx/dat[4]} {zcash_fpga_top/control_top/debug_if_tx/dat[5]} {zcash_fpga_top/control_top/debug_if_tx/dat[6]} {zcash_fpga_top/control_top/debug_if_tx/dat[7]} {zcash_fpga_top/control_top/debug_if_tx/dat[8]} {zcash_fpga_top/control_top/debug_if_tx/dat[9]} {zcash_fpga_top/control_top/debug_if_tx/dat[10]} {zcash_fpga_top/control_top/debug_if_tx/dat[11]} {zcash_fpga_top/control_top/debug_if_tx/dat[12]} {zcash_fpga_top/control_top/debug_if_tx/dat[13]} {zcash_fpga_top/control_top/debug_if_tx/dat[14]} {zcash_fpga_top/control_top/debug_if_tx/dat[15]} {zcash_fpga_top/control_top/debug_if_tx/dat[16]} {zcash_fpga_top/control_top/debug_if_tx/dat[17]} {zcash_fpga_top/control_top/debug_if_tx/dat[18]} {zcash_fpga_top/control_top/debug_if_tx/dat[19]} {zcash_fpga_top/control_top/debug_if_tx/dat[20]} {zcash_fpga_top/control_top/debug_if_tx/dat[21]} {zcash_fpga_top/control_top/debug_if_tx/dat[22]} {zcash_fpga_top/control_top/debug_if_tx/dat[23]} {zcash_fpga_top/control_top/debug_if_tx/dat[24]} {zcash_fpga_top/control_top/debug_if_tx/dat[25]} {zcash_fpga_top/control_top/debug_if_tx/dat[26]} {zcash_fpga_top/control_top/debug_if_tx/dat[27]} {zcash_fpga_top/control_top/debug_if_tx/dat[28]} {zcash_fpga_top/control_top/debug_if_tx/dat[29]} {zcash_fpga_top/control_top/debug_if_tx/dat[30]} {zcash_fpga_top/control_top/debug_if_tx/dat[31]} {zcash_fpga_top/control_top/debug_if_tx/dat[32]} {zcash_fpga_top/control_top/debug_if_tx/dat[33]} {zcash_fpga_top/control_top/debug_if_tx/dat[34]} {zcash_fpga_top/control_top/debug_if_tx/dat[35]} {zcash_fpga_top/control_top/debug_if_tx/dat[36]} {zcash_fpga_top/control_top/debug_if_tx/dat[37]} {zcash_fpga_top/control_top/debug_if_tx/dat[38]} {zcash_fpga_top/control_top/debug_if_tx/dat[39]} {zcash_fpga_top/control_top/debug_if_tx/dat[40]} {zcash_fpga_top/control_top/debug_if_tx/dat[41]} {zcash_fpga_top/control_top/debug_if_tx/dat[42]} {zcash_fpga_top/control_top/debug_if_tx/dat[43]} {zcash_fpga_top/control_top/debug_if_tx/dat[44]} {zcash_fpga_top/control_top/debug_if_tx/dat[45]} {zcash_fpga_top/control_top/debug_if_tx/dat[46]} {zcash_fpga_top/control_top/debug_if_tx/dat[47]} {zcash_fpga_top/control_top/debug_if_tx/dat[48]} {zcash_fpga_top/control_top/debug_if_tx/dat[49]} {zcash_fpga_top/control_top/debug_if_tx/dat[50]} {zcash_fpga_top/control_top/debug_if_tx/dat[51]} {zcash_fpga_top/control_top/debug_if_tx/dat[52]} {zcash_fpga_top/control_top/debug_if_tx/dat[53]} {zcash_fpga_top/control_top/debug_if_tx/dat[54]} {zcash_fpga_top/control_top/debug_if_tx/dat[55]} {zcash_fpga_top/control_top/debug_if_tx/dat[56]} {zcash_fpga_top/control_top/debug_if_tx/dat[57]} {zcash_fpga_top/control_top/debug_if_tx/dat[58]} {zcash_fpga_top/control_top/debug_if_tx/dat[59]} {zcash_fpga_top/control_top/debug_if_tx/dat[60]} {zcash_fpga_top/control_top/debug_if_tx/dat[61]} {zcash_fpga_top/control_top/debug_if_tx/dat[62]} {zcash_fpga_top/control_top/debug_if_tx/dat[63]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe5]
set_property port_width 3 [get_debug_ports u_ila_1/probe5]
connect_debug_port u_ila_1/probe5 [get_nets [list {zcash_fpga_top/control_top/debug_if_tx/mod[0]} {zcash_fpga_top/control_top/debug_if_tx/mod[1]} {zcash_fpga_top/control_top/debug_if_tx/mod[2]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe6]
set_property port_width 3 [get_debug_ports u_ila_1/probe6]
connect_debug_port u_ila_1/probe6 [get_nets [list {zcash_fpga_top/control_top/debug_if_rx/mod[0]} {zcash_fpga_top/control_top/debug_if_rx/mod[1]} {zcash_fpga_top/control_top/debug_if_rx/mod[2]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe7]
set_property port_width 64 [get_debug_ports u_ila_1/probe7]
connect_debug_port u_ila_1/probe7 [get_nets [list {zcash_fpga_top/control_top/debug_if_rx/dat[0]} {zcash_fpga_top/control_top/debug_if_rx/dat[1]} {zcash_fpga_top/control_top/debug_if_rx/dat[2]} {zcash_fpga_top/control_top/debug_if_rx/dat[3]} {zcash_fpga_top/control_top/debug_if_rx/dat[4]} {zcash_fpga_top/control_top/debug_if_rx/dat[5]} {zcash_fpga_top/control_top/debug_if_rx/dat[6]} {zcash_fpga_top/control_top/debug_if_rx/dat[7]} {zcash_fpga_top/control_top/debug_if_rx/dat[8]} {zcash_fpga_top/control_top/debug_if_rx/dat[9]} {zcash_fpga_top/control_top/debug_if_rx/dat[10]} {zcash_fpga_top/control_top/debug_if_rx/dat[11]} {zcash_fpga_top/control_top/debug_if_rx/dat[12]} {zcash_fpga_top/control_top/debug_if_rx/dat[13]} {zcash_fpga_top/control_top/debug_if_rx/dat[14]} {zcash_fpga_top/control_top/debug_if_rx/dat[15]} {zcash_fpga_top/control_top/debug_if_rx/dat[16]} {zcash_fpga_top/control_top/debug_if_rx/dat[17]} {zcash_fpga_top/control_top/debug_if_rx/dat[18]} {zcash_fpga_top/control_top/debug_if_rx/dat[19]} {zcash_fpga_top/control_top/debug_if_rx/dat[20]} {zcash_fpga_top/control_top/debug_if_rx/dat[21]} {zcash_fpga_top/control_top/debug_if_rx/dat[22]} {zcash_fpga_top/control_top/debug_if_rx/dat[23]} {zcash_fpga_top/control_top/debug_if_rx/dat[24]} {zcash_fpga_top/control_top/debug_if_rx/dat[25]} {zcash_fpga_top/control_top/debug_if_rx/dat[26]} {zcash_fpga_top/control_top/debug_if_rx/dat[27]} {zcash_fpga_top/control_top/debug_if_rx/dat[28]} {zcash_fpga_top/control_top/debug_if_rx/dat[29]} {zcash_fpga_top/control_top/debug_if_rx/dat[30]} {zcash_fpga_top/control_top/debug_if_rx/dat[31]} {zcash_fpga_top/control_top/debug_if_rx/dat[32]} {zcash_fpga_top/control_top/debug_if_rx/dat[33]} {zcash_fpga_top/control_top/debug_if_rx/dat[34]} {zcash_fpga_top/control_top/debug_if_rx/dat[35]} {zcash_fpga_top/control_top/debug_if_rx/dat[36]} {zcash_fpga_top/control_top/debug_if_rx/dat[37]} {zcash_fpga_top/control_top/debug_if_rx/dat[38]} {zcash_fpga_top/control_top/debug_if_rx/dat[39]} {zcash_fpga_top/control_top/debug_if_rx/dat[40]} {zcash_fpga_top/control_top/debug_if_rx/dat[41]} {zcash_fpga_top/control_top/debug_if_rx/dat[42]} {zcash_fpga_top/control_top/debug_if_rx/dat[43]} {zcash_fpga_top/control_top/debug_if_rx/dat[44]} {zcash_fpga_top/control_top/debug_if_rx/dat[45]} {zcash_fpga_top/control_top/debug_if_rx/dat[46]} {zcash_fpga_top/control_top/debug_if_rx/dat[47]} {zcash_fpga_top/control_top/debug_if_rx/dat[48]} {zcash_fpga_top/control_top/debug_if_rx/dat[49]} {zcash_fpga_top/control_top/debug_if_rx/dat[50]} {zcash_fpga_top/control_top/debug_if_rx/dat[51]} {zcash_fpga_top/control_top/debug_if_rx/dat[52]} {zcash_fpga_top/control_top/debug_if_rx/dat[53]} {zcash_fpga_top/control_top/debug_if_rx/dat[54]} {zcash_fpga_top/control_top/debug_if_rx/dat[55]} {zcash_fpga_top/control_top/debug_if_rx/dat[56]} {zcash_fpga_top/control_top/debug_if_rx/dat[57]} {zcash_fpga_top/control_top/debug_if_rx/dat[58]} {zcash_fpga_top/control_top/debug_if_rx/dat[59]} {zcash_fpga_top/control_top/debug_if_rx/dat[60]} {zcash_fpga_top/control_top/debug_if_rx/dat[61]} {zcash_fpga_top/control_top/debug_if_rx/dat[62]} {zcash_fpga_top/control_top/debug_if_rx/dat[63]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe8]
set_property port_width 32 [get_debug_ports u_ila_1/probe8]
connect_debug_port u_ila_1/probe8 [get_nets [list {zcash_fpga_top/secp256k1_top/secp256k1_state[0]} {zcash_fpga_top/secp256k1_top/secp256k1_state[1]} {zcash_fpga_top/secp256k1_top/secp256k1_state[2]} {zcash_fpga_top/secp256k1_top/secp256k1_state[3]} {zcash_fpga_top/secp256k1_top/secp256k1_state[4]} {zcash_fpga_top/secp256k1_top/secp256k1_state[5]} {zcash_fpga_top/secp256k1_top/secp256k1_state[6]} {zcash_fpga_top/secp256k1_top/secp256k1_state[7]} {zcash_fpga_top/secp256k1_top/secp256k1_state[8]} {zcash_fpga_top/secp256k1_top/secp256k1_state[9]} {zcash_fpga_top/secp256k1_top/secp256k1_state[10]} {zcash_fpga_top/secp256k1_top/secp256k1_state[11]} {zcash_fpga_top/secp256k1_top/secp256k1_state[12]} {zcash_fpga_top/secp256k1_top/secp256k1_state[13]} {zcash_fpga_top/secp256k1_top/secp256k1_state[14]} {zcash_fpga_top/secp256k1_top/secp256k1_state[15]} {zcash_fpga_top/secp256k1_top/secp256k1_state[16]} {zcash_fpga_top/secp256k1_top/secp256k1_state[17]} {zcash_fpga_top/secp256k1_top/secp256k1_state[18]} {zcash_fpga_top/secp256k1_top/secp256k1_state[19]} {zcash_fpga_top/secp256k1_top/secp256k1_state[20]} {zcash_fpga_top/secp256k1_top/secp256k1_state[21]} {zcash_fpga_top/secp256k1_top/secp256k1_state[22]} {zcash_fpga_top/secp256k1_top/secp256k1_state[23]} {zcash_fpga_top/secp256k1_top/secp256k1_state[24]} {zcash_fpga_top/secp256k1_top/secp256k1_state[25]} {zcash_fpga_top/secp256k1_top/secp256k1_state[26]} {zcash_fpga_top/secp256k1_top/secp256k1_state[27]} {zcash_fpga_top/secp256k1_top/secp256k1_state[28]} {zcash_fpga_top/secp256k1_top/secp256k1_state[29]} {zcash_fpga_top/secp256k1_top/secp256k1_state[30]} {zcash_fpga_top/secp256k1_top/secp256k1_state[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe9]
set_property port_width 1 [get_debug_ports u_ila_1/probe9]
connect_debug_port u_ila_1/probe9 [get_nets [list zcash_fpga_top/control_top/debug_if_rx/ctl]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe10]
set_property port_width 1 [get_debug_ports u_ila_1/probe10]
connect_debug_port u_ila_1/probe10 [get_nets [list zcash_fpga_top/control_top/debug_if_tx/ctl]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe11]
set_property port_width 1 [get_debug_ports u_ila_1/probe11]
connect_debug_port u_ila_1/probe11 [get_nets [list zcash_fpga_top/secp256k1_top/debug_if_rx/ctl]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe12]
set_property port_width 1 [get_debug_ports u_ila_1/probe12]
connect_debug_port u_ila_1/probe12 [get_nets [list zcash_fpga_top/secp256k1_top/debug_if_tx/ctl]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe13]
set_property port_width 1 [get_debug_ports u_ila_1/probe13]
connect_debug_port u_ila_1/probe13 [get_nets [list zcash_fpga_top/secp256k1_top/debug_if_rx/eop]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe14]
set_property port_width 1 [get_debug_ports u_ila_1/probe14]
connect_debug_port u_ila_1/probe14 [get_nets [list zcash_fpga_top/control_top/debug_if_tx/eop]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe15]
set_property port_width 1 [get_debug_ports u_ila_1/probe15]
connect_debug_port u_ila_1/probe15 [get_nets [list zcash_fpga_top/secp256k1_top/debug_if_tx/eop]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe16]
set_property port_width 1 [get_debug_ports u_ila_1/probe16]
connect_debug_port u_ila_1/probe16 [get_nets [list zcash_fpga_top/control_top/debug_if_rx/eop]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe17]
set_property port_width 1 [get_debug_ports u_ila_1/probe17]
connect_debug_port u_ila_1/probe17 [get_nets [list zcash_fpga_top/control_top/debug_if_tx/err]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe18]
set_property port_width 1 [get_debug_ports u_ila_1/probe18]
connect_debug_port u_ila_1/probe18 [get_nets [list zcash_fpga_top/secp256k1_top/debug_if_rx/err]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe19]
set_property port_width 1 [get_debug_ports u_ila_1/probe19]
connect_debug_port u_ila_1/probe19 [get_nets [list zcash_fpga_top/secp256k1_top/debug_if_tx/err]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe20]
set_property port_width 1 [get_debug_ports u_ila_1/probe20]
connect_debug_port u_ila_1/probe20 [get_nets [list zcash_fpga_top/control_top/debug_if_rx/err]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe21]
set_property port_width 1 [get_debug_ports u_ila_1/probe21]
connect_debug_port u_ila_1/probe21 [get_nets [list zcash_fpga_top/control_top/debug_if_tx/rdy]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe22]
set_property port_width 1 [get_debug_ports u_ila_1/probe22]
connect_debug_port u_ila_1/probe22 [get_nets [list zcash_fpga_top/control_top/debug_if_rx/rdy]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe23]
set_property port_width 1 [get_debug_ports u_ila_1/probe23]
connect_debug_port u_ila_1/probe23 [get_nets [list zcash_fpga_top/secp256k1_top/debug_if_rx/rdy]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe24]
set_property port_width 1 [get_debug_ports u_ila_1/probe24]
connect_debug_port u_ila_1/probe24 [get_nets [list zcash_fpga_top/secp256k1_top/debug_if_tx/rdy]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe25]
set_property port_width 1 [get_debug_ports u_ila_1/probe25]
connect_debug_port u_ila_1/probe25 [get_nets [list zcash_fpga_top/secp256k1_top/debug_if_rx/sop]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe26]
set_property port_width 1 [get_debug_ports u_ila_1/probe26]
connect_debug_port u_ila_1/probe26 [get_nets [list zcash_fpga_top/control_top/debug_if_tx/sop]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe27]
set_property port_width 1 [get_debug_ports u_ila_1/probe27]
connect_debug_port u_ila_1/probe27 [get_nets [list zcash_fpga_top/secp256k1_top/debug_if_tx/sop]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe28]
set_property port_width 1 [get_debug_ports u_ila_1/probe28]
connect_debug_port u_ila_1/probe28 [get_nets [list zcash_fpga_top/control_top/debug_if_rx/sop]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe29]
set_property port_width 1 [get_debug_ports u_ila_1/probe29]
connect_debug_port u_ila_1/probe29 [get_nets [list zcash_fpga_top/control_top/debug_if_rx/val]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe30]
set_property port_width 1 [get_debug_ports u_ila_1/probe30]
connect_debug_port u_ila_1/probe30 [get_nets [list zcash_fpga_top/secp256k1_top/debug_if_tx/val]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe31]
set_property port_width 1 [get_debug_ports u_ila_1/probe31]
connect_debug_port u_ila_1/probe31 [get_nets [list zcash_fpga_top/secp256k1_top/debug_if_rx/val]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe32]
set_property port_width 1 [get_debug_ports u_ila_1/probe32]
connect_debug_port u_ila_1/probe32 [get_nets [list zcash_fpga_top/control_top/debug_if_tx/val]]
set_false_path -from [get_pins {zcash_fpga_top/core_rst1_sync/dat_reg[0][0]/C}] -to [get_pins {zcash_fpga_top/core_rst1_sync/dat_reg[2][0]_srl2/D}]
set_false_path -from [get_pins {zcash_fpga_top/if_rst_sync/dat_reg[0][0]/C}] -to [get_pins {zcash_fpga_top/if_rst_sync/dat_reg[2][0]_srl2/D}]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_200]
