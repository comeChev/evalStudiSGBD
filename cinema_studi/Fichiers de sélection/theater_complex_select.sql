/* ON SELECTIONNE LA BASE DE DONNEES */
USE theaterDB;

/* REQUETE DE SELECTION */
SELECT t.theater_name AS 'Cinéma', tc.complex_name AS 'Enseigne'
FROM theater_complex tc
JOIN theater t ON t.complex_id = tc.complex_id ;