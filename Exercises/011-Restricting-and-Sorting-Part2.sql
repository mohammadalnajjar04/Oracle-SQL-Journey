-- Ex7: usnig the in operato

SELECT * FROM EMPLOYEES
WHERE SALARY IN (10000, 250000, 17000); -- the order is not important

-- Ex8: using the like operator and it come usualy with _ and %

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME LIKE 'S%'; -- ALL THE FIRST NAME WHICH START WITH S

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%s'; -- ALL THE FIRST NAME WHICH END WITHE s

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME LIKE '%am%'; -- ALL THE FIRST NAME WHICH INCLUDE am

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_d%'; -- the first_name which has d in second letter

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '__s%'; -- the first_name which has s in third letter

-- now supose there is value in any column contain _ or % (example JOB_ID)
-- then how you will search for theses letters
-- example i need all the job_id which contain the string AS_

-- if you try this select what will happen 
-- this will pic all the job_id contain SA followed by any character 

SELECT JOB_ID
FROM 
JOBS
WHERE JOB_ID LIKE 'SA_%';

-- this is the correct select

SELECT JOB_ID
FROM
JOBS
WHERE JOB_ID LIKE 'SA/_%' escape '/';

-- another example suppose we have job_id called MANA%GER
-- AND WE NEED TO PICK ALL THE JOB_ID THAT HAVE % CHaracter
-- lets go and add this jobs table

-- this is wrong select

SELECT * FROM JOBS
where job_id LIKE '%%%';

-- the correct select is 

SELECT * FROM JOBS
where job_id LIKE '%/%%' escape '/'; 

-- Ex9: using is null operator
-- let us try pick all the employes who doesnt have commesion

SELECT * 
FROM EMPLOYEES
where COMMISSION_PCT is null; -- dont use COMMISSION_PCT=' ' because this not correct

-- Ex10: using not
-- you can use also not like, not in, is not null, not between and 

SELECT * 
FROM EMPLOYEES
WHERE EMPLOYEE_ID NOT IN (100, 101);

SELECT * 
FROM EMPLOYEES
WHERE COMMISSION_PCT is not null;

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME not LIKE 'S%'; -- ALL THE FIRST NAME which not start with S

-- Ex11: Defining conditions using the logical operators (and/ or/ not)
-- AND requires both the component conditions to be true

SELECT employee_id, last_name, job_id, salary, DEPARTMENT_ID
FROM employees
WHERE SALARY >= 10000
AND DEPARTMENT_ID=90;

-- OR requires either component condition to be true

SELECT employee_id, last_name, job_id, salary, DEPARTMENT_ID
FROM employees
WHERE SALARY >= 10000
or DEPARTMENT_ID=90;
