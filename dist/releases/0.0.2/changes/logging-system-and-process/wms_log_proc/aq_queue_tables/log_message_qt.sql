-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783783097464 stripComments:false  logicalFilePath:logging-system-and-process\wms_log_proc\aq_queue_tables\log_message_qt.sql
-- sqlcl_snapshot src/database/wms_log_proc/aq_queue_tables/log_message_qt.sql:null:b8449a6e29a5bab9a29e24e523240b86ddc2297a:create

begin
    sys.dbms_aqadm.create_queue_table(
        queue_table        => 'WMS_LOG_PROC.LOG_MESSAGE_QT',
        queue_payload_type => 'WMS_LOG_PROC.LOG_MESSAGE_T',
        compatible         => '10.0.0'
    );
end;
/

