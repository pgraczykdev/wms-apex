SET VERIFY OFF
DEFINE password = &1

CREATE USER WMS_LOG_PROC IDENTIFIED BY "&password"
   DEFAULT TABLESPACE users
   TEMPORARY TABLESPACE temp
   QUOTA UNLIMITED ON users;

GRANT CREATE SESSION TO WMS_LOG_PROC;
GRANT EXECUTE ON DBMS_AQ TO WMS_LOG_PROC;

-- Cross-schema AQ object creation (WMS_LIQUIBASE creating INTO WMS_LOG_PROC)
-- is unreliable even with AQ_ADMINISTRATOR_ROLE -- CREATE_QUEUE_TABLE builds
-- hidden supporting objects (IOT, trigger) that are schema-context-sensitive.
-- So WMS_LOG_PROC creates its own queue table/queue directly, same as the
-- existing exception for runtime EXECUTE ON DBMS_AQ above.
GRANT CREATE TABLE TO WMS_LOG_PROC;
GRANT EXECUTE ON DBMS_AQADM TO WMS_LOG_PROC;

UNDEFINE password
