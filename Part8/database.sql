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
	COUNT(`frameworks`.`name`)
FROM
	`frameworks`
RIGHT JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id`
GROUP BY
	`languages`.`id`
ORDER BY 
	COUNT(`frameworks`.`name`) DESC;
Exercice 4 : 

SELECT
    `languages`.`id`,
	`languages`.`name`,
	COUNT(`frameworks`.`name`)
FROM
	`frameworks`
INNER JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id`
GROUP BY
	`languages`.`id`
HAVING COUNT(`frameworks`.`name`) > 3;