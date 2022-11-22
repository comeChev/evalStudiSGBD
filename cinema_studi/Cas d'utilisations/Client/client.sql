USE theaterDB;

/*  Afficher les films à l'affiche */

SELECT f.film_title AS 'FILMS A L''AFFICHE'
FROM event e
JOIN film f ON e.film_id = f.film_id
JOIN room r ON e.room_id = r.room_id
JOIN theater t ON r.theater_id = r.theater_id
WHERE t.theater_id = 3 AND e.event_date >= '2022-11-13';


/* SELECTIONNER UN FILM ET VOIR LES SEANCES DE CE FILM POUR LA JOURNEE CHOISIE AVEC PLACES RESTANTES */
SELECT 
f.film_title AS 'FILM',
TIME(e.event_date) AS 'HEURE DE LA SEANCE', 
TIME (DATE_ADD(e.event_date, INTERVAL f.film_length MINUTE)) AS 'FIN DE SEANCE',
r.room_number AS 'SALLE N°',
r.room_seats - COUNT(ti.ticket_id) AS 'NOMBRE DE PLACES RESTANTES'
FROM event e
JOIN ticket ti ON ti.event_id = e.event_id
JOIN film f ON e.film_id = f.film_id
JOIN room r ON e.room_id = r.room_id
JOIN theater t ON t.theater_id = r.theater_id
WHERE DATE(e.event_date) = '2022-11-13' AND f.film_id = 16 AND t.theater_id = 3
GROUP BY e.event_id;

/* CHOISIR LA SEANCE ET UNE TARIFICATION ET VALIDER SON BILLET */

INSERT (event_id, price_id, client_id)
INTO ticket 
VALUE (12, 1, 10)
