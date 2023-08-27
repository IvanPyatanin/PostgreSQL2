--Самый длинный трек
select name, duration from tracks
	order by duration desc
	limit 1;

--Треки длинее 3,5 минут
select name, duration from tracks
	where duration >= '3:50:00';

--Сбориники вышедшие с 2018 по 2020
select name from Collectin
	where data >= '2018-01-01' and data <= '2020-12-31';

--Имя состоит из одного слова
SELECT name FROM Musicians
	WHERE (LENGTH(name) - LENGTH(REPLACE(name, ' ', ''))+1)=1;

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

--исполнители которые не выпускали после в 2020
select m."name"  from musicians m, albums a
	where a."data" <= '2019-12-31'
	and a.id = m.id
--сборники с исполнителем
select c."name"  from collectin c, musicians m
	where m."name" like 'Marsh%'