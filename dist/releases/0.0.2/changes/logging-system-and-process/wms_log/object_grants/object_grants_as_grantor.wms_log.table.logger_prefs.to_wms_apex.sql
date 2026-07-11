-- liquibase formatted sql
-- changeset WMS_LOG:1783783097415 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_prefs.to_wms_apex.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_prefs.to_wms_apex.sql:null:1554a1b4e0cd432b90e52c09d7a99a11faefb85e:create

grant select on wms_log.logger_prefs to wms_apex;

