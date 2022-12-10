CREATE TABLE Book (
    id INT GENERATED ALWAYS AS IDENTITY,
    game_id INT,
    publish_date DATE,
    archived BOOLEAN,
    publisher VARCHAR(255),
    cover_state VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE Label (
    id INT GENERATED ALWAYS AS IDENTITY,
    book_id INT,
    game_id INT,
    music_album_id INT,
    title VARCHAR(255),
    color VARCHAR(50),
    PRIMARY KEY(id),
    FOREIGN KEY(book_id) REFERENCES Book(id),
    FOREIGN KEY(game_id) REFERENCES Game(id),
    FOREIGN KEY(music_album_id) REFERENCES Music_Album(id)
);

CREATE TABLE Game (
  id INT GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
  archived BOOLEAN,
  multiplayer BOOLEAN,
  last_palayed_at DATE,
  PRIMARY KEY(id)
);

CREATE TABLE Author (
  id INT GENERATED ALWAYS AS IDENTITY,
  book_id INT,
  game_id INT,
  music_album_id INT,
  first_name VARCHAR(200),
  last_name VARCHAR(200),
  PRIMARY KEY(id),
  FOREIGN KEY(book_id) REFERENCES Book(id),
  FOREIGN KEY(game_id) REFERENCES Game(id),
  FOREIGN KEY(music_album_id) REFERENCES Music_Album(id)
);

CREATE TABLE Music_Album (
  id INT GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
  archived BOOLEAN,
  on_spotify BOOLEAN,
  PRIMARY KEY(id)
);

CREATE TABLE Genre (
  id INT GENERATED ALWAYS AS IDENTITY,
  book_id INT,
  game_id INT,
  music_album_id INT,
  name VARCHAR(200),
  PRIMARY KEY(id),
  FOREIGN KEY(book_id) REFERENCES Book(id),
  FOREIGN KEY(game_id) REFERENCES Game(id),
  FOREIGN KEY(music_album_id) REFERENCES Music_Album(id)
);

-- FK Indexes

CREATE INDEX book_id_idx ON Label(book_id);
CREATE INDEX game_id_idx ON Label(game_id);
CREATE INDEX music_album_id_idx ON Label(music_album_id);

CREATE INDEX book_id_idx ON Author(book_id);
CREATE INDEX game_id_idx ON Author(game_id);
CREATE INDEX music_album_id_idx ON Author(music_album_id);

CREATE INDEX book_id_idx ON Genre(book_id);
CREATE INDEX game_id_idx ON Genre(game_id);
CREATE INDEX music_album_id_idx ON Genre(music_album_id);
