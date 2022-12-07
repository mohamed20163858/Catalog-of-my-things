CREATE TABLE Book (
    id INT GENERATED ALWAYS AS IDENTITY,
    publish_date DATE,
    archived BOOLEAN,
    publisher VARCHAR(255),
    cover_state VARCHAR(50),
    PRIMARY KEY(id)
);
CREATE TABLE Label (
    id INT GENERATED ALWAYS AS IDENTITY,
    book_id INT,
    title VARCHAR(255),
    color VARCHAR(50),
    PRIMARY KEY(id),
    FOREIGN KEY(book_id) REFERENCES Book(id)
);