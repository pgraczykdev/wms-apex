-- liquibase formatted sql
-- changeset WMS_LOG:1783783097462 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\sequences\logger_logs_seq.sql
-- sqlcl_snapshot src/database/wms_log/sequences/logger_logs_seq.sql:null:8f09f4d4978a68f90f8cf2009ba5bacb8c630410:create

create sequence wms_log.logger_logs_seq minvalue 1 maxvalue 999999999999999999999999999 increment by 1 /* start with n */ cache 20 noorder
nocycle nokeep noscale global;

