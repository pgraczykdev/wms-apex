-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783783097528 stripComments:false  logicalFilePath:logging-system-and-process\wms_log_proc\type_specs\log_level_change_message_t.sql
-- sqlcl_snapshot src/database/wms_log_proc/type_specs/log_level_change_message_t.sql:null:ca9af24d1b7c2b11925880b2d36798485c7efdc9:create

create or replace type wms_log_proc.log_level_change_message_t under wms_log_proc.log_message_t (
        new_level                varchar2(30 char),
        client_id                varchar2(255 char),
        include_call_stack       varchar2(5 char),
        p_client_id_expire_hours number(10, 0),
        overriding member procedure process_msg
);
/

