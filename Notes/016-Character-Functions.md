# 016 - Character Functions

## Topics Covered

- Introduction to SQL Functions.
- Single-row vs Multiple-row functions.
- Character functions.
- Case conversion functions.
- Character manipulation functions.
- Using DUAL table.
- TRIM function.

---

## SQL Functions

A SQL function performs an operation and always returns a value.

Functions can be used to:

- Perform calculations.
- Modify data.
- Format output.
- Convert data types.
- Manipulate strings.

---

## Types of SQL Functions

### Single-Row Functions

- Return one result for each row.
- Can be used in:
  - SELECT
  - WHERE
  - ORDER BY
- Can be nested.
- May change the data type.

### Multiple-Row Functions

- Return one result for a group of rows.
- Usually used with aggregate functions.

---

# Character Functions

Character functions are divided into two categories.

## Case Conversion Functions

### UPPER()

Converts all letters to uppercase.

Example:

```sql
SELECT UPPER(first_name)
FROM employees;
```

---

### LOWER()

Converts all letters to lowercase.

Example:

```sql
SELECT LOWER(first_name)
FROM employees;
```

---

### INITCAP()

Capitalizes the first letter of each word.

Example:

```sql
SELECT INITCAP(first_name)
FROM employees;
```

---

## Character Manipulation Functions

### CONCAT()

Joins two strings together.

> CONCAT accepts only two arguments.

---

### SUBSTR()

Returns part of a string.

Examples:

- Start position
- Length
- Negative starting position

---

### LENGTH()

Returns the number of characters.

---

### INSTR()

Returns the position of a character or substring.

Supports:

- Starting position
- Occurrence number

---

### LPAD()

Pads characters on the left.

---

### RPAD()

Pads characters on the right.

---

### REPLACE()

Replaces characters or substrings.

---

### TRIM()

Removes unwanted characters.

Supports:

- LEADING
- TRAILING
- BOTH

---

## DUAL Table

DUAL is a special Oracle table that contains one row.

It is commonly used to test:

- Functions
- Calculations
- Expressions

Example:

```sql
SELECT 1 + 5
FROM DUAL;
```

---

## Important Notes

- Character functions are among the most frequently used SQL functions.
- Single-row functions return one result for each row.
- UPPER() is commonly used for case-insensitive searching.
- CONCAT() accepts only two arguments, while `||` is more flexible.
- DUAL is useful for testing functions without querying real tables.
