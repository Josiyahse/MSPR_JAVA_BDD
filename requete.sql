
/*
Chercher les demandes qui ont été faites après une date donnée.
*/
SELECT * FROM Capture
WHERE date AFTER  ‘2020-04-20’;

/*
Pour une demande donnée, afficher la date et le nom du chantier, les équipes et corps de métiers présents sur le chantier, les vidéos de contrôles et les liens vers les visites 3D Matterport
*/
SELECT Chantier.nom, Chantier.debut, Corps_metier.nom, Capture.lien FROM Chantier
INNER JOIN Capture ON Chantier.id_chantiert = Capture.id_chantier
INNER JOIN Cibler ON Capture.id_capture=Cibler.id_capture
INNER JOIN Corps_metier ON Corps_metier.id_corps_metier = Cibler.id_coprs_metier
WHERE id_capture = 1;

/*
Afficher le nombre de projets réalisés selon un filtre mois/année/exercice
*/
SELECT CPT(id_projet), MONTH(debut) FROM Projet GROUP BY MONTH(debut);

/*
Afficher le nombre de sous-traitants employés pour les différents projets réalisés par corps de métiers
*/
SELECT CPT(id_sous_traitant), Projet.nom, Corps_metiers.nom
FROM Projet
LEFT JOIN Capture ON Projet.id_projet=Capture.id_projet
LEFT JOIN Cibler ON Capture.id_capture=Cibler.id_capture
LEFT JOIN Corps_metier ON Cibler.id_corps_metier=Corps_metier.id_corps_metier
LEFT JOIN Concerner ON Capture.id_capture=Concerner.id_capture
LEFT JOIN Sous_traitant ON Concerner.id_sous_traitant=Sous_traitant.id_sous_traitant AND Sous_traitant.id_corps_metier=Corps_metier.id_corps_metier
GROUP BY Projet.nom, Corps_metiers.nom;
