insert into Jenres(id, name) values
	('1', 'Rock'),
	('2', 'Hip-Hop'),
	('3', 'Pop');

insert into Musicians(id, name, nickname) values
	('1', 'Gene Klien', 'Gene Simmons'),
	('2', 'John Michael Osbourne', 'Ozzy Osbourne'),
	('3', 'Marshall Mathers', 'Eminem'),
	('4', 'Robyn Fenty','Rihanna');

--Добавляю под задачу
insert into Musicians(id, name, nickname) values
	('5', 'Mikhail', 'Circle');

insert into Albums(id, name, data) values
	('1', 'Destroyer', '2021-01-01'),
	('2', 'Live Aid', '2018-05-06'),
	('3', 'Revival', '2017-07-10'),
	('4', 'We found love', '2011-11-22');

insert into Tracks(id, albumid, name, duration) values
	('1', '1', 'Sweet pain', '3:20'),
	('2', '1', 'Beth', '2:45'),
	('3', '2', 'Royal fanfare', '0:34'),
	('4', '2', 'Caroline', '4:34'),
	('5', '3', 'Believe', '5:15'),
	('6', '3', 'River', '3:41'),
	('7', '4', 'Cahill club', '6:29');

insert into Tracks(id, albumid, name, duration) values
	('8', '4', 'Kolshchik', '3:27');

--Добавляю под задачу
insert into Tracks(id, albumid, name, duration) values
	('9', '3', 'My mom', '5:19');

insert into Collectin(id, name, data) values
	('1', 'Top 10 Rock', '2022-04-02'),
	('2', 'Best songs', '2022-12-04'),
	('3', 'Eternal hits', '2022-07-23'),
	('4', 'Summer', '2022-07-10');

--Добавляю под задачу
insert into Collectin(id, name, data) values
	('5', 'Best 2019', '2019-04-12');

insert into Collectin(id, name, data) values
	('6', 'Sound 2020', '2020-04-12');

insert into J_M(jenresid, musicianid) values
	('1', '1'),
	('1', '2'),
	('2', '3'),
	('3', '4');

insert into M_A(musicianid, album_id) values
	('1', '1'),
	('2', '2'),
	('3', '3'),
	('4', '4');

insert into T_C(track_id, collection_id) values
	('1', '1'),
	('2', '1'),
	('3', '1'),
	('4', '1'),
	('2', '2'),
	('4', '2'),
	('6', '2'),
	('1', '3'),
	('2', '3'),
	('4', '3'),
	('5', '3'),
	('5', '4'),
	('6', '4'),
	('7', '4');

insert into T_C(track_id, collection_id) values
	('8', '6');