-- liquibase formatted sql
-- changeset WMS_LOG:1783783097457 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.view.logger_logs_terse.to_wms_log_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.view.logger_logs_terse.to_wms_log_proc.sql:null:0e2ec39ec3851838bef1536903f361e489f4b994:create

grant select on wms_log.logger_logs_terse to wms_log_proc;

