/* Lab 2 Question :

Database Schema: Consider a simple database with one tables: BankAccount BankAccount

Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and            account_balance of all account holders from the BankAccount table. 
   
Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.
  
Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.

ANSWER : */
 
mysql> show databases; /* Used to display all databases available in the MySQL server. */
+---------------------------+
| Database                  |
+---------------------------+
| bankaccount               |
| ecommerce                 |
| information_schema        |
| mysql                     |
| performance_schema        |
| sakila                    |
| student_management_system |
| sys                       |
| world                     |
+---------------------------+
9 rows in set (0.00 sec)

mysql> use BankAccount; /* Used to select the BankAccount database so you can work inside it. */
Database changed

mysql> show tables; /* Used to display all tables present in the currently selected database. */
+-----------------------+
| Tables_in_bankaccount |
+-----------------------+
| bankaccount           |
+-----------------------+
1 row in set (0.04 sec)

mysql> desc BankAccount; /* Used to show the structure of the BankAccount table. */
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| account_id          | int         | NO   | PRI | NULL    |       |
| account_holder_name | varchar(10) | NO   |     | NULL    |       |
| account_balance     | double      | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

/* TASK 1 */
mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance) values ('101','ROHIT','50000.00'); /* used to add new records (rows) into the BankAccount table in MySQL. */
Query OK, 1 row affected (0.04 sec)

mysql> SELECT * FROM BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | ROHIT               |           50000 |
+------------+---------------------+-----------------+
1 row in set (0.03 sec)

mysql> INSERT INTO BankAccount values ('102','ROHIT','50000.00'),('103','VINIT','60000.00'),('104','ABCD','5000.00'),('105','SAMADHAN','80000.00');
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM BankAccount; /* Used to retrieve and display all records and all columns from the BankAccount table. */
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | ROHIT               |           50000 |
|        102 | ROHIT               |           50000 |
|        103 | VINIT               |           60000 |
|        104 | ABCD                |            5000 |
|        105 | SAMADHAN            |           80000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

/* TASK 2 */
mysql> SELECT account_holder_name, account_balance FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| ROHIT               |           50000 |
| ROHIT               |           50000 |
| VINIT               |           60000 |
| ABCD                |            5000 |
| SAMADHAN            |           80000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

/* TASK 3 */
mysql> SELECT account_holder_name, account_balance FROM BankAccount where account_balance > 50000.00;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| VINIT               |           60000 |
| SAMADHAN            |           80000 |
+---------------------+-----------------+
2 rows in set (0.03 sec)

/* TASK 4 */
mysql> UPDATE BankAccount SET account_balance = 100000.00 WHERE account_id = 101;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | ROHIT               |          100000 |
|        102 | ROHIT               |           50000 |
|        103 | VINIT               |           60000 |
|        104 | ABCD                |            5000 |
|        105 | SAMADHAN            |           80000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> UPDATE BankAccount SET account_holder_name = 'ANUP' WHERE account_id = 102;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | ROHIT               |          100000 |
|        102 | ANUP                |           50000 |
|        103 | VINIT               |           60000 |
|        104 | ABCD                |            5000 |
|        105 | SAMADHAN            |           80000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql>
