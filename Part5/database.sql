Exercice 1 :

SELECT *
FROM `languages`;

Exercice 2 :

SELECT *
FROM `languages`
WHERE `language` = 'PHP';

Exercice 3 :

SELECT *
FROM `languages`
WHERE `language` = 'PHP' OR `language` = 'javascript';

Exercice 4 :

SELECT *
FROM `languages`
WHERE `id` IN ('3', '5', '7');

Exercice 5 :

SELECT *
FROM `languages`
WHERE `language` = 'javascript'
LIMIT 2;

Exercice 6 : 

SELECT *
FROM `languages`
WHERE NOT `language` = 'php';

Exercice 7 :

SELECT *
FROM `languages`
ORDER BY `language` ASC;