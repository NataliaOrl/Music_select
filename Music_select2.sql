SELECT genre.name, COUNT(singer.name) FROM singer
JOIN genresinger ON singer.id = genresinger.singer_id
JOIN genre ON genre.id = genresinger.genre_id
GROUP BY genre.name;

SELECT COUNT(track.name) FROM track
JOIN album ON track.album_id = album.id
WHERE album.release BETWEEN 2019 and 2020;

SELECT DISTINCT album.name, AVG(track.duration) FROM track
JOIN album ON track.album_id = album.id
GROUP BY album.name;

SELECT singer.name FROM singer
JOIN singeralbum ON singer.id = singeralbum.singer_id
JOIN album ON album.id = singeralbum.album_id
WHERE release IN (SELECT release FROM album
WHERE release != 2020);

SELECT DISTINCT collection.name FROM collection
JOIN trackcollection ON trackcollection.collection_id = collection.id
JOIN track ON track.id = trackcollection.track_id
JOIN album ON album.id = track.album_id
JOIN singeralbum ON singeralbum.album_id = album.id
JOIN singer ON singer.id = singeralbum.singer_id
WHERE singer.name = 'TinaVi';

SELECT DISTINCT album.name FROM album
JOIN singeralbum ON singeralbum.album_id = album.id
JOIN singer ON singer.id = singeralbum.singer_id
JOIN genresinger ON singer.id = genresinger.singer_id
JOIN genre ON genre.id = genresinger.genre_id
GROUP BY album.name
HAVING COUNT(DISTINCT genre.name) > 1

SELECT DISTINCT track.name FROM track
LEFT JOIN trackcollection ON track.id = trackcollection.track_id
WHERE trackcollection.collection_id is NULL

SELECT singer.name, track.duration FROM singer
JOIN singeralbum ON singer.id = singeralbum.singer_id
JOIN album ON album.id = singeralbum.album_id
JOIN track ON track.album_id = album.id
GROUP BY singer.name, track.duration
HAVING track.duration = (SELECT(MIN(track.duration)) FROM track)

SELECT DISTINCT album.name FROM album
JOIN track ON track.album_id = album.id
GROUP BY album.name
HAVING COUNT(DISTINCT track.name) = (SELECT COUNT(DISTINCT track.name)
FROM track 
GROUP BY track.name
ORDER BY COUNT(DISTINCT track.name)
LIMIT 1)