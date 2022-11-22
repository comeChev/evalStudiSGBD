/* ON SELECTIONE LA BASE DE DONNEES*/
USE theaterDB;


/* ON INSERE DES DONNEES */
INSERT INTO price (price_value, price_name)
VALUES
(09.20, 'Plein tarif'),
(07.60, 'Etudiant'),
(05.90, 'Moins de 14 ans');

SELECT *
FROM price;