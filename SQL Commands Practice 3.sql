mysql> show databases;
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

mysql> CREATE DATABASE Aggregation;
Query OK, 1 row affected (0.01 sec)

mysql> use Aggregation;
Database changed

mysql> CREATE TABLE product (product_id VARCHAR (10) NOT NULL PRIMARY KEY, product_name VARCHAR (20) NOT NULL, category VARCHAR (20) NOT NULL, selling_price DOUBLE (12,2) NOT NULL, original_price DOUBLE (12,2) NOT NULL, stock INT NOT NULL);
Query OK, 0 rows affected, 2 warnings (0.07 sec)

mysql> show tables;
+-----------------------+
| Tables_in_aggregation |
+-----------------------+
| product               |
+-----------------------+
1 row in set (0.00 sec)

mysql> desc product;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| product_id     | varchar(10)  | NO   | PRI | NULL    |       |
| product_name   | varchar(20)  | NO   |     | NULL    |       |
| category       | varchar(20)  | NO   |     | NULL    |       |
| selling_price  | double(12,2) | NO   |     | NULL    |       |
| original_price | double(12,2) | NO   |     | NULL    |       |
| stock          | int          | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.04 sec)

mysql> INSERT INTO product (product_id, product_name, category, selling_price, original_price, stock) VALUES ('P101', 'Laptop', 'Electronics', 55000.00, 60000.00, 10), ('P102', 'Smartphone', 'Electronics', 25000.00, 30000.00, 20), ('P103', 'Headphones', 'Accessories', 1500.00, 2000.00, 50), ('P104', 'Shoes', 'Fashion', 2200.00, 3000.00, 30), ('P105', 'Watch', 'Fashion', 3500.00, 4500.00, 15);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM product;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P101       | Laptop       | Electronics |      55000.00 |       60000.00 |    10 |
| P102       | Smartphone   | Electronics |      25000.00 |       30000.00 |    20 |
| P103       | Headphones   | Accessories |       1500.00 |        2000.00 |    50 |
| P104       | Shoes        | Fashion     |       2200.00 |        3000.00 |    30 |
| P105       | Watch        | Fashion     |       3500.00 |        4500.00 |    15 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> SELECT SUM(selling_price) FROM product;
+--------------------+
| SUM(selling_price) |
+--------------------+
|           87200.00 |
+--------------------+
1 row in set (0.03 sec)

mysql> SELECT AVG(selling_price) FROM product;
+--------------------+
| AVG(selling_price) |
+--------------------+
|       17440.000000 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) FROM product;
+----------+
| COUNT(*) |
+----------+
|        5 |
+----------+
1 row in set (0.04 sec)

mysql> SELECT MAX(stock) FROM product;
+------------+
| MAX(stock) |
+------------+
|         50 |
+------------+
1 row in set (0.03 sec)

mysql> SELECT MIN(stock) FROM product;
+------------+
| MIN(stock) |
+------------+
|         10 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM product ORDER BY stock;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P101       | Laptop       | Electronics |      55000.00 |       60000.00 |    10 |
| P105       | Watch        | Fashion     |       3500.00 |        4500.00 |    15 |
| P102       | Smartphone   | Electronics |      25000.00 |       30000.00 |    20 |
| P104       | Shoes        | Fashion     |       2200.00 |        3000.00 |    30 |
| P103       | Headphones   | Accessories |       1500.00 |        2000.00 |    50 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM product ORDER BY stock DESC;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P103       | Headphones   | Accessories |       1500.00 |        2000.00 |    50 |
| P104       | Shoes        | Fashion     |       2200.00 |        3000.00 |    30 |
| P102       | Smartphone   | Electronics |      25000.00 |       30000.00 |    20 |
| P105       | Watch        | Fashion     |       3500.00 |        4500.00 |    15 |
| P101       | Laptop       | Electronics |      55000.00 |       60000.00 |    10 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM product ORDER BY stock DESC LIMIT 3
    -> ;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P103       | Headphones   | Accessories |       1500.00 |        2000.00 |    50 |
| P104       | Shoes        | Fashion     |       2200.00 |        3000.00 |    30 |
| P102       | Smartphone   | Electronics |      25000.00 |       30000.00 |    20 |
+------------+--------------+-------------+---------------+----------------+-------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE employee (employee_id VARCHAR (10) NOT NULL PRIMARY KEY, employee_name VARCHAR (20) NOT NULL, department VARCHAR (20) NOT NULL, salary INT NOT NULL);
Query OK, 0 rows affected (0.08 sec)

mysql> INSERT INTO employee VALUES('E101','VINIT','HR',40000), ('E102','ROHIT','IT',6000),('E103','SAMADHAN','IT',7000),('E104','RUSHI','HR',4500),('E105','ABCD','Finance',5000);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | VINIT         | HR         |  40000 |
| E102        | ROHIT         | IT         |   6000 |
| E103        | SAMADHAN      | IT         |   7000 |
| E104        | RUSHI         | HR         |   4500 |
| E105        | ABCD          | Finance    |   5000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> SELECT department, COUNT(*) AS Total_employee FROM employee GROUP BY department;
+------------+----------------+
| department | Total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
| Finance    |              1 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> SELECT department, SUM(salary) AS Total_salary FROM employee GROUP BY department;
+------------+--------------+
| department | Total_salary |
+------------+--------------+
| HR         |        44500 |
| IT         |        13000 |
| Finance    |         5000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> SELECT department, AVG(salary) AS Average_salary FROM employee GROUP BY department;
+------------+----------------+
| department | Average_salary |
+------------+----------------+
| HR         |     22250.0000 |
| IT         |      6500.0000 |
| Finance    |      5000.0000 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> SELECT department, salary, COUNT(*) FROM employee GROUP BY department, salary;
+------------+--------+----------+
| department | salary | COUNT(*) |
+------------+--------+----------+
| HR         |  40000 |        1 |
| IT         |   6000 |        1 |
| IT         |   7000 |        1 |
| HR         |   4500 |        1 |
| Finance    |   5000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | VINIT         | HR         |  40000 |
| E102        | ROHIT         | IT         |   6000 |
| E103        | SAMADHAN      | IT         |   7000 |
| E104        | RUSHI         | HR         |   4500 |
| E105        | ABCD          | Finance    |   5000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> SELECT department, COUNT(*) AS Total_employee FROM employee GROUP BY department HAVING COUNT(*)>1;
+------------+----------------+
| department | Total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
+------------+----------------+
2 rows in set (0.03 sec)

mysql> SELECT department, SUM(salary) AS Total_salary FROM employee GROUP BY department HAVING SUM(salary)>8000;
+------------+--------------+
| department | Total_salary |
+------------+--------------+
| HR         |        44500 |
| IT         |        13000 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> SELECT department, SUM(salary) AS Total_salary FROM employee GROUP BY department HAVING SUM(salary)>2000;
+------------+--------------+
| department | Total_salary |
+------------+--------------+
| HR         |        44500 |
| IT         |        13000 |
| Finance    |         5000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> SELECT department, AVG(salary) AS Average_salary FROM employee GROUP BY department HAVING AVG(salary)>2000;
+------------+----------------+
| department | Average_salary |
+------------+----------------+
| HR         |     22250.0000 |
| IT         |      6500.0000 |
| Finance    |      5000.0000 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> SELECT department, AVG(salary) AS Average_salary FROM employee GROUP BY department HAVING AVG(salary)>5000;
+------------+----------------+
| department | Average_salary |
+------------+----------------+
| HR         |     22250.0000 |
| IT         |      6500.0000 |
+------------+----------------+
2 rows in set (0.00 sec)

mysql> ALTER TABLE employee RENAME TO employee_table;
Query OK, 0 rows affected (0.06 sec)

mysql> SELECT * FROM employee;
ERROR 1146 (42S02): Table 'aggregation.employee' doesn't exist

mysql> SELECT * FROM employee_table;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | VINIT         | HR         |  40000 |
| E102        | ROHIT         | IT         |   6000 |
| E103        | SAMADHAN      | IT         |   7000 |
| E104        | RUSHI         | HR         |   4500 |
| E105        | ABCD          | Finance    |   5000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql>