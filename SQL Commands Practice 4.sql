mysql> create database joints;
Query OK, 1 row affected (0.11 sec)

mysql> use joints;
Database changed
mysql> create table department(dept_id int primary key not null,dept_name varchar(30) not null);
Query OK, 0 rows affected (0.08 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.08 sec)

mysql> insert into department values(1,'HR'),(2,'IT'),(3,'FINANCE'),(4,'MARKETING');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM DEPARTMENT;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | FINANCE   |
|       4 | MARKETING |
+---------+-----------+
4 rows in set (0.00 sec)


mysql> CREATE TABLE EMPLOYEE(EMP_ID INT PRIMARY KEY NOT NULL,EMP_NAME VARCHAR(20) NOT NULL, dept_id int, foreign key (dept_id) references department (dept_id));
Query OK, 0 rows affected (0.09 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| EMP_ID   | int         | NO   | PRI | NULL    |       |
| EMP_NAME | varchar(20) | NO   |     | NULL    |       |
| dept_id  | int         | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> INSERT INTO EMPLOYEE VALUES (1,'RUSHI',1),(2,'ROHIT',2),(3,'VINIT',3),(4,'OM',NULL),(5,'RAM',4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM EMPLOYEE;
+--------+----------+---------+
| EMP_ID | EMP_NAME | dept_id |
+--------+----------+---------+
|      1 | RUSHI    |       1 |
|      2 | ROHIT    |       2 |
|      3 | VINIT    |       3 |
|      4 | OM       |    NULL |
|      5 | RAM      |       4 |
+--------+----------+---------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM DEPARTMENT;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | FINANCE   |
|       4 | MARKETING |
+---------+-----------+
4 rows in set (0.00 sec)


mysql> SELECT EMP_NAME,DEPT_NAME FROM EMPLOYEE INNER JOIN DEPARTMENT ON EMPLOYEE.DEPT_ID=DEPARTMENT.DEPT_ID;
+----------+-----------+
| EMP_NAME | DEPT_NAME |
+----------+-----------+
| RUSHI    | HR        |
| ROHIT    | IT        |
| VINIT    | FINANCE   |
| RAM      | MARKETING |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> SELECT EMP_NAME,DEPT_NAME FROM EMPLOYEE LEFT JOIN DEPARTMENT ON EMPLOYEE.DEPT_ID=DEPARTMENT.DEPT_ID;
+----------+-----------+
| EMP_NAME | DEPT_NAME |
+----------+-----------+
| RUSHI    | HR        |
| ROHIT    | IT        |
| VINIT    | FINANCE   |
| OM       | NULL      |
| RAM      | MARKETING |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> SELECT EMP_NAME,DEPT_NAME FROM EMPLOYEE RIGHT JOIN DEPARTMENT ON EMPLOYEE.DEPT_ID=DEPARTMENT.DEPT_ID;
+----------+-----------+
| EMP_NAME | DEPT_NAME |
+----------+-----------+
| RUSHI    | HR        |
| ROHIT    | IT        |
| VINIT    | FINANCE   |
| RAM      | MARKETING |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> SELECT EMP_NAME,DEPT_NAME FROM EMPLOYEE FULL JOIN DEPARTMENT;
+----------+-----------+
| EMP_NAME | DEPT_NAME |
+----------+-----------+
| RUSHI    | MARKETING |
| RUSHI    | FINANCE   |
| RUSHI    | IT        |
| RUSHI    | HR        |
| ROHIT    | MARKETING |
| ROHIT    | FINANCE   |
| ROHIT    | IT        |
| ROHIT    | HR        |
| VINIT    | MARKETING |
| VINIT    | FINANCE   |
| VINIT    | IT        |
| VINIT    | HR        |
| OM       | MARKETING |
| OM       | FINANCE   |
| OM       | IT        |
| OM       | HR        |
| RAM      | MARKETING |
| RAM      | FINANCE   |
| RAM      | IT        |
| RAM      | HR        |
+----------+-----------+
20 rows in set, 1 warning (0.01 sec)

mysql> SELECT EMP_NAME,DEPT_NAME FROM EMPLOYEE CROSS JOIN DEPARTMENT;
+----------+-----------+
| EMP_NAME | DEPT_NAME |
+----------+-----------+
| RUSHI    | MARKETING |
| RUSHI    | FINANCE   |
| RUSHI    | IT        |
| RUSHI    | HR        |
| ROHIT    | MARKETING |
| ROHIT    | FINANCE   |
| ROHIT    | IT        |
| ROHIT    | HR        |
| VINIT    | MARKETING |
| VINIT    | FINANCE   |
| VINIT    | IT        |
| VINIT    | HR        |
| OM       | MARKETING |
| OM       | FINANCE   |
| OM       | IT        |
| OM       | HR        |
| RAM      | MARKETING |
| RAM      | FINANCE   |
| RAM      | IT        |
| RAM      | HR        |
+----------+-----------+
20 rows in set (0.00 sec)

mysql> use store_procedure_example;
Database changed

mysql> create table employee(id int primary key not null, name varchar(20) not null,dept varchar(20) not null, salary int not null); 
Query OK, 0 rows affected (0.046 sec)

mysql> insert into employee value (1,'Rohit','HR',10000);
Query OK, 1 row affected (0.010 sec)

mysql> select * from employee;
+----+--------+------+--------+
| id | name   | dept | salary |
+----+--------+------+--------+
|  1 | Rohit  | HR   |  10000 |
+----+--------+------+--------+
1 row in set (0.001 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE GetEmployees()
    -> BEGIN
    ->     SELECT * FROM Employee;
    -> END //
Query OK, 0 rows affected (0.012 sec)

mysql> 
mysql> DELIMITER ;
mysql> call GetEmployees();
+----+--------+------+--------+
| id | name   | dept | salary |
+----+--------+------+--------+
|  1 | Rohit  | HR   |  10000 |
+----+--------+------+--------+
1 row in set (0.007 sec)

Query OK, 0 rows affected (0.008 sec)

mysql> call GetEmployees;
+----+--------+------+--------+
| id | name   | dept | salary |
+----+--------+------+--------+
|  1 | Rohit  | HR   |  10000 |
+----+--------+------+--------+
1 row in set (0.001 sec)

Query OK, 0 rows affected (0.001 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE GetEmployeeByDept3(IN dept VARCHAR(50))
    -> BEGIN
    ->     SELECT * 
    ->     FROM Employee
    ->     WHERE dept = name;
    -> END //
Query OK, 0 rows affected (0.006 sec)

mysql> 
mysql> DELIMITER ;
mysql> call GetEmployeeByDept3('IT');
Empty set (0.003 sec)

Query OK, 0 rows affected (0.003 sec)

mysql> call GetEmployeeByDept3('HR');
Empty set (0.001 sec)

Query OK, 0 rows affected (0.001 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE GetEmployeeByDept4(IN name VARCHAR(50))
    -> BEGIN
    ->     SELECT * 
    ->     FROM Employee
    ->     WHERE dept = name;
    -> END //
Query OK, 0 rows affected (0.008 sec)

mysql> 
mysql> DELIMITER ;
mysql> call GetEmployeeByDept4('HR');
+----+--------+------+--------+
| id | name   | dept | salary |
+----+--------+------+--------+
|  1 | Rohit  | HR   |  10000 |
+----+--------+------+--------+
1 row in set (0.003 sec)

Query OK, 0 rows affected (0.003 sec)

mysql> call GetEmployeeByDept4('IT');
Empty set (0.001 sec)

Query OK, 0 rows affected (0.001 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE AddEmployee(
    ->     IN  id INT,
    ->     IN name VARCHAR(50),
    ->     IN dept VARCHAR(50),
    ->     IN salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employee(id, name, dept, salary)
    ->     VALUES(id, name, dept, salary);
    -> END //
Query OK, 0 rows affected (0.005 sec)

mysql> 
mysql> DELIMITER ;
mysql> call AddEmployee(2,'Vinit','IT',12000);
Query OK, 1 row affected (0.005 sec)

mysql> select * from employee;
+----+--------+------+--------+
| id | name   | dept | salary |
+----+--------+------+--------+
|  1 | Rohit  | HR   |  10000 |
|  2 | Vinit  | IT   |  12000 |
+----+--------+------+--------+
2 rows in set (0.001 sec)

mysql> DELIMITER //
mysql> 
mysql> CREATE PROCEDURE GetEmployeeCount(OUT total INT)
    -> BEGIN
    ->     SELECT COUNT(*) INTO total
    ->     FROM Employee;
    -> END //
Query OK, 0 rows affected (0.004 sec)

mysql> 
mysql> DELIMITER ;
mysql> CALL GetEmployeeCount(@total);
Query OK, 1 row affected (0.006 sec)

mysql> SELECT @total;
+--------+
| @total |
+--------+
|      2 |
+--------+
1 row in set (0.000 sec)