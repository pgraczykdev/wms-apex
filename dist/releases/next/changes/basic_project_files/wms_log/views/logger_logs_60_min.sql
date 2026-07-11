-- liquibase formatted sql
-- changeset WMS_LOG:1783767499862 stripComments:false  logicalFilePath:basic_project_files\wms_log\views\logger_logs_60_min.sql
-- sqlcl_snapshot src/database/wms_log/views/logger_logs_60_min.sql:null:c4e6fe10e89efdb9b496a03aaf6213cf5c05f43f:create

create or replace force editionable view wms_log.logger_logs_60_min (
    id,
    logger_level,
    text,
    time_stamp,
    scope,
    module,
    action,
    user_name,
    client_identifier,
    call_stack,
    unit_name,
    line_no,
    scn,
    extra,
    sid,
    client_info
) as
    select
        id,
        logger_level,
        text,
        time_stamp,
        scope,
        module,
        action,
        user_name,
        client_identifier,
        call_stack,
        unit_name,
        line_no,
        scn,
        extra,
        sid,
        client_info
    from
        logger_logs
    where
        time_stamp > systimestamp - ( 1 / 24 );

