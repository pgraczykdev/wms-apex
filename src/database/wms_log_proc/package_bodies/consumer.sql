create or replace package body wms_log_proc.consumer as

    gc_global_prefix constant wms_log.logger_logs.scope%type := lower($$plsql_unit)
                                                                || '.';
    gc_wait_seconds  constant pls_integer := 5;

    procedure run is

        l_scope              wms_log.logger_logs.scope%type := gc_global_prefix || 'run';
        l_params             wms_log.logger.tab_param;
        l_dequeue_options    dbms_aq.dequeue_options_t;
        l_message_properties dbms_aq.message_properties_t;
        l_message_handle     raw(16);
        l_payload            log_message_t;
    begin
        wms_log.logger.log('START', l_scope, null, l_params);
        l_dequeue_options.wait := gc_wait_seconds;
        loop
            begin
                dbms_aq.dequeue(
                    queue_name         => wms_log_proc.constants.gc_queue_name,
                    dequeue_options    => l_dequeue_options,
                    message_properties => l_message_properties,
                    payload            => l_payload,
                    msgid              => l_message_handle
                );

                l_payload.process_msg();
            exception
                when wms_log_proc.exceptions.e_dequeue_timeout then
                    null;
                when others then
                    wms_log.logger.log_error('Unexpected error occured', l_scope, null, l_params);
            end;
        end loop;

        wms_log.logger.log('END', l_scope, null, l_params);
    end run;

end consumer;
/


-- sqlcl_snapshot {"hash":"eb73c9add72e45fb863951f98dc6ed5a2178f092","type":"PACKAGE_BODY","name":"CONSUMER","schemaName":"WMS_LOG_PROC","sxml":""}