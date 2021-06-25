# Package: spec_cov_pkg
## Functions
- initialize_req_cov <font id="function_arguments">(    constant testcase         : string;
    constant req_list_file    : string;
    constant partial_cov_file : string
  )</font> <font id="function_return">return ()</font>
- initialize_req_cov <font id="function_arguments">(    constant testcase         : string;
    constant partial_cov_file : string
  )</font> <font id="function_return">return ()</font>
- tick_off_req_cov <font id="function_arguments">(    constant requirement    : string;
    constant test_status    : t_test_status    := NA;
    constant msg            : string           := "";
    constant tickoff_extent : t_extent_tickoff := LIST_SINGLE_TICKOFF;
    constant scope          : string           := C_SCOPE
  )</font> <font id="function_return">return ()</font>
- cond_tick_off_req_cov <font id="function_arguments">(    constant requirement    : string;
    constant test_status    : t_test_status    := NA;
    constant msg            : string           := "";
    constant tickoff_extent : t_extent_tickoff := LIST_SINGLE_TICKOFF;
    constant scope          : string           := C_SCOPE
  )</font> <font id="function_return">return ()</font>
- disable_cond_tick_off_req_cov <font id="function_arguments">(    constant requirement    : string
  )</font> <font id="function_return">return ()</font>
- enable_cond_tick_off_req_cov <font id="function_arguments">(    constant requirement    : string
  )</font> <font id="function_return">return ()</font>
- finalize_req_cov <font id="function_arguments">(    constant VOID : t_void
  )</font> <font id="function_return">return ()</font>
- priv_log_entry <font id="function_arguments">(    constant index : natural
  )</font> <font id="function_return">return ()</font>
- priv_read_and_parse_csv_file <font id="function_arguments">(    constant req_list_file  : string
  )</font> <font id="function_return">return ()</font>
- priv_initialize_result_file <font id="function_arguments">(    constant file_name : string
  )</font> <font id="function_return">return ()</font>
- priv_inc_num_requirement_tick_offs <font id="function_arguments">(    requirement : string
  )</font> <font id="function_return">return ()</font>
- priv_test_status_to_string <font id="function_arguments">(    constant test_status : t_test_status
  )</font> <font id="function_return">return string</font>
- priv_set_default_testcase_name <font id="function_arguments">(    constant testcase : string
  )</font> <font id="function_return">return ()</font>