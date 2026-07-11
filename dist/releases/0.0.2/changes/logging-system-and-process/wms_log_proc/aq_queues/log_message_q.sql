-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783783097469 stripComments:false  logicalFilePath:logging-system-and-process\wms_log_proc\aq_queues\log_message_q.sql
-- sqlcl_snapshot src/database/wms_log_proc/aq_queues/log_message_q.sql:null:97d9fe16e4c0130f282fbcc6f4e2c798babbffeb:create

begin
    sys.dbms_aqadm.create_queue(
        queue_name          => 'WMS_LOG_PROC.LOG_MESSAGE_Q',
        queue_table         => 'WMS_LOG_PROC.LOG_MESSAGE_QT',
        queue_type          => 0,
        max_retries         => 5,
        retry_delay         => 0,
        dependency_tracking => false
    );
end;
/

