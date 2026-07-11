-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783791938480 stripComments:false  logicalFilePath:log_process_enqueue_dequeue_fixes\wms_log_proc\package_bodies\message.sql
-- sqlcl_snapshot src/database/wms_log_proc/package_bodies/message.sql:1962a9cca83b128aa8057911dd197bdad7365724:c8c6491ab311a1a8d48325f1961f45ec102f3cda:alter

create or replace package body wms_log_proc.message as

    gc_global_prefix constant wms_log.logger_logs.scope%type := lower($$plsql_unit)
                                                                || '.';

    procedure enqueue_message (
        p_message in log_message_t
    ) is

        l_scope              wms_log.logger_logs.scope%type := gc_global_prefix || 'enqueue_message';
        l_params             wms_log.logger.tab_param;
        l_enqueue_options    dbms_aq.enqueue_options_t;
        l_message_properties dbms_aq.message_properties_t;
        l_message_handle     raw(16);
    begin
        wms_log.logger.append_param(l_params, 'p_message.command', p_message.command);
        wms_log.logger.log('START', l_scope, null, l_params);
        dbms_aq.enqueue(
            queue_name         => wms_log_proc.constants.gc_queue_name,
            enqueue_options    => l_enqueue_options,
            message_properties => l_message_properties,
            payload            => p_message,
            msgid              => l_message_handle
        );

        wms_log.logger.log('END', l_scope, null, l_params);
    exception
        when others then
            wms_log.logger.log_error('Unexpected error occured', l_scope, null, l_params);
            raise;
    end enqueue_message;

    procedure lc (
        p_level                  in varchar2,
        p_client_id              in varchar2 default null,
        p_include_call_stack     in varchar2 default null,
        p_client_id_expire_hours in number default null
    ) is

        l_scope   wms_log.logger_logs.scope%type := gc_global_prefix || 'lc';
        l_params  wms_log.logger.tab_param;
        l_message log_level_change_message_t;
    begin
        wms_log.logger.append_param(l_params, 'p_level', p_level);
        wms_log.logger.append_param(l_params, 'p_client_id', p_client_id);
        wms_log.logger.append_param(l_params, 'p_include_call_stack', p_include_call_stack);
        wms_log.logger.append_param(l_params, 'p_client_id_expire_hours', p_client_id_expire_hours);
        wms_log.logger.log('START', l_scope, null, l_params);
        l_message := log_level_change_message_t(
            message_id               => sys_guid(),
            enqueued_at              => systimestamp,
            enqueued_by              => sys_context('userenv', 'session_user'),
            command                  => wms_log_proc.constants.gc_cmd_log_level_change,
            new_level                => p_level,
            client_id                => p_client_id,
            include_call_stack       => p_include_call_stack,
            p_client_id_expire_hours => p_client_id_expire_hours
        );

        enqueue_message(l_message);
        wms_log.logger.log('END', l_scope, null, l_params);
    exception
        when others then
            wms_log.logger.log_error('Unexpected error occured', l_scope, null, l_params);
            raise;
    end lc;

end message;
/

