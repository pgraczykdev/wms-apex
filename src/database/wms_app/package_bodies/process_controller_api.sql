create or replace package body wms_app.process_controller_api as

    gc_global_prefix constant wms_log.logger_logs.scope%type := lower($$plsql_unit)
                                                                || '.';

    procedure run_process (
        p_job_name in wms_log_proc.constants.gc_log_process_name%type
    ) is

        l_scope  wms_log.logger_logs.scope%type := gc_global_prefix || 'run_process';
        l_params wms_log.logger.tab_param;
    begin
        wms_log.logger.append_param(l_params, 'p_job_name', p_job_name);
        wms_log.logger.log('START', l_scope, null, l_params);
        if p_job_name != wms_log_proc.constants.gc_log_process_name then
            apex_json.open_object();
            apex_json.write('error', true);
            apex_json.write('message', 'Unknown process: ' || p_job_name);
            apex_json.close_object();
            wms_log.logger.log('END', l_scope, null, l_params);
            return;
        end if;

        wms_log_proc.process_admin.run_job();
        apex_json.open_object();
        apex_json.write('success', true);
        apex_json.write('message', 'Process '
                                   || p_job_name
                                   || ' was started');
        apex_json.close_object();
        wms_log.logger.log('END', l_scope, null, l_params);
    exception
        when others then
            wms_log.logger.log_error('Unexpected error occured', l_scope, null, l_params);
            apex_json.open_object();
            apex_json.write('error', true);
            apex_json.write('message', 'An error occured: ' || sqlcode);
            apex_json.close_object();
    end run_process;

    procedure stop_process (
        p_job_name in wms_log_proc.constants.gc_log_process_name%type
    ) is

        l_scope  wms_log.logger_logs.scope%type := gc_global_prefix || 'stop_process';
        l_params wms_log.logger.tab_param;
    begin
        wms_log.logger.append_param(l_params, 'p_job_name', p_job_name);
        wms_log.logger.log('START', l_scope, null, l_params);
        if p_job_name != wms_log_proc.constants.gc_log_process_name then
            apex_json.open_object();
            apex_json.write('error', true);
            apex_json.write('message', 'Unknown process: ' || p_job_name);
            apex_json.close_object();
            wms_log.logger.log('END', l_scope, null, l_params);
            return;
        end if;

        wms_log_proc.process_admin.stop_job();
        apex_json.open_object();
        apex_json.write('success', true);
        apex_json.write('message', 'Process '
                                   || p_job_name
                                   || ' was stopped');
        apex_json.close_object();
        wms_log.logger.log('END', l_scope, null, l_params);
    exception
        when others then
            wms_log.logger.log_error('Unexpected error occured', l_scope, null, l_params);
            apex_json.open_object();
            apex_json.write('error', true);
            apex_json.write('message', 'An error occured: ' || sqlcode);
            apex_json.close_object();
    end stop_process;

    function get_processes return processes_tt
        pipelined
    is
        l_scope     wms_log.logger_logs.scope%type := gc_global_prefix || 'get_processes';
        l_processes processes_tt;
    begin
        wms_log.logger.log('START', l_scope);
        select
            owner,
            job_name,
            full_job_name,
            enabled,
            state,
            last_start_date,
            next_run_date,
            run_count,
            failure_count
        bulk collect
        into l_processes
        from
            table ( wms_log_proc.process_admin.get_jobs() );

        for i in 1..l_processes.count loop
            pipe row ( l_processes(i) );
        end loop;

        wms_log.logger.log('END', l_scope);
        return;
    exception
        when others then
            wms_log.logger.log_error('Unexpected error occured', l_scope);
            raise;
    end get_processes;

end process_controller_api;
/


-- sqlcl_snapshot {"hash":"8293a2c358d317be3410718282d3fa9f7bfb10d9","type":"PACKAGE_BODY","name":"PROCESS_CONTROLLER_API","schemaName":"WMS_APP","sxml":""}