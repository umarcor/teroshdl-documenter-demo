# Entity: otp_ctrl_lci
## Diagram
![Diagram](otp_ctrl_lci.svg "Diagram")
## Description
Copyright lowRISC contributors.
 Licensed under the Apache License, Version 2.0, see LICENSE for details.
 SPDX-License-Identifier: Apache-2.0
 Life cycle interface for performing life cycle transitions in OTP.
 
## Generics
| Generic name | Type        | Value           | Description                      |
| ------------ | ----------- | --------------- | -------------------------------- |
| Info         | part_info_t | PartInfoDefault | Lifecycle partition information  |
## Ports
| Port name       | Direction | Type                   | Description                                                                                                                                                                                                                                                                                                           |
| --------------- | --------- | ---------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| clk_i           | input     |                        |                                                                                                                                                                                                                                                                                                                       |
| rst_ni          | input     |                        |                                                                                                                                                                                                                                                                                                                       |
| lci_en_i        | input     |                        |                                                                                                                                                                                                                                                                                                                       |
| escalate_en_i   | input     |                        | Escalation input. This moves the FSM into a terminal state and locks downthe partition.                                                                                                                                                                                                                               |
| lc_req_i        | input     |                        | Life cycle transition request. In order to perform a state transition,the LC controller signals the new count and state. The OTP wrapper then only programs bits that have not been programmed before. Note that a transition request will fail if the request attempts to clear already programmed bits within OTP.  |
| lc_data_i       | input     | [Info.size*8-1:0]      |                                                                                                                                                                                                                                                                                                                       |
| lc_ack_o        | output    |                        |                                                                                                                                                                                                                                                                                                                       |
| lc_err_o        | output    |                        |                                                                                                                                                                                                                                                                                                                       |
| error_o         | output    | otp_err_e              | Output error state of partition, to be consumed by OTP error/alert logic.Note that most errors are not recoverable and move the partition FSM into a terminal error state.                                                                                                                                            |
| lci_prog_idle_o | output    |                        |                                                                                                                                                                                                                                                                                                                       |
| otp_req_o       | output    |                        | OTP interface                                                                                                                                                                                                                                                                                                         |
| otp_cmd_o       | output    |                        |                                                                                                                                                                                                                                                                                                                       |
| otp_size_o      | output    | [OtpSizeWidth-1:0]     |                                                                                                                                                                                                                                                                                                                       |
| otp_wdata_o     | output    | [OtpIfWidth-1:0]       |                                                                                                                                                                                                                                                                                                                       |
| otp_addr_o      | output    | [OtpAddrWidth-1:0]     |                                                                                                                                                                                                                                                                                                                       |
| otp_gnt_i       | input     |                        |                                                                                                                                                                                                                                                                                                                       |
| otp_rvalid_i    | input     |                        |                                                                                                                                                                                                                                                                                                                       |
| otp_rdata_i     | input     | [ScrmblBlockWidth-1:0] |                                                                                                                                                                                                                                                                                                                       |
| otp_err_i       | input     |                        |                                                                                                                                                                                                                                                                                                                       |
## Signals
| Name         | Type                                    | Description                                                                                                                |
| ------------ | --------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| cnt_clr      | logic                                   |                                                                                                                            |
| cnt_en       | logic                                   |                                                                                                                            |
| cnt_d        | logic [CntWidth-1:0]                    |                                                                                                                            |
| cnt_q        | logic [CntWidth-1:0]                    |                                                                                                                            |
| error_d      | otp_err_e                               |                                                                                                                            |
| error_q      | otp_err_e                               |                                                                                                                            |
| state_d      | state_e                                 |                                                                                                                            |
| state_q      | state_e                                 |                                                                                                                            |
| cnt_q        | [OtpByteAddrWidth-1:OtpAddrShift]       |                                                                                                                            |
| data         | logic [NumLcOtpWords-1:0][OtpWidth-1:0] |                                                                                                                            |
| unused_rdata | logic                                   |                                                                                                                            |
| state_raw_q  | logic [StateWidth-1:0]                  | This primitive is used to place a size-only constraint on the flops in order to prevent FSM state encoding optimizations.  |
## Constants
| Name             | Type               | Value                           | Description |
| ---------------- | ------------------ | ------------------------------- | ----------- |
| NumLcOtpWords    | int                | int'(Info.size) >> OtpAddrShift |             |
| CntWidth         | int                | vbits(NumLcOtpWords)            |             |
| LastLcOtpWordInt | int unsigned       | NumLcOtpWords - 1               |             |
| LastLcOtpWord    | bit [CntWidth-1:0] | undefined                       |             |
| StateWidth       | int                | 9                               |             |
## Types
| Name    | Type                                                                                                                                                                                             | Description |
| ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------- |
| state_e | enum logic [StateWidth-1:0] {     ResetSt     = 9'b010110111,     IdleSt      = 9'b101010010,     WriteSt     = 9'b111101110,     WriteWaitSt = 9'b100011101,     ErrorSt     = 9'b010000000   } |             |
## Processes
- p_fsm: _(  )_

- p_regs: _( @(posedge clk_i or negedge rst_ni) )_

## Instantiations
- u_state_regs: prim_flop