-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783879727569 stripComments:false  logicalFilePath:process_manager\wms_log_proc\package_specs\constants.sql
-- sqlcl_snapshot src/database/wms_log_proc/package_specs/constants.sql:8614a545cf98ce4227234af5e5214a8b944861a9:8529e1b08cfd7853a9ee81fa922f65d1bf9b947c:alter

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

