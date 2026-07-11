-- liquibase formatted sql
-- changeset WMS_LOG:1783783097446 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.view.logger_logs_60_min.to_wms_app_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.view.logger_logs_60_min.to_wms_app_proc.sql:null:19e1fc185187453381e4001b53c6a03f13a3a613:create

grant select on wms_log.logger_logs_60_min to wms_app_proc;

