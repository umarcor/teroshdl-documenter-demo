# Entity: neorv32_SystemTop_axi4lite
## Diagram
![Diagram](neorv32_SystemTop_axi4lite.svg "Diagram")
## Description
#################################################################################################
# << NEORV32 - Processor Top Entity with AXI4-Lite Compatible Master Interface >>               #
# ********************************************************************************************* #
# (c) "AXI", "AXI4" and "AXI4-Lite" are trademarks of Arm Holdings plc.                         #
# Note: External MTIME is not supported.                                                        #
# ********************************************************************************************* #
# BSD 3-Clause License                                                                          #
#                                                                                               #
# Copyright (c) 2021, Stephan Nolting. All rights reserved.                                     #
#                                                                                               #
# Redistribution and use in source and binary forms, with or without modification, are          #
# permitted provided that the following conditions are met:                                     #
#                                                                                               #
# 1. Redistributions of source code must retain the above copyright notice, this list of        #
#    conditions and the following disclaimer.                                                   #
#                                                                                               #
# 2. Redistributions in binary form must reproduce the above copyright notice, this list of     #
#    conditions and the following disclaimer in the documentation and/or other materials        #
#    provided with the distribution.                                                            #
#                                                                                               #
# 3. Neither the name of the copyright holder nor the names of its contributors may be used to  #
#    endorse or promote products derived from this software without specific prior written      #
#    permission.                                                                                #
#                                                                                               #
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS   #
# OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF               #
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE    #
# COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,     #
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE #
# GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED    #
# AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     #
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED  #
# OF THE POSSIBILITY OF SUCH DAMAGE.                                                            #
# ********************************************************************************************* #
# The NEORV32 Processor - https://github.com/stnolting/neorv32              (c) Stephan Nolting #
#################################################################################################
## Generics
| Generic name                 | Type                          | Value       | Description                                                                           |
| ---------------------------- | ----------------------------- | ----------- | ------------------------------------------------------------------------------------- |
| CLOCK_FREQUENCY              | natural                       | 0           | clock frequency of clk_i in Hz                                                        |
| INT_BOOTLOADER_EN            | boolean                       | true        | boot configuration: true = boot explicit bootloader; false = boot from int/ext (I)MEM |
| USER_CODE                    | std_logic_vector(31 downto 0) | x"00000000" | custom user code                                                                      |
| HW_THREAD_ID                 | natural                       | 0           | hardware thread id (32-bit)                                                           |
| ON_CHIP_DEBUGGER_EN          | boolean                       | false       | implement on-chip debugger                                                            |
| CPU_EXTENSION_RISCV_A        | boolean                       | false       | implement atomic extension?                                                           |
| CPU_EXTENSION_RISCV_C        | boolean                       | false       | implement compressed extension?                                                       |
| CPU_EXTENSION_RISCV_E        | boolean                       | false       | implement embedded RF extension?                                                      |
| CPU_EXTENSION_RISCV_M        | boolean                       | false       | implement muld/div extension?                                                         |
| CPU_EXTENSION_RISCV_U        | boolean                       | false       | implement user mode extension?                                                        |
| CPU_EXTENSION_RISCV_Zfinx    | boolean                       | false       | implement 32-bit floating-point extension (using INT reg!)                            |
| CPU_EXTENSION_RISCV_Zicsr    | boolean                       | true        | implement CSR system?                                                                 |
| CPU_EXTENSION_RISCV_Zifencei | boolean                       | false       | implement instruction stream sync.?                                                   |
| FAST_MUL_EN                  | boolean                       | false       | use DSPs for M extension's multiplier                                                 |
| FAST_SHIFT_EN                | boolean                       | false       | use barrel shifter for shift operations                                               |
| CPU_CNT_WIDTH                | natural                       | 64          | total width of CPU cycle and instret counters (0..64)                                 |
| PMP_NUM_REGIONS              | natural                       | 0           | number of regions (0..64)                                                             |
| PMP_MIN_GRANULARITY          | natural                       | 64*1024     | minimal region granularity in bytes, has to be a power of 2, min 8 bytes              |
| HPM_NUM_CNTS                 | natural                       | 0           | number of implemented HPM counters (0..29)                                            |
| HPM_CNT_WIDTH                | natural                       | 40          | total size of HPM counters (0..64)                                                    |
| MEM_INT_IMEM_EN              | boolean                       | true        | implement processor-internal instruction memory                                       |
| MEM_INT_IMEM_SIZE            | natural                       | 16*1024     | size of processor-internal instruction memory in bytes                                |
| MEM_INT_DMEM_EN              | boolean                       | true        | implement processor-internal data memory                                              |
| MEM_INT_DMEM_SIZE            | natural                       | 8*1024      | size of processor-internal data memory in bytes                                       |
| ICACHE_EN                    | boolean                       | false       | implement instruction cache                                                           |
| ICACHE_NUM_BLOCKS            | natural                       | 4           | i-cache: number of blocks (min 1), has to be a power of 2                             |
| ICACHE_BLOCK_SIZE            | natural                       | 64          | i-cache: block size in bytes (min 4), has to be a power of 2                          |
| ICACHE_ASSOCIATIVITY         | natural                       | 1           | i-cache: associativity / number of sets (1=direct_mapped), has to be a power of 2     |
| IO_GPIO_EN                   | boolean                       | true        | implement general purpose input/output port unit (GPIO)?                              |
| IO_MTIME_EN                  | boolean                       | true        | implement machine system timer (MTIME)?                                               |
| IO_UART0_EN                  | boolean                       | true        | implement primary universal asynchronous receiver/transmitter (UART0)?                |
| IO_UART1_EN                  | boolean                       | true        | implement secondary universal asynchronous receiver/transmitter (UART1)?              |
| IO_SPI_EN                    | boolean                       | true        | implement serial peripheral interface (SPI)?                                          |
| IO_TWI_EN                    | boolean                       | true        | implement two-wire interface (TWI)?                                                   |
| IO_PWM_NUM_CH                | natural                       | 4           | number of PWM channels to implement (0..60); 0 = disabled                             |
| IO_WDT_EN                    | boolean                       | true        | implement watch dog timer (WDT)?                                                      |
| IO_TRNG_EN                   | boolean                       | false       | implement true random number generator (TRNG)?                                        |
| IO_CFS_EN                    | boolean                       | false       | implement custom functions subsystem (CFS)?                                           |
| IO_CFS_CONFIG                | std_logic_vector(31 downto 0) |             | custom CFS configuration generic                                                      |
| IO_CFS_IN_SIZE               | positive                      | 32          | size of CFS input conduit in bits                                                     |
| IO_CFS_OUT_SIZE              | positive                      | 32          | size of CFS output conduit in bits                                                    |
| IO_NCO_EN                    | boolean                       | true        | implement numerically-controlled oscillator (NCO)?                                    |
| IO_NEOLED_EN                 | boolean                       | true        | implement NeoPixel-compatible smart LED interface (NEOLED)?                           |
## Ports
| Port name     | Direction | Type                                         | Description                                                                                                                                                                           |
| ------------- | --------- | -------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| m_axi_aclk    | in        | std_logic                                    | ------------------------------------------------------------AXI4-Lite-Compatible Master Interface -- ------------------------------------------------------------ Clock and Reset --  |
| m_axi_aresetn | in        | std_logic                                    |                                                                                                                                                                                       |
| m_axi_awaddr  | out       | std_logic_vector(31 downto 0)                | Write Address Channel --                                                                                                                                                              |
| m_axi_awprot  | out       | std_logic_vector(2 downto 0)                 |                                                                                                                                                                                       |
| m_axi_awvalid | out       | std_logic                                    |                                                                                                                                                                                       |
| m_axi_awready | in        | std_logic                                    |                                                                                                                                                                                       |
| m_axi_wdata   | out       | std_logic_vector(31 downto 0)                | Write Data Channel --                                                                                                                                                                 |
| m_axi_wstrb   | out       | std_logic_vector(3 downto 0)                 |                                                                                                                                                                                       |
| m_axi_wvalid  | out       | std_logic                                    |                                                                                                                                                                                       |
| m_axi_wready  | in        | std_logic                                    |                                                                                                                                                                                       |
| m_axi_araddr  | out       | std_logic_vector(31 downto 0)                | Read Address Channel --                                                                                                                                                               |
| m_axi_arprot  | out       | std_logic_vector(2 downto 0)                 |                                                                                                                                                                                       |
| m_axi_arvalid | out       | std_logic                                    |                                                                                                                                                                                       |
| m_axi_arready | in        | std_logic                                    |                                                                                                                                                                                       |
| m_axi_rdata   | in        | std_logic_vector(31 downto 0)                | Read Data Channel --                                                                                                                                                                  |
| m_axi_rresp   | in        | std_logic_vector(1 downto 0)                 |                                                                                                                                                                                       |
| m_axi_rvalid  | in        | std_logic                                    |                                                                                                                                                                                       |
| m_axi_rready  | out       | std_logic                                    |                                                                                                                                                                                       |
| m_axi_bresp   | in        | std_logic_vector(1 downto 0)                 | Write Response Channel --                                                                                                                                                             |
| m_axi_bvalid  | in        | std_logic                                    |                                                                                                                                                                                       |
| m_axi_bready  | out       | std_logic                                    |                                                                                                                                                                                       |
| jtag_trst_i   | in        | std_logic                                    | low-active TAP reset (optional)                                                                                                                                                       |
| jtag_tck_i    | in        | std_logic                                    | serial clock                                                                                                                                                                          |
| jtag_tdi_i    | in        | std_logic                                    | serial data input                                                                                                                                                                     |
| jtag_tdo_o    | out       | std_logic                                    | serial data output                                                                                                                                                                    |
| jtag_tms_i    | in        | std_logic                                    | mode select                                                                                                                                                                           |
| gpio_o        | out       | std_logic_vector(31 downto 0)                | parallel output                                                                                                                                                                       |
| gpio_i        | in        | std_logic_vector(31 downto 0)                | parallel input                                                                                                                                                                        |
| uart0_txd_o   | out       | std_logic                                    | UART0 send data                                                                                                                                                                       |
| uart0_rxd_i   | in        | std_logic                                    | UART0 receive data                                                                                                                                                                    |
| uart0_rts_o   | out       | std_logic                                    | hw flow control: UART0.RX ready to receive ("RTR"), low-active, optional                                                                                                              |
| uart0_cts_i   | in        | std_logic                                    | hw flow control: UART0.TX allowed to transmit, low-active, optional                                                                                                                   |
| uart1_txd_o   | out       | std_logic                                    | UART1 send data                                                                                                                                                                       |
| uart1_rxd_i   | in        | std_logic                                    | UART1 receive data                                                                                                                                                                    |
| uart1_rts_o   | out       | std_logic                                    | hw flow control: UART1.RX ready to receive ("RTR"), low-active, optional                                                                                                              |
| uart1_cts_i   | in        | std_logic                                    | hw flow control: UART1.TX allowed to transmit, low-active, optional                                                                                                                   |
| spi_sck_o     | out       | std_logic                                    | SPI serial clock                                                                                                                                                                      |
| spi_sdo_o     | out       | std_logic                                    | controller data out, peripheral data in                                                                                                                                               |
| spi_sdi_i     | in        | std_logic                                    | controller data in, peripheral data out                                                                                                                                               |
| spi_csn_o     | out       | std_logic_vector(07 downto 0)                | SPI CS                                                                                                                                                                                |
| twi_sda_io    | inout     | std_logic                                    | twi serial data line                                                                                                                                                                  |
| twi_scl_io    | inout     | std_logic                                    | twi serial clock line                                                                                                                                                                 |
| pwm_o         | out       | std_logic_vector(IO_PWM_NUM_CH-1 downto 0)   | pwm channels                                                                                                                                                                          |
| cfs_in_i      | in        | std_logic_vector(IO_CFS_IN_SIZE-1  downto 0) | custom inputs                                                                                                                                                                         |
| cfs_out_o     | out       | std_logic_vector(IO_CFS_OUT_SIZE-1 downto 0) | custom outputs                                                                                                                                                                        |
| nco_o         | out       | std_logic_vector(02 downto 0)                | numerically-controlled oscillator channels                                                                                                                                            |
| neoled_o      | out       | std_logic                                    | async serial data line                                                                                                                                                                |
| nm_irq_i      | in        | std_logic                                    | non-maskable interrupt                                                                                                                                                                |
| soc_firq_i    | in        | std_logic_vector(5 downto 0)                 | fast interrupt channels                                                                                                                                                               |
| msw_irq_i     | in        | std_logic                                    | machine software interrupt                                                                                                                                                            |
| mext_irq_i    | in        | std_logic                                    | machine external interrupt                                                                                                                                                            |
## Signals
| Name            | Type                                          | Description                 |
| --------------- | --------------------------------------------- | --------------------------- |
| clk_i_int       | std_ulogic                                    |                             |
| rstn_i_int      | std_ulogic                                    |                             |
| jtag_trst_i_int | std_ulogic                                    |                             |
| jtag_tck_i_int  | std_ulogic                                    |                             |
| jtag_tdi_i_int  | std_ulogic                                    |                             |
| jtag_tdo_o_int  | std_ulogic                                    |                             |
| jtag_tms_i_int  | std_ulogic                                    |                             |
| gpio_o_int      | std_ulogic_vector(31 downto 0)                |                             |
| gpio_i_int      | std_ulogic_vector(31 downto 0)                |                             |
| uart0_txd_o_int | std_ulogic                                    |                             |
| uart0_rxd_i_int | std_ulogic                                    |                             |
| uart0_rts_o_int | std_ulogic                                    |                             |
| uart0_cts_i_int | std_ulogic                                    |                             |
| uart1_txd_o_int | std_ulogic                                    |                             |
| uart1_rxd_i_int | std_ulogic                                    |                             |
| uart1_rts_o_int | std_ulogic                                    |                             |
| uart1_cts_i_int | std_ulogic                                    |                             |
| spi_sck_o_int   | std_ulogic                                    |                             |
| spi_sdo_o_int   | std_ulogic                                    |                             |
| spi_sdi_i_int   | std_ulogic                                    |                             |
| spi_csn_o_int   | std_ulogic_vector(07 downto 0)                |                             |
| pwm_o_int       | std_ulogic_vector(IO_PWM_NUM_CH-1 downto 0)   |                             |
| cfs_in_i_int    | std_ulogic_vector(IO_CFS_IN_SIZE-1  downto 0) |                             |
| cfs_out_o_int   | std_ulogic_vector(IO_CFS_OUT_SIZE-1 downto 0) |                             |
| nco_o_int       | std_ulogic_vector(02 downto 0)                |                             |
| neoled_o_int    | std_ulogic                                    |                             |
| nm_irq_i_int    | std_ulogic                                    |                             |
| soc_firq_i_int  | std_ulogic_vector(05 downto 0)                |                             |
| msw_irq_i_int   | std_ulogic                                    |                             |
| mext_irq_i_int  | std_ulogic                                    |                             |
| wb_core         | wb_bus_t                                      |                             |
| ctrl            | ctrl_t                                        |                             |
| ack_read        | std_ulogic                                    | normal transfer termination |
|  ack_write      | std_ulogic                                    | normal transfer termination |
| err_read        | std_ulogic                                    |                             |
|  err_write      | std_ulogic                                    |                             |
## Constants
| Name              | Type                           | Value                             | Description |
| ----------------- | ------------------------------ | --------------------------------- | ----------- |
| USER_CODE_INT     | std_ulogic_vector(31 downto 0) |  std_ulogic_vector(USER_CODE)     |             |
| IO_CFS_CONFIG_INT | std_ulogic_vector(31 downto 0) |  std_ulogic_vector(IO_CFS_CONFIG) |             |
## Types
| Name     | Type | Description              |
| -------- | ---- | ------------------------ |
| wb_bus_t |      | internal wishbone bus -- |
| ctrl_t   |      | AXI bridge control --    |
## Processes
- axi_access_arbiter: _( rstn_i_int, clk_i_int )_
Wishbone to AXI4-Lite Bridge -----------------------------------------------------------
-------------------------------------------------------------------------------------------
access arbiter --

**Description**
Wishbone to AXI4-Lite Bridge -----------------------------------------------------------
-------------------------------------------------------------------------------------------
access arbiter --

## Instantiations
- neorv32_top_inst: neorv32_top
**Description**
The Core Of The Problem ----------------------------------------------------------------
-------------------------------------------------------------------------------------------
