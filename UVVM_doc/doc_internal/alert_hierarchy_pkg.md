# Package: alert_hierarchy_pkg

## Functions
- initialize_hierarchy <font id="function_arguments">( constant base_scope : string := C_BASE_HIERARCHY_LEVEL; constant stop_limit : t_alert_counters := (others => 0) ) </font> <font id="function_return">return ()</font>
- add_to_alert_hierarchy <font id="function_arguments">( constant scope : string; constant parent_scope : string := C_BASE_HIERARCHY_LEVEL; constant stop_limit : t_alert_counters := (others => 0) ) </font> <font id="function_return">return ()</font>
- set_hierarchical_alert_top_level_stop_limit <font id="function_arguments">( constant alert_level : t_alert_level; constant value : natural ) </font> <font id="function_return">return ()</font>
- hierarchical_alert <font id="function_arguments">( constant alert_level: t_alert_level; constant msg : string; constant scope : string; constant attention : t_attention ) </font> <font id="function_return">return ()</font>
- increment_expected_alerts <font id="function_arguments">( constant scope : string; constant alert_level: t_alert_level; constant amount : natural := 1 ) </font> <font id="function_return">return ()</font>
- set_expected_alerts <font id="function_arguments">( constant scope : string; constant alert_level: t_alert_level; constant expected_alerts : natural ) </font> <font id="function_return">return ()</font>
- increment_stop_limit <font id="function_arguments">( constant scope : string; constant alert_level: t_alert_level; constant amount : natural := 1 ) </font> <font id="function_return">return ()</font>
- set_stop_limit <font id="function_arguments">( constant scope : string; constant alert_level: t_alert_level; constant stop_limit : natural ) </font> <font id="function_return">return ()</font>
- print_hierarchical_log <font id="function_arguments">( constant order : t_order := FINAL ) </font> <font id="function_return">return ()</font>
- clear_hierarchy <font id="function_arguments">( constant VOID : t_void ) </font> <font id="function_return">return ()</font>