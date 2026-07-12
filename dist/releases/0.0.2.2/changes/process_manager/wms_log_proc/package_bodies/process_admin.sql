-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783879727549 stripComments:false  logicalFilePath:process_manager\wms_log_proc\package_bodies\process_admin.sql
-- sqlcl_snapshot src/database/wms_log_proc/package_bodies/process_admin.sql:null:89d6f6d473a6d878dc774d1f939d38e95fe0a6ec:create

create or replace package body wms_log_proc.process_admin as

    gc_global_prefix constant wms_log.logger_logs.scope%type := lower($$plsql_unit)
                                                                || '.';

    procedure run_job is
        l_scope wms_log.logger_logs.scope%type := gc_global_prefix || 'run_job';
    begin
        wms_log.logger.log('START', l_scope);
        dbms_scheduler.run_job(
            job_name            => wms_log_proc.constants.gc_log_process_name,
            use_current_session => false
        );

        wms_log.logger.log('END', l_scope);
    exception
        when others then
            wms_log.logger.log_error('Unexpected error occured');
            raise;
    end run_job;

    procedure stop_job is
        l_scope wms_log.logger_logs.scope%type := gc_global_prefix || 'stop_job';
    begin
        wms_log.logger.log('START', l_scope);
        dbms_scheduler.stop_job(
            job_name => wms_log_proc.constants.gc_log_process_name,
            force    => true
        );

        wms_log.logger.log('END', l_scope);
    exception
        when others then
            wms_log.logger.log_error('Unexpected error occured', l_scope);
            raise;
    end stop_job;

    function get_jobs return process_jobs_tt
        pipelined
    is
        l_scope wms_log.logger_logs.scope%type := gc_global_prefix || 'get_jobs';
        l_jobs  process_jobs_tt;
    begin
        wms_log.logger.log('START', l_scope);
        select
            $$plsql_unit_owner,
            job_name,
            $$plsql_unit_owner
            || '.'
            || job_name,
            enabled,
            state,
            last_start_date,
            next_run_date,
            run_count,
            failure_count
        bulk collect
        into l_jobs
        from
            user_scheduler_jobs;

        for i in 1..l_jobs.count loop
            pipe row ( l_jobs(i) );
        end loop;

        wms_log.logger.log('END', l_scope);
        return;
    exception
        when others then
            wms_log.logger.log_error('Unexpected error occured', l_scope);
            raise;
    end get_jobs;

end process_admin;
/

