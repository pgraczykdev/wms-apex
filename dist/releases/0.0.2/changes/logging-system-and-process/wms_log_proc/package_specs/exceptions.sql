-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783783097518 stripComments:false  logicalFilePath:logging-system-and-process\wms_log_proc\package_specs\exceptions.sql
-- sqlcl_snapshot src/database/wms_log_proc/package_specs/exceptions.sql:null:072d7d0da23f5d186b10487bbc58b4ff0115c12b:create

create or replace package wms_log_proc.exceptions as
    e_unknown_command exception;
    pragma exception_init ( e_unknown_command, -20001 );
    e_dequeue_timeout exception;
    pragma exception_init ( e_dequeue_timeout, -25228 );
end exceptions;
/

