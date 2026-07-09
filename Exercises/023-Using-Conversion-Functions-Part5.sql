-- Ex5: case statment

SELECT first_name,
       job_id,
       salary,
       CASE job_id
           WHEN 'IT_PROG' THEN salary * 1.10
           WHEN 'ST_CLERK' THEN salary * 1.15
           WHEN 'SA_REP' THEN salary * 1.20
           ELSE salary
       END AS revised_salary
FROM employees;

-- you can make the condition after when 

SELECT first_name,
       job_id,
       salary,
       CASE
           WHEN job_id = 'IT_PROG' THEN 1.10 * salary
           WHEN job_id = 'ST_CLERK' THEN 1.15 * salary
           WHEN job_id = 'SA_REP' THEN 1.20 * salary
           ELSE salary
       END AS revised_salary
FROM employees;

-- if you didnt put else then null will apper for not match conditions

SELECT first_name,
       job_id,
       salary,
       CASE job_id
           WHEN 'IT_PROG' THEN 1.10 * salary
           WHEN 'ST_CLERK' THEN 1.15 * salary
           WHEN 'SA_REP' THEN 1.20 * salary
       END AS revised_salary
FROM employees;

-- this below statment is not logicaly coorect
-- if the first condition is met then it show the result regardless another conditions

SELECT salary,
       CASE
           WHEN salary > 3000 THEN 'salary > 3000'
           WHEN salary > 4000 THEN 'salary > 4000'
           WHEN salary > 10000 THEN 'salary > 10000'
       END AS FFF
FROM employees;

-- so it should be like this

SELECT salary,
       CASE
           WHEN salary > 10000 THEN 'salary > 10000'
           WHEN salary > 4000 THEN 'salary > 4000'
           WHEN salary > 3000 THEN 'salary > 3000'
       END AS FFF
FROM employees;

-- Ex6: decode

SELECT last_name,
       job_id,
       salary,
       DECODE(job_id,
              'IT_PROG', 1.10 * salary,
              'ST_CLERK', 1.15 * salary,
              'SA_REP', 1.20 * salary,
              salary) AS revised_salary
FROM employees;

-- if you didnt put default value for non-match condition them null will be return for theses value\

SELECT last_name,
       job_id,
       salary,
       DECODE(job_id,
              'IT_PROG', 1.10 * salary,
              'ST_CLERK', 1.15 * salary,
              'SA_REP', 1.20 * salary
       ) AS revised_salary
FROM employees;

-- Example: Display tax for employees as follows:
-- If the salary is less than 3000, then tax = 0%
-- If the salary is between 3000 and 7000, then tax = 10%
-- If the salary is greater than 7000, then tax = 20%
-- In this case, you should use CASE instead of DECODE because CASE is more flexible.

SELECT employee_id,
       first_name,
       salary,
       CASE
           WHEN salary < 3000 THEN '0%'
           WHEN salary BETWEEN 3000 AND 7000 THEN '10%'
           WHEN salary > 7000 THEN '20%'
       END AS tax
FROM employees;
