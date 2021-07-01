# Entity: clock_generator_vvc

## Diagram

![Diagram](clock_generator_vvc.svg "Diagram")
## Description

Copyright 2020 Bitvis
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License.
You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 and in the provided LICENSE.TXT.
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and limitations under the License.
Note : Any functionality not explicitly described in the documentation is subject to change at any time
This VVC was generated with Bitvis VVC Generator
## Generics

| Generic name                             | Type          | Value   | Description |
| ---------------------------------------- | ------------- | ------- | ----------- |
| GC_INSTANCE_IDX                          | natural       | 1       |             |
| GC_CLOCK_NAME                            | string        | "clk"   |             |
| GC_CLOCK_PERIOD                          | time          | 10 ns   |             |
| GC_CLOCK_HIGH_TIME                       | time          | 5 ns    |             |
| GC_CMD_QUEUE_COUNT_MAX                   | natural       | 1000    |             |
| GC_CMD_QUEUE_COUNT_THRESHOLD             | natural       | 950     |             |
| GC_CMD_QUEUE_COUNT_THRESHOLD_SEVERITY    | t_alert_level | WARNING |             |
| GC_RESULT_QUEUE_COUNT_MAX                | natural       | 1000    |             |
| GC_RESULT_QUEUE_COUNT_THRESHOLD          | natural       | 950     |             |
| GC_RESULT_QUEUE_COUNT_THRESHOLD_SEVERITY | t_alert_level | warning |             |
## Ports

| Port name | Direction | Type      | Description |
| --------- | --------- | --------- | ----------- |
| clk       | out       | std_logic |             |
## Signals

| Name                               | Type          | Description   |
| ---------------------------------- | ------------- | ------------- |
| executor_is_busy                   | boolean       |               |
| queue_is_increasing                | boolean       |               |
| last_cmd_idx_executed              | natural       |               |
| terminate_current_cmd              | t_flag_record |               |
| clock_ena                          | boolean       |               |
| entry_num_in_vvc_activity_register | integer       | VVC Activity  |
## Constants

| Name         | Type         | Value                                                        | Description |
| ------------ | ------------ | ------------------------------------------------------------ | ----------- |
| C_SCOPE      | string       |  C_VVC_NAME & "," & to_string(GC_INSTANCE_IDX)               |             |
| C_VVC_LABELS | t_vvc_labels |  assign_vvc_labels(C_SCOPE, C_VVC_NAME, GC_INSTANCE_IDX, NA) |             |
## Functions
## Processes
- config_initializer: (  )
**Description**
Config initializer
- Set up the VVC specific config fields

- cmd_interpreter: (  )
**Description**
Command interpreter
- Interpret, decode and acknowledge commands from the central sequencer

- cmd_executor: (  )
**Description**
Command executor
- Fetch and execute the commands

- clock_generator: (  )
**Description**
flag: is_active, set, reset
Clock Generator process
- Process that generates the clock signal
