-- liquibase formatted sql
-- changeset WMS_LOG:1783783097422 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_prefs.to_wms_log_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_prefs.to_wms_log_proc.sql:null:7633d329f6e2d58f378a0dc50082693f3d1e709c:create

grant select on wms_log.logger_prefs to wms_log_proc;

