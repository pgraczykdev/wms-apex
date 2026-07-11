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


-- sqlcl_snapshot {"hash":"c4e6fe10e89efdb9b496a03aaf6213cf5c05f43f","type":"VIEW","name":"LOGGER_LOGS_60_MIN","schemaName":"WMS_LOG","sxml":""}