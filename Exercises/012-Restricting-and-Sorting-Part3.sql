-- here you should know the priorities
-- look to manual hint
-- in this select there are 2 conditions
-- first condition JOB_ID = 'AD_PRES' and SALARY > 15000
-- second condition JOB_ID = 'SA_REP'

SELECT  last_name, job_id, salary
FROM    employees
WHERE   JOB_ID = 'SA_REP'
OR      JOB_ID = 'AD_PRES'
AND     SALARY > 15000;

-- when you use the parantheses () , then you can override and/or priorities

SELECT last_name, job_id, salary
FROM EMPLOYEES
WHERE (job_id = 'SA_PER' OR job_id = 'AD_PRES')
AND SALARY > 15000;

-- Ex12: order by

SELECT * FROM EMPLOYEES
ORDER BY HIRE_DATE; -- the default order always ABC: Ascending 

-- Ex13: (12 and 13 are the same becasue ASC is default)

SELECT * FROM EMPLOYEES
ORDER BY HIRE_DATE ASC; -- the default order always ABC: Ascending, SO no need to put ASC

-- Ex14: order by desc: Descending

SELECT * FROM EMPLOYEES
ORDER BY HIRE_DATE desc;

-- Ex15: where and order by

SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID=90
ORDER BY EMPLOYEE_id; 

-- Ex16: null values in order by

SELECT * FROM EMPLOYEES
ORDER BY COMMISSION_PCT; -- by default null come last in Ascending order

-- you can use NUULS FIRST to make null values appear first

SELECT * FROM EMPLOYEES
ORDER BY COMMISSION_PCT NULLS FIRST;

-- Ex17: you can sort also using column alias

SELECT FIRST_NAME n 
FROM EMPLOYEES
ORDER BY N; 

-- Ex18: you can sort by Expression

SELECT EMPLOYEE_ID, SALARY, SALARY+100
FROM EMPLOYEES
ORDER BY SALARY+100; 
