-- liquibase formatted sql
-- changeset WMS_LOG:1783783097442 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.view.logger_logs_60_min.to_wms_apex.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.view.logger_logs_60_min.to_wms_apex.sql:null:5da783e3b1f5a46493f36a1f8262c56694c91097:create

grant select on wms_log.logger_logs_60_min to wms_apex;

