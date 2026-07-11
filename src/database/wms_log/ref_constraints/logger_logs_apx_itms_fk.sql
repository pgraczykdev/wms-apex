alter table wms_log.logger_logs_apex_items
    add constraint logger_logs_apx_itms_fk
        foreign key ( log_id )
            references wms_log.logger_logs ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"163b5d2a29ea117aac120c317c0142b3507a88ed","type":"REF_CONSTRAINT","name":"LOGGER_LOGS_APX_ITMS_FK","schemaName":"WMS_LOG","sxml":""}