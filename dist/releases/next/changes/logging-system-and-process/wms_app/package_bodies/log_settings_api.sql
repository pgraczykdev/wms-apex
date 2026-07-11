-- liquibase formatted sql
-- changeset WMS_APP:1783783097387 stripComments:false  logicalFilePath:logging-system-and-process\wms_app\package_bodies\log_settings_api.sql
-- sqlcl_snapshot src/database/wms_app/package_bodies/log_settings_api.sql:null:0671f8015fd9abc0e5d338019deced9b0aab8dd0:create

create or replace package body wms_app.log_settings_api as

    gc_global_prefix constant wms_log.logger_logs.scope%type := lower($$plsql_unit)
                                                                || '.';

    procedure set_log_level (
        p_level in varchar2
    ) is

        l_scope  wms_log.logger_logs.scope%type := gc_global_prefix || 'set_log_level';
        l_params wms_log.logger.tab_param;
    begin
        wms_log.logger.append_param(l_params, 'p_level', p_level);
        wms_log.logger.log('START', l_scope, null, l_params);
        wms_log_proc.message.lc(p_level => p_level);
        apex_json.open_object();
        apex_json.write('success', true);
        apex_json.write('message', 'Request to change log level is sent');
        apex_json.close_object();
        wms_log.logger.log('END', l_scope, null, l_params);
    exception
        when others then
            wms_log.logger.log_error('Unexpected error occured', l_scope, null, l_params);
            apex_json.open_object();
            apex_json.write('error', true);
            apex_json.write('message', 'An error occured: ' || sqlcode);
            apex_json.close_object();
    end set_log_level;

end log_settings_api;
/

