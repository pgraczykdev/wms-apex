-- liquibase formatted sql
-- changeset WMS_LOG:1783783097417 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.package_spec.logger.to_wms_app_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.package_spec.logger.to_wms_app_proc.sql:null:5b93c35db58ec6383f69a492e3271541eaee9b31:create

grant execute on wms_log.logger to wms_app_proc;

