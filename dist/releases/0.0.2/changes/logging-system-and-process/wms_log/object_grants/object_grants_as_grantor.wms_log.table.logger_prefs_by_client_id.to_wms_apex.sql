-- liquibase formatted sql
-- changeset WMS_LOG:1783783097424 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_prefs_by_client_id.to_wms_apex.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_prefs_by_client_id.to_wms_apex.sql:null:fa019c7eb607fc70f42039121650c388a9077dff:create

grant select on wms_log.logger_prefs_by_client_id to wms_apex;

