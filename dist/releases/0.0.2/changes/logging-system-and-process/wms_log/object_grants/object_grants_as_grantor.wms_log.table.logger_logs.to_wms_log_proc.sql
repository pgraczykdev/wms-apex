-- liquibase formatted sql
-- changeset WMS_LOG:1783783097401 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_logs.to_wms_log_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_logs.to_wms_log_proc.sql:null:b5b98318e2f16deca9e26d4789431ea478d470d7:create

grant select on wms_log.logger_logs to wms_log_proc;

