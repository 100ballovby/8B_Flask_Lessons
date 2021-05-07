CREATE TABLE IF NOT EXISTS account
(
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id     INTEGER,
    open_date       DATE,
    close_date      DATE,
    product_id      INTEGER,
    avail_balance   FLOAT(10, 2),
    pending_balance FLOAT(10, 2),
    transaction_id INTEGER,
    CONSTRAINT fk_cust FOREIGN KEY (customer_id)
        REFERENCES customer (id),
    CONSTRAINT trans_id FOREIGN KEY (transaction_id)
    REFERENCES transactions (id)
);

CREATE TABLE IF NOT EXISTS customer
(
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    cust_type   INTEGER NOT NULL,
    address     VARCHAR(30),
    city        VARCHAR(30),
    state       VARCHAR(30),
    postal_code VARCHAR(10)
);
-- таблица для физических лиц
CREATE TABLE IF NOT EXISTS individual
(
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    f_name        VARCHAR(30),
    l_name        VARCHAR(30),
    passport_code VARCHAR(15),
    phone         VARCHAR(20),
    email         VARCHAR(20),
    birth_date    DATE,
    CONSTRAINT fk_type FOREIGN KEY (id)
        REFERENCES customer (cust_type)
);
-- таблица для юридических лиц
CREATE TABLE IF NOT EXISTS business
(
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR(255) NOT NULL,
    incorp_date DATE,
    inp         VARCHAR(50),
    CONSTRAINT fk_type FOREIGN KEY (id)
        REFERENCES customer (cust_type)
);
-- таблица для officers
CREATE TABLE IF NOT EXISTS officer
(
    id         INTEGER PRIMARY KEY AUTOINCREMENT,
    cust_id    INTEGER,
    f_name     VARCHAR(30),
    l_name     VARCHAR(30),
    start_date DATE,
    end_date   DATE,
    CONSTRAINT fk_client FOREIGN KEY (cust_id)
        REFERENCES business (id)
);

-- таблица банковских услуг
CREATE TABLE IF NOT EXISTS product
(
    id           INTEGER PRIMARY KEY AUTOINCREMENT,
    name         VARCHAR(50) UNIQUE NOT NULL,
    product_type VARCHAR(10),
    date_offered DATE,
    date_retried DATE,
    CONSTRAINT fk_ptype FOREIGN KEY (product_type)
        REFERENCES prod_type (type)
);

-- таблица типов услуг
CREATE TABLE IF NOT EXISTS prod_type
(
    id   INTEGER PRIMARY KEY AUTOINCREMENT,
    type VARCHAR(10)
);

-- таблица департаментов (отделов) банка
CREATE TABLE IF NOT EXISTS department
(
    id   INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(20) NOT NULL
);

-- работники банка
CREATE TABLE IF NOT EXISTS employee
(
    id             INTEGER PRIMARY KEY AUTOINCREMENT,
    fname          VARCHAR(20),
    sname          VARCHAR(20),
    start_date     DATE,
    end_date       DATE,
    department_id  INTEGER,
    title          VARCHAR(20),
    transaction_id INTEGER,
    CONSTRAINT dpart_id FOREIGN KEY (department_id)
    REFERENCES department (id),
    CONSTRAINT trans_id FOREIGN KEY (transaction_id)
    REFERENCES transactions (id)
);

-- транзакции
CREATE TABLE IF NOT EXISTS transactions
(
    id         INTEGER PRIMARY KEY AUTOINCREMENT,
    account_id INTEGER,
    amount     FLOAT(10, 2),
    tr_date    DATE
);

-- удаление таблиц
DROP TABLE account;
DROP TABLE business;
DROP TABLE customer;
DROP TABLE individual;
DROP TABLE officer;