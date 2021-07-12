CREATE DATABASE codex CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE TABLE codex.clients 
(
    id INT PRIMARY KEY NOT NULL,
    lastName VARCHAR(100),
    firstName VARCHAR(100),
    birthdate DATE,
    adress VARCHAR(255),
    firstPhoneNumber INT (10),
    secondPhoneNumber INT (10),
    mail VARCHAR (255)
)