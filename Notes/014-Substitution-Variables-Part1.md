# 014 - Substitution Variables Part 1

## Topics Covered

- Introduction to substitution variables.
- Single ampersand (&).
- Double ampersand (&&).
- Using variables in WHERE clauses.
- Using variables with character values.
- Dynamic ORDER BY.
- Dynamic column names.
- Dynamic conditions.

---

## Important Notes

### What are Substitution Variables?

Substitution variables allow users to provide input at runtime without modifying the SQL statement.

---

### Single Ampersand (&)

The `&` symbol prompts the user for a value every time the statement is executed.

Example:

```sql
WHERE employee_id = &employee_num;
```

---

### Character Values

Character values must be enclosed in single quotes.

Example:

```sql
WHERE first_name = '&ename';
```

Another option is to include the quotes when entering the value.

---

### Dynamic SQL

Substitution variables can also be used for:

- Column names
- WHERE conditions
- ORDER BY clauses
- Table names

Example:

```sql
SELECT employee_id, last_name, &column_name
FROM employees
WHERE &condition
ORDER BY &order_column;
```

---

## Summary

This lesson introduced substitution variables, allowing SQL statements to become dynamic by accepting user input during execution.
