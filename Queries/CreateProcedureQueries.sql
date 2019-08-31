--Create Procedure Queries

Q.  Write a procedure to add a color in the table

mysql> delimiter $$
mysql> create procedure addColour(in id int, in color text)
    -> begin
    -> insert into color values (id, color);
    -> end $$
Query OK, 0 rows affected (0.00 sec)

mysql> call addColour(74, 'Grey');
    -> \g
Query OK, 1 row affected (0.09 sec)

mysql> select * from color;\g
+-----+-----------------+
| CID | color           |
+-----+-----------------+
|  71 | Color           |
|  72 | Black and White |
|  73 | BGR             |
|  74 | Grey            |
+-----+-----------------+
4 rows in set (0.00 sec)

Q. Write a procedure to display movie names which have a budget more than the passed parameter and belongs to USA.

mysql> delimiter $$
mysql> create procedure dispMovie (in budget int)
    -> begin
    -> select title from movie m, ethnicity e where m.eid=e.eid and e.country='USA' and m.budget>budget;
    -> end $$
Query OK, 0 rows affected (0.03 sec)

mysql>
mysql> call dispMovie(220000000); \g
+----------------------------------------+
| title                                  |
+----------------------------------------+
| Harry Potter and the Half-Blood Prince |
| Quantum of Solace                      |
| The Lone Ranger                        |
| Man of Steel                           |
| The Avengers                           |
+----------------------------------------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)