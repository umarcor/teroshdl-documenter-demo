# Entity: tb_check_zero_one_hot
## Diagram
![Diagram](tb_check_zero_one_hot.svg "Diagram")
## Description
This test suite verifies the check_zero_one_hot checker.
This Source Code Form is subject to the terms of the Mozilla Public
License, v. 2.0. If a copy of the MPL was not distributed with this file,
You can obtain one at http://mozilla.org/MPL/2.0/.
Copyright (c) 2014-2021, Lars Asplund lars.anders.asplund@gmail.com
vunit: run_all_in_same_sim
## Generics
| Generic name | Type   | Value | Description |
| ------------ | ------ | ----- | ----------- |
| runner_cfg   | string |       |             |
## Signals
| Name                     | Type                         | Description |
| ------------------------ | ---------------------------- | ----------- |
| clk                      | std_logic                    |             |
| check_zero_one_hot_in_1  | std_logic_vector(3 downto 0) |             |
|  check_zero_one_hot_in_2 | std_logic_vector(3 downto 0) |             |
|  check_zero_one_hot_in_3 | std_logic_vector(3 downto 0) |             |
| check_zero_one_hot_en_1  | std_logic                    |             |
|  check_zero_one_hot_en_2 | std_logic                    |             |
|  check_zero_one_hot_en_3 | std_logic                    |             |
## Constants
| Name        | Type      | Value                                                  | Description |
| ----------- | --------- | ------------------------------------------------------ | ----------- |
| my_checker2 | checker_t |  new_checker("my_checker2")                            |             |
| my_checker3 | checker_t |  new_checker("my_checker3", default_log_level => info) |             |
## Processes
- clock: _(  )_

- check_zero_one_hot_runner: _(  )_
