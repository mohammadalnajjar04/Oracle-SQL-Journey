-- * Types of Comments

-- 1. Single Line
-- This is a comment
-- This is another comment

-- 2. Multi-Line
/*
This comment uses paragraph writing.
Mohammed Al-Najjar is learning SQL in Oracle.
*/


-- Ex1: to select all the columens/rows in a table use:

SELECT *
FROM departments;

-- Ex2: to select specific columns

SELECT DEPARTMENT_ID, DEPARTMENT_NAME
FROM departments;

-- Ex3: using Arithmetic Expressions (+,-,*,/)

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY, sALARY+100, salary+(SALARY*0.10)
FROM
employees;

-- Ex4: to know null values
-- NULL IS VALUE THAT IS UNAVLLABLE, UNASSIGNED, UNKNOWN, OR INAPPLICABLE.
-- NULL is not the same as zero or a blank space

SELECT last_name, job_id, salary, commission_pct
FROM employees;

-- Ex5: Arithmetic expressions containing a null value evalute to null

SELECT LAST_NAME, JOB_ID, SALARY, COMMISSION_PCT+10
FROM employees;

-- Ex6: Defining a column Alias (Renames a column heading)

SELECT LAST_NAME, LAST_NAME As name, LAST_NAME lname, LAST_NAME " LAST nAME"
FROM employees;
