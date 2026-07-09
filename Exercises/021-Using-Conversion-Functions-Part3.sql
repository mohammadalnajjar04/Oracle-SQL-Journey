-- Ex2: using to_char withe number

SELECT TO_CHAR (1500) FROM DUAL;

SELECT TO_CHAR (1598, '9,999') FROM DUAL;

SELECT TO_CHAR (1598, '$9,999') FROM DUAL;

-- the server will displat # when the number exceed the format

SELECT TO_CHAR (21598, '$9,999') FROM DUAL;

SELECT TO_CHAR (955.89, '999.99') FROM DUAL;

SELECT TO_CHAR (955.89, '999.9') FROM DUAL; -- the server will round in this case

SELECT TO_CHAR (955, '09999999') FROM DUAL;

SELECT TO_CHAR (1980, '9G999') FROM DUAL;


-- Ex3: using the number

SELECT TO_NUMBER ('1,000', '9,999') FROM DUAL;

SELECT TO_NUMBER ('$1,000', '$9,999') FROM DUAL;

SELECT TO_NUMBER ('88') FROM DUAL;

SELECT TO_NUMBER ('1,980', '9G999') FROM DUAL;

-- Ex4: using to_date

SELECT TO_DATE ('10-11-2015', 'dd-mm-yyyy') FROM DUAL;

SELECT * FROM employees
WHERE HIRE_DATE> TO_DATE('10-11-2003', 'dd-mm-yyyy');

SELECT * FROM employees
WHERE HIRE_DATE> TO_DATE('10-11-        2003', 'dd-mm-yyyy'); -- oracle remove spaces

SELECT * FROM employees
WHERE HIRE_DATE> TO_DATE('10-11-2003', 'fxdd-mm-yyyy'); -- when you put fx then exact should be mach

-- RR AND YY

SELECT TO_DATE ('1-1-85', 'DD-MM-RR') from dual;

SELECT TO_CHAR (TO_DATE('1-1-85', 'DD-MM-RR'), 'YYYY') from dual;

SELECT TO_DATE ('1-1-85', 'DD-MM-YY') from dual;
 
SELECT TO_CHAR (TO_DATE('1-1-85', 'DD-MM-YY'),'YYYY') from dual;
