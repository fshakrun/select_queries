create table if not exists Artist_list(
	Id serial primary key,
	Artist_name varchar(40) not null
        GenreId integer references Genre(Id) not null
);


create table if not exists Album(
	Id serial primary key,
	Album_title varchar(40) not null unique,
        Release_date integer(4,0) not null,
);


create table if not exists Tracks(
	Id serial primary key,
        Track_title varchar(100) not null unique,
        Track_duration integer(4,0) not null,
	AlbumId integer references Album(Id)
);


create table if not exists Genre(
	Id serial primary key,
	Title varchar(40) not null
);


create table if not exists Artists_genres(
	Id serial primary key,
	ArtistId integer references Performer(Id) not null,
	GenreId integer references Genre(Id) not null
);

create table if not exists Artists_albums(
	Id serial primary key,
	ArtistId integer references Artist(Id) not null,
	AlbumId integer references Album(Id) not null
);

create table if not exists Mix_tapes(
	Id serial primary key,
	Mt_title varchar(100) not null,
	Release_date integer(4,0) not null
);

create table if not exists Mt_tracks(
	Id serial primary key,
	MixtapesId integer references Mix_tapes(Id) not null,
	TrackId integer references Tracks(Id) not null
);