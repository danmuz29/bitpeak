--
-- Procobj "PIPELINE$1"
--

BEGIN 
dbms_scheduler.create_job('"PIPELINE$1"',
job_type=>'STORED_PROCEDURE', job_action=>
'C##CLOUD$SERVICE.DBMS_CLOUD_PIPELINE.RUN_PIPELINE'
, number_of_arguments=>2,
start_date=>TO_TIMESTAMP_TZ('21-JUL-2022 02.09.51,794747000 AM -07:00','DD-MON-RRRR HH.MI.SSXFF AM TZR','NLS_DATE_LANGUAGE=english'), repeat_interval=> 
'FREQ=MINUTELY; INTERVAL=20'
, end_date=>NULL,
job_class=>'"MEDIUM"', enabled=>FALSE, auto_drop=>FALSE,comments=>
'Pipeline ORA$AUDIT_EXPORT'
);
sys.dbms_scheduler.set_attribute('"PIPELINE$1"','NLS_ENV','NLS_LANGUAGE=''AMERICAN'' NLS_TERRITORY=''AMERICA'' NLS_CURRENCY=''$'' NLS_ISO_CURRENCY=''AMERICA'' NLS_NUMERIC_CHARACTERS=''.,'' NLS_CALENDAR=''GREGORIAN'' NLS_DATE_FORMAT=''DD-MON-RR'' NLS_DATE_LANGUAGE=''AMERICAN'' NLS_SORT=''BINARY'' NLS_TIME_FORMAT=''HH.MI.SSXFF AM'' NLS_TIMESTAMP_FORMAT=''DD-MON-RR HH.MI.SSXFF AM'' NLS_TIME_TZ_FORMAT=''HH.MI.SSXFF AM TZR'' NLS_TIMESTAMP_TZ_FORMAT=''DD-MON-RR HH.MI.SSXFF AM TZR'' NLS_DUAL_CURRENCY=''$'' NLS_COMP=''BINARY'' NLS_LENGTH_SEMANTICS=''BYTE'' NLS_NCHAR_CONV_EXCP=''FALSE''');
dbms_scheduler.set_attribute('"PIPELINE$1"','logging_level',DBMS_SCHEDULER.LOGGING_FULL);
COMMIT; 
END;
/