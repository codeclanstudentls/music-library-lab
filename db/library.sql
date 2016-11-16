DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS tracks;
DROP TABLE IF EXISTS artists;


CREATE TABLE artists(
id SERIAL8 primary key,
name VARCHAR(255)
);

CREATE TABLE albums(
id SERIAL8 primary key,
title VARCHAR(255),
genre VARCHAR(255),
year INT2,
artist_id INT8 references artists(id)
);

CREATE TABLE tracks(
  id SERIAL8 primary key,
  album_id INT8 references albums(id),
  track_title VARCHAR(255)
);

-- playtime TIME()

-- CREATE TABLE labels(
--   id SERIAL8 primary key,
--   label_id INT8 references labels(id),
--   label_name VARCHAR(255),

-- );