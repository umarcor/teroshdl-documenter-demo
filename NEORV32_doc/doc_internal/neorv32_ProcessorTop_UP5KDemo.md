# Entity: neorv32_ProcessorTop_UP5KDemo
## Diagram
![Diagram](neorv32_ProcessorTop_UP5KDemo.svg "Diagram")
## Generics
| Generic name                 | Type                           | Value       | Description |
| ---------------------------- | ------------------------------ | ----------- | ----------- |
| CLOCK_FREQUENCY              | natural                        | 0           |             |
| USER_CODE                    | std_ulogic_vector(31 downto 0) | x"00000000" |             |
| HW_THREAD_ID                 | natural                        | 0           |             |
| ON_CHIP_DEBUGGER_EN          | boolean                        | false       |             |
| CPU_EXTENSION_RISCV_A        | boolean                        | true        |             |
| CPU_EXTENSION_RISCV_C        | boolean                        | true        |             |
| CPU_EXTENSION_RISCV_E        | boolean                        | false       |             |
| CPU_EXTENSION_RISCV_M        | boolean                        | true        |             |
| CPU_EXTENSION_RISCV_U        | boolean                        | false       |             |
| CPU_EXTENSION_RISCV_Zfinx    | boolean                        | false       |             |
| CPU_EXTENSION_RISCV_Zicsr    | boolean                        | true        |             |
| CPU_EXTENSION_RISCV_Zifencei | boolean                        | false       |             |
| FAST_MUL_EN                  | boolean                        | false       |             |
| FAST_SHIFT_EN                | boolean                        | false       |             |
| CPU_CNT_WIDTH                | natural                        | 34          |             |
| PMP_NUM_REGIONS              | natural                        | 0           |             |
| PMP_MIN_GRANULARITY          | natural                        | 64*1024     |             |
| HPM_NUM_CNTS                 | natural                        | 0           |             |
| HPM_CNT_WIDTH                | natural                        | 40          |             |
| MEM_INT_IMEM_EN              | boolean                        | true        |             |
| MEM_INT_IMEM_SIZE            | natural                        | 64*1024     |             |
| MEM_INT_DMEM_EN              | boolean                        | true        |             |
| MEM_INT_DMEM_SIZE            | natural                        | 64*1024     |             |
| ICACHE_EN                    | boolean                        | false       |             |
| ICACHE_NUM_BLOCKS            | natural                        | 4           |             |
| ICACHE_BLOCK_SIZE            | natural                        | 64          |             |
| ICACHE_ASSOCIATIVITY         | natural                        | 1           |             |
| IO_GPIO_EN                   | boolean                        | true        |             |
| IO_MTIME_EN                  | boolean                        | true        |             |
| IO_UART0_EN                  | boolean                        | true        |             |
| IO_SPI_EN                    | boolean                        | true        |             |
| IO_TWI_EN                    | boolean                        | true        |             |
| IO_PWM_NUM_CH                | natural                        | 3           |             |
| IO_WDT_EN                    | boolean                        | true        |             |
## Ports
| Port name   | Direction | Type                                        | Description |
| ----------- | --------- | ------------------------------------------- | ----------- |
| clk_i       | in        | std_logic                                   |             |
| rstn_i      | in        | std_logic                                   |             |
| gpio_i      | in        | std_ulogic_vector(3 downto 0)               |             |
| gpio_o      | out       | std_ulogic_vector(3 downto 0)               |             |
| uart_txd_o  | out       | std_ulogic                                  |             |
| uart_rxd_i  | in        | std_ulogic                                  |             |
| uart_rts_o  | out       | std_ulogic                                  |             |
| uart_cts_i  | in        | std_ulogic                                  |             |
| flash_sck_o | out       | std_ulogic                                  |             |
| flash_sdo_o | out       | std_ulogic                                  |             |
| flash_sdi_i | in        | std_ulogic                                  |             |
| flash_csn_o | out       | std_ulogic                                  |             |
| spi_sck_o   | out       | std_ulogic                                  |             |
| spi_sdo_o   | out       | std_ulogic                                  |             |
| spi_sdi_i   | in        | std_ulogic                                  |             |
| spi_csn_o   | out       | std_ulogic                                  |             |
| twi_sda_io  | inout     | std_logic                                   |             |
| twi_scl_io  | inout     | std_logic                                   |             |
| pwm_o       | out       | std_ulogic_vector(IO_PWM_NUM_CH-1 downto 0) |             |
## Signals
| Name        | Type                           | Description |
| ----------- | ------------------------------ | ----------- |
| con_gpio_o  | std_ulogic_vector(31 downto 0) |             |
| con_gpio_i  | std_ulogic_vector(31 downto 0) |             |
| con_spi_sck | std_ulogic                     |             |
| con_spi_sdi | std_ulogic                     |             |
| con_spi_sdo | std_ulogic                     |             |
| con_spi_csn | std_ulogic_vector(07 downto 0) |             |
## Instantiations
- neorv32_inst: neorv32.neorv32_top