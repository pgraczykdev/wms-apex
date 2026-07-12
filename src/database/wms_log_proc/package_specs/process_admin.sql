create or replace package wms_log_proc.process_admin authid definer as
    type process_job_rt is record (
            owner           varchar2(128 char),
            job_name        user_scheduler_jobs.job_name%type,
            full_job_name   varchar2(255 char),
            enabled         user_scheduler_jobs.enabled%type,
            state           user_scheduler_jobs.state%type,
            last_start_date user_scheduler_jobs.last_start_date%type,
            next_run_date   user_scheduler_jobs.next_run_date%type,
            run_count       user_scheduler_jobs.run_count%type,
            failure_count   user_scheduler_jobs.failure_count%type
    );
    type process_jobs_tt is
        table of process_job_rt;
    procedure run_job;

    procedure stop_job;

    function get_jobs return process_jobs_tt
        pipelined;

end process_admin;
/


-- sqlcl_snapshot {"hash":"f92a108b34c12278e678f4fdf94c662ca8031207","type":"PACKAGE_SPEC","name":"PROCESS_ADMIN","schemaName":"WMS_LOG_PROC","sxml":""}