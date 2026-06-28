-- date dunctions
-- the default date format in oracle is DD-MON-RR

SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES;

-- rr format
-- in general if the value between 50-99  THIS return a 19xx year
-- A value between 0-49 will return a 20xx year


-- what is sysdate
-- sysdate is a function that return the cuurent database server date ant time

SELECT SYSDATE FROM DUAL;

-- using airthmetic operators with dates

-- Ex1: date + namber = date

SELECT SYSDATE, SYSDATE +3 FROM DUAL; -- adding days

-- Ex2: date - number = date

SELECT SYSDATE, SYSDATE -3 FROM DUAL;

-- Ex3: date - date = number of days

SELECT EMPLOYEE_ID, SYSDATE, hire_date, SYSDATE - hire_date, round(SYSDATE - hire_date)  
FROM EMPLOYEES;

-- Ex4: date + number/24 = adding number of hours to date

SELECT SYSDATE + 5/24 FROM DUAL; -- NEXT LESSON WE WILL KNOW HOW TO SHOW IT.

-- Example: i need how may weeks the employees 'Adam' work till now

SELECT EMPLOYEE_ID, FIRST_NAME, SYSDATE - HIRE_DATE "no of days", (SYSDATE - HIRE_DATE)/7
FROM EMPLOYEES
WHERE FIRST_NAME = 'Adam';

-- date functions

-- Ex1: monthes_between

SELECT EMPLOYEE_ID, FIRST_NAME, MONTHs_BETWEEN(SYSDATE, HIRE_DATE), (SYSDATE - HIRE_DATE)/30
FROM EMPLOYEES;
-- note that MONTHs_BETWEEN morw Accurate than number of days/30

-- note if date1 less than date2, then result become negative
SELECT EMPLOYEE_ID, FIRST_NAME, MONTHs_BETWEEN(HIRE_DATE, SYSDATE )
FROM EMPLOYEES;

-- Ex2: add_monthes

SELECT EMPLOYEE_ID, FIRST_NAME, hire_Date, add_months(hire_date, 4)
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE, ADD_MONTHS(hire_date, -2)
FROM EMPLOYEES;

-- Ex3: next_day

SELECT SYSDATe, NEXT_DAY(SYSDATE, 'FRIDAY') FROM DUAL;

SELECT SYSDATe, NEXT_DAY(SYSDATE, 1) FROM DUAL; -- OR YOU CAN enter number from 1 to 7
-- not that 1 = 'monday' and countinue till 7

-- Ex4: last_day
-- this pick the last date of the month

SELECT LAST_DAY(SYSDATE) FROM DUAL;

-- good example
/*
display the employee number, first_name, hiredate, number of months employeed,
six months review date, first friday after hire date
for all employees who have een employeed for fewer than 100 months
*/

SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE, MONTHS_BETWEEN(SYSDATE, HIRE_DATE),
ADD_MONTHS(hire_date, 6), next_day(hire_date, 'FRIDAY')
FROM EMPLOYEES
WHERE MONTHS_BETWEEN(SYSDATE, HIRE_DATE)<1000;

-- round and trunc function in date

SELECT EMPLOYEE_ID,
FIRST_NAME,
HIRE_DATE,
round(HIRE_DATE, 'MONTH'), trunc(HIRE_DATE, 'MONTH')
FROM EMPLOYEES
ORDER BY HIRE_DATE;

SELECT EMPLOYEE_ID,
FIRST_NAME,
HIRE_DATE,
round(HIRE_DATE, 'YEAR'), trunc(HIRE_DATE, 'YEAR')
FROM EMPLOYEES
ORDER BY HIRE_DATE;

-- finaly you can make nested function

SELECT FIRST_NAME, UPPER(FIRST_NAME), SUBSTR(UPPER(FIRST_NAME), 1, 3),
lpad(SUBSTR(UPPER(first_name),1 ,3), 10, '*')
FROM EMPLOYEES;

-- another example
-- assume that there is column in table contain name with 3 segments
-- i need to split the string 'ahmed ali naser' to first_name, last_name using select stat.

SELECT 'ahmed ali naser' FULL_NAME,
SUBSTR('ahmed ali naser', 1, INSTR('ahmed ali naser', ' ', 1, 1)-1) FIRST_NAME,
SUBSTR('ahmed ali naser', INSTR('ahmed ali naser', ' ', 1, 1)+1,
INSTR('ahmed ali naser', ' ', 1, 2)-INSTR('ahmed ali naser', ' ', 1, 1)-1) MIDDLE_NAME,
SUBSTR('ahmed ali naser', INSTR('ahmed ali naser', ' ', 1, 2)+1) last_name
FROM DUAL;
