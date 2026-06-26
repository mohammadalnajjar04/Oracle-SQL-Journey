# 017 - Number Functions

## Topics Covered

- Numeric functions in Oracle SQL.
- ROUND function.
- TRUNC function.
- MOD function.
- Using numeric functions with DUAL table.

---

## Numeric Functions

Numeric functions accept numeric values as input and return numeric values.

### ROUND

Rounds a number to the specified decimal place.

```sql
ROUND(number, decimal_places)
```

Examples:

```sql
SELECT ROUND(10.499, 2) FROM DUAL;
SELECT ROUND(55.993, -1) FROM DUAL;
```

---

### TRUNC

Removes decimal digits without rounding.

```sql
TRUNC(number, decimal_places)
```

Examples:

```sql
SELECT TRUNC(10.6565, 2) FROM DUAL;
SELECT TRUNC(998.6565, -2) FROM DUAL;
```

---

### MOD

Returns the remainder after division.

```sql
MOD(m, n)
```

Examples:

```sql
SELECT MOD(15,2) FROM DUAL;
SELECT MOD(15,3) FROM DUAL;
```

Common use:

- Check if a number is even or odd.
- `MOD(number,2)=0` → Even.
- `MOD(number,2)<>0` → Odd.

---

## Key Takeaways

- ROUND performs mathematical rounding.
- TRUNC cuts digits without rounding.
- MOD returns the remainder after division.
- Numeric functions are frequently used in calculations and reports.
