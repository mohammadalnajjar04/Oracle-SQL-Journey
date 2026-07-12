# 026 - Joins and Cartesian Products

## Topics Covered

- Introduction to Joins
- Retrieving Data from Multiple Tables
- Primary Key & Foreign Key
- Cartesian Products
- Join Conditions
- HR Schema Relationships

---

## What is a Join?

A join combines related data from two or more tables into a single result set.

Tables are connected using a common column, typically a **Primary Key (PK)** and a **Foreign Key (FK)**.

Example:

- `DEPARTMENTS.department_id` → Primary Key
- `EMPLOYEES.department_id` → Foreign Key

---

## Why Do We Need Joins?

Instead of storing duplicate information in one table, databases separate related data into multiple tables.

Joins allow us to retrieve related information without data duplication.

---

## Cartesian Product

A Cartesian Product occurs when every row from the first table is combined with every row from the second table.

This usually happens when no valid join condition is specified.

Result:

```
Rows in Table A × Rows in Table B
```

For example:

- Employees = 107 rows
- Departments = 27 rows

Result:

```
107 × 27 = 2889 rows
```

---

## Example

```sql
SELECT
    employees.employee_id,
    employees.first_name,
    departments.department_name
FROM employees, departments;
```

Since no join condition exists, Oracle returns a Cartesian Product.

---

## Join Condition

A join condition specifies how two tables are related.

Example:

```sql
employees.department_id = departments.department_id
```

This tells Oracle which rows belong together.

---

## Best Practices

- Always include a valid join condition.
- Use table aliases to improve readability.
- Prefix column names with table names or aliases when multiple tables contain the same column names.
- Avoid Cartesian Products unless intentionally required.

---

## Key Takeaways

- Joins retrieve related data from multiple tables.
- Tables are linked using Primary Keys and Foreign Keys.
- Missing join conditions produce Cartesian Products.
- A Cartesian Product returns every possible row combination.
- Always verify the join condition before executing multi-table queries.
