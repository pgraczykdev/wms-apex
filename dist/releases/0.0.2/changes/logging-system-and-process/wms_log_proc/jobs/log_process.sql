-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783783097476 stripComments:false  logicalFilePath:logging-system-and-process\wms_log_proc\jobs\log_process.sql
-- sqlcl_snapshot src/database/wms_log_proc/jobs/log_process.sql:null:02c4597af453f1b7dd295c087b59bbd788ec7ada:create

begin
    dbms_scheduler.create_job(
        job_name            => 'WMS_LOG_PROC.LOG_PROCESS',
        job_type            => 'STORED_PROCEDURE',
        job_action          => 'WMS_LOG_PROC.CONSUMER.RUN',
        start_date          => timestamp '2026-07-11 17:05:13.010669',
        repeat_interval     => 'FREQ=SECONDLY;BYSECOND=1',
        end_date            => null,
        job_class           => 'DEFAULT_JOB_CLASS',
        comments            => null,
        auto_drop           => false,
        number_of_arguments => 0
    );

    dbms_scheduler.set_attribute(
        name      => 'WMS_LOG_PROC.LOG_PROCESS',
        attribute => 'logging_level',
        value     => dbms_scheduler.logging_off
    );

    dbms_scheduler.set_attribute(
        name      => 'WMS_LOG_PROC.LOG_PROCESS',
        attribute => 'job_priority',
        value     => 3
    );

    dbms_scheduler.enable('WMS_LOG_PROC.LOG_PROCESS');
end;
/

