-- liquibase formatted sql
-- changeset WMS_LOG:1783783097430 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_prefs_by_client_id.to_wms_log_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_prefs_by_client_id.to_wms_log_proc.sql:null:65cfb28070edb05596a106b5b60067a017023c25:create

grant select on wms_log.logger_prefs_by_client_id to wms_log_proc;

