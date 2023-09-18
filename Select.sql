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
select m.name, a.data from musicians m
	join m_a ma ON m.id = ma.musicianid
	join albums a on a.id = ma.album_id
	where EXTRACT (year from a."data") != '2020';

select c."name"  from musicians m
	join m_a ma on m.id = ma.musicianid
	join albums a on a.id = ma.album_id
	join tracks t on a.id = t.albumid
	join t_c tc on t.id = tc.track_id
	join collectin c on tc.collection_id  = c.id
	where m."name" like 'Marshall%';