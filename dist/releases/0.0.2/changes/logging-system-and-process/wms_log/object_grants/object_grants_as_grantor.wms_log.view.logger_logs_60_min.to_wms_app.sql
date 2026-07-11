-- liquibase formatted sql
-- changeset WMS_LOG:1783783097444 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.view.logger_logs_60_min.to_wms_app.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.view.logger_logs_60_min.to_wms_app.sql:null:d8ae6657c0a87885aea4c1fc01b0f20820e257ad:create

grant select on wms_log.logger_logs_60_min to wms_app;

