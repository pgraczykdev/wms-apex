create or replace type body wms_log_proc.log_level_change_message_t as overriding
    member procedure process_msg is
    begin
        wms_log.logger.set_level(
            p_level                  => self.new_level,
            p_client_id              => self.client_id,
            p_include_call_stack     => self.include_call_stack,
            p_client_id_expire_hours => self.p_client_id_expire_hours
        );
    end process_msg;

end;
/


-- sqlcl_snapshot {"hash":"b90cd3416fa85117aa2c98c63a14550abb84800a","type":"TYPE_BODY","name":"LOG_LEVEL_CHANGE_MESSAGE_T","schemaName":"WMS_LOG_PROC","sxml":""}