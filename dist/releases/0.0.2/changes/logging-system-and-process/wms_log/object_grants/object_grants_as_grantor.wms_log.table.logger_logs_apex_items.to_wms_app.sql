-- liquibase formatted sql
-- changeset WMS_LOG:1783783097409 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_logs_apex_items.to_wms_app.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_logs_apex_items.to_wms_app.sql:null:3ec47c373ddb54467e03f0f4945ffed2e275d66e:create

grant select on wms_log.logger_logs_apex_items to wms_app;

