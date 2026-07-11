comment on table wms_log.logger_prefs_by_client_id is
    'Client specific logger levels. Only active client_ids/logger_levels will be maintained in this table';

comment on column wms_log.logger_prefs_by_client_id.client_id is
    'Client identifier';

comment on column wms_log.logger_prefs_by_client_id.created_date is
    'Date that entry was created on';

comment on column wms_log.logger_prefs_by_client_id.expiry_date is
    'After the given expiry date the logger_level will be disabled for the specific client_id. Unless sepcifically removed from this table a job will clean up old entries'
    ;

comment on column wms_log.logger_prefs_by_client_id.include_call_stack is
    'Include call stack in logging';

comment on column wms_log.logger_prefs_by_client_id.logger_level is
    'Logger level. Must be OFF, PERMANENT, ERROR, WARNING, INFORMATION, DEBUG, TIMING';


-- sqlcl_snapshot {"hash":"dbb8b4e37be3ec9b9da89a6ab246d82a45013ce9","type":"COMMENT","name":"logger_prefs_by_client_id","schemaName":"wms_log","sxml":""}