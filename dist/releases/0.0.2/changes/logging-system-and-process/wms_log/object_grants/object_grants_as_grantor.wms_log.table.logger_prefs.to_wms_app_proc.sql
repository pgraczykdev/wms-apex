-- liquibase formatted sql
-- changeset WMS_LOG:1783783097372 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_prefs.to_wms_app_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_prefs.to_wms_app_proc.sql:null:39bd03be2640b3163ddde0a72f8a3b09c0572ac7:create

grant select on wms_log.logger_prefs to wms_app_proc;

