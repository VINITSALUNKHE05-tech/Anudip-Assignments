/* SQL COMMANDS */
mysql> show databases;/* It use to show the Available DATA */
+---------------------------+
| Database                  |
+---------------------------+
| ecommerce                 |
| information_schema        |
| mysql                     |
| performance_schema        |
| sakila                    |
| student_management_system |
| sys                       |
| world                     |
+---------------------------+
8 rows in set (0.04 sec)

mysql> use ecommerce;/* It use to select the Perticular Database */
Database changed
mysql> show tables;/* It use to show What is inside the Database */
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| orders              |
| product             |
+---------------------+
3 rows in set (0.02 sec)

mysql> desc customer;/* It is use to Describ the All database */
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| Email        | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> select * from customer;/* It is use to Retrive All the data in the Database */
Empty set (0.03 sec)

mysql> insert into customer(customer_ID, name, city, email, address, phone_number, pincode)values('C101','VINIT','Thane','salunkhe@gmail.com','shankarmandir','9967780832','400605');/* Insert Commanad use to Adding the valuse in the Database */
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+-------+-------+--------------------+---------------+--------------+---------+
| customer_id | name  | city  | Email              | address       | phone_number | pincode |
+-------------+-------+-------+--------------------+---------------+--------------+---------+
| C101        | VINIT | Thane | salunkhe@gmail.com | shankarmandir | 9967780832   |  400605 |
+-------------+-------+-------+--------------------+---------------+--------------+---------+
1 row in set (0.00 sec)

mysql> select customer_ID, name, pincode from customer;/* It is use to Select the specific Column in the Database */
+-------------+-------+---------+
| customer_ID | name  | pincode |
+-------------+-------+---------+
| C101        | VINIT |  400605 |
+-------------+-------+---------+
1 row in set (0.00 sec)

mysql> insert into customer values('C102','VINI','Kalwa','salunke@gmail.com','mandir','9967780831','400607');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values('C103','ROHIT','Ghansoli','rohit@gmail.com','dattamandir','9367780831','400608'),('C104','SAMADHAN','Nerul','sam@gmail.com','ICIC BANK','9784484809','400603');
Query OK, 2 rows affected (0.04 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+----------+----------+--------------------+---------------+--------------+---------+
| customer_id | name     | city     | Email              | address       | phone_number | pincode |
+-------------+----------+----------+--------------------+---------------+--------------+---------+
| C101        | VINIT    | Thane    | salunkhe@gmail.com | shankarmandir | 9967780832   |  400605 |
| C102        | VINI     | Kalwa    | salunke@gmail.com  | mandir        | 9967780831   |  400607 |
| C103        | ROHIT    | Ghansoli | rohit@gmail.com    | dattamandir   | 9367780831   |  400608 |
| C104        | SAMADHAN | Nerul    | sam@gmail.com      | ICIC BANK     | 9784484809   |  400603 |
+-------------+----------+----------+--------------------+---------------+--------------+---------+
4 rows in set (0.00 sec)

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| customer_id  | varchar(5)   | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| Email        | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

    
mysql> alter table customer modify Customer_id varchar(10)  not null;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| Email        | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table customer add bill_no int not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| Email        | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
| bill_no      | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table customer add state varchar(10) not null, add  country varchar(10) not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| Email        | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
| bill_no      | int          | NO   |     | NULL    |       |
| state        | varchar(10)  | NO   |     | NULL    |       |
| country      | varchar(10)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> alter table customer change column Email Email_ID varchar(20) not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| Email_ID     | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
| bill_no      | int          | NO   |     | NULL    |       |
| state        | varchar(10)  | NO   |     | NULL    |       |
| country      | varchar(10)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> desc orders
    -> ;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql>  create table demo(id varchar(5) not null primary key, name varchar(20) not null);
Query OK, 0 rows affected (0.03 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql>  alter table demo drop primary key;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   |     | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql>  alter table demo add primary key (id);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| ecommerce                 |
| information_schema        |
| mysql                     |
| performance_schema        |
| sakila                    |
| student_management_system |
| sys                       |
| world                     |
+---------------------------+
8 rows in set (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| orders              |
| product             |
+---------------------+
4 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> select * from customer;
+-------------+----------+----------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name     | city     | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+----------+----------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT    | Thane    | salunkhe@gmail.com | shankarmandir | 9967780832   |  400605 |       0 |       |         |
| C102        | VINI     | Kalwa    | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 |       |         |
| C103        | ROHIT    | Ghansoli | rohit@gmail.com    | dattamandir   | 9367780831   |  400608 |       0 |       |         |
| C104        | SAMADHAN | Nerul    | sam@gmail.com      | ICIC BANK     | 9784484809   |  400603 |       0 |       |         |
+-------------+----------+----------+--------------------+---------------+--------------+---------+---------+-------+---------+
4 rows in set (0.00 sec)

mysql>  delete from customer where Customer_id = 'C103';
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9967780832   |  400605 |       0 |       |         |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 |       |         |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9784484809   |  400603 |       0 |       |         |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9967780832   |  400605 |       0 |       |         |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 |       |         |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9784484809   |  400603 |       0 |       |         |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from demo;
Empty set (0.00 sec)

mysql> select * from customer;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9967780832   |  400605 |       0 |       |         |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 |       |         |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9784484809   |  400603 |       0 |       |         |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> truncate table orders;
Query OK, 0 rows affected (0.06 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> desc customer;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| Customer_id  | varchar(10)  | NO   | PRI | NULL    |       |
| name         | varchar(10)  | NO   |     | NULL    |       |
| city         | varchar(10)  | NO   |     | NULL    |       |
| Email_ID     | varchar(20)  | NO   |     | NULL    |       |
| address      | varchar(100) | NO   |     | NULL    |       |
| phone_number | varchar(10)  | NO   |     | NULL    |       |
| pincode      | int          | NO   |     | NULL    |       |
| bill_no      | int          | NO   |     | NULL    |       |
| state        | varchar(10)  | NO   |     | NULL    |       |
| country      | varchar(10)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql>  insert into demo values('101','VINIT');
Query OK, 1 row affected (0.01 sec)

mysql> select * from demo;
+-----+-------+
| id  | name  |
+-----+-------+
| 101 | VINIT |
+-----+-------+
1 row in set (0.00 sec)

mysql>  truncate table demo;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from demo;
Empty set (0.00 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> drop table orders;
Query OK, 0 rows affected (0.05 sec)

mysql> desc orders;/* Error Occure Becaus Order table are Droped in the Database */
ERROR 1146 (42S02): Table 'ecommerce.orders' doesn't exist
mysql>
