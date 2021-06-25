# Package: avalon_mm_bfm_pkg
## Constants
| Name                           | Type                   | Value                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | Description |
| ------------------------------ | ---------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| C_SCOPE                        | string                 |  "AVALON MM BFM"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |             |
| C_AVALON_MM_BFM_CONFIG_DEFAULT | t_avalon_mm_bfm_config |  (     max_wait_cycles           => 10,     max_wait_cycles_severity  => TB_FAILURE,     clock_period              => -1 ns,     clock_period_margin       => 0 ns,     clock_margin_severity     => TB_ERROR,     setup_time                => -1 ns,     hold_time                 => -1 ns,     bfm_sync                  => SYNC_ON_CLOCK_ONLY,     match_strictness          => MATCH_EXACT,     num_wait_states_read      => 0,     num_wait_states_write     => 0,     use_waitrequest           => true,     use_readdatavalid         => false,     use_response_signal       => true,     use_begintransfer         => false,     id_for_bfm                => ID_BFM,     id_for_bfm_wait           => ID_BFM_WAIT,     id_for_bfm_poll           => ID_BFM_POLL     ) |             |
| C_AVALON_CLOCK_PERIOD_DEFAULT  | t_avalon_clock_period  |  (       time_of_rising_edge   => -1 ns,       time_of_falling_edge  => -1 ns     )                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |             |
## Types
| Name                        | Type                                      | Description |
| --------------------------- | ----------------------------------------- | ----------- |
| t_avalon_mm_if              |                                           |             |
| t_avalon_mm_bfm_config      |                                           |             |
| t_avalon_mm_response_status | (OKAY, RESERVED, SLAVEERROR, DECODEERROR) |             |
| t_avalon_clock_period       |                                           |             |
## Functions
- init_avalon_mm_if_signals <font id="function_arguments">(    addr_width : natural;
    data_width : natural;
    lock_value : std_logic := '0'
    )</font> <font id="function_return">return t_avalon_mm_if</font>
- avalon_mm_write <font id="function_arguments">(    constant addr_value       : in  unsigned;
    constant data_value       : in  std_logic_vector;
    constant msg              : in  string;
    signal clk                : in  std_logic;
    signal avalon_mm_if       : inout t_avalon_mm_if;
    constant scope            : in  string                    := C_SCOPE;
    constant msg_id_panel     : in  t_msg_id_panel            := shared_msg_id_panel;
    constant config           : in  t_avalon_mm_bfm_config    := C_AVALON_MM_BFM_CONFIG_DEFAULT
    )</font> <font id="function_return">return ()</font>
- avalon_mm_write <font id="function_arguments">(    constant addr_value       : in  unsigned;
    constant data_value       : in  std_logic_vector;
    constant msg              : in  string;
    signal clk                : in  std_logic;
    signal avalon_mm_if       : inout t_avalon_mm_if;
    constant byte_enable      : in  std_logic_vector;
    constant scope            : in  string                    := C_SCOPE;
    constant msg_id_panel     : in  t_msg_id_panel            := shared_msg_id_panel;
    constant config           : in  t_avalon_mm_bfm_config    := C_AVALON_MM_BFM_CONFIG_DEFAULT
    )</font> <font id="function_return">return ()</font>
- avalon_mm_read <font id="function_arguments">(    constant addr_value       : in  unsigned;
    variable data_value       : out std_logic_vector;
    constant msg              : in  string;
    signal clk                : in  std_logic;
    signal avalon_mm_if       : inout t_avalon_mm_if;
    constant scope            : in  string                    := C_SCOPE;
    constant msg_id_panel     : in  t_msg_id_panel            := shared_msg_id_panel;
    constant config           : in  t_avalon_mm_bfm_config    := C_AVALON_MM_BFM_CONFIG_DEFAULT;
    constant proc_name        : in  string                    := "avalon_mm_read"   Overwrite if called from another procedure
    )</font> <font id="function_return">return ()</font>
- avalon_mm_check <font id="function_arguments">(    constant addr_value       : in  unsigned;
    constant data_exp         : in  std_logic_vector;
    constant msg              : in  string;
    signal clk                : in  std_logic;
    signal avalon_mm_if       : inout t_avalon_mm_if;
    constant alert_level      : in  t_alert_level             := error;
    constant scope            : in  string                    := C_SCOPE;
    constant msg_id_panel     : in  t_msg_id_panel            := shared_msg_id_panel;
    constant config           : in  t_avalon_mm_bfm_config    := C_AVALON_MM_BFM_CONFIG_DEFAULT
    )</font> <font id="function_return">return ()</font>
- avalon_mm_reset <font id="function_arguments">(    signal clk                : in  std_logic;
    signal avalon_mm_if       : inout t_avalon_mm_if;
    constant num_rst_cycles   : in  integer;
    constant msg              : in  string;
    constant scope            : in  string                    := C_SCOPE;
    constant msg_id_panel     : in  t_msg_id_panel            := shared_msg_id_panel;
    constant config           : in  t_avalon_mm_bfm_config    := C_AVALON_MM_BFM_CONFIG_DEFAULT
    )</font> <font id="function_return">return ()</font>
- avalon_mm_read_request <font id="function_arguments">(    constant addr_value       : in  unsigned;
    constant msg              : in  string;
    signal clk                : in  std_logic;
    signal avalon_mm_if       : inout t_avalon_mm_if;
    constant scope            : in  string                    := C_SCOPE;
    constant msg_id_panel     : in  t_msg_id_panel            := shared_msg_id_panel;
    constant config           : in  t_avalon_mm_bfm_config    := C_AVALON_MM_BFM_CONFIG_DEFAULT;
    constant ext_proc_call    : in  string                    := ""   External proc_call. Overwrite if called from another BFM procedure
  )</font> <font id="function_return">return ()</font>
- avalon_mm_read_response <font id="function_arguments">(    constant addr_value       : in  unsigned;
    variable data_value       : out std_logic_vector;
    constant msg              : in  string;
    signal clk                : in  std_logic;
    signal avalon_mm_if       : in t_avalon_mm_if;
    constant scope            : in  string                    := C_SCOPE;
    constant msg_id_panel     : in  t_msg_id_panel            := shared_msg_id_panel;
    constant config           : in  t_avalon_mm_bfm_config    := C_AVALON_MM_BFM_CONFIG_DEFAULT;
    constant proc_name        : in  string                    := "avalon_mm_read_response"   Overwrite if called from another procedure
  )</font> <font id="function_return">return ()</font>
- avalon_mm_check_response <font id="function_arguments">(    constant addr_value       : in  unsigned;
    constant data_exp         : in  std_logic_vector;
    constant msg              : in  string;
    signal clk                : in  std_logic;
    signal avalon_mm_if       : in t_avalon_mm_if;
    constant alert_level      : in  t_alert_level             := error;
    constant scope            : in  string                    := C_SCOPE;
    constant msg_id_panel     : in  t_msg_id_panel            := shared_msg_id_panel;
    constant config           : in  t_avalon_mm_bfm_config    := C_AVALON_MM_BFM_CONFIG_DEFAULT
  )</font> <font id="function_return">return ()</font>
- avalon_mm_lock <font id="function_arguments">(    signal avalon_mm_if       : inout t_avalon_mm_if;
    constant msg              : in  string;
    constant scope            : in  string                    := C_SCOPE;
    constant msg_id_panel     : in  t_msg_id_panel            := shared_msg_id_panel;
    constant config           : in  t_avalon_mm_bfm_config    := C_AVALON_MM_BFM_CONFIG_DEFAULT
    )</font> <font id="function_return">return ()</font>
- avalon_mm_unlock <font id="function_arguments">(    signal avalon_mm_if       : inout t_avalon_mm_if;
    constant msg              : in  string;
    constant scope            : in  string                    := C_SCOPE;
    constant msg_id_panel     : in  t_msg_id_panel            := shared_msg_id_panel;
    constant config           : in  t_avalon_mm_bfm_config    := C_AVALON_MM_BFM_CONFIG_DEFAULT
  )</font> <font id="function_return">return ()</font>