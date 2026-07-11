create index wms_log.logger_apex_items_idx1 on
    wms_log.logger_logs_apex_items (
        log_id
    );


-- sqlcl_snapshot {"hash":"9b078fb96887c316b494608dc33095744b433fbc","type":"INDEX","name":"LOGGER_APEX_ITEMS_IDX1","schemaName":"WMS_LOG","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WMS_LOG</SCHEMA>\n   <NAME>LOGGER_APEX_ITEMS_IDX1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WMS_LOG</SCHEMA>\n         <NAME>LOGGER_LOGS_APEX_ITEMS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>LOG_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}