/* ON SELECTIONE LA BASE DE DONNEES*/
USE theaterDB;


/* ON INSERE DES DONNEES */
INSERT INTO room (room_number, room_seats, theater_id)
VALUES
(5, 34, 1),
(6, 67, 1),
(3, 21, 1),
(1, 98, 1),
(1, 117, 2),
(3, 56, 2),
(2, 76, 2),
(10, 45, 3),
(20, 12, 3),
(30, 42, 3),
(1, 98, 4),
(1, 112, 5),
(2, 76, 4),
(2, 09, 5),
(3, 10, 5),
(4, 68, 5),
(4, 17, 1),
(2, 20, 1);

SELECT t.theater_name, COUNT(r.room_id) AS 'Nombre de salles', SUM(r.room_seats) AS 'Nombre de places'
FROM room r
JOIN theater t ON r.theater_id = t.theater_id
JOIN theater_complex tc ON t.complex_id = tc.complex_id
WHERE tc.complex_id = 1
GROUP BY t.theater_id, t.theater_name;


SELECT f.film_name AS 'Film', r.room_seats - COUNT(ticket_id) AS 'Places disponibles'
FROM show s
JOIN room r ON s.room_id = r.room_id
JOIN ticket t ON s.show_id = t.show_id
JOIN film f ON s.film_id = f.film_id
WHERE show_id = 1