# Package: com_types_pkg
## Constants
| Name          | Type         | Value                                                                                                                                                                                                       | Description |
| ------------- | ------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| null_actor    | actor_t      |  (id => 0)                                                                                                                                                                                                  |             |
| null_msg_type | msg_type_t   |  (p_code => -1)                                                                                                                                                                                             |             |
| p_msg_types   | msg_types_t  |  (     p_name_ptrs => new_integer_vector_ptr)                                                                                                                                                               |             |
| no_message_id | message_id_t |  0                                                                                                                                                                                                          |             |
| null_msg      | msg_t        |  (     id => no_message_id,     msg_type => null_msg_type,     status => null_message_error,     sender => null_actor,     receiver => null_actor,     request_id => no_message_id,     data => null_queue) |             |
| network_event | std_logic    |  '1'                                                                                                                                                                                                        |             |
| idle_network  | std_logic    |  'Z'                                                                                                                                                                                                        |             |
| max_timeout   | time         |  1 hr                                                                                                                                                                                                       |             |
| com_logger    | logger_t     |  get_logger("vunit_lib:com")                                                                                                                                                                                |             |
| queue_pool    | queue_pool_t |  new_queue_pool                                                                                                                                                                                             |             |
## Types
| Name                        | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Description |
| --------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| com_status_t                | (ok,                         timeout,                         null_message_error,                         unknown_actor_error,                         unknown_receiver_error,                         unknown_subscriber_error,                         unknown_publisher_error,                         deferred_receiver_error,                         already_a_subscriber_error,                         not_a_subscriber_error,                         full_inbox_error,                         reply_missing_request_id_error,                         unknown_request_id_error,                         deprecated_interface_error,                         insufficient_size_error,                         duplicate_actor_name_error) |             |
| actor_t                     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| actor_vec_t                 |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| mailbox_id_t                | (inbox, outbox)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| msg_type_t                  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| msg_types_t                 |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| message_t                   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| message_ptr_t               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| msg_t                       |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| msg_vec_t                   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| msg_vec_ptr_t               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| subscription_traffic_type_t | (published, outbound, inbound)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |             |
| subscription_t              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| subscription_vec_t          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| subscription_vec_ptr_t      |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| receipt_t                   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| mailbox_state_t             |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| actor_state_t               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| actor_state_vec_t           |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| actor_state_vec_ptr_t       |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
| messenger_state_t           |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             |
## Functions
- unexpected_msg_type <font id="function_arguments">(msg_type : msg_type_t;                                logger : logger_t := com_logger)</font> <font id="function_return">return ()</font>
- push_msg_type <font id="function_arguments">(msg : msg_t; msg_type : msg_type_t; logger : logger_t := com_logger)</font> <font id="function_return">return ()</font>
- handle_message <font id="function_arguments">(variable msg_type : inout msg_type_t)</font> <font id="function_return">return ()</font>
- delete <font id="function_arguments">(msg : inout msg_t)</font> <font id="function_return">return ()</font>
- sender <font id="function_arguments">(msg : msg_t)</font> <font id="function_return">return actor_t</font>
- receiver <font id="function_arguments">(msg : msg_t)</font> <font id="function_return">return actor_t</font>
- message_type <font id="function_arguments">(msg : msg_t)</font> <font id="function_return">return msg_type_t</font>
- push <font id="function_arguments">(queue : queue_t; variable value : inout msg_t)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : integer)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : character)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : boolean)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : real)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : bit)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : std_ulogic)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : severity_level)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : file_open_status)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : file_open_kind)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : bit_vector)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : std_ulogic_vector)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : complex)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : complex_polar)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : ieee.numeric_bit.unsigned)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : ieee.numeric_bit.signed)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : ieee.numeric_std.unsigned)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : ieee.numeric_std.signed)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : string)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : time)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; variable value : inout integer_vector_ptr_t)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; variable value : inout string_ptr_t)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; variable value : inout queue_t)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : boolean_vector)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : integer_vector)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : real_vector)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : time_vector)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : ufixed)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : sfixed)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; value : float)</font> <font id="function_return">return ()</font>
- push <font id="function_arguments">(msg : msg_t; variable value : inout msg_t)</font> <font id="function_return">return ()</font>
- push_ref <font id="function_arguments">(constant msg : msg_t; value : inout integer_array_t)</font> <font id="function_return">return ()</font>