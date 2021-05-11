INSERT all INTO Drone VALUES( 1, '#00234')
INTO Drone VALUES ( 2, '#00235')
INTO Drone VALUES ( 3, '#00236')
INTO Drone VALUES ( 4, '#00237')
INTO Drone VALUES ( 5, '#00238') SELECT * FROM dual;


INSERT all INTO Interieur VALUES( 1, '#00122')
INTO Interieur VALUES ( 2, '#00123')
INTO Interieur VALUES ( 3, '#00124')
INTO Interieur VALUES ( 4, '#00125')
INTO Interieur VALUES ( 5, '#00126')
INTO Interieur VALUES ( 6, '#00127') SELECT * FROM dual;


INSERT all INTO Projet VALUES( 1, 'Projet6','05-13-2021','05-13-2021')
INTO Projet VALUES ( 2,'Projet5','05-13-2014','05-13-2020')
INTO Projet VALUES ( 3,'Projet4','05-13-2015','05-13-2019')
INTO Projet VALUES ( 4,'Projet3','05-13-2016','11-13-2016')
INTO Projet VALUES ( 5,'Projet2','05-13-2014','05-13-2018')
INTO Projet VALUES ( 6,'Projet1','05-13-2012','05-13-2016') SELECT * FROM dual;


Insert all INTO Chantier VALUES(1,'Chantier1','12-04-2018','12-05-2020')
INTO Chantier VALUES ( 2,'Chantier2','12-04-2016','12-05-2021')
INTO Chantier VALUES ( 3,'Chantier3','12-04-2017','12-05-2022')
INTO Chantier VALUES ( 4,'Chantier4','12-04-2014','12-05-2018')
INTO Chantier VALUES ( 5,'Chantier5','12-04-2015','12-05-2019') SELECT * FROM dual;


Insert all INTO Capture VALUES(1,'05-13-2021','13h30','200,000','600,000','Excavation / Fondations','stockage materiel','Carence rouleau cable 0.2','https://github.com/Josiyahse/MSPR_JAVA_BDD',1,2,3,4)
INTO Capture VALUES ( 2,'05-13-2021','13h30','300,000','700,000','Installation Grues','stockage materiel','néant','https://github.com/Josiyahse/MSPR_JAVA_BD',2,3,4,5)
INTO Capture VALUES ( 3,'05-13-2021','13h30','400,000','800,000','Préparation énergie Lot 2','stockage materiel','Montage defectueux','https://github.com/Josiyahse/MSPR_JAVA_BD',3,4,5,1)
INTO Capture VALUES ( 4,'05-13-2021','13h30','500,000','900,000','Préparation énergie Lot 3','stockage materiel','Montage défectueux compteurs','https://github.com/Josiyahse/MSPR_JAVA_BD',4,5,1,2)
INTO Capture VALUES ( 5,'05-13-2021','13h30','600,000','100,000','Installation Grues','stockage materiel','Carence ciment fondation Nord-Est','https://github.com/Josiyahse/MSPR_JAVA_BD',5,1,2,3) SELECT * FROM dual;

Insert all INTO Corps_metier VALUES(1,'metier1')
INTO Corps_metier VALUES ( 2,'metier2')
INTO Corps_metier VALUES ( 3,'metier3')
INTO Corps_metier VALUES ( 4,'metier4')
INTO Corps_metier VALUES ( 5,'metier5') SELECT * FROM dual;


Insert all INTO Cibler VALUES(1,2)
INTO Cibler VALUES ( 2,3)
INTO Cibler VALUES ( 3,4)
INTO Cibler VALUES ( 4,5)
INTO Cibler VALUES ( 5,1) SELECT * FROM dual;


Insert all INTO Sous_traitant VALUES(1,'EH Bâtiment','20 rue du trichon','59100','Roubaix',1)
INTO Sous_traitant VALUES ( 2,'Parpaing et par baguette','10 rue des briques','58100','Paris',2)
INTO Sous_traitant VALUES ( 3,'Briques Delhaye','16 rue du ciment','55400','Lille',3)
INTO Sous_traitant VALUES ( 4,'Si ment', '25 rue des vitraux','11111','Robecq',4)
INTO Sous_traitant VALUES ( 5,'Bât y ment', '5 rue des parpins','21545','Berry',5) SELECT * FROM dual;


Insert all INTO Concerner VALUES(1,1)
INTO Concerner VALUES ( 2,2)
INTO Concerner VALUES ( 3,3)
INTO Concerner VALUES ( 4,4)
INTO Concerner VALUES ( 5,5) SELECT * FROM dual;


Insert all INTO Personne VALUES(1,'Thumerelle','Antoine','antoine.thumerelle@orange.fr')
INTO Personne VALUES ( 2,'Monnier','Erwan','erwan.monnier@aol.fr')
INTO Personne VALUES ( 3,'Merlow','Mara','mara.berlow@gmail.com')
INTO Personne VALUES ( 4,'Yashe','Josias','koffiyahse@gmail.com')
INTO Personne VALUES ( 5,'Bernard','Nassim','nassim.bernard@orange.fr') SELECT * FROM dual;


Insert all INTO Profil VALUES('Blancgabin','Thumerelle','Gab Arie','10-12-2020','oui',1)
INTO Profil VALUES ('Blancgabin2','Monnier','mâle à Xeur','10-12-2020','oui',2)
INTO Profil VALUES ('Blancgabin3','Merlow','Masse Tic','10-12-2020','non',3)
INTO Profil VALUES ('Blancgabin4','Yashe','N y veaux','10-12-2020','oui',4)
INTO Profil VALUES ('Blancgabin5','Bernard','Pie hoche','10-12-2020','non',5) SELECT * FROM dual;


Insert all INTO Posseder VALUES(1,1)
INTO Posseder VALUES (2,2)
INTO Posseder VALUES (3,3)
INTO Posseder VALUES (4,4)
INTO Posseder VALUES (5,5) SELECT * FROM dual;


Insert all INTO Role VALUES(1,'Informaticien','admin')
INTO Role VALUES (2,'Chef de chantier','utilisateur')
INTO Role VALUES (3,'Ressource Humaine','utilisateur')
INTO Role VALUES (4,'Commercial','admin')
INTO Role VALUES (5,'Informaticien','utilisateur') SELECT * FROM dual;


Insert all INTO Beneficier VALUES(1,1)
INTO Beneficier VALUES (2,2)
INTO Beneficier VALUES (3,3)
INTO Beneficier VALUES (4,4)
INTO Beneficier VALUES (5,5) SELECT * FROM dual;





