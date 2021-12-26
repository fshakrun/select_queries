SELECT album_title, release_date FROM Album 
WHERE release_date = 2018;

SELECT track_title, track_duration FROM Tracks 
ORDER BY track_duration desc 
LIMIT 1;

SELECT track_title FROM Tracks 
WHERE track_duration >= 3.5;

SELECT mt_title FROM Mix_tapes
WHERE release_date BETWEEN 2018 AND 2020;

SELECT artist_name FROM Artist_list 
WHERE artist_name not like '% %';

SELECT track_title FROM Tracks 
WHERE (track_title LIKE '%мой%') OR (track_title LIKE '%My%') OR (track_title LIKE '%Мой%');
