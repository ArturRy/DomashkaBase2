-- основное задание


create table if not exists Album (
	id SERIAL primary key,
	year_of_production DATE not null,
	check (year_of_production > 2000-01-01),
	title VARCHAR(100) not null
	);

create table if not exists Genre (
	id SERIAL primary key,
	name VARCHAR(100) UNIQUE
	);
	
create table if not exists Singer (
	id SERIAL primary key,
	pseudonym VARCHAR(100) UNIQUE null
	);
	
create table if not exists Track (
	id SERIAL primary key,
	title VARCHAR(100) not null,
	duration_sec INTEGER not null,
	check (duration_sec > 30 and duration_sec < 600),
	album_id INTEGER not null references Album(id)
	);

create table if not exists Songbook (
	id SERIAL primary key,
	year_of_production DATE not null,
	name VARCHAR (100) unique not null
	);
	
create table if not exists GenreSinger(
	genre_id INTEGER references Genre(id),
	singer_id INTEGER references Singer(id),
	constraint pk primary key (genre_id, singer_id)
	);
	
create table if not exists SingerAlbum (
	singer_id INTEGER references Singer(id),
	album_id INTEGER references Album(id),
	constraint pr primary key (singer_id, album_id)
	);

create table if not exists SongbookTrack (
	track_id INTEGER references Track(id),
	songbook_id INTEGER references Songbook(id),
	constraint pp primary key (track_id, songbook_id)
	);
	

--дополнительное задание 


create table if not exists Employee (
	id SERIAL primary key,
	name VARCHAR(100) not null,
	department VARCHAR(100) not null,
	boss INTEGER references Employee (id)
	);

	