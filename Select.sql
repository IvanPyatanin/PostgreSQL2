--Самый длинный трек
select name, duration from tracks
	where duration = (select max(duration)from tracks);

--Треки длинее 3,5 минут
select name, duration from tracks
	where duration >= '3:50:00';

--Сбориники вышедшие с 2018 по 2020
select name from Collectin
	where data >= '2018-01-01' and data <= '2020-12-31';

--Имя состоит из одного слова
select name from musicians m
	where name not like '% %';

--Треки с "мой" или "my"
select name from tracks
	where lower(name) like '%мой%' or lower(name) like '%my%';

--колличество исполнителей в каждом жанре
select jenresid, count(jenresid) as Count from J_M m
	where jenresid = m.jenresid
	group by jenresid

--колличество треков в альбомах
select id, count(t.collection_id)  from T_C t, Collectin c
	where c."data"  >= '2019-01-01' and c."data" <= '2020-12-31' 
	and id = t.collection_id  
	group by id
	
	
--средняя продолжительность трека
select t.collection_id , avg(t2.duration) from T_C t, tracks t2
	where t.collection_id = t2.id
	group by t.collection_id
	
--исполнители которые не выпускали альбомы в 2020
select m."name", a."data"  from musicians m, albums a
	where a."data" not between '2020-01-01' and '2020-12-31' and m.id = a.id ;

select c."name"  from musicians m
	join albums a on m.id = a.id
	join tracks t on a.id = t.albumid
	join collectin c on t.id = c.id
	where m."name" like 'Gene Klien';