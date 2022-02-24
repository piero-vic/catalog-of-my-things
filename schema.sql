CREATE TABLE author (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50)
);

CREATE TABLE source (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE genre (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE label (
  id SERIAL PRIMARY KEY,
  title VARCHAR(50) NOT NULL,
  color VARCHAR(50) NOT NULL
); 

CREATE TABLE music_album (
  id SERIAL PRIMARY KEY,
  on_spotify BOOLEAN NOT NULL,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  genre_id INT REFERENCES genre(id),
  author_id INT REFERENCES author(id),
  label_id INT REFERENCES label(id),
  source_id INT REFERENCES source(id)
);

CREATE TABLE games (
  id SERIAL PRIMARY KEY,
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
  id SERIAL PRIMARY KEY,
  silent BOOLEAN NOT NULL,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  genre_id INT REFERENCES genre(id),
  author_id INT REFERENCES author(id),
  label_id INT REFERENCES label(id),
  source_id INT REFERENCES source(id)
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  publisher VARCHAR(50) NOT NULL,
  cover_state VARCHAR(50) NOT NULL,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  genre_id INT REFERENCES genre(id),
  author_id INT REFERENCES author(id),
  label_id INT REFERENCES label(id),
  source_id INT REFERENCES source(id)
);
