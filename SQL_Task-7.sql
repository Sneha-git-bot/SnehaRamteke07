SELECT * FROM empdetails

CREATE VIEW emp 
AS
SELECT empid
      ,ename
      ,salary
FROM  empdetails
WHERE department = 'Administration'

SELECT * FROM emp

------IF you want to modify the view 

CREATE OR REPLACE VIEW emp 
AS
SELECT empid
      ,ename
      ,department
      ,salary 
FROM  empdetails
WHERE department = 'Sales' AND salary > 5500
      
     
