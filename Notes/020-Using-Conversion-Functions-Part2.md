# 020 - Using Conversion Functions Part 2

## Topics Covered

- Using `TO_CHAR` with DATE values.
- Formatting dates and time.
- 12-hour (`HH`) and 24-hour (`HH24`) time formats.
- Using `FM` to remove leading zeros and extra spaces.
- Displaying custom text inside date formats.
- Formatting ordinal numbers using `TH`, `SP`, and `SPTH`.
- Filtering DATE values using `TO_CHAR`.

---

## TO_CHAR Function

Converts a DATE value into formatted text.

```sql
TO_CHAR(date, 'format_model')
```

---

## Common Date Format Elements

| Format | Description |
|---------|-------------|
| DD | Day of the month |
| MM | Month number |
| MON | Month abbreviation |
| MONTH | Full month name |
| YYYY | Four-digit year |
| HH | 12-hour format |
| HH24 | 24-hour format |
| MI | Minutes |
| SS | Seconds |
| AM / PM | Meridian indicator |

---

## FM Format Modifier

The `FM` modifier removes leading zeros and extra spaces.

Example:

```sql
TO_CHAR(hire_date, 'FMDD Month YYYY')
```

---

## Displaying Custom Text

Custom text can be included inside double quotes.

Example:

```sql
TO_CHAR(SYSDATE, 'FMDD "OF" Month YYYY')
```

---

## Formatting Numbers

- `TH` → Ordinal suffix (1st, 2nd, 3rd...)
- `SP` → Spelled-out number
- `SPTH` → Spelled-out ordinal number

Example:

```sql
TO_CHAR(SYSDATE, 'FMDDTH "OF" Month YYYY')
```

---

## Filtering Dates

Filter employees hired in a specific year:

```sql
WHERE TO_CHAR(hire_date, 'YYYY') = '2003'
```

Filter employees hired in February:

```sql
WHERE TO_CHAR(hire_date, 'MM') = '02'
```

Using `FM`:

```sql
WHERE TO_CHAR(hire_date, 'FMMM') = '2'
```

---

## Key Takeaways

- `TO_CHAR` converts DATE values into formatted text.
- Format models determine how dates are displayed.
- `FM` removes leading zeros and padded spaces.
- Custom text can be embedded using double quotes.
- `TO_CHAR` can be used in both `SELECT` and `WHERE` clauses.
