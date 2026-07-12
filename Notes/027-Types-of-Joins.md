# 027 - Types of Joins

## Topics Covered

- Oracle Join Syntax
- SQL:1999 Join Syntax
- Oracle Proprietary Joins
- SQL Standard Joins
- Join Conditions
- Table Qualification
- Minimum Join Rule

---

## Types of Joins

Oracle supports two main join syntaxes.

### Oracle Proprietary Syntax (Oracle 8i and Earlier)

- Equijoin
- Nonequijoin
- Outer Join
- Self Join

These joins define the relationship between tables using the `WHERE` clause.

---

### SQL:1999 Standard Syntax

The SQL standard introduced a more readable join syntax using the `JOIN` keyword.

Common SQL joins include:

- INNER JOIN
- LEFT OUTER JOIN
- RIGHT OUTER JOIN
- FULL OUTER JOIN
- CROSS JOIN
- NATURAL JOIN
- JOIN ... USING
- JOIN ... ON

This syntax is portable across most relational database systems.

---

## Oracle Join Syntax

Oracle proprietary joins specify the relationship inside the `WHERE` clause.

### Syntax

```sql
SELECT table1.column,
       table2.column
FROM table1, table2
WHERE table1.column = table2.column;
```

---

## Table Qualification

When working with multiple tables:

- Prefix column names with the table name or alias.
- This improves readability.
- It prevents ambiguity when two tables contain columns with the same name.

Example:

```sql
employees.department_id
departments.department_id
```

---

## Minimum Join Rule

When joining multiple tables:

```
Minimum Join Conditions = Number of Tables − 1
```

Examples:

| Tables | Minimum Join Conditions |
|---------|------------------------:|
| 2 | 1 |
| 3 | 2 |
| 4 | 3 |
| 5 | 4 |

---

## Best Practices

- Use meaningful table aliases.
- Always qualify shared column names.
- Prefer SQL:1999 JOIN syntax in new applications.
- Ensure every table is connected through a valid join condition.

---

## Key Takeaways

- Oracle supports both proprietary and SQL standard join syntax.
- Oracle syntax places join conditions inside the `WHERE` clause.
- SQL:1999 uses explicit `JOIN` keywords.
- Always qualify duplicate column names.
- Joining **n** tables requires at least **n − 1** join conditions.
