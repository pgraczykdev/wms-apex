-- liquibase formatted sql
-- changeset WMS_LOG:1783783097440 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.view.logger_logs_5_min.to_wms_log_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.view.logger_logs_5_min.to_wms_log_proc.sql:null:e7d572db09a8127a7770a544ee974e73c73b2350:create

grant select on wms_log.logger_logs_5_min to wms_log_proc;

