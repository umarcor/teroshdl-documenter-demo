# Entity: io_7SegmentMux_HEX
## Diagram
![Diagram](io_7SegmentMux_HEX.svg "Diagram")
## Generics
| Generic name | Type     | Value   | Description |
| ------------ | -------- | ------- | ----------- |
| CLOCK_FREQ   | FREQ     | 100 MHz |             |
| REFRESH_RATE | FREQ     | 1 kHz   |             |
| DIGITS       | positive | 4       |             |
## Ports
| Port name      | Direction | Type                                  | Description |
| -------------- | --------- | ------------------------------------- | ----------- |
| Clock          | in        | std_logic                             |             |
| HexDigits      | in        | T_SLVV_4(DIGITS - 1 downto 0)         |             |
| HexDots        | in        | std_logic_vector(DIGITS - 1 downto 0) |             |
| SegmentControl | out       | std_logic_vector(7 downto 0)          |             |
| DigitControl   | out       | std_logic_vector(DIGITS - 1 downto 0) |             |
## Signals
| Name             | Type                                      | Description |
| ---------------- | ----------------------------------------- | ----------- |
| DigitCounter_rst | std_logic                                 |             |
| DigitCounter_en  | std_logic                                 |             |
| DigitCounter_us  | unsigned(log2ceilnz(DIGITS) - 1 downto 0) |             |
## Processes
- unnamed: _( HexDigits, HexDots, DigitCounter_us )_

## Instantiations
- Strobe: PoC.misc_StrobeGenerator