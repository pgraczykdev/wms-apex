-- liquibase formatted sql
-- changeset WMS_LOG:1783767499906 stripComments:false  logicalFilePath:basic_project_files\wms_log\tables\logger_prefs.sql
-- sqlcl_snapshot src/database/wms_log/tables/logger_prefs.sql:null:526f3d155ac16882e17935d4e05ea78bf1fe16e1:create

create table wms_log.logger_prefs (
    pref_name  varchar2(255 byte),
    pref_value varchar2(255 byte) not null enable,
    pref_type  varchar2(30 byte) not null enable
);

alter table wms_log.logger_prefs
    add constraint logger_prefs_ck1 check ( pref_name = upper(pref_name) ) enable;

alter table wms_log.logger_prefs
    add constraint logger_prefs_ck2 check ( pref_type = upper(pref_type) ) enable;

alter table wms_log.logger_prefs
    add constraint logger_prefs_pk primary key ( pref_type,
                                                 pref_name )
        using index enable;

