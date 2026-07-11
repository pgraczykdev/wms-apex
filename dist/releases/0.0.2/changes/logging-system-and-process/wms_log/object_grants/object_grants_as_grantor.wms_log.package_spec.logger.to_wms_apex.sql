-- liquibase formatted sql
-- changeset WMS_LOG:1783783097407 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.package_spec.logger.to_wms_apex.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.package_spec.logger.to_wms_apex.sql:null:21c5121e82adbc950722d9215d0429619da4a185:create

grant execute on wms_log.logger to wms_apex;

