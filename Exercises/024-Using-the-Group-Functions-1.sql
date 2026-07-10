-- group functions

-- Ex1: max and min functions

-- first let execute this statment

SELECT SALARY
FROM employees
order by SALARY desc;

SELECT MAX(SALARY), MIN(SALARY)
FROM
EMPLOYEES;

-- you can use max and min with dates also

SELECT MAX(hire_date), MIN(hire_date)
FROM
EMPLOYEES;

-- Ex2: sum and avg functions

SELECT sum(SALARY), avg(SALARY)
FROM
EMPLOYEES;

-- you can not use sum and avg with varchar or dates

SELECT sum(first_name), avg(first_name)
FROM
EMPLOYEES;

-- Ex3: count function
-- first lets execute this statments

SELECT * FROM EMPLOYEES;

-- count(*) return number of rows in a table including duplicate rows and include null values

SELECT COUNT(*) FROM EMPLOYEES;

SELECT COUNT(1) FROM EMPLOYEES; -- this is equal to count(*)

SELECT COUNT(COMMISSION_PCT)
FROM EMPLOYEES;  -- count (column) name ignore null values, null not counted

SELECT COUNT(DEPARTMENT_ID) FROM EMPLOYEES; --null not counted

SELECT COUNT(DISTINCT DEPARTMENT_ID) FROM EMPLOYEES;

-- you can hendle null values using nvl function

SELECT COUNT(nvl(COMMISSION_PCT,0)) FROM EMPLOYEES;

-- you can use where in select

SELECT count(EMPLOYEE_ID)
FROM
EMPLOYEES
WHERE DEPARTMENT_ID = 90; -- this the count for employees for department 90
