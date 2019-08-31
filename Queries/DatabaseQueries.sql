--CreateTableQueries

create table actor
	(AID int primary key,
	actor_name varchar(25) not null,
	actor_facebook_likes int not null);

create table imdb
	(IMDbID int primary key,
	imdb_score float(3),
	num_users_for_review smallint,
	imdb_link varchar(55),
	num_critic_reviews int,
	num_voted_users int);

create table ethnicity
	(EID int primary key,
	country varchar(45),
	language varchar(10)
	);
	The Former Yugoslav Republic of Macedonia
	The Democratic People''s Republic of Korea

create table specification
	(SID int primary key,
	content_rating varchar(5));

create table genre
	(GID int primary key,
	genre_name varchar(25),
	SID int, foreign key(SID) references Specification(SID));

create table plot_keywords
	(PKID int primary key,
	plot_keyword varchar(25),
	SID int, foreign key(SID) references Specification(SID));

create table director
	(DID int primary key,
	director_name varchar(40),
	director_facebook_likes int);

create table color
	(CID int primary key,
	color varchar(25) not null);

create table movie
	(id int primary key,
	title varchar(100),
	aspect_ratio float(4),
	gross int,
	budget int,
	duration smallint,
	facebook_likes int,
	faces_in_poster smallint,
	CID int, foreign key(CID) references color(CID),
	DID int, foreign key(DID) references director(DID),
	EID int, foreign key(EID) references ethnicity(EID),
	IMDbID int, foreign key(IMDbID) references imdb(IMDbID),
	GID int, foreign key(GID) references genre(GID),
	PKID int, foreign key(PKID) references plot_keywords(PKID)
	);

create table performs
	(prid int primary key,
	id int, foreign key(id) references movie(id),
	aid int, foreign key(aid) references actor(aid));

create table TVShowDesc
	(tid int primary key,
	title varchar(100),
	CID int, foreign key(CID) references color(CID),
	EID int, foreign key(EID) references ethnicity(EID),
	GID int, foreign key(GID) references genre(GID));

create table tv_show
	(tid int, foreign key(tid) references TVShowDesc(tid),
	season_no int, 
	episode_no int,
	episode_title varchar(100),
	aspect_ratio float(4),
	gross int,
	budget int,
	duration smallint,
	facebook_likes int,
	faces_in_poster smallint,
	DID int, foreign key(DID) references director(DID),
	IMDbID int, foreign key(IMDbID) references imdb(IMDbID),
	PKID int, foreign key(PKID) references plot_keywords(PKID),
	primary key(tid, season_no, episode_no));

create table PerformsTVShow
	(prtid int primary key,
	tid int, foreign key(tid) references TVShowDesc(tid),
	season_no int, foreign key(season_no) references tv_show(season_no),
	episode_no int, foreign key(episode_no) references tv_show(episode_no),
	aid int, foreign key(aid) references actor(aid));

create table PerformsTVShow
	(prtid int primary key,
	tid int, foreign key(tid) references TVShowDesc(tid),
	aid int, foreign key(aid) references actor(aid));


Primary Keys to identify

Actor - 101
IMDbID - 901
Ethnicity - 51
Specification - 61
Genre - 401
Plot Keywords - 501
Director - 201
Color - 71
Movie - 301
Performs - 701
PerformsTVShow - 601
TV Show - 351
TV Show Name - Composite of TID, episode_no, season_no.