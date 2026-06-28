# 018 - Date Functions

## Topics Covered

- Oracle DATE data type.
- SYSDATE function.
- Date arithmetic.
- MONTHS_BETWEEN.
- ADD_MONTHS.
- NEXT_DAY.
- LAST_DAY.
- ROUND and TRUNC with dates.
- Nested functions.

---

## Oracle DATE

Oracle stores dates internally including:

- Year
- Month
- Day
- Hour
- Minute
- Second

Default date format:

```
DD-MON-RR
```

---

## SYSDATE

Returns the current date and time from the Oracle database server.

Example:

```sql
SELECT SYSDATE
FROM DUAL;
```

---

## Date Arithmetic

Oracle allows arithmetic operations on dates.

### Add Days

```sql
SYSDATE + number
```

Adds days to a date.

---

### Subtract Days

```sql
SYSDATE - number
```

Subtracts days from a date.

---

### Difference Between Dates

```sql
date1 - date2
```

Returns the number of days between two dates.

---

### Add Hours

```sql
date + hours / 24
```

Since one day equals 24 hours.

---

## Date Functions

### MONTHS_BETWEEN()

Returns the number of months between two dates.

Example:

```sql
MONTHS_BETWEEN(SYSDATE, HIRE_DATE)
```

---

### ADD_MONTHS()

Adds or subtracts months.

Example:

```sql
ADD_MONTHS(HIRE_DATE, 6)
```

---

### NEXT_DAY()

Returns the next specified weekday.

Example:

```sql
NEXT_DAY(SYSDATE, 'FRIDAY')
```

---

### LAST_DAY()

Returns the last day of the month.

Example:

```sql
LAST_DAY(SYSDATE)
```

---

## ROUND() and TRUNC() with Dates

These functions can also work with dates.

Examples:

```sql
ROUND(HIRE_DATE, 'MONTH')

TRUNC(HIRE_DATE, 'MONTH')

ROUND(HIRE_DATE, 'YEAR')

TRUNC(HIRE_DATE, 'YEAR')
```

---

## Nested Functions

Oracle allows nesting multiple functions.

Example:

```sql
LPAD(
    SUBSTR(
        UPPER(FIRST_NAME),
        1,
        3
    ),
    10,
    '*'
)
```

Nested functions are evaluated from the innermost function outward.

---

## Key Takeaways

- Oracle DATE stores both date and time.
- SYSDATE returns the current server date and time.
- Dates can be added or subtracted using arithmetic operators.
- MONTHS_BETWEEN is more accurate than dividing days by 30.
- ADD_MONTHS is used to shift dates by months.
- NEXT_DAY returns the next specified weekday.
- LAST_DAY returns the last day of the current month.
- ROUND and TRUNC work with both numbers and dates.
- Oracle supports nested functions for complex expressions.
