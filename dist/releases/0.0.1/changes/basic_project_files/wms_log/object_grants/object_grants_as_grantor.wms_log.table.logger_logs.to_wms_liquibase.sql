-- liquibase formatted sql
-- changeset WMS_LOG:1783767499733 stripComments:false  logicalFilePath:basic_project_files\wms_log\object_grants\object_grants_as_grantor.wms_log.table.logger_logs.to_wms_liquibase.sql
-- sqlcl_snapshot src/database/wms_log/object_grants/object_grants_as_grantor.wms_log.table.logger_logs.to_wms_liquibase.sql:null:e749a0bb248edfd8c194fcdbe5fe9404891801c3:create

grant select on wms_log.logger_logs to wms_liquibase;

