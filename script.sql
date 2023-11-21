-- Active: 1700496060394@@127.0.0.1@3306
create database system_reservation;
CREATE TABLE Departement (
    id int  PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(30),
);
CREATE TABLE Equipement (
    id int  PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(30),
);
CREATE TABLE Salle (
    id int  PRIMARY KEY AUTO_INCREMENT ,
    Nom VARCHAR(10),
    Capacite int ,
    Equipement_id int,
    FOREIGN KEY (Equipement_id) REFERENCES Equipement(id)
); 
CREATE TABLE Employe (
    id int PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(10),
    Email VARCHAR (50),
    Departement_id int,
    FOREIGN KEY (Departement_id) REFERENCES Departement(id)
);
CREATE TABLE Reservation (
    id int  PRIMARY KEY AUTO_INCREMENT,
    Salle_id int,
    Employe_id int,
    Date_Debut DATETIME,
    Date_Fin DATETIME,
    FOREIGN KEY (Salle_id) REFERENCES Salle(id),
    FOREIGN KEY (Employe_id) REFERENCES Employe(id)
);

INSERT INTO Departement (id, Nom)
VALUES
(1,'Comptabilite'),
(2,'Finance'),
(3,'resourses humaines'),
(4,'Informatique'),
(5,'Physique'),
(6,'Chimique');

INSERT INTO Equipement (id, Nom)
VALUES
(1,'des ordinateurs');
(2,'des tableaux');
(3,'des bureaux');

INSERT INTO Employe (id, Nom, Email, Departement_id)
VALUES
(1,'Salma','salmaelgmiri04@gmail.com',1),
(2,'Omar','omarelgmiri04@gmail.com',2),
(3,'othmane','othmaneelgmiri04@gmail.com',3),
(4,'Amir','Amirelgmiri04@gmail.com',3),
(5,'Basma','Basmaelgmiri04@gmail.com',3),
(6,'Karim','Karimelgmiri04@gmail.com',3);

INSERT INTO Salle (id, Nom, Capacite, Equipement_id)
VALUES
(1,'reunion',10,1),
(2,'debrifing',20,3),
(3,'Break',5,2);


INSERT INTO Reservation (id, Salle_id, Employe_id, Date_Debut, Date_Fin)
VALUES
(1, 1, 1, '2023-11-19 13:00:00', '2023-11-19 15:00:00'),
(2, 2, 2, '2023-11-20 16:00:00', '2023-11-20 18:00:00'),
(3, 3, 3, '2023-11-23 12:00:00', '2023-11-23 16:00:00');

SELECT Nom FROM Employe ORDER BY Nom;


SELECT Reservation.id AS "Reservation", Salle.Nom AS "Nom de la salle", Employe.Nom AS "Nom de l'employe"
FROM Reservation
JOIN Salle ON Reservation.Salle_id = Salle.id
JOIN Employe ON Reservation.Employe_id = Employe.id;

UPDATE Employe
SET Nom = 'ilham'
WHERE id=1;

DELETE FROM Salle
WHERE Nom='reunion';

ALTER TABLE Reservation
MODIFY COLUMN Date_Debut DATETIME;

ALTER TABLE Reservation
MODIFY COLUMN Date_Fin DATETIME;