# 022-Using-Conversion-Functions-Part4 - General Functions

## Topics Covered

- NVL()
- NVL2()
- NULLIF()
- COALESCE()

---

## General Functions

General functions are commonly used to handle `NULL` values and return alternative results.

---

## NVL()

Replaces a `NULL` value with another value.

```sql
NVL(expression, replacement)
```

Example:

```sql
NVL(commission_pct, 0)
```

> Both arguments must have compatible data types.

---

## NVL2()

Returns one value if the expression is NOT NULL, and another value if it IS NULL.

```sql
NVL2(expression, value_if_not_null, value_if_null)
```

Example:

```sql
NVL2(commission_pct, 'Has Commission', 'No Commission')
```

---

## NULLIF()

Compares two expressions.

Returns `NULL` if they are equal; otherwise returns the first expression.

```sql
NULLIF(expr1, expr2)
```

---

## COALESCE()

Returns the first non-NULL value from the list.

```sql
COALESCE(expr1, expr2, expr3, ...)
```

Example:

```sql
COALESCE(commission_pct, manager_id, salary)
```

---

## Key Takeaways

- `NVL()` replaces NULL values.
- `NVL2()` returns different values depending on whether the expression is NULL.
- `NULLIF()` returns NULL when two expressions are equal.
- `COALESCE()` returns the first non-NULL value.
- `COALESCE()` can often replace multiple nested `NVL()` calls.
