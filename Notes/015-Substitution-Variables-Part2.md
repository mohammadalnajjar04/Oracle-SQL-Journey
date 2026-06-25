# 015 - Substitution Variables Part 2

## Topics Covered

- DEFINE command.
- UNDEFINE command.
- ACCEPT command.
- VERIFY command.
- SET DEFINE OFF / ON.
- Using single (&) and double (&&) substitution variables.

---

## Important Notes

### DEFINE

The `DEFINE` command creates a substitution variable and assigns a value to it for the current SQL*Plus session.

Example:

```sql
DEFINE employee_num = 200
```

The variable can then be used as:

```sql
&employee_num
```

---

### UNDEFINE

The `UNDEFINE` command removes a previously defined variable.

Example:

```sql
UNDEFINE employee_num
```

---

### ACCEPT

The `ACCEPT` command prompts the user to enter a value with a custom message.

Example:

```sql
ACCEPT dept_id PROMPT 'Please enter department ID:'
```

---

### Double Ampersand (&&)

The `&&` operator defines the variable automatically and stores its value for reuse during the current session.

Example:

```sql
SELECT employee_id, &&column_name
FROM employees;
```

The next use of `&column_name` will not prompt again until the variable is undefined.

---

### VERIFY

The `VERIFY` command displays SQL statements before and after variable substitution.

Example:

```sql
SET VERIFY ON;
```

This helps understand how Oracle replaces substitution variables.

---

### SET DEFINE OFF

Disables substitution variable processing.

Useful when the ampersand (`&`) is part of the actual text.

Example:

```sql
SET DEFINE OFF;

SELECT *
FROM departments
WHERE department_name LIKE '%&t%';
```

Enable it again using:

```sql
SET DEFINE ON;
```

---

## Summary

This lesson introduced SQL*Plus commands used to manage substitution variables, including creating, removing, verifying, and disabling variable substitution. These commands are mainly useful when writing SQL scripts and interactive SQL*Plus sessions.
