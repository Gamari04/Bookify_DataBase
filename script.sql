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
    Date_Debut DATE,
    Date_Fin DATE,
    FOREIGN KEY (Salle_id) REFERENCES Salle(id),
    FOREIGN KEY (Employe_id) REFERENCES Employe(id)
);
ALTER TABLE departement
MODIFY COLUMN id int  PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE Equipement
MODIFY COLUMN id int  PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE Salle
MODIFY COLUMN id int  PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE Employe
MODIFY COLUMN id int  PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE Reservation
MODIFY COLUMN id int  PRIMARY KEY AUTO_INCREMENT;


