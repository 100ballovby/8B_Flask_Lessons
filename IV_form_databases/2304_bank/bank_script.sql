CREATE TABLE IF NOT EXISTS account (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    open_date DATE,
    close_date DATE,
    product_id INTEGER,
    avail_balance FLOAT(10, 2),
    pending_balance FLOAT(10, 2)
);

CREATE TABLE IF NOT EXISTS customer (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cust_type INTEGER NOT NULL,
    address VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(30),
    postal_code VARCHAR(10)
);
-- таблица для физических лиц
CREATE TABLE IF NOT EXISTS individual (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    f_name VARCHAR(30),
    l_name VARCHAR(30),
    passport_code VARCHAR(15),
    phone VARCHAR(20),
    email VARCHAR(20),
    birth_date DATE
);
-- таблица для юридических лиц
CREATE TABLE IF NOT EXISTS business (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    incorp_date DATE,
    inp VARCHAR(50)
);
-- таблица для officers
CREATE TABLE IF NOT EXISTS officer (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  cust_id INTEGER,
  f_name VARCHAR(30),
  l_name VARCHAR(30),
  start_date DATE,
  end_date DATE
);