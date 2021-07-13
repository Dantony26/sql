Exercice 1 :

SELECT `frameworks`.`id`, `frameworks`.`name`, `languages`.`name`
FROM `frameworks`
RIGHT JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id`;

Exercice 2 :

SELECT `frameworks`.`id`, `frameworks`.`name`, `languages`.`name`
FROM `frameworks`
INNER JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id`;

Exercice 3 :

SELECT
	`languages`.`id`,
	`languages`.`name`,
	COUNT(*)
FROM
	`frameworks`
INNER JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id`
GROUP BY
	`languages`.`id`;

Exercice 4 : 

SELECT
    `languages`.`id`,
	`languages`.`name`,
	COUNT(*)
FROM
	`frameworks`
INNER JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id`
GROUP BY
	`languages`.`id`
HAVING COUNT(*) > 3;