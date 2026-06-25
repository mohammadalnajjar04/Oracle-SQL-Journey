-- Ex5:
/*
Use the DEFINE command to create and assign a value to a variable.
Use the UNDEFINE command to remove a variable
*/

DEFINE EMPLOYEE_NUM = 200; -- this variable is valid for the session only

SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE EMPLOYEES_ID = &EMPLOYEE_NUM;

UNDEFINE EMPLOYEE_NUM 

-- Ex6: you   can change the prompt message as follw
-- but it should exected as script

ACCEPT DEPT_ID PROMPT 'please enter dept id';
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID=&DEPT_ID;

UNDEFINE DEPT_ID

-- Ex7: Using the Double-Ampersand Substitution Variable
-- the && define the variable and assign the value in the same time, then you can re-use it agian
SELECT employee_id, last_name, job_id &&colmun_name -- this =define column_name
FROM EMPLOYEES
ORDER BY &COLUMN_NAME;

UNDEFINE column_name;

/*
Use the VERIFY command to toggle the display of the substitution variable,
both before and after SQL Developer replaces substitution variables with values:
*/
-- Ex8:

-- also should be executed as script

SET VERIFY ON
SELECT employee_id, last_name, salary
FROM employees
WHERE EMPLOYEE_ID = &E_NUM;

-- using set define off
-- we use it to prevent oracle server to display the prompt window for specifc resons

SELECT * FROM DEPARTMENTS
WHERE DEPARTMENT_NAME LIKE '%&t%'; -- here the oracle server suppose that & is variable

-- so we use set define off

SET DEFINE OFF;

SELECT * FROM DEPARTMENTS
WHERE DEPARTMENT_NAME LIKE '%&t%';

-- you can use set define on to show agaiin the prompt window when using &

SET DEFINE ON;
