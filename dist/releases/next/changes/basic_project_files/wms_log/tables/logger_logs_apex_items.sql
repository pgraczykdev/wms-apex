-- liquibase formatted sql
-- changeset WMS_LOG:1783767499889 stripComments:false  logicalFilePath:basic_project_files\wms_log\tables\logger_logs_apex_items.sql
-- sqlcl_snapshot src/database/wms_log/tables/logger_logs_apex_items.sql:null:8e2a3c5f227044f9715919994a3eb4b3660a1e4f:create

create table wms_log.logger_logs_apex_items (
    id          number not null enable,
    log_id      number not null enable,
    app_session number not null enable,
    item_name   varchar2(1000 byte) not null enable,
    item_value  clob
);

alter table wms_log.logger_logs_apex_items
    add constraint logger_logs_apx_itms_pk primary key ( id )
        using index enable;

