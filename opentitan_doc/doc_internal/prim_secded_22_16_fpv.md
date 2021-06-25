# Entity: prim_secded_22_16_fpv
## Diagram
![Diagram](prim_secded_22_16_fpv.svg "Diagram")
## Description
Copyright lowRISC contributors.
 Licensed under the Apache License, Version 2.0, see LICENSE for details.
 SPDX-License-Identifier: Apache-2.0
 SECDED FPV testbench generated by util/design/secded_gen.py
 
## Ports
| Port name      | Direction | Type   | Description |
| -------------- | --------- | ------ | ----------- |
| clk_i          | input     |        |             |
| rst_ni         | input     |        |             |
| data_i         | input     | [15:0] |             |
| data_o         | output    | [15:0] |             |
| syndrome_o     | output    | [5:0]  |             |
| err_o          | output    | [1:0]  |             |
| error_inject_i | input     | [21:0] |             |
## Signals
| Name     | Type         | Description |
| -------- | ------------ | ----------- |
| data_enc | logic [21:0] |             |
## Instantiations
- prim_secded_22_16_enc: prim_secded_22_16_enc
- prim_secded_22_16_dec: prim_secded_22_16_dec