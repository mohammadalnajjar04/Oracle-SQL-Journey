-- Ex7: Concatenation Operator || Linkes Columes or character strings

SELECT FIRST_NAME, LAST_NAME, FIRST_NAME||LAST_NAME "full name", 
FIRST_NAME||' '||LAST_NAME "full name with space" -- Using Literal Character Strings
FROM
employees;

SELECT FIRST_NAME||' work in department '|| DEPARTMENT_ID
FROM
employees;

SELECT FIRST_NAME||q'[work in department]'|| DEPARTMENT_ID
FROM
employees;

-- Ex8: usnig distinct

SELECT DEPARTMENT_ID
FROM employees; -- this will pick all the DEPARTMENT_ID from table EMPLOYEES

SELECT DISTINCT DEPARTMENT_ID
FROM employees; -- only distinct values ???? ???????

-- You can use many columns in distinct

SELECT DISTINCT DEPARTMENT_ID, JOB_ID 
FROM employees;

-- Ex9: DESCRIBE or DESC command
-- USE THE DESCRIBE COMMAND TO DISPLAY THE STRUCTURE OF A TABLE.

DESCRIBE EMPLOYEES;

DESC EMPLOYEES;
