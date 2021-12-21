INSERT INTO genre (name) 
VALUES ('Pop'), ('Jazz'), ('Romance'), ('Rap'), ('Rock');

INSERT INTO singer (name) VALUES ('Michael Jackson'), ('Madonna'), 
('Dua Lipa'), ('Nick LaRocka'), ('Camilla Cabelo'), ('Lone'),
('Kristina Si'), ('TinaVi');

INSERT INTO GenreSinger (genre_id, singer_id)
VALUES(1, 1), (1, 2), (1, 3), (2, 4), (3, 5), (4, 6), (4, 7), (5, 8);

INSERT INTO album (name, release) VALUES ('Thriller', 1982), ('Madame X', 2021), ('Future Nostalgia', 2018), ('Tiger Rag', 1962),
('Never Be The Same', 2020), ('1985', 2017), ('Me so bad', 2021), ('Neverland', 2021);

INSERT INTO SingerAlbum (singer_id, album_id) VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (7, 8);

INSERT INTO Track (name, duration, album_id) VALUES ('Thriller', 358, 1), ('I Rise', 379, 2), ('Dreak My Heart', 221, 3),
('Tiger', 252, 4), ('Never Be The Same', 227, 5), ('The Wind of Change', 222, 6), ('Me so bad', 231, 7), ('Neverland', 240, 8),
('My world', 252, 8), ('Levitating', 261, 5), ('We are good', 316, 5), ('Hasta la vista', 261, 7), ('MAMI', 315, 7), ('Crazy', 288, 2),
('Future', 240, 2);

INSERT INTO Collection (name, release) VALUES ('Club Future Nostalgia', 2020), ('Never', 2021), ('Thriller', 1982),
('Madame', 2021), ('Satellite', 2013), ('Medellin', 2019), ('Bad', 2020), ('Post', 2019);

INSERT INTO TrackCollection (track_id, collection_id) VALUES (1, 3), (2, 4), (3, 1), (4, 7), (5, 2), (6, 5), (7, 5), 
(8, 8), (9, 2), (10, 1), (11, 4), (12, 5), (13, 6), (14, 4);