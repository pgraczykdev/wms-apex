-- liquibase formatted sql
-- changeset WMS_LOG:1783767499891 stripComments:false  logicalFilePath:basic_project_files\wms_log\indexes\logger_apex_items_idx1.sql
-- sqlcl_snapshot src/database/wms_log/indexes/logger_apex_items_idx1.sql:null:9b078fb96887c316b494608dc33095744b433fbc:create

create index wms_log.logger_apex_items_idx1 on
    wms_log.logger_logs_apex_items (
        log_id
    );

