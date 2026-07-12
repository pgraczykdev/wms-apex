-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783879727552 stripComments:false  logicalFilePath:process_manager\wms_log_proc\object_grants\object_grants_as_grantor.wms_log_proc.package_spec.process_admin.to_wms_app.sql
-- sqlcl_snapshot src/database/wms_log_proc/object_grants/object_grants_as_grantor.wms_log_proc.package_spec.process_admin.to_wms_app.sql:null:fb2f3e3d94b858ec0c5ec9456943f89254c5b440:create

grant execute on wms_log_proc.process_admin to wms_app;

