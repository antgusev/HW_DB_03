SELECT name, length FROM tracks
WHERE length = (SELECT MAX(length) FROM tracks);

SELECT name FROM tracks
WHERE length >= 210;

SELECT name FROM collections
WHERE year BETWEEN 2018 AND 2020;

SELECT name_nickname FROM artists
WHERE NOT name_nickname LIKE '%% %%';

SELECT name FROM tracks
WHERE name LIKE '%мой%' OR name LIKE '%Мой%' OR name LIKE '%my%' OR name LIKE '%My%';

SELECT g.name, COUNT(a.name_nickname) FROM musical_genres AS g
LEFT JOIN genre_artist AS ga ON g.genre_id = ga.genre_id
LEFT JOIN artists AS a ON ga.artist_id = a.artist_id
GROUP BY g.name
ORDER BY count(a.name_nickname) DESC;

SELECT a.year, COUNT(t.name) FROM albums AS a
LEFT JOIN tracks AS t ON t.album_id = a.album_id
WHERE a.year BETWEEN 2019 AND 2020
GROUP BY a.year;

SELECT a.name, AVG(t.length) FROM albums AS a
LEFT JOIN tracks AS t ON t.album_id = a.album_id
GROUP BY a.name
ORDER BY AVG(t.length);

SELECT DISTINCT ar.name_nickname FROM artists AS ar
LEFT JOIN album_artist AS aa ON ar.artist_id = aa.artist_id
LEFT JOIN albums as al on al.album_id = aa.album_id
WHERE NOT al.year = 2020
ORDER BY ar.name_nickname;

SELECT DISTINCT c.name FROM collections AS c
LEFT JOIN track_collection AS tc ON c.collection_id = tc.collection_id
LEFT JOIN tracks AS t ON t.track_id = tc.track_id
LEFT JOIN albums AS a ON a.album_id = t.album_id
LEFT JOIN album_artist AS aa ON aa.album_id = a.album_id
LEFT JOIN artists AS ar ON ar.artist_id = aa.artist_id
WHERE ar.name_nickname LIKE '%Би-2%'
ORDER BY c.name;