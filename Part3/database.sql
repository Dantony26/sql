Exercice 1 :

ALTER TABLE `languages`
ADD `versions` VARCHAR(255);

Exercice 2 :

ALTER TABLE `frameworks`
ADD `version` INT;

Exercice 3 :

ALTER TABLE `languages`
CHANGE `versions` `version` VARCHAR(255);

Exercice 4 :

ALTER TABLE `frameworks`
CHANGE `name` `framework` VARCHAR(255);

Exercice 5 :

ALTER TABLE `frameworks`
MODIFY `version` VARCHAR(10);  