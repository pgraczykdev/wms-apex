create sequence wms_log.logger_apx_items_seq minvalue 1 maxvalue 999999999999999999999999999 increment by 1 /* start with n */ cache 20
noorder nocycle nokeep noscale global;


-- sqlcl_snapshot {"hash":"447d44f5942554894891b394b39a226725a6e8ba","type":"SEQUENCE","name":"LOGGER_APX_ITEMS_SEQ","schemaName":"WMS_LOG","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WMS_LOG</SCHEMA>\n   <NAME>LOGGER_APX_ITEMS_SEQ</NAME>\n   \n   <INCREMENT>1</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>999999999999999999999999999</MAXVALUE>\n   <CACHE>20</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}