begin
    dbms_scheduler.create_job(
        job_name            => 'WMS_LOG_PROC.LOG_PROCESS',
        job_type            => 'STORED_PROCEDURE',
        job_action          => 'WMS_LOG_PROC.CONSUMER.RUN',
        start_date          => timestamp '2026-07-11 19:40:10.615784',
        repeat_interval     => 'FREQ=SECONDLY',
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


-- sqlcl_snapshot {"hash":"697e74ab27d3e7aa4194fee2e4c6bdc2623a17b0","type":"JOB","name":"LOG_PROCESS","schemaName":"WMS_LOG_PROC","sxml":""}