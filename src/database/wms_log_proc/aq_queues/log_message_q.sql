begin
    sys.dbms_aqadm.create_queue(
        queue_name          => 'WMS_LOG_PROC.LOG_MESSAGE_Q',
        queue_table         => 'WMS_LOG_PROC.LOG_MESSAGE_QT',
        queue_type          => 0,
        max_retries         => 5,
        retry_delay         => 0,
        dependency_tracking => false
    );
end;
/


-- sqlcl_snapshot {"hash":"97d9fe16e4c0130f282fbcc6f4e2c798babbffeb","type":"AQ_QUEUE","name":"LOG_MESSAGE_Q","schemaName":"WMS_LOG_PROC","sxml":"\n  <AQ_QUEUE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WMS_LOG_PROC</SCHEMA>\n   <NAME>LOG_MESSAGE_Q</NAME>\n   <QUEUE_TABLE>\n      <SCHEMA>WMS_LOG_PROC</SCHEMA>\n      <NAME>LOG_MESSAGE_QT</NAME>\n   </QUEUE_TABLE>\n   <MAX_RETRIES>5</MAX_RETRIES>\n   <RETRY_DELAY>0</RETRY_DELAY>\n   <RETENTION>0</RETENTION>\n</AQ_QUEUE>"}