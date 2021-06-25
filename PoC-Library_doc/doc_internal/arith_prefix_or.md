# Entity: arith_prefix_or
## Diagram
![Diagram](arith_prefix_or.svg "Diagram")
## Description
EMACS settings: -*-	tab-width: 2; indent-tabs-mode: t -*-
vim: tabstop=2:shiftwidth=2:noexpandtab
kate: tab-width 2; replace-tabs off; indent-width 2;
=============================================================================
Authors:					Thomas B. Preusser
Entity:					Prefix OR computation
Description:
-------------------------------------
Prefix OR computation:
``y(i) <= '0' when x(i downto 0) = (i downto 0 => '0') else '1';``
This implementation uses carry chains for wider implementations.
License:
=============================================================================
Copyright 2007-2016 Technische Universität Dresden - Germany
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
| Generic name | Type     | Value | Description |
| ------------ | -------- | ----- | ----------- |
| N            | positive |       |             |
## Ports
| Port name | Direction | Type                           | Description |
| --------- | --------- | ------------------------------ | ----------- |
| x         | in        | std_logic_vector(N-1 downto 0) |             |
| y         | out       | std_logic_vector(N-1 downto 0) |             |