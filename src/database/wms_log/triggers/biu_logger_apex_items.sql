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


-- sqlcl_snapshot {"hash":"06fe184d79e5275dbdf5e90690c35b4a9ccee38e","type":"TRIGGER","name":"BIU_LOGGER_APEX_ITEMS","schemaName":"WMS_LOG","sxml":""}