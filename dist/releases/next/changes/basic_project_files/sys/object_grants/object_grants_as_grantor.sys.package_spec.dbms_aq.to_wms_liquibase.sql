-- liquibase formatted sql
-- changeset SYS:1783767499735 stripComments:false  logicalFilePath:basic_project_files\sys\object_grants\object_grants_as_grantor.sys.package_spec.dbms_aq.to_wms_liquibase.sql
-- sqlcl_snapshot src/database/sys/object_grants/object_grants_as_grantor.sys.package_spec.dbms_aq.to_wms_liquibase.sql:null:3a99ea14dfb0d75448f5336b53bf6419495fc24b:create

grant execute on sys.dbms_aq to wms_liquibase with grant option;

