/*
Use substitution variables to:
Temporarily store values with single-ampersand (&) and double-ampersand (&&) substitution
Use substitution variables to supplement the following:
WHERE conditions
ORDER BY clauses
column expression
Table names
Entire SELECT statments
*/

-- Ex1: 

SELECT employee_id, last_name, salary, department_id
FROM EMPLOYEES 
WHERE EMPLOYEE_ID = &EMPLOYEE_NUM; -- when using single & the variable wil be discareded after iss used

-- use '' when using varshar
-- Ex2:

SELECT employee_id, first_name, last_name, salary, department_id
FROM EMPLOYEES
WHERE FIRST_NAME='&ename'
ORDER BY 2;

-- another way to handel varchart to write the  '' included in variable example 'Adam'
-- Ex3:

SELECT employee_id, first_name, last_name, salary, department_id
FROM EMPLOYEES
WHERE FIRST_NAME=&ename
ORDER BY 2;

-- Specifying Column Names, EXpressions, and Text 
-- &column_name=salary   &condition=salary>10000     &ORDER_COLUMN=employee_id
-- Ex4:

SELECT employee_id, last_name, job_id, &column_name
FROM employees
WHERE &condition
ORDER BY &ORDER_COLUMN;
