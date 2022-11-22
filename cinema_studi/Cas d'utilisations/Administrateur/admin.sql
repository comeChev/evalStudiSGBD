USE theaterDB;

/* AFFICHER LE CA TOTAL DE TOUTES LES SALLES DE CINEMA SUR UNE PLAGE DE DATE DONNEES */

SELECT  
t.theater_name AS 'CINEMA',
CONCAT(SUM(p.price_value),' €') AS 'CA SUR LA PERIODE'
FROM ticket ti
JOIN price p ON p.price_id = ti.price_id
JOIN event e ON e.event_id = ti.event_id
JOIN room r ON r.room_id = e.room_id
JOIN theater t ON t.theater_id = r.theater_id
JOIN theater_complex tc ON tc.complex_id = t.complex_id
WHERE tc.complex_id = 1 AND e.event_date BETWEEN '2022-11-01' AND '2022-11-30'
GROUP BY t.theater_name, tc.complex_name
ORDER BY SUM(p.price_value) DESC
;

/* AJOUTER UN CINEMA */
INSERT INTO theater(theater_name, theater_address, theater_postal_code, theater_city, complex_id)
VALUE('Gaumont Parc Millésime', 'Parc Millésime', 51370, 'Thillois', 1)


/* AJOUTER DES SALLES A UN CINEMA */
INSERT INTO room(room_number, room_seats, theater_id)
VALUES 
(1,110,6),
(2,100,6),
(3,430,6),
(4,27,6),
(5,89,6),
(6,12,6),
(7,34,6);


/* AFFICHER TOUS LES CLIENTS DU COMPLEXE ET LEUR EMAIL */
SELECT 
DISTINCT CONCAT(UPPER(c.client_ln),' ',c.client_fn) AS 'CLIENT',
c.client_email AS 'EMAIL'
FROM client c
JOIN ticket ti ON ti.client_id = c.client_id
JOIN event e ON e.event_id = ti.event_id
JOIN room r ON r.room_id = e.room_id
JOIN theater t ON t.theater_id = r.theater_id
JOIN theater_complex tc ON tc.complex_id = t.complex_id;