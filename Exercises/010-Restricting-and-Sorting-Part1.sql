-- Ex1: to select all the rows and columens in table

SELECT * FROM departments;

-- Ex2: to Limiting the Rows that are selected, we use WHERE and it come always after the FROM clause

SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID=90;

/* These you should know when using the where 
Character strings and data values are enclosed with single quotation marks.
Character values are case-sensitive and data values are format-sensitive.
The default data display format is DD-MON-RR
*/
-- Ex3: using where in char column

SELECT EMPLOYEE_ID, FIRST_NAME, last_name, JOB_ID
FROM
employees
WHERE FIRST_NAME='Steven';

-- Ex4: using where in data column

SELECT *
FROM employees
WHERE HIRE_DATE = '17-OCT-03';

-- Ex5: using where in date colmun

SELECT * FROM EMPLOYEES
WHERE SALARY>=10000;

-- Ex6: using between and 

SELECT * FROM EMPLOYEES 
WHERE SALARY BETWEEN 10000 AND 20000; -- always the lower limit first

-- try to do the query by making thee high limit first, no result

SELECT * FROM EMPLOYEES 
WHERE SALARY BETWEEN 20000 AND 10000;

-- YOU CAN USE OPERATORS ALSO IN varchar COLUMNS    

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME BETWEEN 'A' AND 'C';

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME>'Adam'
-- for more info refer to httpd:// docs.oracle.com/cd/B12037_01/server.101/b10759/sql_elements002.htm
