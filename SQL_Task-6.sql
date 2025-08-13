CREATE TABLE employees(emp_id     NUMBER(10)
                      ,emp_name   VARCHAR2(20)
                      ,dept_id    NUMBER(10)
                      ,salary     NUMBER(10)
                      )

SELECT e.emp_name
      ,e.salary 
FROM  employees  e
WHERE e.emp_id > (SELECT d.dept_id
                  FROM   departments d
                  WHERE  d.department_name = 'IT'
                  )
                  
SELECT dept_id,avg_salary
FROM (SELECT dept_id, AVG(salary) AS avg_salary  
      FROM   employees  
      GROUP BY dept_id
      )
WHERE avg_salary > 70000;


SELECT
    emp_name,
    salary,
    (SELECT department_name
     FROM departments d
     WHERE d.dept_id = e.dept_id) AS department_name
FROM employees e;



      
                       
                   
     
