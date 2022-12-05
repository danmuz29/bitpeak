--
-- Package "C_PACKAGE"
--
CREATE OR REPLACE EDITIONABLE PACKAGE "ADMIN"."C_PACKAGE" AS 
   -- Adds a person 
   PROCEDURE addPerson(c_id   persons.person_id%type, 
   c_first_name persons.first_name%type, 
   c_last_name  persons.last_name%type,  
   c_sal  persons.salary%type); 

   -- Removes a persons 
   PROCEDURE delPerson(c_id  persons.person_id%TYPE); 
   --Lists all personss 
   PROCEDURE listPersons; 

END c_package; 
CREATE OR REPLACE EDITIONABLE PACKAGE BODY "ADMIN"."C_PACKAGE" AS 
   PROCEDURE addPerson(c_id  persons.person_id%type, 
   c_first_name persons.first_name%type, 
   c_last_name  persons.last_name%type,  
   c_sal  persons.salary%type)
   IS 
   BEGIN 
      INSERT INTO persons (person_id,first_name,last_name,salary) 
         VALUES(c_id, c_first_name, c_last_name, c_sal); 
   END addPerson; 

   PROCEDURE delPerson(c_id   persons.person_id%type) IS 
   BEGIN 
      DELETE FROM persons 
      WHERE person_id = c_id; 
   END delPerson;  

   PROCEDURE listPersons IS 
   CURSOR c_persons is 
      SELECT  first_name FROM persons; 
   TYPE c_list is TABLE OF persons.first_name%type; 
   name_list c_list := c_list(); 
   counter integer :=0; 
   BEGIN 
      FOR n IN c_persons LOOP 
      counter := counter +1; 
      name_list.extend; 
      name_list(counter) := n.first_name; 
      dbms_output.put_line('person(' ||counter|| ')'||name_list(counter)); 
      END LOOP; 
   END listPersons;

END c_package;
/