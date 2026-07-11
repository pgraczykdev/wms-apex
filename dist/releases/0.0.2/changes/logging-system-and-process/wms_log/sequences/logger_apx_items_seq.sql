-- liquibase formatted sql
-- changeset WMS_LOG:1783783097459 stripComments:false  logicalFilePath:logging-system-and-process\wms_log\sequences\logger_apx_items_seq.sql
-- sqlcl_snapshot src/database/wms_log/sequences/logger_apx_items_seq.sql:null:447d44f5942554894891b394b39a226725a6e8ba:create

create sequence wms_log.logger_apx_items_seq minvalue 1 maxvalue 999999999999999999999999999 increment by 1 /* start with n */ cache 20
noorder nocycle nokeep noscale global;

