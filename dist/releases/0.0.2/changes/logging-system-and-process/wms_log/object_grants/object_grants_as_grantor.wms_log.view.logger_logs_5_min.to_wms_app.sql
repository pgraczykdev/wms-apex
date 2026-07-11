-- liquibase formatted sql
-- changeset WMS_LOG:1783783097435 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.view.logger_logs_5_min.to_wms_app.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.view.logger_logs_5_min.to_wms_app.sql:null:9d73ad81dbc20310011824d8d412be93be77fcef:create

grant select on wms_log.logger_logs_5_min to wms_app;

