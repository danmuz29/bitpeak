--
-- Function "TOTALCUSTOMERS"
--
CREATE OR REPLACE EDITIONABLE FUNCTION "ADMIN"."TOTALCUSTOMERS" 
RETURN number IS 
   total number(2) := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM PERSONS; 

   RETURN total; 
END;
/