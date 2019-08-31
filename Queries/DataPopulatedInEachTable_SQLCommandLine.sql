//Data Populated In Each Table

mysql> show tables;
+----------------+
| Tables_in_imdb |
+----------------+
| actor          |
| color          |
| director       |
| ethnicity      |
| genre          |
| imdb           |
| movie          |
| performs       |
| performstvshow |
| plot_keywords  |
| specification  |
| tv_show        |
| tvshowdesc     |
+----------------+
13 rows in set (0.00 sec)

mysql> select * from actor;
+-----+----------------------+----------------------+
| AID | actor_name           | actor_facebook_likes |
+-----+----------------------+----------------------+
| 101 | Alan D. Purwin       |                 2000 |
| 102 | Alan Rickman         |                25000 |
| 103 | Brad Garrett         |                  799 |
| 104 | CCH Pounder          |                 1000 |
| 105 | Chris Hemsworth      |                26000 |
| 106 | Christian Bale       |                23000 |
| 107 | Christoph Waltz      |                11000 |
| 108 | Christopher Meloni   |                 3000 |
| 109 | Daniel Radcliffe     |                11000 |
| 110 | Daryl Sabara         |                  640 |
| 111 | Donna Murphy         |                  553 |
| 112 | Frank Langella       |                  903 |
| 113 | Giancarlo Giannini   |                  451 |
| 114 | Harry Lennix         |                  748 |
| 115 | Henry Cavill         |                15000 |
| 116 | J.K. Simmons         |                24000 |
| 117 | Jack Davenport       |                 1000 |
| 118 | James Franco         |                11000 |
| 119 | Joel David Moore     |                  936 |
| 120 | Johnny Depp          |                40000 |
| 121 | Joseph Gordon-Levitt |                23000 |
| 122 | Kevin Spacey         |                18000 |
| 123 | Kirsten Dunst        |                 4000 |
| 124 | Lauren Cohan         |                 4000 |
| 125 | M.C. Gainey          |                  284 |
| 126 | Marlon Brando        |                10000 |
| 127 | Mathieu Amalric      |                  412 |
| 128 | Orlando Bloom        |                 5000 |
| 129 | Peter Dinklage       |                22000 |
| 130 | Pierfrancesco Favino |                  216 |
| 131 | Polly Walker         |                  530 |
| 132 | Robert Downey Jr.    |                21000 |
| 133 | Rory Kinnear         |                  393 |
| 134 | Rupert Grint         |                10000 |
| 135 | Ruth Wilson          |                 2000 |
| 136 | Sam Claflin          |                11000 |
| 137 | Samantha Morton      |                  632 |
| 138 | Scarlett Johansson   |                19000 |
| 139 | Stephanie Sigman     |                  161 |
| 140 | Stephen Graham       |                 1000 |
| 141 | Tom Hardy            |                27000 |
| 142 | Tom Wilkinson        |                 1000 |
| 143 | Wes Studi            |                  855 |
+-----+----------------------+----------------------+
43 rows in set (0.02 sec)

mysql> select * from color;
+-----+-----------------+
| CID | color           |
+-----+-----------------+
|  71 | Color           |
|  72 | Black and White |
|  73 | BGR             |
+-----+-----------------+
3 rows in set (0.01 sec)

mysql> select * from director;
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

mysql> select * from ethnicity;
+-----+---------+----------+
| EID | country | language |
+-----+---------+----------+
|  51 | UK      | English  |
|  52 | USA     | English  |
+-----+---------+----------+
2 rows in set (0.00 sec)

mysql> select * from genre;
+-----+------------+------+
| GID | genre_name | SID  |
+-----+------------+------+
| 401 | Action     |   61 |
| 402 | Adventure  |   61 |
| 403 | Thriller   |   61 |
| 404 | Romantic   |   61 |
| 405 | Comedy     |   61 |
| 406 | Action     |   62 |
| 407 | Adventure  |   62 |
| 408 | Thriller   |   62 |
| 409 | Romantic   |   62 |
| 410 | Comedy     |   62 |
+-----+------------+------+
10 rows in set (0.00 sec)

mysql> select * from imdb;
+--------+------------+----------------------+------------------------------------------------------+--------------------+-----------------+
| IMDbID | imdb_score | num_users_for_review | imdb_link                                            | num_critic_reviews | num_voted_users |
+--------+------------+----------------------+------------------------------------------------------+--------------------+-----------------+
|    901 |        7.9 |                 3054 | http://www.imdb.com/title/tt09543/?ref_=fn_tt_tt_1   |                 34 |            8620 |
|    902 |        7.1 |                 1238 | http://www.imdb.com/title/tt94908/?ref_=fn_tt_tt_1   |               5666 |           47122 |
|    903 |        6.8 |                  994 | http://www.imdb.com/title/tt37971/?ref_=fn_tt_tt_1   |              77746 |           27586 |
|    904 |        8.5 |                 2701 | http://www.imdb.com/title/tt34583/?ref_=fn_tt_tt_1   |              22000 |         1144337 |
|    905 |        6.6 |                  738 | http://www.imdb.com/title/tt40172/?ref_=fn_tt_tt_1   |               4444 |          212204 |
|    906 |        6.2 |                 1902 | http://www.imdb.com/title/tt41330/?ref_=fn_tt_tt_1   |               5674 |          383056 |
|    907 |        7.8 |                  387 | http://www.imdb.com/title/tt39826/?ref_=fn_tt_tt_1   |                 15 |          294810 |
|    908 |        7.5 |                 1117 | http://www.imdb.com/title/tt39542/?ref_=fn_tt_tt_1   |                786 |          462669 |
|    909 |        7.5 |                  973 | http://www.imdb.com/title/tt41774/?ref_=fn_tt_tt_1   |                282 |          321795 |
|    910 |        6.9 |                 3018 | http://www.imdb.com/title/tt97559/?ref_=fn_tt_tt_1   |                 53 |          371639 |
|    911 |        6.1 |                 2367 | http://www.imdb.com/title/tt34815/?ref_=fn_tt_tt_1   |                 98 |          240396 |
|    912 |        6.7 |                 1243 | http://www.imdb.com/title/tt83051/?ref_=fn_tt_tt_1   |                395 |          330784 |
|    913 |        7.3 |                 1832 | http://www.imdb.com/title/tt38357/?ref_=fn_tt_tt_1   |                563 |          522040 |
|    914 |        6.5 |                  711 | http://www.imdb.com/title/tt21081/?ref_=fn_tt_tt_1   |                563 |          181792 |
|    915 |        7.2 |                 2536 | http://www.imdb.com/title/tt77082/?ref_=fn_tt_tt_1   |               7900 |          548573 |
|    916 |        6.6 |                  438 | http://www.imdb.com/title/tt49944/?ref_=fn_tt_tt_1   |                 80 |          149922 |
|    917 |        8.1 |                 1722 | http://www.imdb.com/title/tt84822/?ref_=fn_tt_tt_1   |                877 |          995415 |
|    918 |        6.7 |                  484 | http://www.imdb.com/title/tt29865/?ref_=fn_tt_tt_1   |                252 |            7070 |
|    919 |        7.9 |                 3054 | http://www.imdb.com/title/tt0499549/?ref_=fn_tt_tt_1 |                345 |          886204 |
|    920 |        7.1 |                 1238 | http://www.imdb.com/title/tt0449088/?ref_=fn_tt_tt_1 |                563 |          471220 |
|    921 |        6.8 |                  994 | http://www.imdb.com/title/tt2379713/?ref_=fn_tt_tt_1 |                225 |          275868 |
|    922 |        8.5 |                 2701 | http://www.imdb.com/title/tt1345836/?ref_=fn_tt_tt_1 |              22000 |         1144337 |
|    923 |        6.6 |                  738 | http://www.imdb.com/title/tt0401729/?ref_=fn_tt_tt_1 |                475 |          212204 |
|    924 |        6.2 |                 1902 | http://www.imdb.com/title/tt0413300/?ref_=fn_tt_tt_1 |               6799 |          383056 |
|    925 |        7.8 |                  387 | http://www.imdb.com/title/tt0398286/?ref_=fn_tt_tt_1 |                 15 |          294810 |
|    926 |        7.5 |                 1117 | http://www.imdb.com/title/tt2395427/?ref_=fn_tt_tt_1 |              44533 |          462669 |
|    927 |        7.5 |                  973 | http://www.imdb.com/title/tt0417741/?ref_=fn_tt_tt_1 |                282 |          321795 |
|    928 |        6.9 |                 3018 | http://www.imdb.com/title/tt2975590/?ref_=fn_tt_tt_1 |               5689 |          371639 |
|    929 |        6.1 |                 2367 | http://www.imdb.com/title/tt0348150/?ref_=fn_tt_tt_1 |               5577 |          240396 |
|    930 |        6.7 |                 1243 | http://www.imdb.com/title/tt0830515/?ref_=fn_tt_tt_1 |                395 |          330784 |
|    931 |        7.3 |                 1832 | http://www.imdb.com/title/tt0383574/?ref_=fn_tt_tt_1 |                563 |          522040 |
|    932 |        6.5 |                  711 | http://www.imdb.com/title/tt1210819/?ref_=fn_tt_tt_1 |                563 |          181792 |
|    933 |        7.2 |                 2536 | http://www.imdb.com/title/tt0770828/?ref_=fn_tt_tt_1 |               4443 |          548573 |
|    934 |        6.6 |                  438 | http://www.imdb.com/title/tt0499448/?ref_=fn_tt_tt_1 |                444 |          149922 |
|    935 |        8.1 |                 1722 | http://www.imdb.com/title/tt0848228/?ref_=fn_tt_tt_1 |               7896 |          995415 |
|    936 |        6.7 |                  484 | http://www.imdb.com/title/tt1298650/?ref_=fn_tt_tt_1 |                252 |          370704 |
+--------+------------+----------------------+------------------------------------------------------+--------------------+-----------------+
36 rows in set (0.00 sec)

mysql> select * from movie;
+-----+--------------------------------------------+--------------+-----------+-----------+----------+----------------+-----------------+------+------+------+--------+------+------+
| id  | title                                      | aspect_ratio | gross     | budget    | duration | facebook_likes | faces_in_poster | CID  | DID  | EID  | IMDbID | GID  | PKID |
+-----+--------------------------------------------+--------------+-----------+-----------+----------+----------------+-----------------+------+------+------+--------+------+------+
| 301 | Avatar                                     |         1.78 | 760505847 | 237000000 |      120 |          33000 |               2 |   71 |  207 |   51 |    919 |  401 |  508 |
| 302 | Pirates of the Caribbean At Worlds End     |         2.35 | 309404152 | 300000000 |      119 |         650000 |               0 |   71 |  207 |   51 |    920 |  402 |  507 |
| 303 | Spectre                                    |         2.35 | 200074175 | 245000000 |      110 |          85000 |               1 |   71 |  212 |   51 |    921 |  403 |  502 |
| 304 | The Dark Knight Rises                      |         2.35 | 448130642 | 250000000 |      112 |         164000 |               0 |   71 |  204 |   51 |    922 |  401 |  509 |
| 305 | Star Wars: Episode VII - The Force Awakens |         2.35 |  73058679 | 263700000 |      111 |          24000 |               1 |   71 |  202 |   51 |    923 |  407 |  515 |
| 306 | John Carter                                |         2.35 | 336530303 | 258000000 |       99 |         456000 |               0 |   71 |  213 |   51 |    924 |  402 |  501 |
| 307 | Spider-Man 3                               |         1.85 | 200807262 | 260000000 |      100 |          29000 |               1 |   71 |  210 |   51 |    925 |  401 |  509 |
| 308 | Tangled                                    |         2.35 | 458991599 | 250000000 |      123 |         118000 |               4 |   71 |  208 |   51 |    926 |  407 |  512 |
| 309 | Avengers: Age of Ultron                    |         2.35 | 301956980 | 250000000 |      115 |          10000 |               3 |   71 |  205 |   51 |    927 |  401 |  509 |
| 310 | Harry Potter and the Half-Blood Prince     |         2.35 | 330249062 | 250000000 |      183 |         197000 |               0 |   71 |  214 |   52 |    928 |  402 |  504 |
| 311 | Batman v Superman: Dawn of Justice         |         2.35 | 200069408 | 209000000 |      169 |        5600000 |               0 |   71 |  203 |   52 |    929 |  405 |  504 |
| 312 | Superman Returns                           |         2.35 | 168368427 | 200000000 |      106 |         678000 |               1 |   71 |  209 |   52 |    930 |  404 |  509 |
| 313 | Quantum of Solace                          |         2.35 | 423032628 | 225000000 |      151 |           5000 |               2 |   72 |  206 |   52 |    931 |  403 |  502 |
| 314 | Pirates of the Caribbean: Dead Mans Chest  |         2.35 |  89289910 | 215000000 |      150 |          48000 |               1 |   71 |  206 |   52 |    932 |  405 |  507 |
| 315 | The Lone Ranger                            |         2.35 | 291021565 | 225000000 |      143 |         118000 |               0 |   72 |  214 |   52 |    933 |  404 |  502 |
| 316 | Man of Steel                               |         2.35 | 141614023 | 225000000 |      150 |          33444 |               4 |   71 |  201 |   52 |    934 |  405 |  509 |
| 317 | The Chronicles of Narnia: Prince Caspian   |         1.85 | 623279547 | 220000000 |      173 |         123000 |               3 |   71 |  208 |   52 |    935 |  409 |  515 |
| 318 | The Avengers                               |         2.35 | 241063875 | 250000000 |      136 |          58000 |               4 |   71 |  211 |   52 |    936 |  402 |  509 |
+-----+--------------------------------------------+--------------+-----------+-----------+----------+----------------+-----------------+------+------+------+--------+------+------+
18 rows in set (0.00 sec)

mysql> select * from performs;
+------+------+------+
| prid | id   | aid  |
+------+------+------+
|  701 |  301 |  104 |
|  702 |  301 |  119 |
|  703 |  301 |  143 |
|  704 |  302 |  120 |
|  705 |  302 |  128 |
|  706 |  302 |  117 |
|  707 |  303 |  107 |
|  708 |  303 |  133 |
|  709 |  303 |  139 |
|  710 |  304 |  141 |
|  711 |  304 |  106 |
|  712 |  304 |  121 |
|  713 |  305 |  110 |
|  714 |  305 |  137 |
|  715 |  305 |  131 |
|  716 |  306 |  116 |
|  717 |  306 |  118 |
|  718 |  306 |  123 |
|  719 |  307 |  103 |
|  720 |  307 |  111 |
|  721 |  307 |  125 |
|  722 |  308 |  105 |
|  723 |  308 |  132 |
|  724 |  308 |  138 |
|  725 |  309 |  102 |
|  726 |  309 |  109 |
|  727 |  309 |  134 |
|  728 |  310 |  115 |
|  729 |  310 |  124 |
|  730 |  310 |  101 |
|  731 |  311 |  122 |
|  732 |  311 |  126 |
|  733 |  311 |  112 |
|  734 |  312 |  113 |
|  735 |  312 |  127 |
|  736 |  312 |  133 |
|  737 |  313 |  120 |
|  738 |  313 |  128 |
|  739 |  313 |  117 |
|  740 |  314 |  120 |
|  741 |  314 |  135 |
|  742 |  314 |  142 |
|  743 |  315 |  115 |
|  744 |  315 |  108 |
|  745 |  315 |  114 |
|  746 |  316 |  129 |
|  747 |  316 |  130 |
|  748 |  316 |  117 |
|  749 |  317 |  105 |
|  750 |  317 |  132 |
|  751 |  317 |  138 |
|  752 |  318 |  120 |
|  753 |  318 |  136 |
|  754 |  318 |  140 |
+------+------+------+
54 rows in set (0.02 sec)

mysql> select * from performstvshow;
+-------+------+------+
| prtid | tid  | aid  |
+-------+------+------+
|   601 |   11 |  104 |
|   602 |   11 |  119 |
|   603 |   11 |  143 |
|   604 |   12 |  120 |
|   605 |   12 |  128 |
|   606 |   12 |  117 |
+-------+------+------+
6 rows in set (0.00 sec)

mysql> select * from plot_keywords;
+------+-----------------+------+
| PKID | plot_keyword    | SID  |
+------+-----------------+------+
|  501 | assassin        |   61 |
|  502 | espionage       |   61 |
|  503 | fairy tale      |   61 |
|  504 | fantasy         |   61 |
|  505 | magic           |   61 |
|  506 | kids            |   61 |
|  507 | pirate          |   61 |
|  508 | science fiction |   61 |
|  509 | superhero       |   61 |
|  510 | assassin        |   62 |
|  511 | espionage       |   62 |
|  512 | fairy tale      |   62 |
|  513 | fantasy         |   62 |
|  514 | magic           |   62 |
|  515 | kids            |   62 |
|  516 | pirate          |   62 |
|  517 | science fiction |   62 |
|  518 | superhero       |   62 |
+------+-----------------+------+
18 rows in set (0.00 sec)

mysql> select * from specification;
+-----+----------------+
| SID | content_rating |
+-----+----------------+
|  61 | PG-13          |
|  62 | PG             |
|  63 | TV-18          |
|  64 | R              |
+-----+----------------+
4 rows in set (0.00 sec)

mysql> select * from tv_show;
+-----+-----------+------------+------------------------------------------+--------------+-----------+-----------+----------+----------------+-----------------+------+--------+------+
| tid | season_no | episode_no | episode_title                            | aspect_ratio | gross     | budget    | duration | facebook_likes | faces_in_poster | DID  | IMDbID | PKID |
+-----+-----------+------------+------------------------------------------+--------------+-----------+-----------+----------+----------------+-----------------+------+--------+------+
|  11 |         1 |          1 | The Speckled Band                        |         1.78 | 760505847 | 237000000 |      120 |          33000 |               2 |  207 |    901 |  508 |
|  11 |         1 |          2 | Two Fingers                              |         2.35 | 309404152 | 300000000 |      119 |         650000 |               0 |  207 |    902 |  507 |
|  11 |         1 |          3 | Five Engineers                           |         2.35 | 200074175 | 245000000 |      110 |          85000 |               1 |  212 |    903 |  502 |
|  11 |         2 |          1 | The Hounds of Baskerville                |         2.35 | 448130642 | 250000000 |      112 |         164000 |               0 |  204 |    904 |  509 |
|  11 |         2 |          2 | The Napolean Statue                      |         2.35 |  73058679 | 263700000 |      111 |          24000 |               1 |  202 |    905 |  515 |
|  11 |         2 |          3 | The Letter                               |         2.35 | 336530303 | 258000000 |       99 |         456000 |               0 |  213 |    906 |  501 |
|  11 |         3 |          1 | The Blue Carbuncle                       |         1.85 | 200807262 | 260000000 |      100 |          29000 |               1 |  210 |    907 |  509 |
|  11 |         3 |          2 | Halo Night                               |         2.35 | 458991599 | 250000000 |      123 |         118000 |               4 |  208 |    908 |  512 |
|  11 |         3 |          3 | The Redheaded League                     |         2.35 | 301956980 | 250000000 |      115 |          10000 |               3 |  205 |    909 |  509 |
|  12 |         1 |          1 | The One Where Monica Gets a Roommate     |         2.35 | 330249062 | 250000000 |      183 |         197000 |               0 |  214 |    910 |  504 |
|  12 |         1 |          2 | The One with the Sonogram at the End     |         2.35 | 200069408 | 209000000 |      169 |        5600000 |               0 |  203 |    911 |  504 |
|  12 |         1 |          3 | The One with the Thumb                   |         2.35 | 168368427 | 200000000 |      106 |         678000 |               1 |  209 |    912 |  509 |
|  12 |         1 |          4 | The One with George Stephanopoulos       |         2.35 | 423032628 | 225000000 |      151 |           5000 |               2 |  206 |    913 |  502 |
|  12 |         2 |          1 | The One with Ross New Girlfriend         |         2.35 |  89289910 | 215000000 |      150 |          48000 |               1 |  206 |    914 |  507 |
|  12 |         2 |          2 | The One Where Heckles Dies               |         2.35 | 291021565 | 225000000 |      143 |         118000 |               0 |  214 |    915 |  502 |
|  12 |         2 |          3 | The One with Phoebe Husband              |         2.35 | 141614023 | 225000000 |      150 |          33444 |               4 |  201 |    916 |  509 |
|  12 |         2 |          4 | The One with the Baby on the Bus         |         1.85 | 623279547 | 220000000 |      173 |         123000 |               3 |  208 |    917 |  515 |
|  12 |         2 |          5 | The One with Five Steaks and an Eggplant |         2.35 | 241063875 | 250000000 |      136 |          58000 |               4 |  211 |    918 |  509 |
+-----+-----------+------------+------------------------------------------+--------------+-----------+-----------+----------+----------------+-----------------+------+--------+------+
18 rows in set (0.00 sec)

mysql> select * from tvshowdesc;
+-----+----------+------+------+------+
| tid | title    | CID  | EID  | GID  |
+-----+----------+------+------+------+
|  11 | Sherlock |   72 |   51 |  403 |
|  12 | Friends  |   71 |   52 |  404 |
+-----+----------+------+------+------+
2 rows in set (0.00 sec)