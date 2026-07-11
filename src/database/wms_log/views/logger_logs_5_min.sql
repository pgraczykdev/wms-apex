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


-- sqlcl_snapshot {"hash":"eef9b159a82e28a82e75c0056f3493ad9d981a2c","type":"VIEW","name":"LOGGER_LOGS_5_MIN","schemaName":"WMS_LOG","sxml":""}