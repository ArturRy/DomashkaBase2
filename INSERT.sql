              -- Задание 1
         
         --Продолжаем работать со своей базой данных. В этом задании заполните базу данных из домашнего задания к занятию "Работа с SQL. Создание БД". В ней должно быть:

--не менее 4 исполнителей,
--не менее 3 жанров,
--не менее 3 альбомов,
--не менее 6 треков,
--не менее 4 сборников.

INSERT INTO genre 
VALUES(1, 'Rock');
INSERT INTO genre 
VALUES(2, 'Rap'); 
INSERT INTO genre 
VALUES(3, 'Pop');
INSERT INTO genre 
VALUES(4, 'Jazz');
INSERT INTO genre 
VALUES(5, 'Alternative');


INSERT INTO singer
VALUES(1, 'Linkin park');
INSERT INTO singer
VALUES(2, 'Shakira');
INSERT INTO singer
VALUES(3, 'Frank Sinatra');
INSERT INTO singer
VALUES(4, 'Rammstein');
INSERT INTO singer
VALUES(5, 'Eminem');


INSERT INTO album
VALUES(1, '2007-03-25', 'Meteora');
INSERT INTO album
VALUES(2, '2005-10-28', 'Rosenrot');
INSERT INTO album
VALUES(3, '1969-03-17', 'My Way');
INSERT INTO album
VALUES(4, '2019-05-17', 'Rammstein');
INSERT INTO album
VALUES(5, '2020-03-02', 'Test album');


INSERT INTO track
VALUES(1, 'Numb', 261, 1);
INSERT INTO track
VALUES(2, 'My Way', 276, 3);
INSERT INTO track
VALUES(3, 'Benzin', 226, 2);
INSERT INTO track
VALUES(4, 'Auslander', 231, 4);
INSERT INTO track
VALUES(5, 'Crawling', 215, 1);
INSERT INTO track
VALUES(6, 'Rammstein', 215, 4);
INSERT INTO track
VALUES(7, 'Yesterday', 240, 3);
INSERT INTO track 
VALUES(8, 'In the end', 232, 1);
INSERT INTO track 
VALUES(9, 'myself', 200, 1);
INSERT INTO track 
VALUES(10, 'by myself', 180, 1);
INSERT INTO track 
VALUES(11, 'bemy self', 250, 1);
INSERT INTO track 
VALUES(12, 'myself by', 300, 1);
INSERT INTO track 
VALUES(13, 'by myself by', 280, 1);
INSERT INTO track 
VALUES(14, 'beemy', 256, 1);
INSERT INTO track 
VALUES(15, 'premyne', 234, 1);
INSERT INTO track 
VALUES(16, 'my own', 255, 1);
INSERT INTO track 
VALUES(17, 'own my', 234, 1);
INSERT INTO track 
VALUES(18, 'my', 260, 1);
INSERT INTO track 
VALUES(19, 'oh my god', 300, 1);


 
INSERT INTO songbook 
VALUES(1, '1990-01-01', 'Old school');
INSERT INTO songbook 
VALUES(2, '2010-05-23', 'Best Rock');
INSERT INTO songbook 
VALUES(3, '2019-07-12', 'New Rock');
INSERT INTO songbook 
VALUES(4, '2020-07-04', 'All in');

INSERT INTO genresinger  
VALUES(1, 1);
INSERT INTO genresinger  
VALUES(1, 4);
INSERT INTO genresinger  
VALUES(2, 5);
INSERT INTO genresinger  
VALUES(3, 2);
INSERT INTO genresinger  
VALUES(4, 3);
INSERT INTO genresinger 
values(5,1);

INSERT INTO singeralbum  
VALUES(1, 1);
INSERT INTO singeralbum  
VALUES(4, 2);
INSERT INTO singeralbum  
VALUES(4, 4);
INSERT INTO singeralbum  
VALUES(3, 3);
INSERT INTO singeralbum  
VALUES(2, 5);


INSERT INTO songbooktrack  
VALUES(2, 1);
INSERT INTO songbooktrack  
VALUES(7, 1);
INSERT INTO songbooktrack  
VALUES(1, 2);
INSERT INTO songbooktrack  
VALUES(3, 2);
INSERT INTO songbooktrack  
VALUES(5, 2);
INSERT INTO songbooktrack  
VALUES(6, 3);
INSERT INTO songbooktrack  
VALUES(1, 4);
INSERT INTO songbooktrack  
VALUES(3, 4);
INSERT INTO songbooktrack  
VALUES(5, 4);
INSERT INTO songbooktrack  
VALUES(7, 4);








