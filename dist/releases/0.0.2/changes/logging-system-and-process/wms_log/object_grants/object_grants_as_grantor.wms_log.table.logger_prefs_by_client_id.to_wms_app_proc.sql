-- liquibase formatted sql
-- changeset WMS_LOG:1783783097427 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_prefs_by_client_id.to_wms_app_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_prefs_by_client_id.to_wms_app_proc.sql:null:cf34149c27342c277ec799323f73b4ef35521db0:create

grant select on wms_log.logger_prefs_by_client_id to wms_app_proc;

