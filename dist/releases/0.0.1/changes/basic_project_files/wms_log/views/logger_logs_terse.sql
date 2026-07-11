-- liquibase formatted sql
-- changeset WMS_LOG:1783767499857 stripComments:false  logicalFilePath:basic_project_files\wms_log\views\logger_logs_terse.sql
-- sqlcl_snapshot src/database/wms_log/views/logger_logs_terse.sql:null:d97576a2d296506e652707a8e2d1668625c803c4:create

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

