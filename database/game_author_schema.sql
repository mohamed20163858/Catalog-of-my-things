CREATE TABLE author (
  id INT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(200),
  last_name VARCHAR(200),
  PRIMARY KEY (id)
);

CREATE TABLE games (
  id serial PRIMARY KEY,
  multiplayer boolean,
  last_palayed_at DATE,
  publish_date Date
  archived boolean
  FOREIGN KEY (id) REFERENCES item(id)
)
