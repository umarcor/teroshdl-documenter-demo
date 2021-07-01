# Entity: neorv32_boot_rom

## Diagram

![Diagram](neorv32_boot_rom.svg "Diagram")
## Description

#################################################################################################
# << NEORV32 - Processor-internal bootloader ROM (BOOTROM) >>                                   #
# ********************************************************************************************* #
# BSD 3-Clause License                                                                          #
#                                                                                               #
# Copyright (c) 2020, Stephan Nolting. All rights reserved.                                     #
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
this file is generated by the image generator
## Generics

| Generic name | Type                           | Value       | Description           |
| ------------ | ------------------------------ | ----------- | --------------------- |
| BOOTROM_BASE | std_ulogic_vector(31 downto 0) | x"FFFF0000" | boot ROM base address |
## Ports

| Port name | Direction | Type                           | Description          |
| --------- | --------- | ------------------------------ | -------------------- |
| clk_i     | in        | std_ulogic                     | global clock line    |
| rden_i    | in        | std_ulogic                     | read enable          |
| addr_i    | in        | std_ulogic_vector(31 downto 0) | address              |
| data_o    | out       | std_ulogic_vector(31 downto 0) | data out             |
| ack_o     | out       | std_ulogic                     | transfer acknowledge |
## Signals

| Name   | Type                                                | Description      |
| ------ | --------------------------------------------------- | ---------------- |
| acc_en | std_ulogic                                          | local signals -- |
| rden   | std_ulogic                                          |                  |
| rdata  | std_ulogic_vector(31 downto 0)                      |                  |
| addr   | std_ulogic_vector(boot_rom_size_index_c-1 downto 0) |                  |
## Constants

| Name                  | Type                              | Value                                                   | Description                               |
| --------------------- | --------------------------------- | ------------------------------------------------------- | ----------------------------------------- |
| boot_rom_size_index_c | natural                           |  index_size_f((bootloader_init_image'length))           | address with (32-bit entries)             |
| boot_rom_size_c       | natural                           |  (2**boot_rom_size_index_c)*4                           | size in bytes                             |
| hi_abb_c              | natural                           |  31                                                     | high address boundary bit                 |
| lo_abb_c              | natural                           |  index_size_f(boot_rom_max_size_c)                      | low address boundary bit                  |
| mem_rom               | mem32_t(0 to boot_rom_size_c/4-1) |  mem32_init_f(bootloader_init_image, boot_rom_size_c/4) | ROM - initialized with executable code -- |
## Processes
- mem_file_access: ( clk_i )
**Description**
word aligned
Memory Access --------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
