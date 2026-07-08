# 019 - Using Conversion Functions Part 1

## Topics Covered

- Data type conversion.
- Implicit data type conversion.
- Explicit data type conversion.
- Conversion functions.
- TO_CHAR().
- TO_DATE().
- TO_NUMBER().
- Date and time format models.

---

## Data Type Conversion

Oracle allows data to be converted from one data type to another when necessary.

There are two types of conversions:

- Implicit Conversion
- Explicit Conversion

---

## Implicit Conversion

Implicit conversion is performed automatically by Oracle whenever compatible data types are used together.

Examples:

- Character → Number
- Character → Date
- Number → Character
- Date → Character

Although Oracle supports implicit conversion, using explicit conversion is considered a better practice.

---

## Explicit Conversion

Explicit conversion is performed manually using Oracle conversion functions.

The main conversion functions are:

- TO_CHAR()
- TO_DATE()
- TO_NUMBER()

These functions provide better readability, accuracy, and control.

---

## TO_CHAR()

Converts:

- DATE → CHAR
- NUMBER → CHAR

Commonly used for formatting dates and numbers before displaying them.

---

## TO_DATE()

Converts:

- CHAR → DATE

Used when converting a text value into an Oracle DATE.

---

## TO_NUMBER()

Converts:

- CHAR → NUMBER

Used when numeric values are stored as text.

---

## Date Format Models

Common date format elements include:

| Format | Description |
|---------|-------------|
| YYYY | Four-digit year |
| YY | Two-digit year |
| MM | Month number |
| MONTH | Full month name |
| MON | Month abbreviation |
| DD | Day of month |
| DAY | Full day name |
| DY | Day abbreviation |

---

## Time Format Models

| Format | Description |
|---------|-------------|
| HH | 12-hour format |
| HH24 | 24-hour format |
| MI | Minutes |
| SS | Seconds |
| AM / PM | Meridian indicator |

---

## Best Practices

- Prefer explicit conversion over implicit conversion.
- Always specify a format model when using TO_DATE().
- Use TO_CHAR() to display dates and numbers in a readable format.
- Avoid relying on Oracle's default date format.

---

## Summary

In this lesson, I learned how Oracle handles data type conversion. I understood the difference between implicit and explicit conversion and became familiar with the three main conversion functions: TO_CHAR(), TO_DATE(), and TO_NUMBER(). I also learned the most common date and time format models used when formatting Oracle values.
