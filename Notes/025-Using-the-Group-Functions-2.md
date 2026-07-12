# 025-Using-the-Group-Functions-2 - (Group Functions)

## Topics Covered

- LISTAGG() Function
- GROUP BY Clause
- ORA-00937 Error
- Column Aliases with GROUP BY and ORDER BY
- HAVING Clause
- Nesting Group Functions

---

## LISTAGG()

The `LISTAGG()` function concatenates values from multiple rows into a single string using a specified delimiter.

### Syntax

```sql
LISTAGG(column, 'separator')
WITHIN GROUP (ORDER BY column)
```

### Example

```sql
SELECT LISTAGG(first_name, ', ')
       WITHIN GROUP (ORDER BY first_name) AS employee_list
FROM employees
WHERE department_id = 30;
```

---

## GROUP BY

The `GROUP BY` clause divides rows into groups so that aggregate functions can be applied to each group separately.

### Example

```sql
SELECT department_id, SUM(salary)
FROM employees
GROUP BY department_id;
```

---

## GROUP BY Rules

- Every column in the `SELECT` list that is **not** inside a group function must appear in the `GROUP BY` clause.
- Aggregate functions cannot be used inside the `GROUP BY` clause.
- Omitting a required column from `GROUP BY` causes:

```
ORA-00937: not a single-group group function
```

---

## Column Aliases

Column aliases **cannot** be used inside `GROUP BY`.

They **can** be used inside `ORDER BY`.

### Example

```sql
SELECT department_id d, SUM(salary)
FROM employees
GROUP BY department_id
ORDER BY d;
```

---

## WHERE vs HAVING

| Clause | Purpose |
|---------|---------|
| WHERE | Filters rows before grouping |
| HAVING | Filters groups after aggregation |

### Example

```sql
SELECT department_id, SUM(salary)
FROM employees
WHERE department_id > 30
GROUP BY department_id
HAVING SUM(salary) > 150000
ORDER BY department_id;
```

---

## Query Execution Order

The logical execution order is:

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY

---

## Nesting Group Functions

Oracle allows nesting aggregate functions up to two levels.

### Example

```sql
SELECT MAX(SUM(salary))
FROM employees
GROUP BY department_id;
```

---

## Best Practices

- Include every non-aggregated column in the `GROUP BY` clause.
- Use `WHERE` to filter rows before grouping.
- Use `HAVING` only to filter aggregated results.
- Keep the clause order:
  - WHERE
  - GROUP BY
  - HAVING
  - ORDER BY

---

## Key Takeaways

- `LISTAGG()` combines multiple row values into a single string.
- `GROUP BY` groups rows before aggregate functions are calculated.
- Missing columns in `GROUP BY` cause the `ORA-00937` error.
- Column aliases are allowed in `ORDER BY` but not in `GROUP BY`.
- `WHERE` filters rows, while `HAVING` filters groups.
- Aggregate functions can be nested up to two levels.
