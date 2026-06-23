# 010 - Restricting and Sorting Part 1

## Topics Covered

* WHERE clause
* Comparison operators
* Character conditions
* Date conditions
* Numeric conditions
* BETWEEN ... AND

---

## Limiting Rows Using WHERE

The WHERE clause is used to restrict the rows returned by a query.

Basic syntax:

```sql
SELECT *
FROM table_name
WHERE condition;
```

The WHERE clause always comes after the FROM clause.

Example:

```sql
SELECT *
FROM employees
WHERE department_id = 90;
```

---

## Important Notes

* Character strings must be enclosed in single quotes.
* Date values must be enclosed in single quotes.
* Character values are case-sensitive.
* The default Oracle date format is:

```text
DD-MON-RR
```

---

## Character Conditions

Example:

```sql
SELECT employee_id,
       first_name,
       last_name,
       job_id
FROM employees
WHERE first_name = 'Steven';
```

Only rows matching the exact value are returned.

---

## Date Conditions

Example:

```sql
SELECT *
FROM employees
WHERE hire_date = '17-OCT-03';
```

Used to filter rows based on date values.

---

## Numeric Conditions

Example:

```sql
SELECT *
FROM employees
WHERE salary >= 10000;
```

Returns employees whose salary is greater than or equal to 10000.

---

## Comparison Operators

| Operator        | Meaning                  |
| --------------- | ------------------------ |
| =               | Equal to                 |
| >               | Greater than             |
| >=              | Greater than or equal to |
| <               | Less than                |
| <=              | Less than or equal to    |
| <>              | Not equal to             |
| BETWEEN ... AND | Between two values       |
| IN              | Match values from a list |
| LIKE            | Match a pattern          |
| IS NULL         | Check for NULL values    |

---

## BETWEEN Operator

Used to search for values within a range.

Example:

```sql
SELECT *
FROM employees
WHERE salary BETWEEN 10000 AND 20000;
```

Important:

The lower value must come first.

Incorrect:

```sql
SELECT *
FROM employees
WHERE salary BETWEEN 20000 AND 10000;
```

This returns no rows.

---

## BETWEEN with Character Values

Example:

```sql
SELECT *
FROM employees
WHERE first_name BETWEEN 'A' AND 'C';
```

Oracle can compare character values alphabetically.

Example:

```sql
SELECT *
FROM employees
WHERE first_name > 'Adam';
```

---

## Summary

In this lesson, I learned how to limit query results using the WHERE clause, use comparison operators, filter data using character, date, and numeric values, and use the BETWEEN operator to retrieve rows within a specific range.
