-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783879727551 stripComments:false  logicalFilePath:process_manager\wms_log_proc\object_grants\object_grants_as_grantor.wms_log_proc.package_spec.constants.to_wms_app.sql
-- sqlcl_snapshot src/database/wms_log_proc/object_grants/object_grants_as_grantor.wms_log_proc.package_spec.constants.to_wms_app.sql:null:1465fa74aa5a497d9b56739f2dfed8872c13add0:create

grant execute on wms_log_proc.constants to wms_app;

