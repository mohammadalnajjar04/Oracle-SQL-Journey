# 011 - Restricting and Sorting Part 2

## Topics Covered

* IN operator
* LIKE operator
* Wildcards (% and _)
* ESCAPE character
* IS NULL
* NOT operator
* Logical operators (AND, OR, NOT)

---

## IN Operator

Used to compare a value against multiple values.

Example:

```sql
SELECT *
FROM employees
WHERE salary IN (10000, 25000, 17000);
```

The order of values inside the list does not matter.

---

## LIKE Operator

Used to search for character patterns.

### Percent Sign (%)

Represents zero, one, or many characters.

Examples:

```sql
SELECT *
FROM employees
WHERE first_name LIKE 'S%';
```

Names starting with S.

```sql
SELECT *
FROM employees
WHERE first_name LIKE '%s';
```

Names ending with s.

```sql
SELECT *
FROM employees
WHERE first_name LIKE '%am%';
```

Names containing "am".

---

## Underscore (_)

Represents exactly one character.

Examples:

```sql
SELECT *
FROM employees
WHERE first_name LIKE '_d%';
```

Second character is d.

```sql
SELECT *
FROM employees
WHERE first_name LIKE '__s%';
```

Third character is s.

---

## ESCAPE Character

Used when searching for literal % or _ characters.

Example:

```sql
SELECT job_id
FROM jobs
WHERE job_id LIKE 'SA/_%' ESCAPE '/';
```

Searches for values containing the actual underscore character.

Example:

```sql
SELECT *
FROM jobs
WHERE job_id LIKE '%/%%' ESCAPE '/';
```

Searches for values containing the actual percent sign.

---

## IS NULL Operator

Used to retrieve rows containing NULL values.

Example:

```sql
SELECT *
FROM employees
WHERE commission_pct IS NULL;
```

Important:

```sql
commission_pct = ''
```

is incorrect.

---

## NOT Operator

Can be used with:

* NOT IN
* NOT LIKE
* IS NOT NULL
* NOT BETWEEN

Examples:

```sql
SELECT *
FROM employees
WHERE employee_id NOT IN (100,101);
```

```sql
SELECT *
FROM employees
WHERE commission_pct IS NOT NULL;
```

```sql
SELECT *
FROM employees
WHERE first_name NOT LIKE 'S%';
```

---

## Logical Operators

### AND

Both conditions must be TRUE.

Example:

```sql
SELECT employee_id,
       last_name,
       job_id,
       salary,
       department_id
FROM employees
WHERE salary >= 10000
AND department_id = 90;
```

---

### OR

At least one condition must be TRUE.

Example:

```sql
SELECT employee_id,
       last_name,
       job_id,
       salary,
       department_id
FROM employees
WHERE salary >= 10000
OR department_id = 90;
```

---

## Summary

In this lesson, I learned how to filter data using IN, LIKE, IS NULL, and NOT operators, how to search using wildcard characters (% and _), how to use ESCAPE characters, and how to combine conditions using AND and OR logical operators.
