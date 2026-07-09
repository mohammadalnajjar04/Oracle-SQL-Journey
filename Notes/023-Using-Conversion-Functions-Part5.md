# 023-Using-Conversion-Functions-Part5 - (Conditional Expressions)

## Topics Covered

- CASE Expression
- DECODE Function
- Conditional logic in SQL
- IF-THEN-ELSE behavior

---

## Conditional Expressions

Conditional expressions allow SQL statements to perform IF-THEN-ELSE logic.

Oracle provides two approaches:

- CASE Expression (ANSI SQL Standard)
- DECODE Function (Oracle-specific)

---

## CASE Expression

Evaluates conditions and returns a corresponding result.

### Simple CASE

```sql
CASE expression
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    ELSE default_result
END
```

### Searched CASE

```sql
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ELSE default_result
END
```

---

## DECODE Function

Oracle-specific alternative to CASE.

```sql
DECODE(expression,
       search1, result1,
       search2, result2,
       default_result)
```

---

## CASE vs DECODE

| CASE | DECODE |
|------|--------|
| ANSI SQL Standard | Oracle-specific |
| Supports complex conditions | Supports equality only |
| More flexible | Simpler syntax |

---

## Best Practice

- Use **CASE** for new SQL code.
- Use **DECODE** mainly when maintaining legacy Oracle applications.

---

## Key Takeaways

- CASE provides IF-THEN-ELSE logic in SQL.
- CASE is more powerful and flexible than DECODE.
- DECODE only compares equality.
- CASE is recommended for most modern Oracle SQL queries.
