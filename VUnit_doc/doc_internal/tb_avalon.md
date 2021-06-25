# Entity: tb_avalon
## Diagram
![Diagram](tb_avalon.svg "Diagram")
## Generics
| Generic name | Type   | Value | Description |
| ------------ | ------ | ----- | ----------- |
| runner_cfg   | string |       |             |
## Signals
| Name          | Type                          | Description |
| ------------- | ----------------------------- | ----------- |
| av_address    | std_logic_vector(31 downto 0) |             |
| av_write      | std_logic                     |             |
| av_writedata  | std_logic_vector(31 downto 0) |             |
| av_read       | std_logic                     |             |
| av_readdata   | std_logic_vector(31 downto 0) |             |
| av_byteenable | std_logic_vector(3 downto 0)  |             |
| av_burstcount | std_logic_vector(3 downto 0)  |             |
| clk           | std_logic                     |             |
## Constants
| Name       | Type         | Value                                                            | Description |
| ---------- | ------------ | ---------------------------------------------------------------- | ----------- |
| avalon_bus | bus_master_t |  new_bus(data_length => 32, address_length => av_address'length) |             |
| CLK_period | time         |  20 ns                                                           |             |
## Processes
- tests: _(  )_

## Instantiations
- avalon_master: vunit_lib.avalon_master