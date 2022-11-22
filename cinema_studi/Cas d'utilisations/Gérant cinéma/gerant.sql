USE theaterDB;

/* AFFICHER LE NOMBRE DE BILLETS VENDUS DANS SES SALLES POUR UNE DATE SPECIFIQUE OU PLAGE DE DATE */

SELECT 
COUNT(ti.ticket_id) AS 'NOMBRE DE TICKETS'
FROM ticket ti
JOIN event e ON e.event_id = ti.event_id
JOIN room r ON r.room_id = e.event_id
JOIN theater t ON r.theater_id = t.theater_id
WHERE t.theater_id = 5 AND e.event_date BETWEEN '2022-11-01' AND '2022-11-30';

/* AFFICHER LA LISTE DES SES CLIENTS AVEC ADRESSE MAIL (ET NOMBRE DE BILLETS) TRIE PAR CA */
SELECT
CONCAT(UPPER(c.client_ln),' ', c.client_fn) AS 'CLIENT',
c.client_email AS 'EMAIL',
COUNT(ti.ticket_id) AS 'NOMBRE DE TICKETS ACHETES',
CONCAT(SUM(p.price_value),' €') AS 'CA TOTAL'
FROM client c
JOIN ticket ti ON ti.client_id = c.client_id
JOIN price p on p.price_id = ti.price_id
JOIN event e ON e.event_id = ti.event_id
JOIN room r ON r.room_id = e.event_id
JOIN theater t ON r.theater_id = t.theater_id
WHERE t.theater_id = 5
GROUP BY CONCAT(UPPER(c.client_ln),' ', c.client_fn),c.client_email
ORDER BY SUM(p.price_value) DESC;


/* AJOUTER UNE SEANCE */
INSERT INTO event (film_id, room_id, event_date)
VALUES (11, 12, '2022-11-22 21:30:00' );


/* VERIFIER LES SEANCES */
SELECT 
e.event_id,
DATE_FORMAT(e.event_date, '%W %d %M %Y') AS 'DATE DE SEANCE',
TIME(e.event_date) AS 'HEURE DE SEANCE',
f.film_title AS 'FILM'
FROM event e
JOIN room r ON r.room_id = e.room_id
JOIN theater t ON t.theater_id = r.theater_id
JOIN film f ON f.film_id = e.film_id
WHERE t.theater_id = 5;

/* SUPPRIMER UNE SEANCE */
DELETE FROM event
WHERE room_id=12 AND event_date = "2022-11-22 21:30:00";