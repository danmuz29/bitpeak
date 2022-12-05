--
-- Trigger "DISPLAY_SALARY_CHANGES"
--
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."DISPLAY_SALARY_CHANGES" 
BEFORE DELETE OR INSERT OR UPDATE ON persons 
FOR EACH ROW 
 WHEN (NEW.PERSON_ID > 0) DECLARE 
   sal_diff number; 
BEGIN 
   sal_diff := :NEW.salary  - :OLD.salary; 
   dbms_output.put_line('Old salary: ' || :OLD.salary); 
   dbms_output.put_line('New salary: ' || :NEW.salary); 
   dbms_output.put_line('Salary difference: ' || sal_diff); 
END;
ALTER TRIGGER "ADMIN"."DISPLAY_SALARY_CHANGES" ENABLE
/