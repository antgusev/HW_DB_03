CREATE TABLE IF NOT EXISTS musical_genres (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS artists (
	artist_id SERIAL PRIMARY KEY,
	name_nickname VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist (
    genre_id INTEGER REFERENCES musical_genres(genre_id),
	artist_id INTEGER REFERENCES artists(artist_id),
	CONSTRAINT pk_gen_art PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(40) UNIQUE NOT NULL,
	year INTEGER NOT NULL
);


CREATE TABLE IF NOT EXISTS album_artist (
    album_id INTEGER REFERENCES albums(album_id),
	artist_id INTEGER REFERENCES artists(artist_id),
	CONSTRAINT pk_alb_art PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS tracks (
	track_id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES albums(album_id),
	name VARCHAR(40) NOT NULL,
	length INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS collections (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(40) UNIQUE NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS track_collection (
    track_id INTEGER REFERENCES tracks(track_id),
	collection_id INTEGER REFERENCES collections(collection_id),
	CONSTRAINT pk_tr_col PRIMARY KEY (track_id, collection_id) 
);
