# 021 - Using Conversion Functions Part 3

## Topics Covered

- Using `TO_CHAR` with NUMBER values.
- Number format models.
- Using `TO_NUMBER`.
- Using `TO_DATE`.
- Using the `FX` modifier.
- Difference between `RR` and `YY` year formats.

---

## TO_CHAR with Numbers

Converts a NUMBER into formatted text.

```sql
TO_CHAR(number, 'format_model')
```

---

## Common Number Format Elements

| Format | Description |
|---------|-------------|
| 9 | Digit placeholder |
| 0 | Displays leading zeros |
| . | Decimal point |
| , | Thousands separator |
| G | Locale-specific group separator |
| $ | Currency symbol |

---

## TO_NUMBER

Converts a character string into a NUMBER.

```sql
TO_NUMBER(char, 'format_model')
```

Example:

```sql
TO_NUMBER('$1,000','$9,999')
```

---

## TO_DATE

Converts a character string into a DATE.

```sql
TO_DATE(char,'format_model')
```

Example:

```sql
TO_DATE('10-11-2003','DD-MM-YYYY')
```

---

## FX Modifier

`FX` requires the input string to exactly match the specified format model.

Example:

```sql
TO_DATE('10-11-2003','FXDD-MM-YYYY')
```

---

## RR vs YY

- `RR` intelligently determines the century based on Oracle's RR rules.
- `YY` always uses the current century.

---

## Key Takeaways

- `TO_CHAR` formats numbers for display.
- `TO_NUMBER` converts text into numeric values.
- `TO_DATE` converts text into DATE values.
- `FX` enforces exact format matching.
- Prefer explicit conversion functions over implicit conversion.
