# 007 - First Connection and Unlock HR Account Part 2

## Topics Covered

* Connecting to Oracle Database using SQL Developer.
* Understanding Container Database (CDB).
* Understanding Pluggable Database (PDB).
* Switching between containers.
* Unlocking the HR account.
* Creating a connection using the HR schema.
* Verifying database connectivity.

## Important Commands

### Show Current Container

```sql
SHOW CON_NAME;
```

### Display Available PDBs

```sql
SELECT NAME, OPEN_MODE FROM V$PDBS;
```

### Switch to PDB

```sql
ALTER SESSION SET CONTAINER=PDBORCL;
```

### Unlock HR Account

```sql
ALTER USER HR IDENTIFIED BY hr ACCOUNT UNLOCK;
```

### Check Current User

```sql
SHOW USER;
```

### Test Database Connection

```sql
SELECT * FROM DUAL;
```

## Important Notes

### SYS User

* Administrative account with the highest privileges.
* Used for database management tasks.
* Commonly connected using SYSDBA role.

### HR Schema

* Sample schema provided by Oracle.
* Used for learning SQL and database concepts.
* Contains sample tables such as Employees, Departments, Jobs, and Locations.

### PDB (Pluggable Database)

* A separate database inside the Container Database.
* User accounts such as HR are usually managed inside a PDB.
* Must switch to the correct PDB before unlocking HR.

## Practical Progress

* Oracle Database 19c installed successfully.
* SQL Developer installed and configured.
* SQL*Plus verified successfully.
* Connected to the database using SYSDBA.
* Explored available PDBs.
* Switched to the target PDB.
* Unlocked HR account successfully.
* Ready to start working with HR schema.

## Summary

In this lesson, I learned how Oracle connections work, how to identify and switch between containers, and how to unlock the HR account for practical SQL exercises. I successfully configured the Oracle environment on my local machine and verified connectivity using both SQL Developer and SQL*Plus.
