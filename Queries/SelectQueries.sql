--Queries

How Many Movies are there in the IMDb?
mysql> select count(m.id) from movie m;
+-------------+
| count(m.id) |
+-------------+
|          18 |
+-------------+
1 row in set (0.00 sec)

Which movies are in "Black and White" and have "espionage" as their plot keyword?
mysql> select m.title from movie m, color c, plot_keywords pk where c.color='Black and White' and pk.plot_keyword='espionage' and c.cid=m.cid and pk.pkid=m.pkid;
+-------------------+
| title             |
+-------------------+
| Quantum of Solace |
| The Lone Ranger   |
+-------------------+
2 rows in set (0.00 sec)

Who directed the movies made in "UK" and have more than 1 face in the poster?
mysql> select d.director_name from director d natural join movie m inner join ethnicity e on (e.eid=m.eid) where e.country='uk' and m.faces_in_poster>1;
+---------------+
| director_name |
+---------------+
| James Cameron |
| Joss Whedon   |
| David Yates   |
+---------------+
3 rows in set (0.00 sec)

Which actors featured in the highest grossing movie?
mysql> select actor_name from actor a inner join movie m inner join performs p on (p.aid=a.aid) where m.gross=(select max(m2.gross) from movie m2) and m.id=p.id;
+------------------+
| actor_name       |
+------------------+
| CCH Pounder      |
| Joel David Moore |
| Wes Studi        |
+------------------+
3 rows in set (0.00 sec)

Total money earned by 'James Cameron'.
mysql> select sum(m.gross) from movie m inner join director d on (m.did=d.did) where d.director_name='James Cameron';
+--------------+
| sum(m.gross) |
+--------------+
|   1069909999 |
+--------------+
1 row in set (0.00 sec)

Who is the Director who directed the movie with the highest IMDb score?
mysql> select director_name from director where did in(select did from movie where imdbid in (select imdbid from imdb where imdb_score=(select max(imdb_score) from imdb)));
+-------------------+
| director_name     |
+-------------------+
| Christopher Nolan |
+-------------------+
1 row in set (0.00 sec)

Which movie has the minimum number of user reviews?
mysql> select title from movie where imdbid in(select imdbid from imdb where num_users_for_review in(select min(num_users_for_review) from imdb));
+--------------+
| title        |
+--------------+
| Spider-Man 3 |
+--------------+
1 row in set (0.00 sec)

Find first three highest budget movie?
mysql> select title,budget from movie order by(budget) desc limit 3;
+--------------------------------------------+-----------+
| title                                      | budget    |
+--------------------------------------------+-----------+
| Pirates of the Caribbean At Worlds End     | 300000000 |
| Star Wars: Episode VII - The Force Awakens | 263700000 |
| Spider-Man 3                               | 260000000 |
+--------------------------------------------+-----------+
3 rows in set (0.00 sec)

Which actors performs in Sherlock
mysql> select actor_name from actor a, tvshowdesc t, performstvshow p where a.aid=p.aid and t.tid=p.tid and t.title = 'Sherlock';
+------------------+
| actor_name       |
+------------------+
| CCH Pounder      |
| Joel David Moore |
| Wes Studi        |
+------------------+
3 rows in set (0.00 sec)

Which actors have performed both in TV Show and Movie
mysql> select distinct actor_name from actor a, performstvshow t, performs m where a.aid=t.aid and m.aid=a.aid;
+------------------+
| actor_name       |
+------------------+
| CCH Pounder      |
| Jack Davenport   |
| Joel David Moore |
| Johnny Depp      |
| Orlando Bloom    |
| Wes Studi        |
+------------------+
6 rows in set (0.00 sec)
