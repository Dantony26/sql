#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS ecole_primaire CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci

#------------------------------------------------------------
# Table: classes
#------------------------------------------------------------

CREATE TABLE classes(
        id  Int  Auto_increment  NOT NULL ,
        nom Varchar (50) NOT NULL
	,CONSTRAINT classes_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: matieres
#------------------------------------------------------------

CREATE TABLE matieres(
        id  Int  Auto_increment  NOT NULL ,
        nom Varchar (50) NOT NULL
	,CONSTRAINT matieres_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: profs
#------------------------------------------------------------

CREATE TABLE profs(
        id         Int  Auto_increment  NOT NULL ,
        nom        Varchar (50) NOT NULL ,
        prenom     Varchar (50) NOT NULL ,
        mail       Varchar (50) NOT NULL ,
        id_classes Int
	,CONSTRAINT profs_PK PRIMARY KEY (id)

	,CONSTRAINT profs_classes_FK FOREIGN KEY (id_classes) REFERENCES classes(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: eleves
#------------------------------------------------------------

CREATE TABLE eleves(
        id         Int  Auto_increment  NOT NULL ,
        nom        Varchar (50) NOT NULL ,
        prenom     Varchar (50) NOT NULL ,
        id_classes Int NOT NULL
	,CONSTRAINT eleves_PK PRIMARY KEY (id)

	,CONSTRAINT eleves_classes_FK FOREIGN KEY (id_classes) REFERENCES classes(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: notes
#------------------------------------------------------------

CREATE TABLE notes(
        id          Int  Auto_increment  NOT NULL ,
        note        Float NOT NULL ,
        id_eleves   Int ,
        id_matieres Int
	,CONSTRAINT notes_PK PRIMARY KEY (id)

	,CONSTRAINT notes_eleves_FK FOREIGN KEY (id_eleves) REFERENCES eleves(id)
	,CONSTRAINT notes_matieres0_FK FOREIGN KEY (id_matieres) REFERENCES matieres(id)
)ENGINE=InnoDB;



# DATA

INSERT INTO `classes` (`nom`) VALUES 
('CP'),
('CE1'),
('CE2'),
('CM1'),
('CM2');

INSERT INTO `matieres` (`nom`) VALUES 
('Maths'),
('Sport'),
('Français'),
('Anglais'),
('Histoire'),
('Géographie');


INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (1,"Oliver","Vanna",2);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (2,"Lael","Sonia",4);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (3,"Wylie","Malachi",1);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (4,"Lamar","Ferris",4);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (5,"Yasir","TaShya",1);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (6,"Glenna","John",4);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (7,"Odessa","Zachery",1);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (8,"Merrill","Portia",3);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (9,"Lacota","Cody",1);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (10,"Callum","Bruce",3);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (11,"Shea","Robert",5);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (12,"Brett","Dorian",5);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (13,"Thomas","Linus",1);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (14,"Jaquelyn","Jesse",3);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (15,"Emerald","Mara",3);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (16,"Garrett","Lois",2);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (17,"April","Channing",5);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (18,"Kelsie","Sage",1);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (19,"Hamilton","Brady",1);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (20,"Kiara","Adara",5);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (21,"Marcia","Belle",1);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (22,"Alexa","Jasper",1);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (23,"Galvin","Maya",4);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (24,"Jerry","Anne",4);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (25,"Thomas","Ira",2);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (26,"Tucker","Amery",2);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (27,"Nolan","Reed",2);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (28,"Branden","David",1);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (29,"Benjamin","Willow",1);
INSERT INTO `eleves` (`id`,`nom`,`prenom`,`id_classes`) VALUES (30,"Amery","Zeus",2);


INSERT INTO `profs` (`id`,`nom`,`prenom`,`mail`,`id_classes`) VALUES (1,"Fulton","Thane","odio.Phasellus@lacus.edu",5);
INSERT INTO `profs` (`id`,`nom`,`prenom`,`mail`,`id_classes`) VALUES (2,"Teagan","Tanisha","mus.Aenean@nunc.edu",2);
INSERT INTO `profs` (`id`,`nom`,`prenom`,`mail`,`id_classes`) VALUES (3,"Xanthus","Taylor","metus.urna.convallis@Nullamvelitdui.ca",4);
INSERT INTO `profs` (`id`,`nom`,`prenom`,`mail`,`id_classes`) VALUES (4,"Charissa","Oprah","fermentum.vel.mauris@quam.net",1);



INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (1,9,8,2);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (2,11,30,3);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (3,2,15,5);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (4,18,24,2);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (5,6,9,6);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (6,8,27,5);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (7,19,21,4);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (8,12,26,5);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (9,20,4,3);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (10,4,19,5);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (11,11,5,6);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (12,20,4,5);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (13,3,2,3);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (14,13,13,6);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (15,17,17,6);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (16,6,3,3);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (17,8,28,4);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (18,7,27,6);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (19,10,20,1);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (20,1,11,1);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (21,15,12,6);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (22,3,13,3);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (23,9,19,5);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (24,2,1,4);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (25,1,4,1);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (26,7,28,3);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (27,10,25,6);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (28,20,3,3);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (29,7,11,4);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (30,18,18,4);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (31,11,15,1);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (32,5,10,4);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (33,5,8,1);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (34,2,15,4);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (35,4,15,3);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (36,6,14,1);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (37,16,23,5);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (38,10,17,4);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (39,15,7,6);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (40,3,22,6);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (41,10,22,4);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (42,9,25,3);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (43,13,30,3);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (44,16,11,1);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (45,11,29,3);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (46,20,27,4);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (47,4,7,1);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (48,17,25,6);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (49,17,13,1);
INSERT INTO `notes` (`id`,`note`,`id_eleves`,`id_matieres`) VALUES (50,1,14,5);


# Fonctionnalités

#1.

SELECT `eleves`.`id` as `id`, `eleves`.`nom` AS `nom`, `eleves`.`prenom` AS `prenom`, `notes`.`note` AS `note`, `matieres`.`nom` AS `matiere`
FROM `notes`
INNER JOIN `eleves` ON `notes`.`id_eleves` = `eleves`.`id`
INNER JOIN `matieres` ON `notes`.`id_matieres` = `matieres`.`id`
ORDER BY `id` ASC;

#2.

SELECT `eleves`.`id` AS `id`, `eleves`.`nom` AS `nom`, `eleves`.`prenom` AS `prenom`, `classes`.`nom` AS `classe`, ROUND(AVG(`notes`.`note`),1) AS `moyenne`
FROM `notes`
RIGHT JOIN `eleves` ON `notes`.`id_eleves` = `eleves`.`id`
INNER JOIN `classes` ON `eleves`.`id_classes` = `classes`.`id`
GROUP BY `id`
ORDER BY `id` ASC;

#3.

SELECT `profs`.`id` AS `id`, `profs`.`nom` AS `nom_prof`, `profs`.`prenom` AS `prenom_prof`, `classes`.`nom` AS `classe`, `eleves`.`nom` AS `nom_eleve`, `eleves`.`prenom` AS `prenom_eleve`
FROM `classes`
INNER JOIN `eleves` ON `classes`.`id` = `eleves`.`id_classes`
LEFT JOIN `profs` ON `classes`.`id` = `profs`.`id_classes`
ORDER BY `id` ASC;
