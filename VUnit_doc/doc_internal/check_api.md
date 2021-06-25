# Package: check_pkg
## Signals
| Name          | Type      | Description |
| ------------- | --------- | ----------- |
| check_enabled | std_logic |             |
## Constants
| Name             | Type      | Value                        | Description |
| ---------------- | --------- | ---------------------------- | ----------- |
| default_checker  | checker_t |  new_checker("check")        |             |
| check_logger     | logger_t  |  get_logger(default_checker) |             |
| check_result_tag | string    |  "<+/->"                     |             |
## Types
| Name            | Type                                     | Description |
| --------------- | ---------------------------------------- | ----------- |
| edge_t          | (rising_edge, falling_edge, both_edges)  |             |
| trigger_event_t | (first_pipe, first_no_pipe, penultimate) |             |
## Functions
- get_checker_stat <font id="function_arguments">(variable stat : out checker_stat_t)</font> <font id="function_return">return ()</font>
- reset_checker_stat <font id="function_arguments">()</font> <font id="function_return">return ()</font>
- result <font id="function_arguments">(msg : string := "")</font> <font id="function_return">return string</font>
- check <font id="function_arguments">(    constant checker           : in checker_t;
    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic;
    constant msg               : in string      := check_result_tag & ".";
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check <font id="function_arguments">(    constant checker   : in  checker_t;
    variable pass      : out boolean;
    constant expr      : in  boolean;
    constant msg       : in  string      := check_result_tag & ".";
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check <font id="function_arguments">(    constant checker   : in checker_t;
    constant expr      : in boolean;
    constant msg       : in string      := check_result_tag & ".";
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check <font id="function_arguments">(    constant expr      : in boolean;
    constant msg       : in string      := check_result_tag & ".";
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check <font id="function_arguments">(    variable pass      : out boolean;
    constant expr      : in  boolean;
    constant msg       : in  string      := check_result_tag & ".";
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check <font id="function_arguments">(    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic;
    constant msg               : in string      := check_result_tag & ".";
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_passed <font id="function_arguments">(    constant checker   : in checker_t;
    constant msg       : in string  := check_result_tag & ".";
    constant line_num  : in natural := 0;
    constant file_name : in string  := "")</font> <font id="function_return">return ()</font>
- check_passed <font id="function_arguments">(    constant msg       : in string  := check_result_tag & ".";
    constant line_num  : in natural := 0;
    constant file_name : in string  := "")</font> <font id="function_return">return ()</font>
- check_failed <font id="function_arguments">(    constant checker   : in checker_t;
    constant msg       : in string      := check_result_tag & ".";
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_failed <font id="function_arguments">(    constant msg       : in string      := check_result_tag & ".";
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_true <font id="function_arguments">(    constant checker           : in checker_t;
    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic;
    constant msg               : in string      := check_result_tag & ".";
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_true <font id="function_arguments">(    constant checker   : in  checker_t;
    variable pass      : out boolean;
    constant expr      : in  boolean;
    constant msg       : in  string      := check_result_tag & ".";
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check_true <font id="function_arguments">(    constant checker   : in checker_t;
    constant expr      : in boolean;
    constant msg       : in string      := check_result_tag & ".";
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_true <font id="function_arguments">(    constant expr      : in boolean;
    constant msg       : in string      := check_result_tag & ".";
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_true <font id="function_arguments">(    variable pass      : out boolean;
    constant expr      : in  boolean;
    constant msg       : in  string      := check_result_tag & ".";
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check_true <font id="function_arguments">(    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic;
    constant msg               : in string      := check_result_tag & ".";
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_false <font id="function_arguments">(    constant checker   : in checker_t;
    constant expr      : in boolean;
    constant msg       : in string      := check_result_tag & ".";
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_false <font id="function_arguments">(    constant checker   : in  checker_t;
    variable pass      : out boolean;
    constant expr      : in  boolean;
    constant msg       : in  string      := check_result_tag & ".";
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check_false <font id="function_arguments">(    constant checker           : in checker_t;
    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic;
    constant msg               : in string      := check_result_tag & ".";
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_false <font id="function_arguments">(    constant expr      : in boolean;
    constant msg       : in string      := check_result_tag & ".";
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_false <font id="function_arguments">(    variable pass      : out boolean;
    constant expr      : in  boolean;
    constant msg       : in  string      := check_result_tag & ".";
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check_false <font id="function_arguments">(    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic;
    constant msg               : in string      := check_result_tag & ".";
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_implication <font id="function_arguments">(    constant checker           : in checker_t;
    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal antecedent_expr     : in std_logic;
    signal consequent_expr     : in std_logic;
    constant msg               : in string      := check_result_tag & ".";
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_implication <font id="function_arguments">(    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal antecedent_expr     : in std_logic;
    signal consequent_expr     : in std_logic;
    constant msg               : in string      := check_result_tag & ".";
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_implication <font id="function_arguments">(    constant checker         : in checker_t;
    constant antecedent_expr : in boolean;
    constant consequent_expr : in boolean;
    constant msg             : in string      := check_result_tag & ".";
    constant level           : in log_level_t := null_log_level;
    constant line_num        : in natural     := 0;
    constant file_name       : in string      := "")</font> <font id="function_return">return ()</font>
- check_implication <font id="function_arguments">(    constant checker         : in  checker_t;
    variable pass            : out boolean;
    constant antecedent_expr : in  boolean;
    constant consequent_expr : in  boolean;
    constant msg             : in  string      := check_result_tag & ".";
    constant level           : in  log_level_t := null_log_level;
    constant line_num        : in  natural     := 0;
    constant file_name       : in  string      := "")</font> <font id="function_return">return ()</font>
- check_implication <font id="function_arguments">(    constant antecedent_expr : in boolean;
    constant consequent_expr : in boolean;
    constant msg             : in string      := check_result_tag & ".";
    constant level           : in log_level_t := null_log_level;
    constant line_num        : in natural     := 0;
    constant file_name       : in string      := "")</font> <font id="function_return">return ()</font>
- check_implication <font id="function_arguments">(    variable pass            : out boolean;
    constant antecedent_expr : in  boolean;
    constant consequent_expr : in  boolean;
    constant msg             : in  string      := check_result_tag & ".";
    constant level           : in  log_level_t := null_log_level;
    constant line_num        : in  natural     := 0;
    constant file_name       : in  string      := "")</font> <font id="function_return">return ()</font>
- check_stable <font id="function_arguments">(    constant checker           : in checker_t;
    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal start_event         : in std_logic;
    signal end_event           : in std_logic;
    signal expr                : in std_logic_vector;
    constant msg               : in string      := check_result_tag;
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant allow_restart     : in boolean     := false;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_stable <font id="function_arguments">(    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal start_event         : in std_logic;
    signal end_event           : in std_logic;
    signal expr                : in std_logic_vector;
    constant msg               : in string      := check_result_tag;
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant allow_restart     : in boolean     := false;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_stable <font id="function_arguments">(    constant checker           : in checker_t;
    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal start_event         : in std_logic;
    signal end_event           : in std_logic;
    signal expr                : in std_logic;
    constant msg               : in string      := check_result_tag;
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant allow_restart     : in boolean     := false;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_stable <font id="function_arguments">(    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal start_event         : in std_logic;
    signal end_event           : in std_logic;
    signal expr                : in std_logic;
    constant msg               : in string      := check_result_tag;
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant allow_restart     : in boolean     := false;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_not_unknown <font id="function_arguments">(    constant checker           : in checker_t;
    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic_vector;
    constant msg               : in string      := check_result_tag;
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_not_unknown <font id="function_arguments">(    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic_vector;
    constant msg               : in string      := check_result_tag;
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_not_unknown <font id="function_arguments">(    constant checker   : in checker_t;
    constant expr      : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_not_unknown <font id="function_arguments">(    constant checker   : in  checker_t;
    variable pass      : out boolean;
    constant expr      : in  std_logic_vector;
    constant msg       : in  string      := check_result_tag;
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check_not_unknown <font id="function_arguments">(    constant expr      : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_not_unknown <font id="function_arguments">(    variable pass      : out boolean;
    constant expr      : in  std_logic_vector;
    constant msg       : in  string      := check_result_tag;
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check_not_unknown <font id="function_arguments">(    constant checker           : in checker_t;
    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic;
    constant msg               : in string      := check_result_tag;
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_not_unknown <font id="function_arguments">(    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic;
    constant msg               : in string      := check_result_tag;
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_not_unknown <font id="function_arguments">(    constant checker   : in checker_t;
    constant expr      : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_not_unknown <font id="function_arguments">(    constant checker   : in  checker_t;
    variable pass      : out boolean;
    constant expr      : in  std_logic;
    constant msg       : in  string      := check_result_tag;
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check_not_unknown <font id="function_arguments">(    constant expr      : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_not_unknown <font id="function_arguments">(    variable pass      : out boolean;
    constant expr      : in  std_logic;
    constant msg       : in  string      := check_result_tag;
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check_zero_one_hot <font id="function_arguments">(    constant checker           : in checker_t;
    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic_vector;
    constant msg               : in string      := check_result_tag;
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_zero_one_hot <font id="function_arguments">(    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic_vector;
    constant msg               : in string      := check_result_tag;
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_zero_one_hot <font id="function_arguments">(    constant checker   : in  checker_t;
    variable pass      : out boolean;
    constant expr      : in  std_logic_vector;
    constant msg       : in  string      := check_result_tag;
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check_zero_one_hot <font id="function_arguments">(    variable pass      : out boolean;
    constant expr      : in  std_logic_vector;
    constant msg       : in  string      := check_result_tag;
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check_zero_one_hot <font id="function_arguments">(    constant checker   : in checker_t;
    constant expr      : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_zero_one_hot <font id="function_arguments">(    constant expr      : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_one_hot <font id="function_arguments">(    constant checker           : in checker_t;
    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic_vector;
    constant msg               : in string      := check_result_tag;
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_one_hot <font id="function_arguments">(    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal expr                : in std_logic_vector;
    constant msg               : in string      := check_result_tag;
    constant level             : in log_level_t := null_log_level;
    constant active_clock_edge : in edge_t      := rising_edge;
    constant line_num          : in natural     := 0;
    constant file_name         : in string      := "")</font> <font id="function_return">return ()</font>
- check_one_hot <font id="function_arguments">(    constant checker   : in  checker_t;
    variable pass      : out boolean;
    constant expr      : in  std_logic_vector;
    constant msg       : in  string      := check_result_tag;
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check_one_hot <font id="function_arguments">(    variable pass      : out boolean;
    constant expr      : in  std_logic_vector;
    constant msg       : in  string      := check_result_tag;
    constant level     : in  log_level_t := null_log_level;
    constant line_num  : in  natural     := 0;
    constant file_name : in  string      := "")</font> <font id="function_return">return ()</font>
- check_one_hot <font id="function_arguments">(    constant checker   : in checker_t;
    constant expr      : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_one_hot <font id="function_arguments">(    constant expr      : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_next <font id="function_arguments">(    constant checker             : in checker_t;
    signal clock                 : in std_logic;
    signal en                    : in std_logic;
    signal start_event           : in std_logic;
    signal expr                  : in std_logic;
    constant msg                 : in string      := check_result_tag;
    constant num_cks             : in natural     := 1;
    constant allow_overlapping   : in boolean     := true;
    constant allow_missing_start : in boolean     := true;
    constant level               : in log_level_t := null_log_level;
    constant active_clock_edge   : in edge_t      := rising_edge;
    constant line_num            : in natural     := 0;
    constant file_name           : in string      := "")</font> <font id="function_return">return ()</font>
- check_next <font id="function_arguments">(    signal clock                 : in std_logic;
    signal en                    : in std_logic;
    signal start_event           : in std_logic;
    signal expr                  : in std_logic;
    constant msg                 : in string      := check_result_tag;
    constant num_cks             : in natural     := 1;
    constant allow_overlapping   : in boolean     := true;
    constant allow_missing_start : in boolean     := true;
    constant level               : in log_level_t := null_log_level;
    constant active_clock_edge   : in edge_t      := rising_edge;
    constant line_num            : in natural     := 0;
    constant file_name           : in string      := "")</font> <font id="function_return">return ()</font>
- check_sequence <font id="function_arguments">(    constant checker           : in checker_t;
    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal event_sequence      : in std_logic_vector;
    constant msg               : in string          := check_result_tag;
    constant trigger_event     : in trigger_event_t := penultimate;
    constant level             : in log_level_t     := null_log_level;
    constant active_clock_edge : in edge_t          := rising_edge;
    constant line_num          : in natural         := 0;
    constant file_name         : in string          := "")</font> <font id="function_return">return ()</font>
- check_sequence <font id="function_arguments">(    signal clock               : in std_logic;
    signal en                  : in std_logic;
    signal event_sequence      : in std_logic_vector;
    constant msg               : in string          := check_result_tag;
    constant trigger_event     : in trigger_event_t := penultimate;
    constant level             : in log_level_t     := null_log_level;
    constant active_clock_edge : in edge_t          := rising_edge;
    constant line_num          : in natural         := 0;
    constant file_name         : in string          := "")</font> <font id="function_return">return ()</font>
- check_relation <font id="function_arguments">(    constant checker     : in checker_t;
    constant expr        : in boolean;
    constant msg         : in string      := check_result_tag;
    constant level       : in log_level_t := null_log_level;
    constant context_msg : in string      := "";
    constant line_num    : in natural     := 0;
    constant file_name   : in string      := "")</font> <font id="function_return">return ()</font>
- check_relation <font id="function_arguments">(    constant checker     : in  checker_t;
    variable pass        : out boolean;
    constant expr        : in  boolean;
    constant msg         : in  string      := check_result_tag;
    constant level       : in  log_level_t := null_log_level;
    constant context_msg : in  string      := "";
    constant line_num    : in  natural     := 0;
    constant file_name   : in  string      := "")</font> <font id="function_return">return ()</font>
- check_relation <font id="function_arguments">(    constant expr        : in boolean;
    constant msg         : in string      := check_result_tag;
    constant level       : in log_level_t := null_log_level;
    constant context_msg : in string      := "";
    constant line_num    : in natural     := 0;
    constant file_name   : in string      := "")</font> <font id="function_return">return ()</font>
- check_relation <font id="function_arguments">(    variable pass        : out boolean;
    constant expr        : in  boolean;
    constant msg         : in  string      := check_result_tag;
    constant level       : in  log_level_t := null_log_level;
    constant context_msg : in  string      := "";
    constant line_num    : in  natural     := 0;
    constant file_name   : in  string      := "")</font> <font id="function_return">return ()</font>
- check_relation <font id="function_arguments">(    constant checker     : in checker_t;
    constant expr        : in std_ulogic;
    constant msg         : in string      := check_result_tag;
    constant level       : in log_level_t := null_log_level;
    constant context_msg : in string      := "";
    constant line_num    : in natural     := 0;
    constant file_name   : in string      := "")</font> <font id="function_return">return ()</font>
- check_relation <font id="function_arguments">(    constant checker     : in  checker_t;
    variable pass        : out boolean;
    constant expr        : in  std_ulogic;
    constant msg         : in  string      := check_result_tag;
    constant level       : in  log_level_t := null_log_level;
    constant context_msg : in  string      := "";
    constant line_num    : in  natural     := 0;
    constant file_name   : in  string      := "")</font> <font id="function_return">return ()</font>
- check_relation <font id="function_arguments">(    constant expr        : in std_ulogic;
    constant msg         : in string      := check_result_tag;
    constant level       : in log_level_t := null_log_level;
    constant context_msg : in string      := "";
    constant line_num    : in natural     := 0;
    constant file_name   : in string      := "")</font> <font id="function_return">return ()</font>
- check_relation <font id="function_arguments">(    variable pass        : out boolean;
    constant expr        : in  std_ulogic;
    constant msg         : in  string      := check_result_tag;
    constant level       : in  log_level_t := null_log_level;
    constant context_msg : in  string      := "";
    constant line_num    : in  natural     := 0;
    constant file_name   : in  string      := "")</font> <font id="function_return">return ()</font>
- check_relation <font id="function_arguments">(    constant checker     : in checker_t;
    constant expr        : in bit;
    constant msg         : in string      := check_result_tag;
    constant level       : in log_level_t := null_log_level;
    constant context_msg : in string      := "";
    constant line_num    : in natural     := 0;
    constant file_name   : in string      := "")</font> <font id="function_return">return ()</font>
- check_relation <font id="function_arguments">(    constant checker     : in  checker_t;
    variable pass        : out boolean;
    constant expr        : in  bit;
    constant msg         : in  string      := check_result_tag;
    constant level       : in  log_level_t := null_log_level;
    constant context_msg : in  string      := "";
    constant line_num    : in  natural     := 0;
    constant file_name   : in  string      := "")</font> <font id="function_return">return ()</font>
- check_relation <font id="function_arguments">(    constant expr        : in bit;
    constant msg         : in string      := check_result_tag;
    constant level       : in log_level_t := null_log_level;
    constant context_msg : in string      := "";
    constant line_num    : in natural     := 0;
    constant file_name   : in string      := "")</font> <font id="function_return">return ()</font>
- check_relation <font id="function_arguments">(    variable pass        : out boolean;
    constant expr        : in  bit;
    constant msg         : in  string      := check_result_tag;
    constant level       : in  log_level_t := null_log_level;
    constant context_msg : in  string      := "";
    constant line_num    : in  natural     := 0;
    constant file_name   : in  string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in real;
    constant expected  : in real;
    constant msg       : in string      := check_result_tag;
    constant max_diff  : in real        := 0.0;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in real;
    constant expected  : in real;
    constant msg       : in string      := check_result_tag;
    constant max_diff  : in real        := 0.0;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in unsigned;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in unsigned;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in unsigned;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in unsigned;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in unsigned;
    constant expected  : in natural;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in unsigned;
    constant expected  : in natural;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in unsigned;
    constant expected  : in natural;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in unsigned;
    constant expected  : in natural;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in natural;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in natural;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in natural;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in natural;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in unsigned;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in unsigned;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in unsigned;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in unsigned;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in std_logic_vector;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in std_logic_vector;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in std_logic_vector;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in std_logic_vector;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in std_logic_vector;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in std_logic_vector;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in std_logic_vector;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in std_logic_vector;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in std_logic_vector;
    constant expected  : in natural;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in std_logic_vector;
    constant expected  : in natural;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in std_logic_vector;
    constant expected  : in natural;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in std_logic_vector;
    constant expected  : in natural;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in natural;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in natural;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in natural;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in natural;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in signed;
    constant expected  : in signed;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in signed;
    constant expected  : in signed;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in signed;
    constant expected  : in signed;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in signed;
    constant expected  : in signed;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in signed;
    constant expected  : in integer;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in signed;
    constant expected  : in integer;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in signed;
    constant expected  : in integer;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in signed;
    constant expected  : in integer;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in integer;
    constant expected  : in signed;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in integer;
    constant expected  : in signed;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in integer;
    constant expected  : in signed;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in integer;
    constant expected  : in signed;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in integer;
    constant expected  : in integer;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in integer;
    constant expected  : in integer;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in integer;
    constant expected  : in integer;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in integer;
    constant expected  : in integer;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in std_logic;
    constant expected  : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in std_logic;
    constant expected  : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in std_logic;
    constant expected  : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in std_logic;
    constant expected  : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in std_logic;
    constant expected  : in boolean;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in std_logic;
    constant expected  : in boolean;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in std_logic;
    constant expected  : in boolean;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in std_logic;
    constant expected  : in boolean;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in boolean;
    constant expected  : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in boolean;
    constant expected  : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in boolean;
    constant expected  : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in boolean;
    constant expected  : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in boolean;
    constant expected  : in boolean;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in boolean;
    constant expected  : in boolean;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in boolean;
    constant expected  : in boolean;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in boolean;
    constant expected  : in boolean;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in string;
    constant expected  : in string;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in string;
    constant expected  : in string;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in string;
    constant expected  : in string;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in string;
    constant expected  : in string;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in character;
    constant expected  : in character;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in character;
    constant expected  : in character;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in character;
    constant expected  : in character;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in character;
    constant expected  : in character;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant got       : in time;
    constant expected  : in time;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in time;
    constant expected  : in time;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in time;
    constant expected  : in time;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_equal <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in time;
    constant expected  : in time;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    constant got       : in unsigned;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in unsigned;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in unsigned;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in unsigned;
    constant expected  : in unsigned;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    constant got       : in std_logic_vector;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in std_logic_vector;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in std_logic_vector;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in std_logic_vector;
    constant expected  : in std_logic_vector;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    constant got       : in signed;
    constant expected  : in signed;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in signed;
    constant expected  : in signed;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in signed;
    constant expected  : in signed;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in signed;
    constant expected  : in signed;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    constant got       : in std_logic;
    constant expected  : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    variable pass      : out boolean;
    constant got       : in std_logic;
    constant expected  : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    constant checker   : in checker_t;
    variable pass      : out boolean;
    constant got       : in std_logic;
    constant expected  : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>
- check_match <font id="function_arguments">(    constant checker   : in checker_t;
    constant got       : in std_logic;
    constant expected  : in std_logic;
    constant msg       : in string      := check_result_tag;
    constant level     : in log_level_t := null_log_level;
    constant line_num  : in natural     := 0;
    constant file_name : in string      := "")</font> <font id="function_return">return ()</font>