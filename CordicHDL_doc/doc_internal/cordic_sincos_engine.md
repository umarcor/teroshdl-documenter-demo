# Entity: cordic_sincos_engine

## Diagram

![Diagram](cordic_sincos_engine.svg "Diagram")
## Description

 Standard library.
 Sine and cosine cordic.
## Ports

| Port name | Direction | Type                           | Description                             |
| --------- | --------- | ------------------------------ | --------------------------------------- |
| clk       | in        | std_logic                      |  Clock.                                 |
| dv_in     | in        | std_logic                      |  Data valid input.                      |
| data_in   | in        | std_logic_vector (19 downto 0) |  Angle in radians Q2.17 format [-pi,pi] |
| cos_out   | out       | std_logic_vector (19 downto 0) |  Cosine.                                |
| sin_out   | out       | std_logic_vector (19 downto 0) |  Sine.                                  |
| dv_out    | out       | std_logic                      |  Data valid output.                     |
## Signals

| Name        | Type                                         | Description |
| ----------- | -------------------------------------------- | ----------- |
| r0_data_in  | std_logic_vector(c_SIZE_INPUT-1 downto 0)    |             |
| r0_dv       | std_logic                                    |             |
| r1_signCos  | std_logic                                    |             |
| r1_input    | signed(c_SIZE_INPUT-1 downto 0)              |             |
| r1_dv       | std_logic                                    |             |
| r2_input    | typea_input                                  |             |
| r2_x        | typea_input                                  |             |
| r2b_x_bis   | typea_input                                  |             |
| r2_y        | typea_input                                  |             |
| r2b_y_bis   | typea_input                                  |             |
| r2_a        | typea_input                                  |             |
| r2_signCos  | std_logic_vector(c_SIZE_INPUT-1 downto 0)    |             |
| r2_shift_dv | std_logic_vector(c_SIZE_INPUT-1 downto 0)    |             |
| r3_sin      | signed(2*c_SIZE_INPUT-c_SIZE_INT-1 downto 0) |             |
| r3_cos      | signed(2*c_SIZE_INPUT-c_SIZE_INT-1 downto 0) |             |
| r3b_sin     | signed(c_SIZE_INPUT-1 downto 0)              |             |
| r3b_cos     | signed(c_SIZE_INPUT-1 downto 0)              |             |
| r3_signCos  | std_logic                                    |             |
| r3_dv       | std_logic                                    |             |
| r4_sin      | signed(c_SIZE_INPUT-1 downto 0)              |             |
| r4_cos      | signed(c_SIZE_INPUT-1 downto 0)              |             |
| r4_dv       | std_logic                                    |             |
## Constants

| Name          | Type                                       | Value                                                                                                                                                                                                                                                                                                                                                                     | Description |
| ------------- | ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| c_SIZE_INPUT  | integer                                    |  20                                                                                                                                                                                                                                                                                                                                                                       |             |
| c_SIZE_INT    | integer                                    |   2                                                                                                                                                                                                                                                                                                                                                                       |             |
| c_SIZE_DECIM  | integer                                    |  17                                                                                                                                                                                                                                                                                                                                                                       |             |
| c_PI_HALF     | signed(c_SIZE_INPUT-1 downto 0)            |  "00110010010000111111"                                                                                                                                                                                                                                                                                                                                                   |             |
| c_PI_HALF_NEG | signed(c_SIZE_INPUT-1 downto 0)            |  "11001101101111000001"                                                                                                                                                                                                                                                                                                                                                   |             |
| c_PI          | signed(c_SIZE_INPUT-1 downto 0)            |  "01100100100001111110"                                                                                                                                                                                                                                                                                                                                                   |             |
| c_PI_NEG      | signed(c_SIZE_INPUT-1 downto 0)            |  "10011011011110000010"                                                                                                                                                                                                                                                                                                                                                   |             |
| X_INIT        | signed(c_SIZE_INPUT-1 downto 0)            |  "00100000000000000000"                                                                                                                                                                                                                                                                                                                                                   |             |
| Y_INIT        | signed(c_SIZE_INPUT-1 downto 0)            |  "00000000000000000000"                                                                                                                                                                                                                                                                                                                                                   |             |
| X_BIS_INIT    | signed(c_SIZE_INPUT-1 downto 0)            |  "00100000000000000000"                                                                                                                                                                                                                                                                                                                                                   |             |
| Y_BIS_INIT    | signed(c_SIZE_INPUT-1 downto 0)            |  "00000000000000000000"                                                                                                                                                                                                                                                                                                                                                   |             |
| c_NUM_STAGES  | integer                                    |  16                                                                                                                                                                                                                                                                                                                                                                       |             |
| r2_ang        | typea_inputa                               |  (     "011001001000011111","001110110101100011","000111110101101101","000011111110101011",     "000001111111110101","000000111111111110","000000011111111111","000000001111111111",     "000000000111111111","000000000011111111","000000000001111111","000000000000111111",     "000000000000011111","000000000000001111","000000000000000111","000000000000000011"   ) |             |
| c_CORRECTION  | signed(c_SIZE_INPUT-c_SIZE_INT-1 downto 0) |  "010011011011101001"                                                                                                                                                                                                                                                                                                                                                     |             |
## Types

| Name         | Type | Description |
| ------------ | ---- | ----------- |
| typea_input  |      |             |
| typea_inputa |      |             |
## Processes
- r0_reg_input: ( clk )
- r1_adapter_input: ( clk )
- r2_shift: ( clk )
- r2_start_cordic: ( clk )
- r3_cordic_correction: ( clk )
- r4_adapter_output: ( clk )