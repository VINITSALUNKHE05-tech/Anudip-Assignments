/* SQL COMMANDS */
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

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| product             |
+---------------------+
3 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha  | India   |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha  | India   |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9784484809   |  400603 |       0 | Maha  | India   |
| C107        | SHINDE   | Kokan | shinde@gmil.com    | Station       | 2337243370   |  556354 |       0 | QWE   | INDIA   |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
4 rows in set (0.00 sec)

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
10 rows in set (0.01 sec)

mysql> update customer set phone_number = '9987820838' where customer_id = 'C104';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha  | India   |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha  | India   |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9987820838   |  400603 |       0 | Maha  | India   |
| C107        | SHINDE   | Kokan | shinde@gmil.com    | Station       | 2337243370   |  556354 |       0 | QWE   | INDIA   |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer where name like '%AN';
+-------------+----------+-------+---------------+-----------+--------------+---------+---------+-------+---------+
| Customer_id | name     | city  | Email_ID      | address   | phone_number | pincode | bill_no | state | country |
+-------------+----------+-------+---------------+-----------+--------------+---------+---------+-------+---------+
| C104        | SAMADHAN | Nerul | sam@gmail.com | ICIC BANK | 9987820838   |  400603 |       0 | Maha  | India   |
+-------------+----------+-------+---------------+-----------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where name like '%IN%';
+-------------+--------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name   | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+--------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT  | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha  | India   |
| C102        | VINI   | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha  | India   |
| C107        | SHINDE | Kokan | shinde@gmil.com    | Station       | 2337243370   |  556354 |       0 | QWE   | INDIA   |
+-------------+--------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where name like 'VI%';
+-------------+-------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name  | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+-------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha  | India   |
| C102        | VINI  | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha  | India   |
+-------------+-------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where name like 'V____';
+-------------+-------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name  | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+-------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha  | India   |
+-------------+-------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where name like 'V___';
+-------------+------+-------+-------------------+---------+--------------+---------+---------+-------+---------+
| Customer_id | name | city  | Email_ID          | address | phone_number | pincode | bill_no | state | country |
+-------------+------+-------+-------------------+---------+--------------+---------+---------+-------+---------+
| C102        | VINI | Kalwa | salunke@gmail.com | mandir  | 9967780831   |  400607 |       0 | Maha  | India   |
+-------------+------+-------+-------------------+---------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where name like 's___';
Empty set (0.00 sec)

mysql> select * from customer where city like 'T____';
+-------------+-------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name  | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+-------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha  | India   |
+-------------+-------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> insert into customer values ('C108','RAJ','Digha','raj@gmil.com','SaiMandir','23372134','52324','1','Goa','INDIA');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha  | India   |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha  | India   |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9987820838   |  400603 |       0 | Maha  | India   |
| C107        | SHINDE   | Kokan | shinde@gmil.com    | Station       | 2337243370   |  556354 |       0 | QWE   | INDIA   |
| C108        | RAJ      | Digha | raj@gmil.com       | SaiMandir     | 23372134     |   52324 |       1 | Goa   | INDIA   |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
5 rows in set (0.00 sec)

mysql> select * from customer limit 3;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha  | India   |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha  | India   |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9987820838   |  400603 |       0 | Maha  | India   |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select distinct city from customer;
+-------+
| city  |
+-------+
| Thane |
| Kalwa |
| Nerul |
| Kokan |
| Digha |
+-------+
5 rows in set (0.00 sec)

mysql> select city from customer;
+-------+
| city  |
+-------+
| Thane |
| Kalwa |
| Nerul |
| Kokan |
| Digha |
+-------+
5 rows in set (0.00 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(5)  | NO   | PRI | NULL    |       |
| product_name   | varchar(10) | NO   |     | NULL    |       |
| category       | varchar(20) | NO   |     | NULL    |       |
| sub_category   | varchar(20) | NO   |     | NULL    |       |
| original_price | double      | NO   |     | NULL    |       |
| selling_price  | double      | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha  | India   |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha  | India   |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9987820838   |  400603 |       0 | Maha  | India   |
| C107        | SHINDE   | Kokan | shinde@gmil.com    | Station       | 2337243370   |  556354 |       0 | QWE   | INDIA   |
| C108        | RAJ      | Digha | raj@gmil.com       | SaiMandir     | 23372134     |   52324 |       1 | Goa   | INDIA   |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
5 rows in set (0.00 sec)

mysql> insert into customer values ('C109','ROHAN','Pune','rohan@gmail.com','MG Road','9876543210','411001','2','LAST WEGUS','USA');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state      | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha       | India   |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha       | India   |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9987820838   |  400603 |       0 | Maha       | India   |
| C107        | SHINDE   | Kokan | shinde@gmil.com    | Station       | 2337243370   |  556354 |       0 | QWE        | INDIA   |
| C108        | RAJ      | Digha | raj@gmil.com       | SaiMandir     | 23372134     |   52324 |       1 | Goa        | INDIA   |
| C109        | ROHAN    | Pune  | rohan@gmail.com    | MG Road       | 9876543210   |  411001 |       2 | LAST WEGUS | USA     |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
6 rows in set (0.00 sec)

mysql>  select * from customer where bill_no<10;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state      | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha       | India   |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha       | India   |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9987820838   |  400603 |       0 | Maha       | India   |
| C107        | SHINDE   | Kokan | shinde@gmil.com    | Station       | 2337243370   |  556354 |       0 | QWE        | INDIA   |
| C108        | RAJ      | Digha | raj@gmil.com       | SaiMandir     | 23372134     |   52324 |       1 | Goa        | INDIA   |
| C109        | ROHAN    | Pune  | rohan@gmail.com    | MG Road       | 9876543210   |  411001 |       2 | LAST WEGUS | USA     |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
6 rows in set (0.00 sec)

mysql>  select * from customer where bill_no>1;
+-------------+-------+------+-----------------+---------+--------------+---------+---------+------------+---------+
| Customer_id | name  | city | Email_ID        | address | phone_number | pincode | bill_no | state      | country |
+-------------+-------+------+-----------------+---------+--------------+---------+---------+------------+---------+
| C109        | ROHAN | Pune | rohan@gmail.com | MG Road | 9876543210   |  411001 |       2 | LAST WEGUS | USA     |
+-------------+-------+------+-----------------+---------+--------------+---------+---------+------------+---------+
1 row in set (0.00 sec)

mysql>  select * from customer where bill_no<=2;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state      | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha       | India   |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha       | India   |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9987820838   |  400603 |       0 | Maha       | India   |
| C107        | SHINDE   | Kokan | shinde@gmil.com    | Station       | 2337243370   |  556354 |       0 | QWE        | INDIA   |
| C108        | RAJ      | Digha | raj@gmil.com       | SaiMandir     | 23372134     |   52324 |       1 | Goa        | INDIA   |
| C109        | ROHAN    | Pune  | rohan@gmail.com    | MG Road       | 9876543210   |  411001 |       2 | LAST WEGUS | USA     |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
6 rows in set (0.00 sec)

mysql>  select * from customer where name ='VINIT' and bill_no= 2;
Empty set (0.00 sec)

mysql>  select * from customer where name ='VINIT' and bill_no= 0;
+-------------+-------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name  | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+-------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha  | India   |
+-------------+-------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> Select * from customer where Customer_id between 'C101' and 'C104';
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha  | India   |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha  | India   |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9987820838   |  400603 |       0 | Maha  | India   |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> Select * from customer where Customer_id not between 'C101' and 'C104';
+-------------+--------+-------+-----------------+-----------+--------------+---------+---------+------------+---------+
| Customer_id | name   | city  | Email_ID        | address   | phone_number | pincode | bill_no | state      | country |
+-------------+--------+-------+-----------------+-----------+--------------+---------+---------+------------+---------+
| C107        | SHINDE | Kokan | shinde@gmil.com | Station   | 2337243370   |  556354 |       0 | QWE        | INDIA   |
| C108        | RAJ    | Digha | raj@gmil.com    | SaiMandir | 23372134     |   52324 |       1 | Goa        | INDIA   |
| C109        | ROHAN  | Pune  | rohan@gmail.com | MG Road   | 9876543210   |  411001 |       2 | LAST WEGUS | USA     |
+-------------+--------+-------+-----------------+-----------+--------------+---------+---------+------------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state      | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha       | India   |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha       | India   |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9987820838   |  400603 |       0 | Maha       | India   |
| C107        | SHINDE   | Kokan | shinde@gmil.com    | Station       | 2337243370   |  556354 |       0 | QWE        | INDIA   |
| C108        | RAJ      | Digha | raj@gmil.com       | SaiMandir     | 23372134     |   52324 |       1 | Goa        | INDIA   |
| C109        | ROHAN    | Pune  | rohan@gmail.com    | MG Road       | 9876543210   |  411001 |       2 | LAST WEGUS | USA     |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
6 rows in set (0.00 sec)

mysql> select * from customer where Customer_id in ('C101','C104','C107');
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha  | India   |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9987820838   |  400603 |       0 | Maha  | India   |
| C107        | SHINDE   | Kokan | shinde@gmil.com    | Station       | 2337243370   |  556354 |       0 | QWE   | INDIA   |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where Customer_id not in ('C101','C104','C107');
+-------------+-------+-------+-------------------+-----------+--------------+---------+---------+------------+---------+
| Customer_id | name  | city  | Email_ID          | address   | phone_number | pincode | bill_no | state      | country |
+-------------+-------+-------+-------------------+-----------+--------------+---------+---------+------------+---------+
| C102        | VINI  | Kalwa | salunke@gmail.com | mandir    | 9967780831   |  400607 |       0 | Maha       | India   |
| C108        | RAJ   | Digha | raj@gmil.com      | SaiMandir | 23372134     |   52324 |       1 | Goa        | INDIA   |
| C109        | ROHAN | Pune  | rohan@gmail.com   | MG Road   | 9876543210   |  411001 |       2 | LAST WEGUS | USA     |
+-------------+-------+-------+-------------------+-----------+--------------+---------+---------+------------+---------+
3 rows in set (0.00 sec)

mysql>  select * from customer where Email_ID is null;
Empty set (0.00 sec)

mysql>  select * from customer where Email_ID is not null;
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
| Customer_id | name     | city  | Email_ID           | address       | phone_number | pincode | bill_no | state      | country |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
| C101        | VINIT    | Thane | salunkhe@gmail.com | shankarmandir | 9987820836   |  400605 |       0 | Maha       | India   |
| C102        | VINI     | Kalwa | salunke@gmail.com  | mandir        | 9967780831   |  400607 |       0 | Maha       | India   |
| C104        | SAMADHAN | Nerul | sam@gmail.com      | ICIC BANK     | 9987820838   |  400603 |       0 | Maha       | India   |
| C107        | SHINDE   | Kokan | shinde@gmil.com    | Station       | 2337243370   |  556354 |       0 | QWE        | INDIA   |
| C108        | RAJ      | Digha | raj@gmil.com       | SaiMandir     | 23372134     |   52324 |       1 | Goa        | INDIA   |
| C109        | ROHAN    | Pune  | rohan@gmail.com    | MG Road       | 9876543210   |  411001 |       2 | LAST WEGUS | USA     |
+-------------+----------+-------+--------------------+---------------+--------------+---------+---------+------------+---------+
6 rows in set (0.00 sec)

mysql>
