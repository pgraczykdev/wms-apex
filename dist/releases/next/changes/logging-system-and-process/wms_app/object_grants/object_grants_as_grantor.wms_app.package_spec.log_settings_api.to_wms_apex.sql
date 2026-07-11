-- liquibase formatted sql
-- changeset WMS_APP:1783783097374 stripComments:false  logicalFilePath:logging-system-and-process\wms_app\object_grants\object_grants_as_grantor.wms_app.package_spec.log_settings_api.to_wms_apex.sql
-- sqlcl_snapshot src/database/wms_app/object_grants/object_grants_as_grantor.wms_app.package_spec.log_settings_api.to_wms_apex.sql:null:f3f5f1ec0c1cab1de03e9fcd27d4fbdafb76c896:create

grant execute on wms_app.log_settings_api to wms_apex;

