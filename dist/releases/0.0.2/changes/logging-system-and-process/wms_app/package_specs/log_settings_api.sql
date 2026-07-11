-- liquibase formatted sql
-- changeset WMS_APP:1783783097397 stripComments:false  logicalFilePath:logging-system-and-process\wms_app\package_specs\log_settings_api.sql
-- sqlcl_snapshot src/database/wms_app/package_specs/log_settings_api.sql:null:a27495b81f1af4b44be7a2cb32d468adfd5a7be0:create

create or replace package wms_app.log_settings_api as
    procedure set_log_level (
        p_level in varchar2
    );

end log_settings_api;
/

