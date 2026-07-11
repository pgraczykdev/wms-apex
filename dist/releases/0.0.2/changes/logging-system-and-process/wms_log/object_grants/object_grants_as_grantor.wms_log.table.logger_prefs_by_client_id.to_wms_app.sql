-- liquibase formatted sql
-- changeset WMS_LOG:1783783097428 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_prefs_by_client_id.to_wms_app.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_prefs_by_client_id.to_wms_app.sql:null:00b40e0537e91bd17e694131d8045b25790539a3:create

grant select on wms_log.logger_prefs_by_client_id to wms_app;

