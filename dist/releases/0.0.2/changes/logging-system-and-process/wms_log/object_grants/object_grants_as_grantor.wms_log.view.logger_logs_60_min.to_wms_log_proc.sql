-- liquibase formatted sql
-- changeset WMS_LOG:1783783097448 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.view.logger_logs_60_min.to_wms_log_proc.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.view.logger_logs_60_min.to_wms_log_proc.sql:null:c173426433edd6925c1ec766a0c8e7418c3db560:create

grant select on wms_log.logger_logs_60_min to wms_log_proc;

