-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783783097525 stripComments:false  logicalFilePath:logging-system-and-process\wms_log_proc\type_bodies\log_level_change_message_t.sql
-- sqlcl_snapshot src/database/wms_log_proc/type_bodies/log_level_change_message_t.sql:null:b90cd3416fa85117aa2c98c63a14550abb84800a:create

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

