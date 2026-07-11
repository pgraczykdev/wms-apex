-- liquibase formatted sql
-- changeset WMS_LOG:1783767499852 stripComments:false  logicalFilePath:basic_project_files\wms_log\views\logger_logs_5_min.sql
-- sqlcl_snapshot src/database/wms_log/views/logger_logs_5_min.sql:null:eef9b159a82e28a82e75c0056f3493ad9d981a2c:create

create or replace force editionable view wms_log.logger_logs_5_min (
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
        time_stamp > systimestamp - ( 5 / 1440 );

