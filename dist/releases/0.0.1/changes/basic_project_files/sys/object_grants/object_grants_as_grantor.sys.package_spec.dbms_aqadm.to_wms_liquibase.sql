-- liquibase formatted sql
-- changeset SYS:1783767499761 stripComments:false  logicalFilePath:basic_project_files\sys\object_grants\object_grants_as_grantor.sys.package_spec.dbms_aqadm.to_wms_liquibase.sql
-- sqlcl_snapshot src/database/sys/object_grants/object_grants_as_grantor.sys.package_spec.dbms_aqadm.to_wms_liquibase.sql:null:c000c46e73cb1a9495d2c476ceeaac2eb4095df2:create

grant execute on sys.dbms_aqadm to wms_liquibase with grant option;

