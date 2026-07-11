begin
    dbms_scheduler.create_job(
        job_name            => 'WMS_LOG.LOGGER_PURGE_JOB',
        job_type            => 'PLSQL_BLOCK',
        job_action          => 'BEGIN LOGGER.PURGE; END; ',
        start_date          => timestamp '2026-07-11 11:03:29.407821',
        repeat_interval     => 'FREQ=DAILY; BYHOUR=1',
        end_date            => null,
        job_class           => 'DEFAULT_JOB_CLASS',
        comments            => 'Purges LOGGER_LOGS using default values defined in logger_prefs.',
        auto_drop           => true,
        number_of_arguments => 0
    );

    dbms_scheduler.set_attribute(
        name      => 'WMS_LOG.LOGGER_PURGE_JOB',
        attribute => 'logging_level',
        value     => dbms_scheduler.logging_off
    );

    dbms_scheduler.set_attribute(
        name      => 'WMS_LOG.LOGGER_PURGE_JOB',
        attribute => 'job_priority',
        value     => 3
    );

    dbms_scheduler.enable('WMS_LOG.LOGGER_PURGE_JOB');
end;
/


-- sqlcl_snapshot {"hash":"ae33c6ee1dd4cf676524de7545f1aa5b4b8b2914","type":"JOB","name":"LOGGER_PURGE_JOB","schemaName":"WMS_LOG","sxml":""}