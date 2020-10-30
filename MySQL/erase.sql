CREATE TABLE user (
    userId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100),
    password VARCHAR(100) )

insert into user (userId, username, password) values (1, 'Arun', '45q');
insert into user (userId, username, password) values (2, 'Ramesh', '580ig7800');
insert into user (userId, username, password) values (3, 'John', '68gjjj');

//Deletes the Records of the Table only

TRUNCATE TABLE user;

//Deletes the Entire Table

DROP TABLE user;
