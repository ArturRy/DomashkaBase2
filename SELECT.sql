               --Задание 2
     -- Название и продолжительность самого длительного трека.

SELECT  title, duration_sec FROM track
WHERE duration_sec = (SELECT MAX(duration_sec) FROM track);

     -- Название треков, продолжительность которых не менее 3,5 минут.

SELECT title FROM track 
WHERE duration_sec > 210;

     -- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM songbook 
WHERE year_of_production  BETWEEN '2018-01-01' AND '2020-01-01';

     -- Исполнители, чьё имя состоит из одного слова.

SELECT pseudonym FROM singer 
WHERE pseudonym NOT LIKE '% %';

     -- Название треков, которые содержат слово «мой» или «my».

SELECT title FROM track
WHERE title LIKE '%My %' OR title LIKE '%Мой %';

                      
                  --Задание 3
      -- Колличество исполнителей в каждом жанре

SELECT g.name, COUNT(s.pseudonym)  FROM genresinger p 
JOIN genre g ON p.genre_id = g.id 
JOIN singer s ON p.singer_id = s.id  
GROUP BY g.name;

      -- Количество треков, вошедших в альбомы 2019–2020 годов.

SELECT a.title, COUNT(t.title) FROM album a 
JOIN track t ON a.id = t.album_id
WHERE date(a.year_of_production) BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY a.title;

      -- Средняя продолжительность треков по каждому альбому.

SELECT a.title, AVG(t.duration_sec) FROM album a 
JOIN track t ON a.id = t.album_id 
GROUP BY a.title;

      --Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT DISTINCT  s.pseudonym FROM singeralbum sa
JOIN singer s ON sa.singer_id = s.id 
JOIN album a ON sa.album_id = a.id 
WHERE date(a.year_of_production) NOT BETWEEN  '2020-01-01'AND '2020-12-31'; 

     --Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)

SELECT DISTINCT s.name FROM songbooktrack st 
JOIN track t ON st.track_id = t.id 
JOIN songbook s ON st.songbook_id = s.id 
JOIN album a ON t.album_id = a.id 
JOIN singeralbum sa ON a.id = sa.album_id 
JOIN singer si ON sa.singer_id = si.id 
WHERE si.pseudonym = 'Linkin park';


                         -- Задание 4
     --Названия альбомов, в которых присутствуют исполнители более чем одного жанра.

                     
     --Наименования треков, которые не входят в сборники.

SELECT t.title  FROM track t
LEFT JOIN songbooktrack st ON t.id = st.track_id 
WHERE st.track_id  IS NULL;

      -- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.

SELECT s.pseudonym FROM singeralbum sa
JOIN singer s ON sa.singer_id = s.id 
JOIN album a ON sa.album_id = a.id 
JOIN track t ON a.id = t.album_id 
WHERE t.duration_sec  = (SELECT min(duration_sec) FROM track);

      --Названия альбомов, содержащих наименьшее количество треков.


 







 


