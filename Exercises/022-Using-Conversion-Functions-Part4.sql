-- Ex1: nvl function

SELECT EMPLOYEE_ID, FIRST_NAME, COMMISSION_PCT, nvl(COMMISSION_PCT,0)
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME, job_id, NVL(job_id, 'No JOB Yest')
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME, hire_date, NVL(hire_date, '1-jan-03')
FROM EMPLOYEES;

-- because COMMISSION_PCT is number, so if you want to display 'no comm', then you should use to_char

SELECT EMPLOYEE_ID, FIRST_NAME, COMMISSION_PCT, NVL(to_char(COMMISSIOM_PCT), 'no comm')
FROM EMPLOYYES;

-- Ex2: using nvl2 function
-- if exp1 is null, then it return exp3
-- if exp2 is not null, then return exp2

SELECT EMPLOYEE_ID, FIRST_NAME, COMMISSION_PCT, NVL2(COMMISSIOM_PCT, COMMISSIOM_PCT, 0)
FROM EMPLOYYES;

SELECT EMPLOYEE_ID, FIRST_NAME, COMMISSION_PCT, 
NVL2(COMMISSIOM_PCT, 'sal and somm', 'only salary') income
FROM EMPLOYYES;

-- Ex3: using nullif
-- if exp1 = exp2 then it return null, else it return exp1

SELECT FIRST_NAME, LENGTH(FIRST_NAME), LAST_NAME, LENGTH(LAST_NAME),
nullif(LENGTH(FIRST_NAME), LENGTH(LAST_NAME)) result
from EMPLOYEES;

-- Ex4: coalesce function
-- it return the first non-null value

SELECT EMPLOYEE_ID, FIRST_NAME, COMMISSION_PCT, MANAGER_ID, SALARY,
COALESCE (COMMISSION_PCT, MANAGER_ID, SALARY),
nvl(nvl(COMMISSION_PCT, MANAGER_ID), SALARY) -- nested nvl equal to COALESCE
FROM EMPLOYEES;
