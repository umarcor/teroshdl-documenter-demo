# Entity: sortnet_Stream_Adapter
## Diagram
![Diagram](sortnet_Stream_Adapter.svg "Diagram")
## Generics
| Generic name      | Type           | Value                               | Description |
| ----------------- | -------------- | ----------------------------------- | ----------- |
| STREAM_DATA_BITS  | positive       | 32                                  |             |
| STREAM_META_BITS  | positive       | 2                                   |             |
| SORTNET_IMPL      | T_SORTNET_IMPL | SORT_SORTNET_IMPL_ODDEVEN_MERGESORT |             |
| SORTNET_SIZE      | positive       | 32                                  |             |
| SORTNET_KEY_BITS  | positive       | 32                                  |             |
| SORTNET_DATA_BITS | natural        | 32                                  |             |
| INVERSE           | boolean        | FALSE                               |             |
## Ports
| Port name | Direction | Type                                            | Description |
| --------- | --------- | ----------------------------------------------- | ----------- |
| Clock     | in        | std_logic                                       |             |
| Reset     | in        | std_logic                                       |             |
| In_Valid  | in        | std_logic                                       |             |
| In_IsKey  | in        | std_logic                                       |             |
| In_Data   | in        | std_logic_vector(STREAM_DATA_BITS - 1 downto 0) |             |
| In_Meta   | in        | std_logic_vector(STREAM_META_BITS - 1 downto 0) |             |
| In_Ack    | out       | std_logic                                       |             |
| Out_Valid | out       | std_logic                                       |             |
| Out_IsKey | out       | std_logic                                       |             |
| Out_Data  | out       | std_logic_vector(STREAM_DATA_BITS - 1 downto 0) |             |
| Out_Meta  | out       | std_logic_vector(STREAM_META_BITS - 1 downto 0) |             |
| Out_Ack   | in        | std_logic                                       |             |
## Signals
| Name         | Type                                            | Description |
| ------------ | ----------------------------------------------- | ----------- |
| MetaIn       | std_logic_vector(META_BITS - 1 downto 0)        |             |
| gearup_Valid | std_logic                                       |             |
| gearup_Data  | std_logic_vector(GEARBOX_BITS - 1 downto 0)     |             |
| gearup_Meta  | std_logic_vector(META_BITS - 1 downto 0)        |             |
| sort_Valid   | std_logic                                       |             |
| sort_IsKey   | std_logic                                       |             |
| sort_Data    | std_logic_vector(GEARBOX_BITS - 1 downto 0)     |             |
| sort_Meta    | std_logic_vector(STREAM_META_BITS - 1 downto 0) |             |
| geardown_nxt | std_logic                                       |             |
## Constants
| Name                 | Type     | Value                             | Description |
| -------------------- | -------- | --------------------------------- | ----------- |
| C_VERBOSE            | boolean  |  FALSE                            |             |
| GEARBOX_BITS         | positive |  SORTNET_SIZE * SORTNET_DATA_BITS |             |
| PIPELINE_STAGE_AFTER | natural  |  2                                |             |
| META_ISKEY_BIT       | natural  |  0                                |             |
| META_BITS            | positive |  STREAM_META_BITS + 1             |             |
## Instantiations
- gearup: PoC.gearbox_up_cc
- geardown: PoC.gearbox_down_cc