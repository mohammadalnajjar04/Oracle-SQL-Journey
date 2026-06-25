# 012 - Restricting and Sorting Part 3

## Topics Covered

- Operator precedence.
- Using parentheses to control evaluation.
- ORDER BY clause.
- ASC and DESC sorting.
- Sorting after filtering with WHERE.
- Sorting NULL values.
- NULLS FIRST and NULLS LAST.
- Sorting using column aliases.
- Sorting using expressions.

---

## Important Notes

### Operator Precedence

Default evaluation order:

1. Arithmetic operators
2. Concatenation (||)
3. Comparison operators
4. IS NULL, LIKE, IN
5. BETWEEN
6. NOT
7. AND
8. OR

Use parentheses `()` to override the default order.

---

### ORDER BY

Sorts the query result.

Default:

```sql
ORDER BY column;
```

Ascending:

```sql
ORDER BY column ASC;
```

Descending:

```sql
ORDER BY column DESC;
```

---

### WHERE + ORDER BY

Filter first, then sort.

```sql
SELECT *
FROM employees
WHERE department_id = 90
ORDER BY employee_id;
```

---

### NULL Values

Ascending order places NULL values last.

Use:

```sql
NULLS FIRST
```

or

```sql
NULLS LAST
```

---

### Sorting by Alias

```sql
SELECT first_name n
FROM employees
ORDER BY n;
```

---

### Sorting by Expression

```sql
ORDER BY salary + 100;
```
