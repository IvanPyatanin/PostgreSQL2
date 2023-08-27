create table if not exists Jenres(
	id serial primary key,
	name CHARACTER VARYING(30)
);

create table if not exists Musicians(
	id serial primary key,
	name varchar(80) not null,
	nickname CHARACTER VARYING(30)
);

create table if not exists Albums
(
	id serial primary key,
	name varchar(80) not null,
	data date not null
);

create table if not exists Tracks
(
	id serial primary key,
	albumid integer not null references Albums(id),
	name varchar(80) not null,
	duration time not null
);

create table if not exists Collectin
(
	id serial primary key,
	name varchar(80) not null,
	data date not null
);

create table if not exists J_M
(
	jenresid integer not null references Jenres(id),
	musicianid integer not null references Musicians(id),
	primary key (jenresid, musicianid)
);

create table if not exists M_A
(
	musicianid integer not null references Musicians(id),
	album_id integer not null references Albums(id),
	primary key (musicianid, album_id)
);

create table if not exists T_C
(
	track_id integer not null references Tracks(id),
	collection_id integer not null references Collectin(id),
	primary key (track_id, collection_id)
);