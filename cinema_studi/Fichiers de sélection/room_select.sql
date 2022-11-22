/* ON SELECTIONNE LA BASE DE DONNEES */
USE theaterDB;

/* REQUETE DE SELECTION */
SELECT 
r.room_number AS 'Numero de la salle',
r.room_seats AS 'Nombre de places',
t.theater_name AS 'Cinema',
tc.complex_name AS 'Enseigne'
FROM room r
JOIN theater t ON t.theater_id = r.theater_id
JOIN theater_complex tc ON tc.complex_id = t.complex_id
ORDER BY t.theater_name, r.room_number;