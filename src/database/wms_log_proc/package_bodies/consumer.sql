create or replace package body wms_log_proc.consumer as

    gc_global_prefix constant wms_log.logger_logs.scope%type := lower($$plsql_unit)
                                                                || '.';

    procedure run is

        l_scope              wms_log.logger_logs.scope%type := gc_global_prefix || 'run';
        l_params             wms_log.logger.tab_param;
        l_dequeue_options    dbms_aq.dequeue_options_t;
        l_message_properties dbms_aq.message_properties_t;
        l_message_handle     raw(16);
        l_payload            log_message_t;
    begin
        wms_log.logger.log('START', l_scope, null, l_params);
        l_dequeue_options.wait := sys.dbms_aq.no_wait;
        l_dequeue_options.navigation := sys.dbms_aq.next_message;
        loop
            << dequeue_loop >> begin
                sys.dbms_aq.dequeue(
                    queue_name         => wms_log_proc.constants.gc_queue_name,
                    dequeue_options    => l_dequeue_options,
                    message_properties => l_message_properties,
                    payload            => l_payload,
                    msgid              => l_message_handle
                );

                l_payload.process_msg();
                commit;
            exception
                when wms_log_proc.exceptions.e_dequeue_timeout then
                    exit;
                when others then
                    wms_log.logger.log_error('Unexpected error occured, msgid=' || rawtohex(l_message_handle),
                                             l_scope,
                                             null,
                                             l_params);

                    rollback;
            end;
        end loop dequeue_loop;

        wms_log.logger.log('END', l_scope, null, l_params);
    end run;

end consumer;
/


-- sqlcl_snapshot {"hash":"0ac4968f1cebb1f1d962d6d012521c0dc382148a","type":"PACKAGE_BODY","name":"CONSUMER","schemaName":"WMS_LOG_PROC","sxml":""}