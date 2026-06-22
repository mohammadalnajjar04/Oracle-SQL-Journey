# 004 - Introduction Part 2

## Topics Covered

* Primary Key
* Foreign Key
* SQL and Oracle Database
* SQL Developer and SQL*Plus
* Types of SQL Statements
* HR Schema Overview

---

## Primary Key

* Uniquely identifies each row in a table.
* Cannot contain duplicate values.
* Usually cannot be changed.

Example:

* employee_id
* department_id

---

## Foreign Key

* Used to create relationships between tables.
* References a Primary Key or Unique Key in another table.
* Helps maintain data integrity.

Example:

* department_id in EMPLOYEES references department_id in DEPARTMENTS.

---

## SQL

SQL (Structured Query Language) is used to:

* Access data
* Retrieve data
* Insert data
* Update data
* Delete data

Oracle databases are accessed using SQL.

---

## SQL Development Tools

### SQL*Plus

Command-line tool for executing SQL statements.

### Oracle SQL Developer

Graphical tool used to write and manage SQL code.

---

## Types of SQL Statements

### DML (Data Manipulation Language)

* SELECT
* INSERT
* UPDATE
* DELETE
* MERGE

### DDL (Data Definition Language)

* CREATE
* ALTER
* DROP
* RENAME
* TRUNCATE

### DCL (Data Control Language)

* GRANT
* REVOKE

### TCL (Transaction Control Language)

* COMMIT
* ROLLBACK
* SAVEPOINT

---

## HR Schema

The HR schema is a sample database used throughout the course.

Main tables:

* EMPLOYEES
* DEPARTMENTS
* JOBS
* JOB_HISTORY
* LOCATIONS
* COUNTRIES
* REGIONS

These tables are connected through relationships and keys.

---

## Key Takeaways

* Learned the difference between Primary Keys and Foreign Keys.
* Understood how tables are related in a relational database.
* Learned the role of SQL in accessing Oracle databases.
* Learned the difference between SQL*Plus and SQL Developer.
* Learned the main categories of SQL statements.
* Got familiar with the HR Schema used in the course.
