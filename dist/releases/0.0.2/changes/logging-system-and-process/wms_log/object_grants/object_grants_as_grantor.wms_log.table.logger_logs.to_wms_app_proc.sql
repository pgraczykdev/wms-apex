-- liquibase formatted sql
-- changeset WMS_LOG:1783783097404 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_logs.to_wms_app_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_logs.to_wms_app_proc.sql:null:9f069e35597a1f30439f9e2ae270814b56df259e:create

grant select on wms_log.logger_logs to wms_app_proc;

