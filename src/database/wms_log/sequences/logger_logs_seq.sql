create sequence wms_log.logger_logs_seq minvalue 1 maxvalue 999999999999999999999999999 increment by 1 /* start with n */ cache 20 noorder
nocycle nokeep noscale global;


-- sqlcl_snapshot {"hash":"8f09f4d4978a68f90f8cf2009ba5bacb8c630410","type":"SEQUENCE","name":"LOGGER_LOGS_SEQ","schemaName":"WMS_LOG","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WMS_LOG</SCHEMA>\n   <NAME>LOGGER_LOGS_SEQ</NAME>\n   \n   <INCREMENT>1</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>999999999999999999999999999</MAXVALUE>\n   <CACHE>20</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}