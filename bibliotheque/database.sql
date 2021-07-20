#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS bibliotheque CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

#------------------------------------------------------------
# Table: clients
#------------------------------------------------------------

CREATE TABLE clients(
        id                Int  Auto_increment  NOT NULL ,
        nom               Varchar (50) NOT NULL ,
        prenom            Varchar (50) NOT NULL ,
        date_de_naissance Date NOT NULL ,
        mail              Varchar (50) NOT NULL
	,CONSTRAINT clients_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: genre
#------------------------------------------------------------

CREATE TABLE genre(
        id  Int  Auto_increment  NOT NULL ,
        nom Varchar (50) NOT NULL
	,CONSTRAINT genre_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: livres
#------------------------------------------------------------

CREATE TABLE livres(
        id                 Int  Auto_increment  NOT NULL ,
        titre              Varchar (50) NOT NULL ,
        nom_de_l_auteur    Varchar (50) NOT NULL ,
        prenom_de_l_auteur Varchar (50) NOT NULL ,
        id_genre           Int NOT NULL
	,CONSTRAINT livres_PK PRIMARY KEY (id)

	,CONSTRAINT livres_genre_FK FOREIGN KEY (id_genre) REFERENCES genre(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: registre
#------------------------------------------------------------

CREATE TABLE registre(
        id           Int  Auto_increment  NOT NULL ,
        date_emprunt Date NOT NULL ,
        date_retour  Date NOT NULL ,
        id_clients   Int NOT NULL ,
        id_livres    Int NOT NULL
	,CONSTRAINT registre_PK PRIMARY KEY (id)

	,CONSTRAINT registre_clients_FK FOREIGN KEY (id_clients) REFERENCES clients(id)
	,CONSTRAINT registre_livres0_FK FOREIGN KEY (id_livres) REFERENCES livres(id)
)ENGINE=InnoDB;




# DATA

INSERT INTO `genre` (`nom`) VALUES 
('Horreur'),
('Science Fiction'),
('Roman'),
('Jeunesse');

INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (1,"Sit Amet Ante Corporation","Leah","Echo",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (2,"Ut Sem Industries","Kyle","Jaime",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (3,"Aliquet Nec Incorporated","Craig","Nevada",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (4,"Fermentum Inc.","Kelsey","Donna",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (5,"Fusce Fermentum Inc.","Britanni","Xena",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (6,"Et Arcu Corporation","Nell","Troy",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (7,"Libero Lacus Varius Corporation","Jakeem","Raven",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (8,"Eleifend Nec Malesuada Corp.","Samantha","Uma",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (9,"Cum Sociis Corp.","Daryl","Indigo",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (10,"Vitae Velit Consulting","Dalton","Hiram",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (11,"Mattis Integer Limited","Brandon","Roth",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (12,"Imperdiet Erat Nonummy LLC","Kuame","Risa",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (13,"Sapien LLC","Jin","Merrill",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (14,"Convallis Erat Eget Ltd","Chelsea","April",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (15,"In Cursus Inc.","Kennedy","Bell",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (16,"Lectus Cum Inc.","Mark","Reuben",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (17,"Vehicula Aliquet Corporation","Cooper","Branden",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (18,"Enim Consulting","Marvin","Joel",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (19,"Adipiscing Consulting","Gregory","Hilel",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (20,"Fermentum Convallis Consulting","Amelia","Orli",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (21,"Nascetur Ridiculus Corp.","Nash","David",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (22,"Mauris PC","Wynne","Jessica",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (23,"Et Nunc Quisque LLC","Kasper","Kaden",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (24,"Commodo Corporation","Joelle","Ima",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (25,"Arcu Associates","Owen","Michelle",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (26,"Curabitur Associates","Katell","Leilani",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (27,"Pharetra Limited","Zahir","Tara",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (28,"Ut Limited","Alma","Raphael",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (29,"Ipsum Phasellus PC","Fulton","Wynter",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (30,"Enim Consequat Purus LLP","Alea","May",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (31,"Libero LLC","Gloria","Wesley",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (32,"Pede Nunc Incorporated","Adrian","Phillip",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (33,"Faucibus Foundation","TaShya","Brett",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (34,"Libero Dui Inc.","Zeph","Audra",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (35,"Sem Vitae Aliquam PC","Griffith","Gage",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (36,"Tellus Non Magna Inc.","Oliver","Carl",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (37,"Tellus LLP","Maxine","Hanae",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (38,"Dolor Quam Elementum Incorporated","Jaquelyn","Alma",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (39,"Sit Corporation","Darius","Sacha",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (40,"Mauris A Nunc Foundation","Byron","Tarik",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (41,"Ipsum Corporation","Clark","Cruz",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (42,"Quis Diam Pellentesque Foundation","Seth","Zenia",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (43,"Donec Elementum Consulting","Emerald","Oliver",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (44,"Habitant Inc.","Kylynn","Ivana",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (45,"Sit Limited","Ruby","Ezra",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (46,"Tincidunt Inc.","Buckminster","Keane",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (47,"Adipiscing Elit LLP","Vaughan","Casey",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (48,"Elit Etiam Laoreet Inc.","Alan","Bradley",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (49,"Orci Ltd","Lucy","Fuller",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (50,"Blandit Enim Industries","Riley","Leonard",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (51,"A Sollicitudin Orci Ltd","Mechelle","Ulysses",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (52,"Id Blandit Incorporated","Quon","Leigh",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (53,"Mauris Vestibulum Neque Industries","Kelly","Marshall",2);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (54,"Tempus Scelerisque Lorem Corp.","Amir","Vladimir",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (55,"Ut Consulting","Jacob","Fletcher",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (56,"Ut Tincidunt Ltd","Kaseem","Ulysses",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (57,"Nonummy Corp.","Alika","Brooke",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (58,"Ut Inc.","Samson","Leilani",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (59,"A Ultricies LLP","Kimberley","Leroy",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (60,"Lobortis Industries","Vivien","Whoopi",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (61,"Curabitur Ut Odio Foundation","Mona","Marshall",3);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (62,"Magna Sed Ltd","Luke","Jael",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (63,"A Incorporated","Imani","Mason",4);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (64,"Mattis Cras Eget Associates","Randall","Paula",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (65,"Est Congue LLP","Marshall","David",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (66,"Sed Incorporated","Pascale","Price",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (67,"Odio Auctor LLP","Jackson","Madeline",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (68,"Sed Inc.","Fuller","Michael",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (69,"Aliquam Incorporated","Adam","Devin",1);
INSERT INTO `livres` (`id`,`titre`,`nom_de_l_auteur`,`prenom_de_l_auteur`,`id_genre`) VALUES (70,"Nulla Cras Eu LLP","Maya","Alden",1);



INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (1,"Cora","Slade","1975-11-22 19:07:37","arcu@nequetellusimperdiet.net");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (2,"Whitney","Kalia","1990-08-27 16:14:07","Nam.interdum@augueeu.ca");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (3,"Xyla","Steven","1990-01-03 00:52:43","sapien@lobortisquis.co.uk");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (4,"Timon","Sloane","1991-07-01 08:25:14","id.magna.et@facilisisSuspendisse.ca");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (5,"Cora","Rhonda","1981-05-28 01:00:42","Cras.eget.nisi@euismod.com");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (6,"Bruno","Grace","1975-03-10 14:25:56","commodo.hendrerit.Donec@fringillaporttitor.net");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (7,"Darius","Noble","1979-05-15 22:26:07","mi@Sednec.com");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (8,"Calista","Jolie","1998-01-06 15:25:02","Mauris.non@Donecnon.net");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (9,"Helen","Francis","1992-09-09 22:52:10","et@acmetusvitae.edu");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (10,"Clarke","Hunter","2001-09-10 19:50:41","consequat@justo.com");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (11,"Lee","Jael","1983-10-04 07:45:37","ad.litora@nec.com");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (12,"Miranda","Barry","2006-06-02 03:54:06","lobortis.tellus@eudui.ca");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (13,"Ezekiel","Carl","1977-03-06 13:13:18","vulputate@diam.org");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (14,"Clarke","Libby","1994-06-07 10:54:28","euismod@MorbivehiculaPellentesque.net");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (15,"Raymond","Fulton","1984-09-29 01:59:41","Nunc.sollicitudin@laciniavitaesodales.co.uk");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (16,"Leandra","Venus","1974-12-19 14:51:24","In.condimentum.Donec@Aliquam.edu");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (17,"Duncan","Rhona","1984-06-27 16:31:44","orci@temporarcu.edu");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (18,"Sydnee","Rhoda","1973-02-01 10:59:50","magna@netuset.ca");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (19,"Phelan","Caesar","1994-02-13 01:33:29","malesuada@orci.com");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (20,"Martha","Larissa","1986-04-08 11:57:19","non.sapien@pedeblanditcongue.org");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (21,"Quentin","Josiah","1997-07-01 05:57:20","hendrerit.neque.In@gravidanuncsed.net");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (22,"Price","Ruth","1996-08-23 21:01:13","ac.turpis@fringillaporttitorvulputate.org");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (23,"Kasimir","Donovan","2001-12-16 22:09:58","egestas.urna@aliquet.edu");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (24,"Sonia","Maryam","1977-08-28 08:23:38","Cras.eget@ridiculusmus.net");
INSERT INTO `clients` (`id`,`nom`,`prenom`,`date_de_naissance`,`mail`) VALUES (25,"Shelly","Hedy","1980-11-04 05:08:02","auctor.velit@Suspendisseseddolor.com");



INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (1,"2020-07-20 02:14:18","2020-09-04 09:16:46",20,26);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (2,"2020-07-24 00:39:30","2020-11-22 05:42:19",14,44);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (3,"2020-07-22 23:50:53","2020-09-01 19:56:39",20,57);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (4,"2020-07-23 22:35:08","2021-05-23 19:05:00",17,61);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (5,"2020-07-20 08:51:50","2021-01-02 23:43:26",20,54);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (6,"2020-07-22 20:26:18","2020-08-29 05:42:02",20,66);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (7,"2020-07-22 00:46:27","2021-05-13 19:04:20",6,66);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (8,"2020-07-24 19:43:16","2020-12-31 16:16:30",24,58);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (9,"2020-07-23 09:45:14","2020-12-16 06:46:35",12,31);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (10,"2020-07-23 06:07:04","2021-09-19 19:07:44",3,50);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (11,"2020-07-21 04:31:31","2021-08-27 11:25:09",5,38);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (12,"2020-07-21 03:59:36","2020-12-24 11:16:52",2,31);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (13,"2020-07-21 12:19:33","2021-10-06 05:37:48",11,17);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (14,"2020-07-20 23:12:34","2021-08-16 10:29:14",6,1);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (15,"2020-07-21 16:32:59","2021-03-13 21:50:47",3,44);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (16,"2020-07-21 18:12:20","2021-06-22 15:31:54",6,43);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (17,"2020-07-22 18:39:28","2020-10-04 00:47:46",21,27);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (18,"2020-07-22 18:47:19","2020-08-22 19:22:59",20,64);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (19,"2020-07-22 23:48:23","2021-04-14 10:32:10",6,51);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (20,"2020-07-21 19:21:05","2021-04-19 08:54:12",15,61);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (21,"2020-07-23 16:46:10","2021-01-11 06:01:22",16,20);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (22,"2020-07-22 04:43:41","2021-07-15 07:30:30",15,50);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (23,"2020-07-21 15:41:56","2020-10-07 21:37:58",20,19);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (24,"2020-07-21 22:17:55","2021-05-25 09:25:33",16,22);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (25,"2020-07-24 06:18:34","2021-08-09 13:59:13",7,43);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (26,"2020-07-22 08:56:44","2021-04-08 10:16:28",8,27);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (27,"2020-07-20 13:13:25","2020-11-27 06:11:27",10,59);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (28,"2020-07-21 18:49:17","2020-09-27 06:41:58",1,61);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (29,"2020-07-24 19:29:49","2021-02-28 01:51:17",22,41);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (30,"2020-07-22 05:16:34","2020-10-25 03:11:15",4,56);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (31,"2020-07-22 16:56:37","2021-03-17 07:28:04",4,59);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (32,"2020-07-21 03:01:25","2021-09-24 08:34:22",19,9);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (33,"2020-07-24 10:29:29","2021-10-14 17:39:33",9,23);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (34,"2020-07-24 22:12:16","2021-08-21 23:11:09",20,19);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (35,"2020-07-21 05:05:50","2021-10-04 23:52:32",9,70);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (36,"2020-07-24 01:13:50","2021-08-23 16:01:50",23,69);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (37,"2020-07-22 19:54:59","2021-08-26 14:40:32",2,39);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (38,"2020-07-24 07:57:46","2020-09-12 03:05:46",18,26);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (39,"2020-07-21 10:51:30","2021-05-27 08:07:31",4,14);
INSERT INTO `registre` (`id`,`date_emprunt`,`date_retour`,`id_clients`,`id_livres`) VALUES (40,"2020-07-24 20:25:51","2020-11-15 06:59:58",9,42);


#Fonctionnalités

#1.

SELECT `registre`.`id` as `id`, `livres`.`titre` as `titre`, `clients`.`nom` as `nom`, `clients`.`prenom` as `prenom`, `registre`.`date_emprunt`, `registre`.`date_retour`
FROM `registre`
INNER JOIN `clients` ON `registre`.`id_clients` = `clients`.`id`
INNER JOIN `livres` ON `registre`.`id_livres` = `livres`.`id`
ORDER BY `id` ASC;

#2. 

SELECT `registre`.`id` as `id`, 
`livres`.`titre` as `titre`, `genre`.`nom` as `genre`, 
`livres`.`nom_de_l_auteur` as `nom_de_l_auteur`,
`livres`.`prenom_de_l_auteur` AS `prenom_de_l_auteur`,
CASE WHEN `registre`.`date_retour` < NOW() THEN 'disponible' ELSE 'indisponible' END as `disponibilite`
FROM `livres`
INNER JOIN `genre` ON `livres`.`id_genre` = `genre`.`id`
RIGHT JOIN `registre` ON `registre`.`id_livres` = `livres`.`id`
ORDER BY `id` ASC;

#3.

SELECT `genre`.`nom` as `genre`, COUNT(`genre`.`nom`) AS `total`
FROM `livres`
INNER JOIN `genre` ON `livres`.`id_genre` = `genre`.`id`
GROUP BY `genre`.`id`
ORDER BY COUNT(`genre`.`nom`) DESC;