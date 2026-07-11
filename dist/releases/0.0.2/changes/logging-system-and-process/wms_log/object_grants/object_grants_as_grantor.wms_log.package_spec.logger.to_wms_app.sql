-- liquibase formatted sql
-- changeset WMS_LOG:1783783097391 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.package_spec.logger.to_wms_app.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.package_spec.logger.to_wms_app.sql:null:3c4911202f5dbb25205b7ce06370f2b5dfe2663d:create

grant execute on wms_log.logger to wms_app;

