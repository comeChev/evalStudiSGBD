/* ON SELECTIONE LA BASE DE DONNEES*/
USE theaterDB;


/* ON INSERE DES DONNEES */
INSERT INTO event (room_id, film_id, event_date)
VALUES
(1,1,  '2022-11-01 17:30'),
(2,6,  '2022-11-01 21:30'),
(18,27,  '2022-11-02 21:30'),
(16,26,  '2022-11-02 16:30:00'),
(12,26,  '2022-11-02 11:30:00'),
(10,18,  '2022-11-10 17:30:00'),
(12,12,  '2022-11-10 19:30:00'),
(4,17,  '2022-11-11 19:30:00'),
(4,19,  '2022-11-11 19:45:00'),
(8,21,  '2022-11-11 20:00:00'),
(10,18,  '2022-11-13 18:30:00'),
(10,16,  '2022-11-13 21:30:00'),
(1,4,  '2022-11-17 11:30:00'),
(2,4,  '2022-11-17 10:30:00'),
(3,4,  '2022-11-18 09:30:00'),
(17, 2,  '2022-11-18 16:30:00'),
(16, 1,  '2022-11-19 21:30:00'),
(15, 3,  '2022-11-20 22:30:00'),
(9,6,  '2022-11-21 11:30:00'),
(8,8,  '2022-11-22 15:30:00'),
(5,10,  '2022-11-22 17:30:00');

SELECT
f.film_title AS 'Nom du film',
DATE(e.event_date) AS 'Jour de diffusion',
TIME(e.event_date) AS 'Heure de la séance',
f.film_length AS 'Durée du film (mn)',
DATE_ADD(e.event_date, INTERVAL f.film_length MINUTE) AS 'Fin de la séance',
r.room_number AS 'Salle n°',
t.theater_name AS 'Nom du cinéma',
tc.complex_name AS 'Complexe'
FROM event e
JOIN film f ON e.film_id = f.film_id
JOIN room r ON e.room_id = r.room_id
JOIN theater t ON r.theater_id = t.theater_id
JOIN theater_complex tc ON t.complex_id = tc.complex_id
WHERE t.complex_id = 1 ;
