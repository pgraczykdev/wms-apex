-- liquibase formatted sql
-- changeset WMS_LOG:1783783097377 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_logs.to_wms_app.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_logs.to_wms_app.sql:null:fee1aadb8dcef85ca709e7b3e1b097fbb987a018:create

grant select on wms_log.logger_logs to wms_app;

