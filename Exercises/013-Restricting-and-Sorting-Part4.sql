-- Ex19: you can sort by column not in the select even

SELECT EMPLOYEE_ID, SALARY
FROM EMPLOYEES
order by DEPARTMENT_Id; -- but this is not logical

-- Ex20: you can sort by more than one column

SELECT DEPARTMENT_ID, first_name, salary
FROM EMPLOYEES
ORDER BY DEPARTMENT_ID, first_name; 

SELECT DEPARTMENT_ID, first_name, salary
FROM EMPLOYEES
ORDER BY DEPARTMENT_ID ASC, FIRST_NAME DESC;

-- Ex21: you can sort by column number in the select

SELECT DEPARTMENT_ID, first_name, salary 
FROM EMPLOYEES
ORDER BY 1; -- 1 mean the first column in select wich is the DEPARTMENT_ID

SELECT DEPARTMENT_ID, first_name, salary
FROM EMPLOYEES
ORDER BY 1, 3;

-- Using SQL Row Limiting Clause in a query

-- first let do this select and extract it to excel

SELECT employee_id, first_name
FROM EMPLOYEES
ORDER BY EMPLOYEE_ID;

SELECT employee_id, first_name
FROM EMPLOYEES
ORDER BY EMPLOYEE_ID
FETCH first 5 ROWS ONLY;

SELECT employee_id, first_name
FROM EMPLOYEES
ORDER BY EMPLOYEE_ID
FETCH first 50 PERCENT ROWS ONLY;

SELECT employee_id, first_name
FROM EMPLOYEES
ORDER BY EMPLOYEE_ID
offset 5 ROWS FETCH NEXT 5  ROWS ONLY;

SELECT employee_id, first_name
FROM EMPLOYEES
ORDER BY EMPLOYEE_ID
offset 4 ROWS FETCH NEXT 50 PERCENT ROWS ONLY;

-- let know with TIES what mean

SELECT EMPLOYEE_ID, SALARY
FROM EMPLOYEES
ORDER BY SALARY DESC;

SELECT EMPLOYEE_ID, first_name, SALARY
FROM EMPLOYEES
ORDER BY SALARY DESC
FETCH FIRST 2 ROWS only;

SELECT EMPLOYEE_ID, first_name, SALARY
FROM EMPLOYEES
ORDER BY SALARY DESC
FETCH FIRST 2 ROWS with TIES;
