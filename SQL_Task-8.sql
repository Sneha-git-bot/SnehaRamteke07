----PROCEDURE
CREATE PROCEDURE allrecords1 
IS
  v_empid    empdetails.empid%TYPE;
  v_name     empdetails.ename%TYPE;
BEGIN
    SELECT empid,ename
    INTO  v_empid, v_name
    FROM  empdetails
    WHERE department = 'Sales';
END;

CALL allrecords1 

----FUNCTION 
CREATE OR REPLACE FUNCTION get_bonus 
(p_salary IN NUMBER)
RETURN NUMBER
IS
   v_bonus NUMBER;
BEGIN
   v_bonus := p_salary * 0.10;
   RETURN v_bonus;
END get_bonus;

SELECT empid,ename, get_bonus(salary) AS bonus
FROM empdetails;

