-- task1 --
CREATE DATABASE IF NOT EXISTS homework;
USE homework;

CREATE TABLE IF NOT EXISTS workpeople (
	id INT UNSIGNED NOT NULL primary key,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
    post VARCHAR(30) NOT NULL,
	pay INT UNSIGNED NOT NULL
);

INSERT INTO workpeople ( id, first_name, last_name, post, pay) VALUES ( 1, 'Jeff', 'Bezos', 'CEO', 67300);
INSERT INTO workpeople ( id, first_name, last_name, post, pay) VALUES ( 2, 'Bill', 'Gates', 'Company founder', 42600);
INSERT INTO workpeople ( id, first_name, last_name, post, pay) VALUES ( 3, 'Warren', 'Buffett', 'businessman', 30100);
INSERT INTO workpeople ( id, first_name, last_name, post, pay) VALUES ( 4, 'Bernard', 'Arnault', 'businessman', 28500);
INSERT INTO workpeople ( id, first_name, last_name, post, pay) VALUES ( 5, 'Mark', 'Zuckerberg', 'programmer', 24900);

-- task 2 --
SELECT * FROM homework.workpeople WHERE pay < 30000;
SELECT * FROM homework.workpeople WHERE post = 'businessman' AND pay < 30000;

-- task 3 --
CREATE TABLE IF NOT EXISTS relation (
	id_head  INT UNSIGNED NOT NULL,
	id_sub  INT UNSIGNED NOT NULL
);
INSERT INTO homework.relation ( id_head, id_sub) VALUES ( 1, 3);
INSERT INTO homework.relation ( id_head, id_sub) VALUES ( 1, 4);
INSERT INTO homework.relation ( id_head, id_sub) VALUES ( 1, 5);
INSERT INTO homework.relation ( id_head, id_sub) VALUES ( 2, 1);
INSERT INTO homework.relation ( id_head, id_sub) VALUES ( 2, 5);

SELECT * FROM workpeople JOIN relation
	WHERE workpeople.id=relation.id_sub AND id_head=1;