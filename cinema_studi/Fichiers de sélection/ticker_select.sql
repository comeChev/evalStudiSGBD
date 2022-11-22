/* ON SELECTIONNE LA BASE DE DONNEES */
USE theaterDB;

/* REQUETE DE SELECTION */
SELECT 
r.room_number AS 'Numero de la salle',
f.film_title AS 'Film',
t.theater_name AS 'Cinema',
CONCAT(UPPER(c.client_ln), ' ', c.client_fn) AS 'Client',
CONCAT(p.price_value, ' €') AS 'Prix du ticket',
c.client_email AS 'Email client'
FROM ticket ti
JOIN event e ON e.event_id = ti.event_id
JOIN price p ON p.price_id = ti.price_id
JOIN client c ON c.client_id = ti.client_id
JOIN room r ON r.room_id = e.room_id
JOIN theater t ON t.theater_id = r.theater_id
JOIN film f ON f.film_id = e.film_id
WHERE e.event_id = 4
ORDER BY t.theater_name, r.room_number;