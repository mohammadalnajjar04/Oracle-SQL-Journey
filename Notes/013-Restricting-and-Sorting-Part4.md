# 013 - Restricting and Sorting Part 4

## Topics Covered

- Sorting by columns outside the SELECT list.
- Sorting using multiple columns.
- Sorting using column positions.
- FETCH FIRST clause.
- OFFSET clause.
- FETCH PERCENT.
- WITH TIES.

---

## Important Notes

### Sorting by Non-Selected Columns

Oracle allows sorting by columns that are not displayed in the SELECT list.

Example:

```sql
SELECT employee_id, salary
FROM employees
ORDER BY department_id;
```

---

### Sorting by Multiple Columns

You can sort by more than one column.

```sql
ORDER BY department_id ASC, first_name DESC;
```

Oracle sorts by the first column, then sorts rows with equal values using the next column.

---

### Sorting by Column Position

Instead of writing the column name, you can use its position in the SELECT statement.

```sql
ORDER BY 1;
```

or

```sql
ORDER BY 1,3;
```

---

### FETCH FIRST

Limits the number of returned rows.

```sql
FETCH FIRST 5 ROWS ONLY;
```

---

### FETCH PERCENT

Returns a percentage of the rows.

```sql
FETCH FIRST 50 PERCENT ROWS ONLY;
```

---

### OFFSET

Skips a number of rows before returning data.

```sql
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;
```

---

### WITH TIES

Returns additional rows if they have the same value as the last returned row.

```sql
FETCH FIRST 2 ROWS WITH TIES;
```

---

## Summary

This lesson introduced advanced ORDER BY techniques, including sorting by multiple columns, sorting by column positions, and limiting returned rows using FETCH, OFFSET, and WITH TIES.
