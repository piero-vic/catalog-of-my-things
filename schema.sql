CREATE TABLE author (
  id SERIAL INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50)
);

CREATE TABLE source (
  id SERIAL INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE genre (
  id SERIAL INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE label (
  id SERIAL INT PRIMARY KEY,
  title VARCHAR(50) NOT NULL,
  color VARCHAR(50) NOT NULL
); 

CREATE TABLE musicalbum (
 id SERIAL INT PRIMARY KEY,
 on_spotify BOOLEAN NOT NULL,
 publish_date DATE NOT NULL,
 archived BOOLEAN NOT NULL,
 genre_id INT REFERENCES genre(id),
 author_id INT REFERENCES author(id),
 label_id INT REFERENCES label(id),
 source_id INT REFERENCES source(id)
);

CREATE TABLE games (
  id SERIAL INT PRIMARY KEY,
  multiplayer BOOLEAN NOT NULL,
  last_played_at DATE NOT NULL,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  genre_id INT REFERENCES genre(id),
  author_id INT REFERENCES author(id),
  label_id INT REFERENCES label(id),
  source_id INT REFERENCES source(id)
);

CREATE TABLE movies (
  id SERIAL INT PRIMARY KEY,
  silent BOOLEAN NOT NULL,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  genre_id INT REFERENCES genre(id),
  author_id INT REFERENCES author(id),
  label_id INT REFERENCES label(id),
  source_id INT REFERENCES source(id)
);
