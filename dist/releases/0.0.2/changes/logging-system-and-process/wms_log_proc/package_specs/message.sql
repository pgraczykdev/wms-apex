-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783783097521 stripComments:false  logicalFilePath:logging-system-and-process\wms_log_proc\package_specs\message.sql
-- sqlcl_snapshot src/database/wms_log_proc/package_specs/message.sql:null:35630f43a80f7c9a552366d5ed953aaa6cb17dd0:create

create or replace package wms_log_proc.message as
    procedure lc (
        p_level                  in varchar2,
        p_client_id              in varchar2 default null,
        p_include_call_stack     in varchar2 default null,
        p_client_id_expire_hours in number default null
    );

end message;
/

