-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783783097531 stripComments:false  logicalFilePath:logging-system-and-process\wms_log_proc\type_specs\log_message_t.sql
-- sqlcl_snapshot src/database/wms_log_proc/type_specs/log_message_t.sql:null:b36eb4b5a8a3f6c0711a2ce48c2fea510d2f8190:create

create or replace type wms_log_proc.log_message_t as object (
        message_id  raw(16),
        enqueued_at timestamp,
        enqueued_by varchar2(128 char),
        command     varchar2(30 char),
        not instantiable member procedure process_msg
) not final not instantiable;
/

