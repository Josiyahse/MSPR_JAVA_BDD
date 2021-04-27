CREATE TABLE drones(
   Id_drones COUNTER,
   libelle VARCHAR(50),
   PRIMARY KEY(Id_drones)
);

CREATE TABLE interieurs(
   Id_interieurs COUNTER,
   libelle VARCHAR(50),
   PRIMARY KEY(Id_interieurs)
);

CREATE TABLE Corps_metier(
   Id_Corps_metier COUNTER,
   nom VARCHAR(50),
   PRIMARY KEY(Id_Corps_metier)
);

CREATE TABLE sous_traitants(
   Id_sous_traitants COUNTER,
   nom VARCHAR(50),
   rue VARCHAR(50),
   code_postale VARCHAR(50),
   ville VARCHAR(50),
   PRIMARY KEY(Id_sous_traitants)
);

CREATE TABLE Personnes(
   Id_Personnes COUNTER,
   nom VARCHAR(50),
   prenom VARCHAR(50),
   mail VARCHAR(50),
   PRIMARY KEY(Id_Personnes)
);

CREATE TABLE Projets(
   Id_Projets COUNTER,
   nom VARCHAR(50),
   PRIMARY KEY(Id_Projets)
);

CREATE TABLE Chantiers(
   Id_Chantiers COUNTER,
   nom VARCHAR(50),
   PRIMARY KEY(Id_Chantiers)
);

CREATE TABLE rôles(
   Id_rôles COUNTER,
   nom VARCHAR(50),
   prvilèges VARCHAR(50),
   PRIMARY KEY(Id_rôles)
);

CREATE TABLE profils(
   Id_profils COUNTER,
   nom VARCHAR(50),
   username VARCHAR(50),
   mdp VARCHAR(50),
   Id_Personnes INT NOT NULL,
   PRIMARY KEY(Id_profils),
   UNIQUE(Id_Personnes),
   FOREIGN KEY(Id_Personnes) REFERENCES Personnes(Id_Personnes)
);

CREATE TABLE Captures(
   Id_Captures COUNTER,
   dates DATE,
   heures TIME,
   Coordonnées_X VARCHAR(50),
   Coordonnées_Y VARCHAR(50),
   Jalon_GANT VARCHAR(50),
   etape_capture VARCHAR(50),
   incidents VARCHAR(50),
   liens VARCHAR(50),
   Id_Chantiers INT NOT NULL,
   Id_Projets INT NOT NULL,
   Id_interieurs INT,
   Id_drones INT,
   PRIMARY KEY(Id_Captures),
   FOREIGN KEY(Id_Chantiers) REFERENCES Chantiers(Id_Chantiers),
   FOREIGN KEY(Id_Projets) REFERENCES Projets(Id_Projets),
   FOREIGN KEY(Id_interieurs) REFERENCES interieurs(Id_interieurs),
   FOREIGN KEY(Id_drones) REFERENCES drones(Id_drones)
);

CREATE TABLE cibler(
   Id_Captures INT,
   Id_Corps_metier INT,
   PRIMARY KEY(Id_Captures, Id_Corps_metier),
   FOREIGN KEY(Id_Captures) REFERENCES Captures(Id_Captures),
   FOREIGN KEY(Id_Corps_metier) REFERENCES Corps_metier(Id_Corps_metier)
);

CREATE TABLE concerner(
   Id_Captures INT,
   Id_sous_traitants INT,
   PRIMARY KEY(Id_Captures, Id_sous_traitants),
   FOREIGN KEY(Id_Captures) REFERENCES Captures(Id_Captures),
   FOREIGN KEY(Id_sous_traitants) REFERENCES sous_traitants(Id_sous_traitants)
);

CREATE TABLE posséder(
   Id_Corps_metier INT,
   Id_Personnes INT,
   PRIMARY KEY(Id_Corps_metier, Id_Personnes),
   FOREIGN KEY(Id_Corps_metier) REFERENCES Corps_metier(Id_Corps_metier),
   FOREIGN KEY(Id_Personnes) REFERENCES Personnes(Id_Personnes)
);

CREATE TABLE Bénéficier(
   Id_Personnes INT,
   Id_rôles INT,
   PRIMARY KEY(Id_Personnes, Id_rôles),
   FOREIGN KEY(Id_Personnes) REFERENCES Personnes(Id_Personnes),
   FOREIGN KEY(Id_rôles) REFERENCES rôles(Id_rôles)
);
