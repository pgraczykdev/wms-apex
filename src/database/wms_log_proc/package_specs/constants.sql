create or replace package wms_log_proc.constants as

    -- LOG_MESSAGE_T.command values
    gc_cmd_log_level_change constant varchar2(30 char) := 'LOG_LEVEL_CHANGE';

    -- Queue
    gc_queue_name constant varchar2(128 char) := 'wms_log_proc.log_message_q';
    gc_queue_table_name constant varchar2(128 char) := 'wms_log_proc.log_message_qt';

    --Process name 
    gc_log_process_name constant varchar2(128 char) := 'WMS_LOG_PROC.LOG_PROCESS';
end constants;
/


-- sqlcl_snapshot {"hash":"8529e1b08cfd7853a9ee81fa922f65d1bf9b947c","type":"PACKAGE_SPEC","name":"CONSTANTS","schemaName":"WMS_LOG_PROC","sxml":""}