/* Creating a new database */
mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> USE StudentManagementSystem; /* Using the Stud entManagementSystem */
Database changed

/* creating student table */
mysql> CREATE TABLE Student (StudentID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50));
Query OK, 0 rows affected (0.09 sec)

mysql> DESC student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentID | int         | NO   | PRI | NULL    |       |
| FirstName | varchar(50) | YES  |     | NULL    |       |
| LastName  | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

mysql> INSERT INTO Student VALUES (1,'VINIT','SALUNKHE'),(2,'ROHIT','MORBALE'),(3,'RUSHI','ZHIMAL');
Query OK, 3 rows affected (0.05 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM student;
+-----------+-----------+----------+
| StudentID | FirstName | LastName |
+-----------+-----------+----------+
|         1 | VINIT     | SALUNKHE |
|         2 | ROHIT     | MORBALE  |
|         3 | RUSHI     | ZHIMAL   |
+-----------+-----------+----------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE Course (CourseID INT PRIMARY KEY, CourseName VARCHAR(100));
Query OK, 0 rows affected (0.06 sec)

mysql> DESC course;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| CourseID   | int          | NO   | PRI | NULL    |       |
| CourseName | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO Course VALUES (101, 'Java'), (102, 'Python'), (103, 'MySQL');
Query OK, 3 rows affected (0.04 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM course;
+----------+------------+
| CourseID | CourseName |
+----------+------------+
|      101 | Java       |
|      102 | Python     |
|      103 | MySQL      |
+----------+------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE Enrollment (EnrollmentID INT PRIMARY KEY, StudentID INT, CourseID INT, FOREIGN KEY (StudentID) REFERENCES Student(StudentID), FOREIGN KEY (CourseID) REFERENCES Course(CourseID));
Query OK, 0 rows affected (0.10 sec)

mysql> DESC Enrollment;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| EnrollmentID | int  | NO   | PRI | NULL    |       |
| StudentID    | int  | YES  | MUL | NULL    |       |
| CourseID     | int  | YES  | MUL | NULL    |       |
+--------------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO Enrollment VALUES (1, 1, 101), (2, 1, 103), (3, 2, 102), (4, 3, 101);
Query OK, 4 rows affected (0.05 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Enrollment;
+--------------+-----------+----------+
| EnrollmentID | StudentID | CourseID |
+--------------+-----------+----------+
|            1 |         1 |      101 |
|            2 |         1 |      103 |
|            3 |         2 |      102 |
|            4 |         3 |      101 |
+--------------+-----------+----------+
4 rows in set (0.00 sec)

/* Using inner join to generate a list of all possible student-course combinations */
mysql> SELECT Student.StudentID, Student.FirstName, Student.LastName, Course.CourseName FROM Enrollment INNER JOIN Student ON Enrollment.StudentID = Student.StudentID INNER JOIN Course ON Enrollment.CourseID = Course.CourseID;
+-----------+-----------+----------+------------+
| StudentID | FirstName | LastName | CourseName |
+-----------+-----------+----------+------------+
|         1 | VINIT     | SALUNKHE | Java       |
|         1 | VINIT     | SALUNKHE | MySQL      |
|         2 | ROHIT     | MORBALE  | Python     |
|         3 | RUSHI     | ZHIMAL   | Java       |
+-----------+-----------+----------+------------+
4 rows in set (0.00 sec)

mysql>