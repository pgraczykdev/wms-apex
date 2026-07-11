-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783783097471 stripComments:false  logicalFilePath:logging-system-and-process\wms_log_proc\object_grants\object_grants_as_grantor.wms_log_proc.package_spec.message.to_wms_app.sql
-- sqlcl_snapshot src/database/wms_log_proc/object_grants/object_grants_as_grantor.wms_log_proc.package_spec.message.to_wms_app.sql:null:fe7528b6966b08e972d65d82ebad81dd4924e7ec:create

grant execute on wms_log_proc.message to wms_app;

