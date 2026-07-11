-- liquibase formatted sql
-- changeset WMS_LOG:1783783097369 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_logs.to_wms_apex.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_logs.to_wms_apex.sql:null:74b9b5be7ebff271f6b9c6b6ba4e0042210ecf25:create

grant select on wms_log.logger_logs to wms_apex;

