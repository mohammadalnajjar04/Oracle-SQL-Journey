# 028 - Equijoin

## Topics Covered

- Equijoin
- Join Conditions
- Table Prefixes
- Table Aliases
- Joining Multiple Tables

---

## What is an Equijoin?

An **Equijoin** retrieves related rows from two or more tables by comparing columns using the equality (`=`) operator.

It is the most common type of join and usually connects a **Primary Key** with a **Foreign Key**.

Example:

```sql
employees.department_id = departments.department_id
```

---

## Join Condition

A join condition defines how tables are related.

Without a valid join condition, Oracle returns a Cartesian Product.

Example:

```sql
WHERE employees.department_id = departments.department_id
```

---

## Qualifying Column Names

When multiple tables contain columns with the same name, prefix the column with the table name or table alias.

Example:

```sql
employees.department_id
departments.department_id
```

This avoids ambiguity and improves readability.

---

## Table Aliases

Aliases provide short names for tables and simplify SQL statements.

Example:

```sql
FROM employees emp,
     departments dept
```

Then reference columns like:

```sql
emp.employee_id
dept.department_name
```

Aliases are valid only within the current SQL statement.

---

## Joining Multiple Tables

To join multiple tables, each table must be connected through a join condition.

Minimum join conditions:

```
Number of Tables − 1
```

Example:

Three tables require two join conditions.

```sql
employees.department_id = departments.department_id

departments.location_id = locations.location_id
```

---

## Best Practices

- Always use meaningful table aliases.
- Qualify duplicate column names.
- Use valid join conditions.
- Ensure every table is connected.
- Prefer aliases for better readability.

---

## Key Takeaways

- Equijoins compare columns using the `=` operator.
- They commonly relate Primary Keys and Foreign Keys.
- Table aliases simplify SQL queries.
- Missing join conditions create Cartesian Products.
- Joining **n** tables requires at least **n − 1** join conditions.
