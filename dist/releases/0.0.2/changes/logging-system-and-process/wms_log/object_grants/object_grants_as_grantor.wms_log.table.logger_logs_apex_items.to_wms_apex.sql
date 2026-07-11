-- liquibase formatted sql
-- changeset WMS_LOG:1783783097393 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_logs_apex_items.to_wms_apex.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_logs_apex_items.to_wms_apex.sql:null:e8be72cbdeab8152ca74016330cd253fad26020f:create

grant select on wms_log.logger_logs_apex_items to wms_apex;

