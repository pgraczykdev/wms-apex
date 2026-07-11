-- liquibase formatted sql
-- changeset WMS_LOG:1783783097411 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_logs_apex_items.to_wms_app_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_logs_apex_items.to_wms_app_proc.sql:null:70bb2e4574437eabd7d1fe2783a58c70b66e1cfb:create

grant select on wms_log.logger_logs_apex_items to wms_app_proc;

