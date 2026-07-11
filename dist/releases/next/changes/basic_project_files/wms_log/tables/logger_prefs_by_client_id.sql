-- liquibase formatted sql
-- changeset WMS_LOG:1783767499913 stripComments:false  logicalFilePath:basic_project_files\wms_log\tables\logger_prefs_by_client_id.sql
-- sqlcl_snapshot src/database/wms_log/tables/logger_prefs_by_client_id.sql:null:ef9f4576aa5bb06b4c03ba31187f98f065eeaa2f:create

create table wms_log.logger_prefs_by_client_id (
    client_id          varchar2(64 byte) not null enable,
    logger_level       varchar2(20 byte) not null enable,
    include_call_stack varchar2(5 byte) not null enable,
    created_date       date default sysdate not null enable,
    expiry_date        date not null enable
);

alter table wms_log.logger_prefs_by_client_id
    add constraint logger_prefs_by_client_id_ck1
        check ( logger_level in ( 'OFF', 'PERMANENT', 'ERROR', 'WARNING', 'INFORMATION',
                                  'DEBUG', 'TIMING', 'APEX', 'SYS_CONTEXT' ) ) enable;

alter table wms_log.logger_prefs_by_client_id
    add constraint logger_prefs_by_client_id_ck2 check ( expiry_date >= created_date ) enable;

alter table wms_log.logger_prefs_by_client_id
    add constraint logger_prefs_by_client_id_ck3
        check ( include_call_stack in ( 'TRUE', 'FALSE' ) ) enable;

alter table wms_log.logger_prefs_by_client_id
    add constraint logger_prefs_by_client_id_pk primary key ( client_id )
        using index enable;

