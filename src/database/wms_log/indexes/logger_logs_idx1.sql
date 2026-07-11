create index wms_log.logger_logs_idx1 on
    wms_log.logger_logs (
        time_stamp,
        logger_level
    );


-- sqlcl_snapshot {"hash":"f2fa4c5c29379a2e7a445464f4c40e43784454a6","type":"INDEX","name":"LOGGER_LOGS_IDX1","schemaName":"WMS_LOG","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WMS_LOG</SCHEMA>\n   <NAME>LOGGER_LOGS_IDX1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WMS_LOG</SCHEMA>\n         <NAME>LOGGER_LOGS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>TIME_STAMP</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>LOGGER_LEVEL</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}