# Entity: neorv32_dmem
## Diagram
![Diagram](neorv32_dmem.svg "Diagram")
## Description
#################################################################################################
# << NEORV32 - Processor-internal data memory (DMEM) >>                                         #
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
| Generic name | Type                           | Value       | Description                                         |
| ------------ | ------------------------------ | ----------- | --------------------------------------------------- |
| DMEM_BASE    | std_ulogic_vector(31 downto 0) | x"80000000" | memory base address                                 |
| DMEM_SIZE    | natural                        | 4*1024      | processor-internal instruction memory size in bytes |
## Ports
| Port name | Direction | Type                           | Description          |
| --------- | --------- | ------------------------------ | -------------------- |
| clk_i     | in        | std_ulogic                     | global clock line    |
| rden_i    | in        | std_ulogic                     | read enable          |
| wren_i    | in        | std_ulogic                     | write enable         |
| ben_i     | in        | std_ulogic_vector(03 downto 0) | byte write enable    |
| addr_i    | in        | std_ulogic_vector(31 downto 0) | address              |
| data_i    | in        | std_ulogic_vector(31 downto 0) | data in              |
| data_o    | out       | std_ulogic_vector(31 downto 0) | data out             |
| ack_o     | out       | std_ulogic                     | transfer acknowledge |
## Signals
| Name           | Type                                                    | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| -------------- | ------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| acc_en         | std_ulogic                                              | local signals --                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| rdata          | std_ulogic_vector(31 downto 0)                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| rden           | std_ulogic                                              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| addr           | std_ulogic_vector(index_size_f(DMEM_SIZE/4)-1 downto 0) |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| mem_ram_b0     | mem8_t(0 to DMEM_SIZE/4-1)                              | -------------------------------------------------------------------------------------------------------------- --The memory (RAM) is built from 4 individual byte-wide memories b0..b3, since some synthesis tools have         --problems with 32-bit memories that provide dedicated byte-enable signals AND/OR with multi-dimensional arrays. ---------------------------------------------------------------------------------------------------------------- --RAM - not initialized at all -- |
| mem_ram_b1     | mem8_t(0 to DMEM_SIZE/4-1)                              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| mem_ram_b2     | mem8_t(0 to DMEM_SIZE/4-1)                              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| mem_ram_b3     | mem8_t(0 to DMEM_SIZE/4-1)                              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| mem_ram_b0_rd  | std_ulogic_vector(7 downto 0)                           | read data --                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|  mem_ram_b1_rd | std_ulogic_vector(7 downto 0)                           | read data --                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|  mem_ram_b2_rd | std_ulogic_vector(7 downto 0)                           | read data --                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|  mem_ram_b3_rd | std_ulogic_vector(7 downto 0)                           | read data --                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
## Constants
| Name     | Type    | Value                    | Description               |
| -------- | ------- | ------------------------ | ------------------------- |
| hi_abb_c | natural |  31                      | high address boundary bit |
| lo_abb_c | natural |  index_size_f(DMEM_SIZE) | low address boundary bit  |
## Processes
- mem_access: _( clk_i )_
word aligned
Memory Access --------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

**Description**
word aligned
Memory Access --------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

- bus_feedback: _( clk_i )_
Bus Feedback ---------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

**Description**
Bus Feedback ---------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
