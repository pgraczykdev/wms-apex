-- liquibase formatted sql
-- changeset WMS_LOG:1783767499892 stripComments:false  logicalFilePath:basic_project_files\wms_log\ref_constraints\logger_logs_apx_itms_fk.sql
-- sqlcl_snapshot src/database/wms_log/ref_constraints/logger_logs_apx_itms_fk.sql:null:163b5d2a29ea117aac120c317c0142b3507a88ed:create

alter table wms_log.logger_logs_apex_items
    add constraint logger_logs_apx_itms_fk
        foreign key ( log_id )
            references wms_log.logger_logs ( id )
                on delete cascade
        enable;

