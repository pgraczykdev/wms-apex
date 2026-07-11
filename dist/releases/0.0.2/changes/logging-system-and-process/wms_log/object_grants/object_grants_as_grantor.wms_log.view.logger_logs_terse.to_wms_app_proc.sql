-- liquibase formatted sql
-- changeset WMS_LOG:1783783097455 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.view.logger_logs_terse.to_wms_app_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.view.logger_logs_terse.to_wms_app_proc.sql:null:bbc04aa83e03e9abe98e7ef6f91f50ff8abd5dfb:create

grant select on wms_log.logger_logs_terse to wms_app_proc;

