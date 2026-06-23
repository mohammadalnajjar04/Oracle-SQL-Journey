# 008 - Basic Select Part 1

## Topics Covered

* Types of SQL Comments.
* SELECT statement.
* Selecting all columns.
* Selecting specific columns.
* Arithmetic expressions.
* NULL values.
* Column aliases.

---

## Types of Comments

### Single-Line Comment

```sql
-- This is a comment
-- This is another comment
```

### Multi-Line Comment

```sql
/*
This comment uses paragraph writing.
Mohammed Al-Najjar is learning SQL in Oracle.
*/
```

---

## Select All Columns

```sql
SELECT *
FROM departments;
```

Returns all columns and rows from the table.

---

## Select Specific Columns

```sql
SELECT department_id, department_name
FROM departments;
```

Returns only the selected columns.

---

## Arithmetic Expressions

```sql
SELECT employee_id,
       first_name,
       salary,
       salary + 100,
       salary + (salary * 0.10)
FROM employees;
```

Arithmetic operators:

```text
+
-
*
/
```

---

## NULL Values

* NULL means unavailable, unknown, unassigned, or inapplicable.
* NULL is different from zero.
* NULL is different from a blank space.

Example:

```sql
SELECT last_name,
       job_id,
       salary,
       commission_pct
FROM employees;
```

---

## NULL in Arithmetic Expressions

```sql
SELECT last_name,
       job_id,
       salary,
       commission_pct + 10
FROM employees;
```

If a NULL value is used in an arithmetic expression, the result will be NULL.

---

## Column Aliases

Used to rename column headings.

```sql
SELECT last_name,
       last_name AS name,
       last_name lname,
       last_name "LAST NAME"
FROM employees;
```

---

## Summary

In this lesson, I learned how to write comments, retrieve data using the SELECT statement, perform arithmetic operations, understand NULL values, and rename columns using aliases.
