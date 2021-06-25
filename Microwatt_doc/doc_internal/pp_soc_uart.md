# Entity: pp_soc_uart
## Diagram
![Diagram](pp_soc_uart.svg "Diagram")
## Generics
| Generic name | Type    | Value | Description |
| ------------ | ------- | ----- | ----------- |
| FIFO_DEPTH   | natural | 64    |             |
## Ports
| Port name  | Direction | Type                          | Description |
| ---------- | --------- | ----------------------------- | ----------- |
| clk        | in        | std_logic                     |             |
| reset      | in        | std_logic                     |             |
| txd        | out       | std_logic                     |             |
| rxd        | in        | std_logic                     |             |
| irq        | out       | std_logic                     |             |
| wb_adr_in  | in        | std_logic_vector(11 downto 0) |             |
| wb_dat_in  | in        | std_logic_vector( 7 downto 0) |             |
| wb_dat_out | out       | std_logic_vector( 7 downto 0) |             |
| wb_we_in   | in        | std_logic                     |             |
| wb_cyc_in  | in        | std_logic                     |             |
| wb_stb_in  | in        | std_logic                     |             |
| wb_ack_out | out       | std_logic                     |             |
## Signals
| Name                 | Type                                       | Description |
| -------------------- | ------------------------------------------ | ----------- |
| sample_clk           | std_logic                                  |             |
| sample_clk_divisor   | std_logic_vector(7 downto 0)               |             |
| sample_clk_counter   | std_logic_vector(sample_clk_divisor'range) |             |
| rx_state             | rx_state_type                              |             |
| rx_byte              | std_logic_vector(7 downto 0)               |             |
| rx_current_bit       | bitnumber                                  |             |
| rx_sample_counter    | rx_sample_counter_type                     |             |
| rx_sample_value      | rx_sample_counter_type                     |             |
| rx_sample_delay      | rx_sample_delay_type                       |             |
| tx_state             | tx_state_type                              |             |
| tx_byte              | std_logic_vector(7 downto 0)               |             |
| tx_current_bit       | bitnumber                                  |             |
| uart_tx_counter      | uart_tx_counter_type                       |             |
| uart_tx_clk          | std_logic                                  |             |
| send_buffer_full     | std_logic                                  |             |
|  send_buffer_empty   | std_logic                                  |             |
| recv_buffer_full     | std_logic                                  |             |
|  recv_buffer_empty   | std_logic                                  |             |
| send_buffer_input    | std_logic_vector(7 downto 0)               |             |
|  send_buffer_output  | std_logic_vector(7 downto 0)               |             |
| recv_buffer_input    | std_logic_vector(7 downto 0)               |             |
|  recv_buffer_output  | std_logic_vector(7 downto 0)               |             |
| send_buffer_push     | std_logic                                  |             |
|  send_buffer_pop     | std_logic                                  |             |
| recv_buffer_push     | std_logic                                  |             |
|  recv_buffer_pop     | std_logic                                  |             |
| irq_recv_enable      | std_logic                                  |             |
|  irq_tx_ready_enable | std_logic                                  |             |
| wb_state             | wb_state_type                              |             |
| rxd2                 | std_logic                                  |             |
| rxd3                 | std_logic                                  |             |
| txd2                 | std_ulogic                                 |             |
## Types
| Name          | Type                               | Description |
| ------------- | ---------------------------------- | ----------- |
| rx_state_type | (IDLE, RECEIVE, STARTBIT, STOPBIT) |             |
| tx_state_type | (IDLE, TRANSMIT, STOPBIT)          |             |
| wb_state_type | (IDLE, WRITE_ACK, READ_ACK)        |             |
## Processes
- unnamed: _( clk )_

- uart_receive: _( clk )_

- sample_counter: _( clk )_

- uart_transmit: _( clk )_

- uart_tx_clock_generator: _( clk )_

- sample_clock_generator: _( clk )_

- wishbone: _( clk )_

## Instantiations
- send_buffer: work.pp_fifo
- recv_buffer: work.pp_fifo
## State machines
![Diagram_state_machine_0]( stm_pp_soc_uart_00.svg "Diagram")![Diagram_state_machine_1]( stm_pp_soc_uart_11.svg "Diagram")![Diagram_state_machine_2]( stm_pp_soc_uart_22.svg "Diagram")