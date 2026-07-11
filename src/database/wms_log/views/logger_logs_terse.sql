create or replace force editionable view wms_log.logger_logs_terse (
    id,
    logger_level,
    time_ago,
    text
) as
    select
        id,
        logger_level,
        substr(
            logger.date_text_format(time_stamp),
            1,
            20
        )                    time_ago,
        substr(text, 1, 200) text
    from
        logger_logs
    where
        time_stamp > systimestamp - ( 5 / 1440 )
    order by
        id asc;


-- sqlcl_snapshot {"hash":"d97576a2d296506e652707a8e2d1668625c803c4","type":"VIEW","name":"LOGGER_LOGS_TERSE","schemaName":"WMS_LOG","sxml":""}