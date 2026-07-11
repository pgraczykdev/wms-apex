create or replace package wms_app.log_settings_api as
    procedure set_log_level (
        p_level in varchar2
    );

end log_settings_api;
/


-- sqlcl_snapshot {"hash":"a27495b81f1af4b44be7a2cb32d468adfd5a7be0","type":"PACKAGE_SPEC","name":"LOG_SETTINGS_API","schemaName":"WMS_APP","sxml":""}