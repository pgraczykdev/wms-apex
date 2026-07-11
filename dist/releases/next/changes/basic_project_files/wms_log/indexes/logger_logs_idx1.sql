-- liquibase formatted sql
-- changeset WMS_LOG:1783767499894 stripComments:false  logicalFilePath:basic_project_files\wms_log\indexes\logger_logs_idx1.sql
-- sqlcl_snapshot src/database/wms_log/indexes/logger_logs_idx1.sql:null:f2fa4c5c29379a2e7a445464f4c40e43784454a6:create

create index wms_log.logger_logs_idx1 on
    wms_log.logger_logs (
        time_stamp,
        logger_level
    );

