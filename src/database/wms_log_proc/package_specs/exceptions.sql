create or replace package wms_log_proc.exceptions as
    e_unknown_command exception;
    pragma exception_init ( e_unknown_command, -20001 );
    e_dequeue_timeout exception;
    pragma exception_init ( e_dequeue_timeout, -25228 );
end exceptions;
/


-- sqlcl_snapshot {"hash":"072d7d0da23f5d186b10487bbc58b4ff0115c12b","type":"PACKAGE_SPEC","name":"EXCEPTIONS","schemaName":"WMS_LOG_PROC","sxml":""}