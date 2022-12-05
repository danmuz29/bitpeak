--
-- Procedure "PRINT_SYSDATE"
--
CREATE OR REPLACE EDITIONABLE PROCEDURE "ADMIN"."PRINT_SYSDATE" 
as
begin  
    dbms_output.put_line(to_char(sysdate, 'yyyy-mm-dd'));
end;
/