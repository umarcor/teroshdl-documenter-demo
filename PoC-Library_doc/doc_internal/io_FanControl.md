# Entity: io_FanControl

## Diagram

![Diagram](io_FanControl.svg "Diagram")
## Description

EMACS settings: -*-  tab-width: 2; indent-tabs-mode: t -*-
vim: tabstop=2:shiftwidth=2:noexpandtab
kate: tab-width 2; replace-tabs off; indent-width 2;
=============================================================================
Authors:				 	Patrick Lehmann
Entity:				 	Generic Fan Controller
Description:
-------------------------------------
.. code-block:: none
License:
=============================================================================
Copyright 2007-2015 Technische Universitaet Dresden - Germany
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
=============================================================================
## Generics

| Generic name            | Type    | Value | Description |
| ----------------------- | ------- | ----- | ----------- |
| CLOCK_FREQ              | FREQ    |       |             |
| ADD_INPUT_SYNCHRONIZERS | boolean | TRUE  |             |
| ENABLE_TACHO            | boolean | FALSE |             |
## Ports

| Port name      | Direction | Type                          | Description                                             |
| -------------- | --------- | ----------------------------- | ------------------------------------------------------- |
| Clock          | in        | std_logic                     | Global Control                                          |
| Reset          | in        | std_logic                     |                                                         |
| Fan_PWM        | out       | std_logic                     | Fan Control derived from internal System Health Monitor |
| Fan_Tacho      | in        | std_logic                     | Decoding of Speed Sensor (Requires ENABLE_TACHO)        |
| TachoFrequency | out       | std_logic_vector(15 downto 0) |                                                         |
## Signals

| Name       | Type                                          | Description |
| ---------- | --------------------------------------------- | ----------- |
| PWM_PWMIn  | std_logic_vector(PWM_RESOLUTION - 1 downto 0) |             |
| PWM_PWMOut | std_logic                                     |             |
## Constants

| Name                 | Type     | Value  | Description                       |
| -------------------- | -------- | ------ | --------------------------------- |
| TIME_STARTUP_INVERSE | FREQ     |  2 Hz  | StartUp time                      |
| PWM_RESOLUTION       | positive |  4     | 4 Bit resolution => 0 to 15 steps |
| PWM_FREQ             | FREQ     |  10 Hz |                                   |
| TACHO_RESOLUTION     | positive |  8     |                                   |
## Instantiations

- PWM: PoC.io_PulseWidthModulation
**Description**
PWM signal modulator
==========================================================================================================================================================
