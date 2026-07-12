# 024-Using-the-Group-Functions-1 - (Group Functions)

## Topics Covered

- Group Functions
- MAX()
- MIN()
- SUM()
- AVG()
- COUNT()
- DISTINCT with Group Functions
- NULL handling in Group Functions

---

## What are Group Functions?

Group functions (also called **aggregate functions**) operate on multiple rows and return a single result.

Unlike single-row functions, they summarize data from a set of rows.

---

## MAX() and MIN()

Return the highest or lowest value.

Supported data types:

- Number
- Date
- Character

Example:

```sql
SELECT MAX(salary), MIN(salary)
FROM employees;
```

---

## SUM() and AVG()

Used only with numeric columns.

- `SUM()` returns the total.
- `AVG()` returns the average.

Example:

```sql
SELECT SUM(salary), AVG(salary)
FROM employees;
```

---

## COUNT()

Used to count rows or values.

### COUNT(*)

Counts every row returned by the query.

```sql
SELECT COUNT(*)
FROM employees;
```

---

### COUNT(1)

Equivalent to `COUNT(*)`.

```sql
SELECT COUNT(1)
FROM employees;
```

---

### COUNT(column)

Counts only non-NULL values.

```sql
SELECT COUNT(commission_pct)
FROM employees;
```

---

### COUNT(DISTINCT column)

Counts unique non-NULL values.

```sql
SELECT COUNT(DISTINCT department_id)
FROM employees;
```

---

## NULL Handling

Most group functions ignore NULL values.

Examples:

- SUM()
- AVG()
- MAX()
- MIN()
- COUNT(column)

`COUNT(*)` and `COUNT(1)` count all rows, including rows containing NULL values.

Use `NVL()` if NULL values should be treated as actual values.

Example:

```sql
SELECT COUNT(NVL(commission_pct,0))
FROM employees;
```

---

## Best Practices

- Use `COUNT(*)` to count rows.
- Use `COUNT(column)` to count existing values.
- Use `DISTINCT` when duplicate values should be ignored.
- Remember that `SUM()` and `AVG()` work only with numeric columns.

---

## Key Takeaways

- Group functions return one result for multiple rows.
- `MAX()` and `MIN()` work with numbers, dates, and text.
- `SUM()` and `AVG()` work only with numbers.
- `COUNT(*)` counts all rows.
- `COUNT(column)` ignores NULL values.
- `COUNT(DISTINCT column)` counts unique values only.
