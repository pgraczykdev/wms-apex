-- liquibase formatted sql
-- changeset WMS_LOG:1783783097399 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.package_spec.logger.to_wms_log_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.package_spec.logger.to_wms_log_proc.sql:null:d762d9d637c548a07c891503c2636e74c41358d5:create

grant execute on wms_log.logger to wms_log_proc;

