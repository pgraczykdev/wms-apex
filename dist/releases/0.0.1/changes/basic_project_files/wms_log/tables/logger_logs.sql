-- liquibase formatted sql
-- changeset WMS_LOG:1783767499898 stripComments:false  logicalFilePath:basic_project_files\wms_log\tables\logger_logs.sql
-- sqlcl_snapshot src/database/wms_log/tables/logger_logs.sql:null:c98dace55b7078da23578bfe4cabc6b3accb98ba:create

create table wms_log.logger_logs (
    id                number,
    logger_level      number not null enable,
    text              varchar2(4000 byte),
    time_stamp        timestamp(6) not null enable,
    scope             varchar2(1000 byte),
    module            varchar2(100 byte),
    action            varchar2(100 byte),
    user_name         varchar2(255 byte),
    client_identifier varchar2(255 byte),
    call_stack        varchar2(4000 byte),
    unit_name         varchar2(255 byte),
    line_no           varchar2(100 byte),
    scn               number,
    extra             clob,
    sid               number,
    client_info       varchar2(64 byte)
);

alter table wms_log.logger_logs
    add constraint logger_logs_lvl_ck
        check ( logger_level in ( 1, 2, 4, 8, 16,
                                  32, 64, 128 ) ) enable;

alter table wms_log.logger_logs
    add constraint logger_logs_pk primary key ( id )
        using index enable;

