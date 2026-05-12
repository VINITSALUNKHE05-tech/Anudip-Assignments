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
|  1 | Rohitn | HR   |  10000 |
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
mysql> 
mysql> CALL GetEmployeeCount(@total);
Query OK, 1 row affected (0.006 sec)

mysql> SELECT @total;
+--------+
| @total |
+--------+
|      2 |
+--------+
1 row in set (0.000 sec)

