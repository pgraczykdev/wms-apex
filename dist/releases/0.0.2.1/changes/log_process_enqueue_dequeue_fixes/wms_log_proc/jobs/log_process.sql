-- liquibase formatted sql
-- changeset WMS_LOG_PROC:1783791938495 stripComments:false  logicalFilePath:log_process_enqueue_dequeue_fixes\wms_log_proc\jobs\log_process.sql
-- sqlcl_snapshot src/database/wms_log_proc/jobs/log_process.sql:02c4597af453f1b7dd295c087b59bbd788ec7ada:208dbf717e2a7727855ecd358fd5624d82cdd062:alter

begin
    dbms_scheduler.disable('WMS_LOG_PROC.LOG_PROCESS');
    dbms_scheduler.set_attribute(
        name      => 'WMS_LOG_PROC.LOG_PROCESS',
        attribute => 'repeat_interval',
        value     => 'FREQ=SECONDLY'
    );

    dbms_scheduler.set_attribute(
        name      => 'WMS_LOG_PROC.LOG_PROCESS',
        attribute => 'start_date',
        value     => timestamp '2026-07-11 19:40:10.615784'
    );

    dbms_scheduler.enable('WMS_LOG_PROC.LOG_PROCESS');
end;
/

