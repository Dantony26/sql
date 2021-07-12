Exercice 1 :
CREATE TABLE webDevelopment.`languages` (`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT, `language` VARCHAR(255));

Exercice 2 :

CREATE TABLE webDevelopment.`tools` (`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT, `tool` VARCHAR(255));

Exercice 3 :

CREATE TABLE webDevelopment.`frameworks` (`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT, `name` VARCHAR(255));

Exercice 4 :

CREATE TABLE webDevelopment.`libraries` (`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT, `librairy` VARCHAR(255));

Exercice 5 :

CREATE TABLE webDevelopment.`ide` (`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT, `ideName` VARCHAR(255));

Exercice 6 :

CREATE TABLE IF NOT EXISTS webDevelopment.`frameworks` (`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT, `name` VARCHAR(255))

Exercice 7 :

DROP TABLE IF EXISTS webDevelopment.`tools`;

Exercice 8 :

DROP TABLE webDevelopment.`librairies`;

Exercice 9 :

DROP TABLE webDevelopment.`ide`;