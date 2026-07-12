-- liquibase formatted sql
-- changeset WMS_APP:1783879727507 stripComments:false  logicalFilePath:process_manager\wms_app\object_grants\object_grants_as_grantor.wms_app.package_spec.process_controller_api.to_wms_apex.sql
-- sqlcl_snapshot src/database/wms_app/object_grants/object_grants_as_grantor.wms_app.package_spec.process_controller_api.to_wms_apex.sql:null:6d7d04c0d79688fdaaae4a3ef5d2ddb33a080b4c:create

grant execute on wms_app.process_controller_api to wms_apex;

