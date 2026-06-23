# 009 - Basic Select Part 2

## Topics Covered

- Basic SELECT syntax
- SQL writing rules
- Concatenation operator ||
- Literal strings
- Alternative quoting q'[ ]'
- DISTINCT keyword
- DESCRIBE command

---

## Basic SELECT Syntax

SELECT identifies the columns to be displayed.

FROM identifies the table containing those columns.

Example:

SELECT *
FROM employees;

---

## SQL Writing Rules

- SQL is not case sensitive.
- Statements can be written on one or more lines.
- Keywords cannot be abbreviated.
- Clauses are usually placed on separate lines.
- Indentation improves readability.
- SQL*Plus requires a semicolon (;).

---

## Concatenation Operator

Used to combine columns and strings.

Example:

SELECT first_name || ' ' || last_name
FROM employees;

---

## DISTINCT

Returns unique values only.

Example:

SELECT DISTINCT department_id
FROM employees;

---

## DESCRIBE

Displays the structure of a table.

Example:

DESC employees;
