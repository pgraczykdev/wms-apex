-- liquibase formatted sql
-- changeset WMS_LOG:1783767499864 stripComments:false  logicalFilePath:basic_project_files\wms_log\triggers\biu_logger_apex_items.sql
-- sqlcl_snapshot src/database/wms_log/triggers/biu_logger_apex_items.sql:null:cf31d2480a16c647bba50a139ddd4d4c19b6afbf:create

create or replace editionable trigger wms_log.biu_logger_apex_items before
    insert or update on wms_log.logger_logs_apex_items
    for each row
begin
  $if $$logger_no_op_install $then

    null;
  $else
    :new.id := logger_apx_items_seq.nextval;
  $end
end;
/

alter trigger wms_log.biu_logger_apex_items enable;

