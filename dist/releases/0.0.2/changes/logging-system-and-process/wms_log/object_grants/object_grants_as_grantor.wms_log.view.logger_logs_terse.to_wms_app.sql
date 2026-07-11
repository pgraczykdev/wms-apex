-- liquibase formatted sql
-- changeset WMS_LOG:1783783097452 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.view.logger_logs_terse.to_wms_app.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.view.logger_logs_terse.to_wms_app.sql:null:3b1e9bbb288c0723a87454949ec15ac29e582e87:create

grant select on wms_log.logger_logs_terse to wms_app;

