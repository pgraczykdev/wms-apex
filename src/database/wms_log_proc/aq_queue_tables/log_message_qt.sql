begin
    sys.dbms_aqadm.create_queue_table(
        queue_table        => 'WMS_LOG_PROC.LOG_MESSAGE_QT',
        queue_payload_type => 'WMS_LOG_PROC.LOG_MESSAGE_T',
        compatible         => '10.0.0'
    );
end;
/


-- sqlcl_snapshot {"hash":"b8449a6e29a5bab9a29e24e523240b86ddc2297a","type":"AQ_QUEUE_TABLE","name":"LOG_MESSAGE_QT","schemaName":"WMS_LOG_PROC","sxml":"\n  <AQ_QUEUE_TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WMS_LOG_PROC</SCHEMA>\n   <NAME>LOG_MESSAGE_QT</NAME>\n   <QUEUE_PAYLOAD_TYPE>\n      <SCHEMA>WMS_LOG_PROC</SCHEMA>\n      <NAME>LOG_MESSAGE_T</NAME>\n   </QUEUE_PAYLOAD_TYPE>\n   <SEGMENT_ATTRIBUTES>\n      <PCTFREE>10</PCTFREE>\n      <PCTUSED>40</PCTUSED>\n      <INITRANS>10</INITRANS>\n      <TABLESPACE>DATA</TABLESPACE>\n   </SEGMENT_ATTRIBUTES>\n   <SORT_LIST>ENQ_TIME</SORT_LIST>\n   <COMPATIBLE>10.0.0</COMPATIBLE>\n</AQ_QUEUE_TABLE>"}