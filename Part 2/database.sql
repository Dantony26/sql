Exercice 1 :
CREATE TABLE languages
(
	id INT PRIMARY KEY NOT NULL,
	pays VARCHAR(255)
)

Exercice 2 :

CREATE TABLE tools
(
	id INT PRIMARY KEY NOT NULL,
	tool VARCHAR(255)
)

Exercice 3 :

CREATE TABLE frameworks
(
	id INT PRIMARY KEY NOT NULL,
	name VARCHAR(255)
)

Exercice 4 :

CREATE TABLE libraries
(
	id INT PRIMARY KEY NOT NULL,
	librairy VARCHAR(255)
)

Exercice 5 :

CREATE TABLE ide
(
	id INT PRIMARY KEY NOT NULL,
	ideName VARCHAR(255)
)

Exercice 6 :

CREATE TABLE IF EXISTS frameworks
(
	id INT PRIMARY KEY NOT NULL,
	name VARCHAR(255)
)

Exercice 7 :

DROP TABLE IF EXISTS tools;

Exercice 8 :

DROP TABLE librairies;

Exercice 9 :

DROP TABLE ide;