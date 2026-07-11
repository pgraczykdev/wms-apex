-- liquibase formatted sql
-- changeset WMS_LOG:1783783097433 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\object_grants\object_grants_as_grantor.wms_log.view.logger_logs_5_min.to_wms_apex.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.view.logger_logs_5_min.to_wms_apex.sql:null:65550130d0846097c33ba45aaf3645c2d110f8b0:create

grant select on wms_log.logger_logs_5_min to wms_apex;

