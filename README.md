# MariaDB CRUD Operations – World Database Lab

## Overview

This project documents a hands-on MariaDB database lab using the `world` sample database.

The lab demonstrates how to perform common SQL database operations including inserting, updating, deleting, querying, and restoring data from an SQL backup file.

## Objectives

- Connect to a MariaDB database
- Work with the `world` database
- Query data using SQL
- Insert records into a table
- Update existing records
- Delete records
- Restore database data using an SQL backup file
- Verify database tables and records

## Environment

- **Cloud Platform:** AWS
- **Compute:** EC2 Command Host
- **Database:** MariaDB
- **Database:** `world`
- **Interface:** MariaDB command-line client
- **Operating System:** Linux

## Database Structure

The `world` database contains three tables:

```text
world
├── city
├── country
└── countrylanguage
```

## SQL Operations

### SELECT

Used to retrieve data from the database.

```sql
USE world;

SELECT * FROM country;
```

### INSERT

Two records were inserted into the `country` table.

```sql
INSERT INTO country VALUES
('IRL','Ireland','Europe','British Islands',70273.00,1921,3775100,76.8,75921.00,73132.00,'Ireland/Éire','Republic',1447,'IE');

INSERT INTO country VALUES
('AUS','Australia','Oceania','Australia and New Zealand',7741220.00,1901,18886000,79.8,351182.00,392911.00,'Australia','Constitutional Monarchy, Federation',135,'AU');
```

The records were verified using:

```sql
SELECT * FROM country
WHERE Code IN ('IRL', 'AUS');
```

### UPDATE

The population values were updated:

```sql
UPDATE country
SET Population = 0;
```

The `Population` and `SurfaceArea` columns were subsequently updated:

```sql
UPDATE country
SET Population = 100,
    SurfaceArea = 100;
```

### DELETE

Foreign key checks were disabled as required by the lab:

```sql
SET FOREIGN_KEY_CHECKS = 0;
```

All rows were then deleted:

```sql
DELETE FROM country;
```

The table was verified using:

```sql
SELECT * FROM country;
```

The result was an empty table.

### Database Restoration

The database was restored using the provided SQL backup file:

```bash
mysql -u root --password='[LAB_PASSWORD]' < /home/ec2-user/world.sql
```

After restoration, the database was verified using:

```sql
USE world;

SHOW TABLES;

SELECT * FROM country;
```

The database contained:

- `city`
- `country`
- `countrylanguage`

## Key Concepts Learned

| SQL Command | Purpose |
|---|---|
| `SELECT` | Retrieve data |
| `INSERT` | Add records |
| `UPDATE` | Modify records |
| `DELETE` | Remove records |
| `USE` | Select a database |
| `SHOW DATABASES` | Display databases |
| `SHOW TABLES` | Display tables |
| `WHERE` | Filter records |

## Important Lessons

### UPDATE without WHERE

```sql
UPDATE country SET Population = 0;
```

Without a `WHERE` clause, all rows are affected.

### DELETE without WHERE

```sql
DELETE FROM country;
```

Without a `WHERE` clause, all rows are deleted.

### Backup and Restoration

The `world.sql` backup file was used to restore the database after the DELETE operation.

## Skills Demonstrated

- SQL
- MariaDB
- Database administration
- CRUD operations
- Data manipulation
- SQL scripting
- Database backup and restoration
- Linux command line
- AWS EC2
- AWS Systems Manager Session Manager
- Database troubleshooting and verification

## Project Outcome

Successfully performed SQL CRUD operations and restored the `world` database using an SQL backup file in an AWS-hosted Linux environment.

## Security Note

No passwords, AWS access keys, secret keys, or other sensitive credentials are stored in this repository.

## Screenshots

### 1. Show Databases
![Show Databases](screenshots/01-show-databases.png)

### 2. Insert Data
![Insert Data](screenshots/02-insert-data.png)

### 3. Update Data
![Update Data](screenshots/03-update-data.png)

### 4. Delete Data
![Delete Data](screenshots/04-delete-data.png)

### 5. Restore Database
![Restore Database](screenshots/05-restore-database.png)

## Skills Demonstrated

- SQL and relational database operations
- MariaDB database administration
- CRUD operations
- Data manipulation using SQL
- SQL scripting
- Database backup and restoration
- Linux command-line operations
- AWS EC2
- AWS Systems Manager Session Manager
- Database verification and troubleshooting

## Key Takeaways

This lab strengthened my practical understanding of relational databases and SQL operations. I practiced inserting, updating, deleting, querying, and restoring database data in a MariaDB environment hosted on AWS.

I also learned the importance of verifying database changes after each operation and understanding the impact of SQL statements that modify multiple records.

## Project Outcome

Successfully completed a hands-on MariaDB database lab in an AWS environment, demonstrating practical skills in SQL, database administration, Linux, AWS infrastructure, and database backup restoration.
