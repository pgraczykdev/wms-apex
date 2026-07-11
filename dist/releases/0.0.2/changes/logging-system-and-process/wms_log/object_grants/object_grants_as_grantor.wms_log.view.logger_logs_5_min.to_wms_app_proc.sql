-- liquibase formatted sql
-- changeset WMS_LOG:1783783097438 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.view.logger_logs_5_min.to_wms_app_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.view.logger_logs_5_min.to_wms_app_proc.sql:null:3919b0d62319d00a623435b0c80bbcdc4fdc6d4c:create

grant select on wms_log.logger_logs_5_min to wms_app_proc;

