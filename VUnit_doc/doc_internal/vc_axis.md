# Entity: vc_axis
## Diagram
![Diagram](vc_axis.svg "Diagram")
## Generics
| Generic name | Type                | Value | Description |
| ------------ | ------------------- | ----- | ----------- |
| m_axis       | axi_stream_master_t |       |             |
| s_axis       | axi_stream_slave_t  |       |             |
| data_width   | natural             | 32    |             |
| fifo_depth   | natural             | 4     |             |
## Ports
| Port name | Direction | Type      | Description |
| --------- | --------- | --------- | ----------- |
| clk       | in        | std_logic |             |
| rstn      | in        | std_logic |             |
## Signals
| Name     | Type                                             | Description |
| -------- | ------------------------------------------------ | ----------- |
| m_valid  | std_logic                                        |             |
|  m_ready | std_logic                                        |             |
|  m_last  | std_logic                                        |             |
|  s_valid | std_logic                                        |             |
|  s_ready | std_logic                                        |             |
|  s_last  | std_logic                                        |             |
| m_data   | std_logic_vector(data_length(m_axis)-1 downto 0) |             |
|  s_data  | std_logic_vector(data_length(m_axis)-1 downto 0) |             |
## Instantiations
- vunit_axism: vunit_lib.axi_stream_master
- vunit_axiss: vunit_lib.axi_stream_slave
- uut: work.axis_buffer