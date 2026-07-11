create or replace package wms_log_proc.message as
    procedure lc (
        p_level                  in varchar2,
        p_client_id              in varchar2 default null,
        p_include_call_stack     in varchar2 default null,
        p_client_id_expire_hours in number default null
    );

end message;
/


-- sqlcl_snapshot {"hash":"35630f43a80f7c9a552366d5ed953aaa6cb17dd0","type":"PACKAGE_SPEC","name":"MESSAGE","schemaName":"WMS_LOG_PROC","sxml":""}