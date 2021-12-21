-- public.album definition

-- Drop table

-- DROP TABLE public.album;

CREATE TABLE public.album (
	id serial4 NOT NULL,
	"name" varchar(40) NOT NULL,
	"release" int4 NOT NULL,
	CONSTRAINT album_pkey PRIMARY KEY (id)
);

 
-- public.collection definition

-- Drop table

-- DROP TABLE public.collection;

CREATE TABLE public.collection (
	id serial4 NOT NULL,
	"name" varchar(40) NOT NULL,
	"release" int4 NOT NULL,
	CONSTRAINT collection_pkey PRIMARY KEY (id)
);


-- public.genre definition

-- Drop table

-- DROP TABLE public.genre;

CREATE TABLE public.genre (
	id serial4 NOT NULL,
	"name" varchar(40) NOT NULL,
	CONSTRAINT genre_pkey PRIMARY KEY (id)
);


-- public.singer definition

-- Drop table

-- DROP TABLE public.singer;

CREATE TABLE public.singer (
	id serial4 NOT NULL,
	"name" varchar(40) NOT NULL,
	CONSTRAINT singer_pkey PRIMARY KEY (id)
);


-- public.genresinger definition

-- Drop table

-- DROP TABLE public.genresinger;

CREATE TABLE public.genresinger (
	id serial4 NOT NULL,
	genre_id int4 NOT NULL,
	singer_id int4 NOT NULL,
	CONSTRAINT genresinger_pkey PRIMARY KEY (id),
	CONSTRAINT genresinger_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(id),
	CONSTRAINT genresinger_singer_id_fkey FOREIGN KEY (singer_id) REFERENCES public.singer(id)
);


-- public.singeralbum definition

-- Drop table

-- DROP TABLE public.singeralbum;

CREATE TABLE public.singeralbum (
	id serial4 NOT NULL,
	singer_id int4 NOT NULL,
	album_id int4 NOT NULL,
	CONSTRAINT singeralbum_pkey PRIMARY KEY (id),
	CONSTRAINT singeralbum_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album(id),
	CONSTRAINT singeralbum_singer_id_fkey FOREIGN KEY (singer_id) REFERENCES public.singer(id)
);


-- public.track definition

-- Drop table

-- DROP TABLE public.track;

CREATE TABLE public.track (
	id serial4 NOT NULL,
	"name" varchar(40) NOT NULL,
	duration int4 NOT NULL,
	album_id int4 NOT NULL,
	CONSTRAINT track_pkey PRIMARY KEY (id),
	CONSTRAINT track_album_id_fkey FOREIGN KEY (album_id) REFERENCES public.album(id)
);


-- public.trackcollection definition

-- Drop table

-- DROP TABLE public.trackcollection;

CREATE TABLE public.trackcollection (
	id serial4 NOT NULL,
	track_id int4 NOT NULL,
	collection_id int4 NOT NULL,
	CONSTRAINT trackcollection_pkey PRIMARY KEY (id),
	CONSTRAINT trackcollection_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.collection(id),
	CONSTRAINT trackcollection_track_id_fkey FOREIGN KEY (track_id) REFERENCES public.track(id)
);