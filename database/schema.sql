CREATE TABLE Book (
    id INT GENERATED ALWAYS AS IDENTITY,
    game_id INT
    publish_date DATE,
    archived BOOLEAN,
    publisher VARCHAR(255),
    cover_state VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE Label (
    id INT GENERATED ALWAYS AS IDENTITY,
    book_id INT,
    game_id INT
    title VARCHAR(255),
    color VARCHAR(50),
    PRIMARY KEY(id),
    FOREIGN KEY(book_id) REFERENCES Book(id)
    FOREIGN KEY(game_id) REFERENCES game(id)
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
  first_name VARCHAR(200),
  last_name VARCHAR(200),
  PRIMARY KEY(id),
  FOREIGN KEY(book_id) REFERENCES Book(id),
  FOREIGN KEY(game_id) REFERENCES Game(id)
);
