-- liquibase formatted sql
-- changeset WMS_LOG:1783767499881 stripComments:false  logicalFilePath:basic_project_files\wms_log\jobs\logger_unset_prefs_by_client.sql
-- sqlcl_snapshot src/database/wms_log/jobs/logger_unset_prefs_by_client.sql:null:0a972424e3b0ff7898f45056b28108b9d3405bc9:create

begin
    dbms_scheduler.create_job(
        job_name            => 'WMS_LOG.LOGGER_UNSET_PREFS_BY_CLIENT',
        job_type            => 'PLSQL_BLOCK',
        job_action          => 'BEGIN LOGGER.UNSET_CLIENT_LEVEL; END; ',
        start_date          => timestamp '2026-07-11 11:03:30.002606',
        repeat_interval     => 'FREQ=HOURLY; BYHOUR=1',
        end_date            => null,
        job_class           => 'DEFAULT_JOB_CLASS',
        comments            => 'Clears logger prefs by client_id',
        auto_drop           => true,
        number_of_arguments => 0
    );

    dbms_scheduler.set_attribute(
        name      => 'WMS_LOG.LOGGER_UNSET_PREFS_BY_CLIENT',
        attribute => 'logging_level',
        value     => dbms_scheduler.logging_off
    );

    dbms_scheduler.set_attribute(
        name      => 'WMS_LOG.LOGGER_UNSET_PREFS_BY_CLIENT',
        attribute => 'job_priority',
        value     => 3
    );

    dbms_scheduler.enable('WMS_LOG.LOGGER_UNSET_PREFS_BY_CLIENT');
end;
/

