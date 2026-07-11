-- liquibase formatted sql
-- changeset WMS_LOG:1783783097413 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_logs_apex_items.to_wms_log_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_logs_apex_items.to_wms_log_proc.sql:null:237e564590bb9fb633e11c5eb1a1080112c0bd19:create

grant select on wms_log.logger_logs_apex_items to wms_log_proc;

