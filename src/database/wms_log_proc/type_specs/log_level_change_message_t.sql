create or replace type wms_log_proc.log_level_change_message_t under wms_log_proc.log_message_t (
        new_level                varchar2(30 char),
        client_id                varchar2(255 char),
        include_call_stack       varchar2(5 char),
        p_client_id_expire_hours number(10, 0),
        overriding member procedure process_msg
);
/


-- sqlcl_snapshot {"hash":"ca9af24d1b7c2b11925880b2d36798485c7efdc9","type":"TYPE_SPEC","name":"LOG_LEVEL_CHANGE_MESSAGE_T","schemaName":"WMS_LOG_PROC","sxml":""}