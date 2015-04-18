//-----------------------------------------------------------------------------
// File          : de0_nano.v
// Creation date : 12.03.2015
// Creation time : 13:07:57
// Description   : 
// Created by    : 
// This file was generated with Kactus2 verilog generator
// based on IP-XACT component org.opencores:soc:de0_nano:1.0
// whose XML file is /home/olof/code/ipxact/org.opencores/soc/de0_nano/1.0/de0_nano.1.0.xml
//-----------------------------------------------------------------------------

module de0_nano(
    // Interface: sdram
    input          [15:0] dq_i,
    output         [12:0] a_pad_o,
    output         [1:0]  ba_pad_o,
    output                cas_pad_o,
    output                cke_pad_o,
    output                cs_n_pad_o,
    output         [15:0] dq_o,
    output                dq_oe,
    output         [1:0]  dqm_pad_o,
    output                ras_pad_o,
    output                we_pad_o,

    // Interface: spi
    input  wire           miso_i,
    output wire           mosi_o,
    output reg            sck_o,

    // Interface: uart
    input                 uart_rx_i,
    output                uart_tx_o,

    // These ports are not in any interface
    input          [7:0]  gpio0_i,
    input                 rst_n_pad_i,
    input                 sys_clk_pad_i,
    output         [7:0]  gpio0_dir_o,
    output         [7:0]  gpio0_o
);

    wire        adv_debug_sys_0_wb_rst_i_to_clkgen_wb_rst_o;
    wire        adv_debug_sys_0_wb_clk_i_to_clkgen_wb_clk_o;
    wire        clkgen_wb_rst_o_to_mor1kx_rst;
    wire        clkgen_wb_clk_o_to_mor1kx_clk;
    wire        clkgen_sdram_rst_o_to_wb_sdram_ctrl0_sdram_rst;
    wire        clkgen_sdram_clk_o_to_wb_sdram_ctrl0_sdram_clk;
    wire        clkgen_wb_rst_o_to_wb_sdram_ctrl0_wb_rst;
    wire        clkgen_wb_clk_o_to_wb_sdram_ctrl0_wb_clk;
    wire        clkgen_wb_rst_o_to_uart0_wb_rst_i;
    wire        clkgen_wb_clk_o_to_uart0_wb_clk_i;
    wire        clkgen_wb_rst_o_to_wb_intercon_wb_rst_i;
    wire        clkgen_wb_clk_o_to_wb_intercon_wb_clk_i;
    wire        bootrom_wb_clk_i_to_clkgen_wb_clk_o;
    wire        clkgen_wb_rst_o_to_bootrom_wb_rst_i;
    wire        clkgen_wb_clk_o_to_wb_gpio0_wb_clk;
    wire        clkgen_wb_rst_o_to_wb_gpio0_wb_rst;
    wire        clkgen_wb_clk_o_to_simple_spi_0_clk_i;
    wire        simple_spi_0_rst_i_to_clkgen_wb_rst_o;
    wire        uart_irq_to_mor1kx_irq_irq2;
    wire        uart_irq_to_mor1kx_irq_irq1;
    wire        uart_irq_to_mor1kx_irq_irq0;
    wire [31:0] wb_intercon_wbm_spi0_to_simple_spi_0_wb_adr_o;
    wire [7:0]  wb_intercon_wbm_spi0_to_simple_spi_0_wb_dat_o;
    wire        wb_intercon_wbm_spi0_to_simple_spi_0_wb_we_o;
    wire        wb_intercon_wbm_spi0_to_simple_spi_0_wb_cyc_o;
    wire        wb_intercon_wbm_spi0_to_simple_spi_0_wb_stb_o;
    wire [2:0]  wb_intercon_wbm_spi0_to_simple_spi_0_wb_cti_o;
    wire [1:0]  wb_intercon_wbm_spi0_to_simple_spi_0_wb_bte_o;
    wire [7:0]  wb_intercon_wbm_spi0_to_simple_spi_0_wb_dat_i;
    wire        wb_intercon_wbm_spi0_to_simple_spi_0_wb_ack_i;
    wire        wb_intercon_wbm_spi0_to_simple_spi_0_wb_err_i;
    wire        wb_intercon_wbm_spi0_to_simple_spi_0_wb_rty_i;
    wire        adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_ack_i;
    wire [15:0] adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_addr_o;
    wire [31:0] adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_dat_i;
    wire [31:0] adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_dat_o;
    wire        adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_stall_o;
    wire        adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_stall_i;
    wire        adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_we_o;
    wire        adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_stb_o;
    wire [31:0] wb_intercon_wbm_rom0_to_bootrom_wb_adr_o;
    wire [31:0] wb_intercon_wbm_rom0_to_bootrom_wb_dat_o;
    wire [3:0]  wb_intercon_wbm_rom0_to_bootrom_wb_sel_o;
    wire        wb_intercon_wbm_rom0_to_bootrom_wb_we_o;
    wire        wb_intercon_wbm_rom0_to_bootrom_wb_cyc_o;
    wire        wb_intercon_wbm_rom0_to_bootrom_wb_stb_o;
    wire [2:0]  wb_intercon_wbm_rom0_to_bootrom_wb_cti_o;
    wire [1:0]  wb_intercon_wbm_rom0_to_bootrom_wb_bte_o;
    wire [31:0] wb_intercon_wbm_rom0_to_bootrom_wb_dat_i;
    wire        wb_intercon_wbm_rom0_to_bootrom_wb_ack_i;
    wire        wb_intercon_wbm_rom0_to_bootrom_wb_err_i;
    wire        wb_intercon_wbm_rom0_to_bootrom_wb_rty_i;
    wire [31:0] wb_intercon_wbm_uart0_to_uart_wbs_adr_o;
    wire [7:0]  wb_intercon_wbm_uart0_to_uart_wbs_dat_o;
    wire        wb_intercon_wbm_uart0_to_uart_wbs_we_o;
    wire        wb_intercon_wbm_uart0_to_uart_wbs_cyc_o;
    wire        wb_intercon_wbm_uart0_to_uart_wbs_stb_o;
    wire [2:0]  wb_intercon_wbm_uart0_to_uart_wbs_cti_o;
    wire [1:0]  wb_intercon_wbm_uart0_to_uart_wbs_bte_o;
    wire [7:0]  wb_intercon_wbm_uart0_to_uart_wbs_dat_i;
    wire        wb_intercon_wbm_uart0_to_uart_wbs_ack_i;
    wire        wb_intercon_wbm_uart0_to_uart_wbs_err_i;
    wire        wb_intercon_wbm_uart0_to_uart_wbs_rty_i;
    wire [31:0] wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_adr_o;
    wire [31:0] wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_dat_o;
    wire [3:0]  wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_sel_o;
    wire        wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_we_o;
    wire        wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_cyc_o;
    wire        wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_stb_o;
    wire [2:0]  wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_cti_o;
    wire [1:0]  wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_bte_o;
    wire [31:0] wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_dat_i;
    wire [2:0]  wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_ack_i;
    wire        wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_err_i;
    wire        wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_rty_i;
    wire [31:0] wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_adr_o;
    wire [31:0] wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_dat_o;
    wire [3:0]  wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_sel_o;
    wire        wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_we_o;
    wire        wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_cyc_o;
    wire        wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_stb_o;
    wire [2:0]  wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_cti_o;
    wire [1:0]  wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_bte_o;
    wire [31:0] wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_dat_i;
    wire [2:0]  wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_ack_i;
    wire        wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_err_i;
    wire        wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_rty_i;
    wire [31:0] wb_intercon_wbm_gpio0_to_wb_gpio_wb_adr_o;
    wire [7:0]  wb_intercon_wbm_gpio0_to_wb_gpio_wb_dat_o;
    wire        wb_intercon_wbm_gpio0_to_wb_gpio_wb_we_o;
    wire        wb_intercon_wbm_gpio0_to_wb_gpio_wb_cyc_o;
    wire        wb_intercon_wbm_gpio0_to_wb_gpio_wb_stb_o;
    wire [2:0]  wb_intercon_wbm_gpio0_to_wb_gpio_wb_cti_o;
    wire [1:0]  wb_intercon_wbm_gpio0_to_wb_gpio_wb_bte_o;
    wire [7:0]  wb_intercon_wbm_gpio0_to_wb_gpio_wb_dat_i;
    wire        wb_intercon_wbm_gpio0_to_wb_gpio_wb_ack_i;
    wire        wb_intercon_wbm_gpio0_to_wb_gpio_wb_err_i;
    wire        wb_intercon_wbm_gpio0_to_wb_gpio_wb_rty_i;
    wire [31:0] mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_adr_o;
    wire [31:0] mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_dat_o;
    wire [3:0]  mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_sel_o;
    wire        mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_we_o;
    wire        mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_cyc_o;
    wire        mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_stb_o;
    wire [2:0]  mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_cti_o;
    wire [1:0]  mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_bte_o;
    wire [31:0] mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_dat_i;
    wire        mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_ack_i;
    wire        mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_err_i;
    wire        mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_rty_i;
    wire [31:0] mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_adr_o;
    wire [31:0] mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_dat_o;
    wire [3:0]  mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_sel_o;
    wire        mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_we_o;
    wire        mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_cyc_o;
    wire        mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_stb_o;
    wire [2:0]  mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_cti_o;
    wire [1:0]  mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_bte_o;
    wire [31:0] mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_dat_i;
    wire        mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_ack_i;
    wire        mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_err_i;
    wire        mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_rty_i;
    wire        altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_capture_dr;
    wire        altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_debug_select;
    wire        altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_pause_dr;
    wire        altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_shift_dr;
    wire        altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_tck;
    wire        altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_tdi;
    wire        altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_tdo;
    wire        altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_update_dr;

    // IP-XACT VLNV: org.opencores:ip:adv_debug_sys:1.0
    adv_debug_sys adv_debug_sys_0(
        // Interface: dbg_cpu0
        .cpu0_ack_i          (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_ack_i),
        .cpu0_bp_i           (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_stall_i),
        .cpu0_data_i         (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_dat_i),
        .cpu0_addr_o         (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_addr_o[15:0]),
        .cpu0_data_o         (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_dat_o),
        .cpu0_stall_o        (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_stall_o),
        .cpu0_stb_o          (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_stb_o),
        .cpu0_we_o           (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_we_o),
        // Interface: jsp
        .wb_jsp_adr_i        ( ),
        .wb_jsp_bte_i        ( ),
        .wb_jsp_cti_i        ( ),
        .wb_jsp_cyc_i        ( ),
        .wb_jsp_dat_i        ( ),
        .wb_jsp_sel_i        ( ),
        .wb_jsp_stb_i        ( ),
        .wb_jsp_we_i         ( ),
        .wb_jsp_ack_o        ( ),
        .wb_jsp_dat_o        ( ),
        .wb_jsp_err_o        ( ),
        // Interface: jtag
        .capture_dr_i        (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_capture_dr),
        .debug_select_i      (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_debug_select),
        .pause_dr_i          (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_pause_dr),
        .shift_dr_i          (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_shift_dr),
        .tck_i               (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_tck),
        .tdi_i               (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_tdo),
        .update_dr_i         (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_update_dr),
        .tdo_o               (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_tdi),
        // Interface: wbm
        .wb_ack_i            ( ),
        .wb_dat_i            ( ),
        .wb_adr_o            ( ),
        .wb_bte_o            ( ),
        .wb_cti_o            ( ),
        .wb_cyc_o            ( ),
        .wb_dat_o            ( ),
        .wb_sel_o            ( ),
        .wb_stb_o            ( ),
        .wb_we_o             ( ),
        // These ports are not in any interface
        .cpu0_clk_i          ( ),
        .cpu1_ack_i          ( ),
        .cpu1_bp_i           ( ),
        .cpu1_clk_i          ( ),
        .cpu1_data_i         ( ),
        .rst_i               ( ),
        .wb_clk_i            (adv_debug_sys_0_wb_clk_i_to_clkgen_wb_clk_o),
        .wb_err_i            ( ),
        .wb_jsp_cab_i        ( ),
        .wb_rst_i            (adv_debug_sys_0_wb_rst_i_to_clkgen_wb_rst_o),
        .cpu0_rst_o          ( ),
        .cpu1_addr_o         ( ),
        .cpu1_data_o         ( ),
        .cpu1_rst_o          ( ),
        .cpu1_stall_o        ( ),
        .cpu1_stb_o          ( ),
        .cpu1_we_o           ( ),
        .int_o               ( ),
        .wb_cab_o            ( ));

    // IP-XACT VLNV: org.opencores:ip:altera_virtual_jtag:1.0
    altera_virtual_jtag altera_virtual_jtag_0(
        // Interface: debug
        .debug_tdo_i         (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_tdi),
        .capture_dr_o        (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_capture_dr),
        .debug_select_o      (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_debug_select),
        .pause_dr_o          (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_pause_dr),
        .shift_dr_o          (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_shift_dr),
        .tck_o               (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_tck),
        .tdi_o               (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_tdo),
        .update_dr_o         (altera_virtual_jtag_0_debug_to_adv_debug_sys_0_jtag_update_dr),
        // These ports are not in any interface
        .run_test_idle_o     ( ),
        .test_logic_reset_o  ( ));

    // IP-XACT VLNV: org.opencores:ip:wb_ram:1.0
    wb_ram bootrom(
        // Interface: wb
        .wb_adr_i            (wb_intercon_wbm_rom0_to_bootrom_wb_adr_o),
        .wb_bte_i            (wb_intercon_wbm_rom0_to_bootrom_wb_bte_o),
        .wb_cti_i            (wb_intercon_wbm_rom0_to_bootrom_wb_cti_o),
        .wb_cyc_i            (wb_intercon_wbm_rom0_to_bootrom_wb_cyc_o),
        .wb_dat_i            (wb_intercon_wbm_rom0_to_bootrom_wb_dat_o),
        .wb_sel_i            (wb_intercon_wbm_rom0_to_bootrom_wb_sel_o),
        .wb_stb_i            (wb_intercon_wbm_rom0_to_bootrom_wb_stb_o),
        .wb_we_i             (wb_intercon_wbm_rom0_to_bootrom_wb_we_o),
        .wb_ack_o            (wb_intercon_wbm_rom0_to_bootrom_wb_ack_i),
        .wb_dat_o            (wb_intercon_wbm_rom0_to_bootrom_wb_dat_i),
        .wb_err_o            (wb_intercon_wbm_rom0_to_bootrom_wb_err_i),
        // These ports are not in any interface
        .wb_clk_i            (bootrom_wb_clk_i_to_clkgen_wb_clk_o),
        .wb_rst_i            (clkgen_wb_rst_o_to_bootrom_wb_rst_i));

    // IP-XACT VLNV: org.opencores:ip:de0_nano_clkgen:1.0
    de0_nano_clkgen clkgen(
        // These ports are not in any interface
        .rst_n_pad_i         (rst_n_pad_i),
        .sys_clk_pad_i       (sys_clk_pad_i),
        .async_rst_o         ( ),
        .sdram_clk_o         (clkgen_sdram_clk_o_to_wb_sdram_ctrl0_sdram_clk),
        .sdram_rst_o         (clkgen_sdram_rst_o_to_wb_sdram_ctrl0_sdram_rst),
        .wb_clk_o            (clkgen_wb_clk_o_to_simple_spi_0_clk_i),
        .wb_rst_o            (simple_spi_0_rst_i_to_clkgen_wb_rst_o));

    // IP-XACT VLNV: org.opencores:ip:mor1kx:3.1
    mor1kx mor1kx(
        // Interface: dbg
        .du_addr_i           (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_addr_o),
        .du_dat_i            (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_dat_o),
        .du_stall_i          (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_stall_o),
        .du_stb_i            (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_stb_o),
        .du_we_i             (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_we_o),
        .du_ack_o            (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_ack_i),
        .du_dat_o            (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_dat_i),
        .du_stall_o          (adv_debug_sys_0_dbg_cpu0_to_mor1kx_dbg_stall_i),
        // Interface: irq
        .irq_i               (uart_irq_to_mor1kx_irq_irq0[0]),
        // Interface: wb_d
        .dwbm_ack_i          (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_ack_i),
        .dwbm_dat_i          (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_dat_i),
        .dwbm_err_i          (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_err_i),
        .dwbm_rty_i          (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_rty_i),
        .dwbm_adr_o          (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_adr_o),
        .dwbm_bte_o          (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_bte_o),
        .dwbm_cti_o          (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_cti_o),
        .dwbm_cyc_o          (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_cyc_o),
        .dwbm_dat_o          (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_dat_o),
        .dwbm_sel_o          (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_sel_o),
        .dwbm_stb_o          (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_stb_o),
        .dwbm_we_o           (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_we_o),
        // Interface: wb_i
        .iwbm_ack_i          (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_ack_i),
        .iwbm_dat_i          (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_dat_i),
        .iwbm_err_i          (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_err_i),
        .iwbm_rty_i          (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_rty_i),
        .iwbm_adr_o          (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_adr_o),
        .iwbm_bte_o          (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_bte_o),
        .iwbm_cti_o          (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_cti_o),
        .iwbm_cyc_o          (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_cyc_o),
        .iwbm_dat_o          (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_dat_o),
        .iwbm_sel_o          (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_sel_o),
        .iwbm_stb_o          (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_stb_o),
        .iwbm_we_o           (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_we_o),
        // These ports are not in any interface
        .clk                 (clkgen_wb_clk_o_to_mor1kx_clk),
        .multicore_coreid_i  ( ),
        .multicore_numcores_i( ),
        .rst                 (clkgen_wb_rst_o_to_mor1kx_rst),
        .snoop_adr_i         ( ),
        .snoop_en_i          ( ),
        .traceport_exec_pc_o ( ),
        .traceport_exec_valid_o( ),
        .traceport_exec_wbdata_o( ),
        .traceport_exec_wben_o( ),
        .traceport_exec_wbreg_o( ));

    // IP-XACT VLNV: org.opencores:ip:simple_spi:1.0
    simple_spi simple_spi_0(
        // Interface: irq
        .inta_o              ( ),
        // Interface: spi
        .miso_i              (miso_i),
        .mosi_o              (mosi_o),
        .sck_o               (sck_o),
        // Interface: wb
        .adr_i               (wb_intercon_wbm_spi0_to_simple_spi_0_wb_adr_o[1:0]),
        .cyc_i               (wb_intercon_wbm_spi0_to_simple_spi_0_wb_cyc_o),
        .dat_i               (wb_intercon_wbm_spi0_to_simple_spi_0_wb_dat_o),
        .stb_i               (wb_intercon_wbm_spi0_to_simple_spi_0_wb_stb_o),
        .we_i                (wb_intercon_wbm_spi0_to_simple_spi_0_wb_we_o),
        .ack_o               (wb_intercon_wbm_spi0_to_simple_spi_0_wb_ack_i),
        .dat_o               (wb_intercon_wbm_spi0_to_simple_spi_0_wb_dat_i),
        // These ports are not in any interface
        .clk_i               (clkgen_wb_clk_o_to_simple_spi_0_clk_i),
        .rst_i               (simple_spi_0_rst_i_to_clkgen_wb_rst_o));

    // IP-XACT VLNV: org.opencores:ip:uart16550:1.4
    uart16550 uart(
        // Interface: irq
        .irq_o               (uart_irq_to_mor1kx_irq_irq2),
        // Interface: uart
        .rx                  (uart_rx_i),
        .tx                  (uart_tx_o),
        // Interface: wbs
        .wb_adr_i            (wb_intercon_wbm_uart0_to_uart_wbs_adr_o),
        .wb_bte_i            (wb_intercon_wbm_uart0_to_uart_wbs_bte_o),
        .wb_cti_i            (wb_intercon_wbm_uart0_to_uart_wbs_cti_o),
        .wb_cyc_i            (wb_intercon_wbm_uart0_to_uart_wbs_cyc_o),
        .wb_dat_i            (wb_intercon_wbm_uart0_to_uart_wbs_dat_o),
        .wb_stb_i            (wb_intercon_wbm_uart0_to_uart_wbs_stb_o),
        .wb_we_i             (wb_intercon_wbm_uart0_to_uart_wbs_we_o),
        .wb_ack_o            (wb_intercon_wbm_uart0_to_uart_wbs_ack_i),
        .wb_dat_o            (wb_intercon_wbm_uart0_to_uart_wbs_dat_i),
        // These ports are not in any interface
        .wb_clk_i            (clkgen_wb_clk_o_to_uart0_wb_clk_i),
        .wb_rst_i            (clkgen_wb_rst_o_to_uart0_wb_rst_i));

    // IP-XACT VLNV: org.opencores:ip:wb_gpio:1.0
    wb_gpio wb_gpio(
        // Interface: wb
        .wb_adr_i            (wb_intercon_wbm_gpio0_to_wb_gpio_wb_adr_o[0]),
        .wb_bte_i            (wb_intercon_wbm_gpio0_to_wb_gpio_wb_bte_o),
        .wb_cti_i            (wb_intercon_wbm_gpio0_to_wb_gpio_wb_cti_o),
        .wb_cyc_i            (wb_intercon_wbm_gpio0_to_wb_gpio_wb_cyc_o),
        .wb_dat_i            (wb_intercon_wbm_gpio0_to_wb_gpio_wb_dat_o),
        .wb_stb_i            (wb_intercon_wbm_gpio0_to_wb_gpio_wb_stb_o),
        .wb_we_i             (wb_intercon_wbm_gpio0_to_wb_gpio_wb_we_o),
        .wb_ack_o            (wb_intercon_wbm_gpio0_to_wb_gpio_wb_ack_i),
        .wb_dat_o            (wb_intercon_wbm_gpio0_to_wb_gpio_wb_dat_i),
        .wb_err_o            (wb_intercon_wbm_gpio0_to_wb_gpio_wb_err_i),
        .wb_rty_o            (wb_intercon_wbm_gpio0_to_wb_gpio_wb_rty_i),
        // These ports are not in any interface
        .gpio_i              (gpio0_i),
        .wb_clk              (clkgen_wb_clk_o_to_wb_gpio0_wb_clk),
        .wb_rst              (clkgen_wb_rst_o_to_wb_gpio0_wb_rst),
        .gpio_dir_o          (gpio0_dir_o),
        .gpio_o              (gpio0_o));

    // IP-XACT VLNV: org.opencores:ip:de0_nano_wb_intercon:1.0
    de0_nano_wb_intercon wb_intercon(
        // Interface: wbm_gpio0
        .wb_gpio0_ack_i      (wb_intercon_wbm_gpio0_to_wb_gpio_wb_ack_i),
        .wb_gpio0_dat_i      (wb_intercon_wbm_gpio0_to_wb_gpio_wb_dat_i),
        .wb_gpio0_err_i      (wb_intercon_wbm_gpio0_to_wb_gpio_wb_err_i),
        .wb_gpio0_rty_i      (wb_intercon_wbm_gpio0_to_wb_gpio_wb_rty_i),
        .wb_gpio0_adr_o      (wb_intercon_wbm_gpio0_to_wb_gpio_wb_adr_o),
        .wb_gpio0_bte_o      (wb_intercon_wbm_gpio0_to_wb_gpio_wb_bte_o),
        .wb_gpio0_cti_o      (wb_intercon_wbm_gpio0_to_wb_gpio_wb_cti_o),
        .wb_gpio0_cyc_o      (wb_intercon_wbm_gpio0_to_wb_gpio_wb_cyc_o),
        .wb_gpio0_dat_o      (wb_intercon_wbm_gpio0_to_wb_gpio_wb_dat_o),
        .wb_gpio0_stb_o      (wb_intercon_wbm_gpio0_to_wb_gpio_wb_stb_o),
        .wb_gpio0_we_o       (wb_intercon_wbm_gpio0_to_wb_gpio_wb_we_o),
        // Interface: wbm_gpio1
        .wb_gpio1_ack_i      ( ),
        .wb_gpio1_dat_i      ( ),
        .wb_gpio1_err_i      ( ),
        .wb_gpio1_rty_i      ( ),
        .wb_gpio1_adr_o      ( ),
        .wb_gpio1_bte_o      ( ),
        .wb_gpio1_cti_o      ( ),
        .wb_gpio1_cyc_o      ( ),
        .wb_gpio1_dat_o      ( ),
        .wb_gpio1_stb_o      ( ),
        .wb_gpio1_we_o       ( ),
        // Interface: wbm_i2c0
        .wb_i2c0_ack_i       ( ),
        .wb_i2c0_dat_i       ( ),
        .wb_i2c0_err_i       ( ),
        .wb_i2c0_rty_i       ( ),
        .wb_i2c0_adr_o       ( ),
        .wb_i2c0_bte_o       ( ),
        .wb_i2c0_cti_o       ( ),
        .wb_i2c0_cyc_o       ( ),
        .wb_i2c0_dat_o       ( ),
        .wb_i2c0_stb_o       ( ),
        .wb_i2c0_we_o        ( ),
        // Interface: wbm_i2c1
        .wb_i2c1_ack_i       ( ),
        .wb_i2c1_dat_i       ( ),
        .wb_i2c1_err_i       ( ),
        .wb_i2c1_rty_i       ( ),
        .wb_i2c1_adr_o       ( ),
        .wb_i2c1_bte_o       ( ),
        .wb_i2c1_cti_o       ( ),
        .wb_i2c1_cyc_o       ( ),
        .wb_i2c1_dat_o       ( ),
        .wb_i2c1_stb_o       ( ),
        .wb_i2c1_we_o        ( ),
        // Interface: wbm_rom0
        .wb_rom0_ack_i       (wb_intercon_wbm_rom0_to_bootrom_wb_ack_i),
        .wb_rom0_dat_i       (wb_intercon_wbm_rom0_to_bootrom_wb_dat_i),
        .wb_rom0_err_i       (wb_intercon_wbm_rom0_to_bootrom_wb_err_i),
        .wb_rom0_rty_i       (wb_intercon_wbm_rom0_to_bootrom_wb_rty_i),
        .wb_rom0_adr_o       (wb_intercon_wbm_rom0_to_bootrom_wb_adr_o),
        .wb_rom0_bte_o       (wb_intercon_wbm_rom0_to_bootrom_wb_bte_o),
        .wb_rom0_cti_o       (wb_intercon_wbm_rom0_to_bootrom_wb_cti_o),
        .wb_rom0_cyc_o       (wb_intercon_wbm_rom0_to_bootrom_wb_cyc_o),
        .wb_rom0_dat_o       (wb_intercon_wbm_rom0_to_bootrom_wb_dat_o),
        .wb_rom0_sel_o       (wb_intercon_wbm_rom0_to_bootrom_wb_sel_o),
        .wb_rom0_stb_o       (wb_intercon_wbm_rom0_to_bootrom_wb_stb_o),
        .wb_rom0_we_o        (wb_intercon_wbm_rom0_to_bootrom_wb_we_o),
        // Interface: wbm_sdram_dbus
        .wb_sdram_dbus_ack_i (wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_ack_i[0]),
        .wb_sdram_dbus_dat_i (wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_dat_i),
        .wb_sdram_dbus_err_i (wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_err_i),
        .wb_sdram_dbus_rty_i (wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_rty_i),
        .wb_sdram_dbus_adr_o (wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_adr_o),
        .wb_sdram_dbus_bte_o (wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_bte_o),
        .wb_sdram_dbus_cti_o (wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_cti_o),
        .wb_sdram_dbus_cyc_o (wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_cyc_o),
        .wb_sdram_dbus_dat_o (wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_dat_o),
        .wb_sdram_dbus_sel_o (wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_sel_o),
        .wb_sdram_dbus_stb_o (wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_stb_o),
        .wb_sdram_dbus_we_o  (wb_intercon_wbm_sdram_dbus_to_wb_sdram_ctrl_wb0_we_o),
        // Interface: wbm_sdram_ibus
        .wb_sdram_ibus_ack_i (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_ack_i[0]),
        .wb_sdram_ibus_dat_i (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_dat_i),
        .wb_sdram_ibus_err_i (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_err_i),
        .wb_sdram_ibus_rty_i (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_rty_i),
        .wb_sdram_ibus_adr_o (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_adr_o),
        .wb_sdram_ibus_bte_o (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_bte_o),
        .wb_sdram_ibus_cti_o (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_cti_o),
        .wb_sdram_ibus_cyc_o (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_cyc_o),
        .wb_sdram_ibus_dat_o (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_dat_o),
        .wb_sdram_ibus_sel_o (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_sel_o),
        .wb_sdram_ibus_stb_o (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_stb_o),
        .wb_sdram_ibus_we_o  (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_we_o),
        // Interface: wbm_spi0
        .wb_spi0_ack_i       (wb_intercon_wbm_spi0_to_simple_spi_0_wb_ack_i),
        .wb_spi0_dat_i       (wb_intercon_wbm_spi0_to_simple_spi_0_wb_dat_i),
        .wb_spi0_err_i       (wb_intercon_wbm_spi0_to_simple_spi_0_wb_err_i),
        .wb_spi0_rty_i       (wb_intercon_wbm_spi0_to_simple_spi_0_wb_rty_i),
        .wb_spi0_adr_o       (wb_intercon_wbm_spi0_to_simple_spi_0_wb_adr_o),
        .wb_spi0_bte_o       (wb_intercon_wbm_spi0_to_simple_spi_0_wb_bte_o),
        .wb_spi0_cti_o       (wb_intercon_wbm_spi0_to_simple_spi_0_wb_cti_o),
        .wb_spi0_cyc_o       (wb_intercon_wbm_spi0_to_simple_spi_0_wb_cyc_o),
        .wb_spi0_dat_o       (wb_intercon_wbm_spi0_to_simple_spi_0_wb_dat_o),
        .wb_spi0_stb_o       (wb_intercon_wbm_spi0_to_simple_spi_0_wb_stb_o),
        .wb_spi0_we_o        (wb_intercon_wbm_spi0_to_simple_spi_0_wb_we_o),
        // Interface: wbm_spi1
        .wb_spi1_ack_i       ( ),
        .wb_spi1_dat_i       ( ),
        .wb_spi1_err_i       ( ),
        .wb_spi1_rty_i       ( ),
        .wb_spi1_adr_o       ( ),
        .wb_spi1_bte_o       ( ),
        .wb_spi1_cti_o       ( ),
        .wb_spi1_cyc_o       ( ),
        .wb_spi1_dat_o       ( ),
        .wb_spi1_stb_o       ( ),
        .wb_spi1_we_o        ( ),
        // Interface: wbm_spi2
        .wb_spi2_ack_i       ( ),
        .wb_spi2_dat_i       ( ),
        .wb_spi2_err_i       ( ),
        .wb_spi2_rty_i       ( ),
        .wb_spi2_adr_o       ( ),
        .wb_spi2_bte_o       ( ),
        .wb_spi2_cti_o       ( ),
        .wb_spi2_cyc_o       ( ),
        .wb_spi2_dat_o       ( ),
        .wb_spi2_stb_o       ( ),
        .wb_spi2_we_o        ( ),
        // Interface: wbm_uart0
        .wb_uart0_ack_i      (wb_intercon_wbm_uart0_to_uart_wbs_ack_i),
        .wb_uart0_dat_i      (wb_intercon_wbm_uart0_to_uart_wbs_dat_i),
        .wb_uart0_err_i      (wb_intercon_wbm_uart0_to_uart_wbs_err_i),
        .wb_uart0_rty_i      (wb_intercon_wbm_uart0_to_uart_wbs_rty_i),
        .wb_uart0_adr_o      (wb_intercon_wbm_uart0_to_uart_wbs_adr_o),
        .wb_uart0_bte_o      (wb_intercon_wbm_uart0_to_uart_wbs_bte_o),
        .wb_uart0_cti_o      (wb_intercon_wbm_uart0_to_uart_wbs_cti_o),
        .wb_uart0_cyc_o      (wb_intercon_wbm_uart0_to_uart_wbs_cyc_o),
        .wb_uart0_dat_o      (wb_intercon_wbm_uart0_to_uart_wbs_dat_o),
        .wb_uart0_stb_o      (wb_intercon_wbm_uart0_to_uart_wbs_stb_o),
        .wb_uart0_we_o       (wb_intercon_wbm_uart0_to_uart_wbs_we_o),
        // Interface: wbs_or1k_d
        .wb_dbus_adr_i       (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_adr_o),
        .wb_dbus_bte_i       (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_bte_o),
        .wb_dbus_cti_i       (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_cti_o),
        .wb_dbus_cyc_i       (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_cyc_o),
        .wb_dbus_dat_i       (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_dat_o),
        .wb_dbus_sel_i       (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_sel_o),
        .wb_dbus_stb_i       (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_stb_o),
        .wb_dbus_we_i        (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_we_o),
        .wb_dbus_ack_o       (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_ack_i),
        .wb_dbus_dat_o       (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_dat_i),
        .wb_dbus_err_o       (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_err_i),
        .wb_dbus_rty_o       (mor1kx_wb_d_to_wb_intercon_wbs_or1k_d_rty_i),
        // Interface: wbs_or1k_i
        .wb_or1k_i_adr_i     (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_adr_o),
        .wb_or1k_i_bte_i     (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_bte_o),
        .wb_or1k_i_cti_i     (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_cti_o),
        .wb_or1k_i_cyc_i     (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_cyc_o),
        .wb_or1k_i_dat_i     (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_dat_o),
        .wb_or1k_i_sel_i     (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_sel_o),
        .wb_or1k_i_stb_i     (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_stb_o),
        .wb_or1k_i_we_i      (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_we_o),
        .wb_or1k_i_ack_o     (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_ack_i),
        .wb_or1k_i_dat_o     (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_dat_i),
        .wb_or1k_i_err_o     (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_err_i),
        .wb_or1k_i_rty_o     (mor1kx_wb_i_to_wb_intercon_wbs_or1k_i_rty_i),
        // These ports are not in any interface
        .wb_clk_i            (clkgen_wb_clk_o_to_wb_intercon_wb_clk_i),
        .wb_rst_i            (clkgen_wb_rst_o_to_wb_intercon_wb_rst_i));

    // IP-XACT VLNV: org.opencores:ip:wb_sdram_ctrl:1.0
    wb_sdram_ctrl wb_sdram_ctrl(
        // Interface: mem
        .dq_i                (dq_i),
        .a_pad_o             (a_pad_o),
        .ba_pad_o            (ba_pad_o),
        .cas_pad_o           (cas_pad_o),
        .cke_pad_o           (cke_pad_o),
        .cs_n_pad_o          (cs_n_pad_o),
        .dq_o                (dq_o),
        .dq_oe               (dq_oe),
        .dqm_pad_o           (dqm_pad_o),
        .ras_pad_o           (ras_pad_o),
        .we_pad_o            (we_pad_o),
        // There ports are contained in many interfaces
        .wb_adr_i            (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_adr_o[31:0]),
        .wb_bte_i            (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_bte_o[1:0]),
        .wb_cti_i            (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_cti_o[2:0]),
        .wb_cyc_i            (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_cyc_o[0]),
        .wb_dat_i            (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_dat_o[31:0]),
        .wb_sel_i            (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_sel_o[3:0]),
        .wb_stb_i            (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_stb_o[0]),
        .wb_we_i             (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_we_o[0]),
        .wb_ack_o            (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_ack_i),
        .wb_dat_o            (wb_intercon_wbm_sdram_ibus_to_wb_sdram_ctrl_wb1_dat_i[31:0]),
        // These ports are not in any interface
        .sdram_clk           (clkgen_sdram_clk_o_to_wb_sdram_ctrl0_sdram_clk),
        .sdram_rst           (clkgen_sdram_rst_o_to_wb_sdram_ctrl0_sdram_rst),
        .wb_clk              (clkgen_wb_clk_o_to_wb_sdram_ctrl0_wb_clk),
        .wb_rst              (clkgen_wb_rst_o_to_wb_sdram_ctrl0_wb_rst));


endmodule
