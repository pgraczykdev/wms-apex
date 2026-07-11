create table wms_log.logger_prefs_by_client_id (
    client_id          varchar2(64 byte) not null enable,
    logger_level       varchar2(20 byte) not null enable,
    include_call_stack varchar2(5 byte) not null enable,
    created_date       date default sysdate not null enable,
    expiry_date        date not null enable
);

alter table wms_log.logger_prefs_by_client_id
    add constraint logger_prefs_by_client_id_ck1
        check ( logger_level in ( 'OFF', 'PERMANENT', 'ERROR', 'WARNING', 'INFORMATION',
                                  'DEBUG', 'TIMING', 'APEX', 'SYS_CONTEXT' ) ) enable;

alter table wms_log.logger_prefs_by_client_id
    add constraint logger_prefs_by_client_id_ck2 check ( expiry_date >= created_date ) enable;

alter table wms_log.logger_prefs_by_client_id
    add constraint logger_prefs_by_client_id_ck3
        check ( include_call_stack in ( 'TRUE', 'FALSE' ) ) enable;

alter table wms_log.logger_prefs_by_client_id
    add constraint logger_prefs_by_client_id_pk primary key ( client_id )
        using index enable;


-- sqlcl_snapshot {"hash":"a0610a8ab6c740a77c8f4faf10e754a7d559e819","type":"TABLE","name":"LOGGER_PREFS_BY_CLIENT_ID","schemaName":"WMS_LOG","sxml":"\n  <TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WMS_LOG</SCHEMA>\n   <NAME>LOGGER_PREFS_BY_CLIENT_ID</NAME>\n   <RELATIONAL_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CLIENT_ID</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>64</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>LOGGER_LEVEL</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>20</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>INCLUDE_CALL_STACK</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>5</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>CREATED_DATE</NAME>\n            <DATATYPE>DATE</DATATYPE>\n            <DEFAULT>sysdate</DEFAULT>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>EXPIRY_DATE</NAME>\n            <DATATYPE>DATE</DATATYPE>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n      </COL_LIST>\n      <CHECK_CONSTRAINT_LIST>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>LOGGER_PREFS_BY_CLIENT_ID_CK1</NAME>\n            <CONDITION>logger_level in ('OFF','PERMANENT','ERROR','WARNING','INFORMATION','DEBUG','TIMING', 'APEX', 'SYS_CONTEXT')</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>LOGGER_PREFS_BY_CLIENT_ID_CK2</NAME>\n            <CONDITION>expiry_date >= created_date</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>LOGGER_PREFS_BY_CLIENT_ID_CK3</NAME>\n            <CONDITION>include_call_stack in ('TRUE', 'FALSE')</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n      </CHECK_CONSTRAINT_LIST>\n      <PRIMARY_KEY_CONSTRAINT_LIST>\n         <PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>LOGGER_PREFS_BY_CLIENT_ID_PK</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>CLIENT_ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n      </PRIMARY_KEY_CONSTRAINT_LIST>\n      <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n      <PHYSICAL_PROPERTIES>\n         <HEAP_TABLE></HEAP_TABLE>\n      </PHYSICAL_PROPERTIES>\n      \n   </RELATIONAL_TABLE>\n</TABLE>"}