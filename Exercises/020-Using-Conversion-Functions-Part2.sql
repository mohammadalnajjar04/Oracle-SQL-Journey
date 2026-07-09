-- Ex1: using to_char withe dates

SELECT TO_CHAR (SYSDATE, 'dd-mm-yyyy') FROM DUAL;

SELECT TO_CHAR (SYSDATE, 'dd-mm-yyyy hh:mi:ss AM') FROM DUAL; -- AM and PM are the same

SELECT TO_CHAR (SYSDATE, 'dd-mm-yyyy hh24:mi:ss PM') FROM DUAL;

SELECT FIRST_NAME, TO_CHAR (HIRE_DATE, 'DD Month YYYY') HIREDATE, 
TO_CHAR (HIRE_DATE, 'fmDD Month YYYY') AS HIREDATE -- SO USING FM IS BETTER TO REMOVE SPAES
FROM EMPLOYEES;

SELECT TO_CHAR (SYSDATE, 'FMDD "OF" Month YYYY') FROM DUAL;

SELECT TO_CHAR (SYSDATE, 'FMDDsp "OF" Month YYYY') FROM DUAL;

SELECT TO_CHAR (SYSDATE, 'fmddth "OF" Month YYYY') FROM DUAL;

SELECT TO_CHAR (SYSDATE, 'fmddspth "OF" Month YYYY') FROM DUAL;

-- list all the eemployees how employeed in 2003

SELECT * FROM employees
WHERE TO_CHAR (HIRE_DATE, 'yyyy') = '2003';

-- list all the eemployees how employeed in feb

SELECT * FROM employees
WHERE TO_CHAR (HIRE_DATE, 'mm') = '02'; -- if you put only '2' this not coorect

SELECT * FROM employees
WHERE TO_CHAR (HIRE_DATE, 'fmmm') = '2'; -- you should use fm if you want to put only '2' cz fm remove 0 and spaes
