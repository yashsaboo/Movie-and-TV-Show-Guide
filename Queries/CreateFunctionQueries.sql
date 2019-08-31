--Create Functions Queries

Q. How many directors are there in the IMDb

mysql> delimiter //
mysql> create function totalDirector()
    -> returns integer
    -> begin
    -> declare total integer default 0;
    -> select count(did) into total from director;
    -> return total;
    -> end//
Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> select totalDirector();\g
+-----------------+
| totalDirector() |
+-----------------+
|              14 |
+-----------------+
1 row in set (0.00 sec)


Q. Which Episode has grossed the highest?

mysql> delimiter //
mysql> create function highestGross()
    -> returns text
    -> begin
    -> declare ret text default 0;
    -> select episode_title into ret from tv_show where gross in(select max(gross) from tv_show);
    -> return ret;
    -> end//
Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> select highestGross();\g
+-------------------+
| highestGross()    |
+-------------------+
| The Speckled Band |
+-------------------+
1 row in set (0.00 sec)


