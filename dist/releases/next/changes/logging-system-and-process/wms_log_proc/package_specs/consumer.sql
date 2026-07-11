-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783783097513 stripComments:false  logicalFilePath:logging-system-and-process\wms_log_proc\package_specs\consumer.sql
-- sqlcl_snapshot src/database/wms_log_proc/package_specs/consumer.sql:null:c860693125434f45067fb83cc346263c1d483633:create

create or replace package wms_log_proc.consumer as
    procedure run;

end consumer;
/

