CREATE TABLE book (
    id int GENERATED BY DEFAULT AS IDENTITY,
    genre_id int,
    author_id int,
    source_-id int,
    label_id int,
    publish_date date,
    archived boolean,
    publisher varchar(50),
    cover_state varchar(50),
    PRIMARY KEY (id),
    CONSTRAINT genre_fkey FOREIGN KEY (genre_id) REFERENCES genre(id),
    CONSTRAINT author_fkey FOREIGN KEY (author_id) REFERENCES author(id),
    CONSTRAINT source_fkey FOREIGN KEY (source_id) REFERENCES source(id),
    CONSTRAINT label_fkey FOREIGN KEY (label_id) REFERENCES label(id),
)

CREATE TABLE label (
    id int GENERATED BY DEFAULT AS IDENTITY,
    title varchar(50),
    colour varchar(50),
    PRIMARY KEY (id)
)