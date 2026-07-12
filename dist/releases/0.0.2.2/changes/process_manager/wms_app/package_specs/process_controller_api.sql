-- liquibase formatted sql
-- changeset WMS_APP:1783879727508 stripComments:false  logicalFilePath:process_manager\wms_app\package_specs\process_controller_api.sql
-- sqlcl_snapshot src/database/wms_app/package_specs/process_controller_api.sql:null:262947b913970cb0ee58c5ef6f6b0084ad60a54b:create

create or replace package wms_app.process_controller_api as
    type processes_tt is
        table of wms_log_proc.process_admin.process_job_rt;
    procedure run_process (
        p_job_name in wms_log_proc.constants.gc_log_process_name%type
    );

    procedure stop_process (
        p_job_name in wms_log_proc.constants.gc_log_process_name%type
    );

    function get_processes return processes_tt
        pipelined;

end process_controller_api;
/

