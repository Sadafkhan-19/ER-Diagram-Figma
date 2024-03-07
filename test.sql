CREATE TABLE users (
id BIGINT NOT NULL AUTO_INCREMENT, 
first_name varchar(50),
last_name varchar(50),
email varchar(100),
account_type ENUM('reg', 'admin'),
PRIMARY KEY(id)
);

CREATE TABLE posts (
id BIGINT NOT NULL AUTO_INCREMENT, 
text VARCHAR(256),
uid BIGINT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (uid) REFERENCES users(id)
);

CREATE TABLE messages (
id BIGINT NOT NULL AUTO_INCREMENT, 
text VARCHAR(256),
uid_to BIGINT NOT NULL,
uid_from BIGINT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (uid_to) REFERENCES users(id),
FOREIGN KEY (uid_from) REFERENCES users(id)
);
