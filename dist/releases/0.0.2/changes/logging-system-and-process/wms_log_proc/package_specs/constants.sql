-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783783097510 stripComments:false  logicalFilePath:logging-system-and-process\wms_log_proc\package_specs\constants.sql
-- sqlcl_snapshot src/database/wms_log_proc/package_specs/constants.sql:null:8614a545cf98ce4227234af5e5214a8b944861a9:create

create or replace package wms_log_proc.constants as

    -- LOG_MESSAGE_T.command values
    gc_cmd_log_level_change constant varchar2(30 char) := 'LOG_LEVEL_CHANGE';

    -- Queue
    gc_queue_name constant varchar2(128 char) := 'wms_log_proc.log_message_q';
    gc_queue_table_name constant varchar2(128 char) := 'wms_log_proc.log_message_qt';
end constants;
/

