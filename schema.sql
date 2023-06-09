
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS video;

CREATE TABLE user (
id INTEGER PRIMARY KEY AUTOINCREMENT,
username TEXT UNIQUE NOT NULL,
password TEXT NOT NULL
)

CREATE TABLE post (
id INTEGER PRIMARY KEY AUTOINCREMENT,
publisher_id INTEGER NOT NULL,
created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
description TEXT NOT NULL,
FOREIGN KEY (publisher_id) REFERENCES user(id)

)
