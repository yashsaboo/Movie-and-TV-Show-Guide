--Create Trigger Queries

Q. To store the new inserted director information in a new log table of director.

mysql> select * from director;
    -> \g
+-----+-------------------+-------------------------+
| DID | director_name     | director_facebook_likes |
+-----+-------------------+-------------------------+
| 201 | Andrew Adamson    |                     258 |
| 202 | Andrew Stanton    |                     462 |
| 203 | Bryan Singer      |                     434 |
| 204 | Christopher Nolan |                     813 |
| 205 | David Yates       |                     375 |
| 206 | Gore Verbinski    |                     313 |
| 207 | James Cameron     |                     302 |
| 208 | Joss Whedon       |                     703 |
| 209 | Marc Forster      |                     403 |
| 210 | Nathan Greno      |                     324 |
| 211 | Rob Marshall      |                     448 |
| 212 | Sam Mendes        |                     602 |
| 213 | Sam Raimi         |                     392 |
| 214 | Zack Snyder       |                     733 |
+-----+-------------------+-------------------------+
14 rows in set (0.00 sec)

mysql> create table director_log
    -> (DID int primary key,
    -> director_name varchar(40),
    -> director_facebook_likes int,
    -> action varchar(25),
    -> changed_on datetime);\g
Query OK, 0 rows affected (0.15 sec)

mysql> delimiter $$
mysql> create trigger directorInsert after insert on director
    -> for each row
    -> begin
    -> insert into director_log set
    -> DID = new.DID,
    -> director_name = new.director_name,
    -> director_facebook_likes = new.director_facebook_likes,
    -> changed_on = now(),
    -> action = 'insert';
    -> end $$
Query OK, 0 rows affected (0.13 sec)

mysql> delimiter $$
mysql> insert into director values('215','Zack Snyder','733');\g
Query OK, 1 row affected (0.04 sec)

mysql>
mysql> select * from director;\g
+-----+-------------------+-------------------------+
| DID | director_name     | director_facebook_likes |
+-----+-------------------+-------------------------+
| 201 | Andrew Adamson    |                     258 |
| 202 | Andrew Stanton    |                     462 |
| 203 | Bryan Singer      |                     434 |
| 204 | Christopher Nolan |                     813 |
| 205 | David Yates       |                     375 |
| 206 | Gore Verbinski    |                     313 |
| 207 | James Cameron     |                     302 |
| 208 | Joss Whedon       |                     703 |
| 209 | Marc Forster      |                     403 |
| 210 | Nathan Greno      |                     324 |
| 211 | Rob Marshall      |                     448 |
| 212 | Sam Mendes        |                     602 |
| 213 | Sam Raimi         |                     392 |
| 214 | Zack Snyder       |                     733 |
| 215 | Zack Snyder       |                     733 |
+-----+-------------------+-------------------------+
15 rows in set (0.01 sec)

mysql>
mysql> select * from director_log;\g
+-----+---------------+-------------------------+--------+---------------------+
| DID | director_name | director_facebook_likes | action | changed_on          |
+-----+---------------+-------------------------+--------+---------------------+
| 215 | Zack Snyder   |                     733 | insert | 2017-11-12 21:42:16 |
+-----+---------------+-------------------------+--------+---------------------+
1 row in set (0.00 sec)



Q. To store the deleted color information from the table of color.

mysql> create table color_log
    -> (CID int primary key,
    -> color varchar(40),
    -> action varchar(25),
    -> changed_on datetime);
Query OK, 0 rows affected (0.06 sec)

mysql> delimiter $$
mysql> create trigger colorDelete before delete on color
    -> for each row
    -> begin
    -> insert into color_log set
    -> CID = old.CID,
    -> color = old.color,
    -> changed_on = now(),
    -> action = 'delete';
    -> end $$
Query OK, 0 rows affected (0.18 sec)

mysql> select * from color;
    -> \g
+-----+-----------------+
| CID | color           |
+-----+-----------------+
|  71 | Color           |
|  72 | Black and White |
|  73 | BGR             |
+-----+-----------------+
3 rows in set (0.00 sec)

mysql> delete from color where color='BGR';
    -> \g
Query OK, 1 row affected (0.06 sec)

mysql> select * from color;\g
+-----+-----------------+
| CID | color           |
+-----+-----------------+
|  71 | Color           |
|  72 | Black and White |
+-----+-----------------+
2 rows in set (0.00 sec)

mysql> select * from color_log;\g
+-----+-------+--------+---------------------+
| CID | color | action | changed_on          |
+-----+-------+--------+---------------------+
|  73 | BGR   | delete | 2017-11-13 07:45:59 |
+-----+-------+--------+---------------------+
1 row in set (0.00 sec)
