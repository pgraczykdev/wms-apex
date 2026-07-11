-- liquibase formatted sql
-- changeset WMS_LOG:1783783097450 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.view.logger_logs_terse.to_wms_apex.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.view.logger_logs_terse.to_wms_apex.sql:null:9d66c2be58f5c256c6c124daa2de1e5601486710:create

grant select on wms_log.logger_logs_terse to wms_apex;

