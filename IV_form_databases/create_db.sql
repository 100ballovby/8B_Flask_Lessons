CREATE TABLE IF NOT EXISTS person
(
    id       INTEGER,
    f_name   VARCHAR(20),
    l_name   VARCHAR(20),
    gender   CHAR(1),
    birthday DATE,
    address  VARCHAR(50),
    city     VARCHAR(50),
    country  VARCHAR(20),
    CONSTRAINT pk_person PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS favorite_food
(
    id        INTEGER,
    person_id INTEGER,
    food      VARCHAR(20),
    CONSTRAINT pk_food PRIMARY KEY (id),
    CONSTRAINT fk_pers_id FOREIGN KEY (person_id)
        REFERENCES person (id)
);