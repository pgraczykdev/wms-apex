-- liquibase formatted sql
-- changeset WMS_LOG:1783783097421 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_prefs.to_wms_app.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_prefs.to_wms_app.sql:null:e8059ffbb46970838f200abae515be30c7ac0e93:create

grant select on wms_log.logger_prefs to wms_app;

