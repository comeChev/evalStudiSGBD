/* ON SELECTIONE LA BASE DE DONNEES*/
USE theaterDB;


/* ON INSERE DES DONNEES */
INSERT INTO theater_complex(complex_name)
VALUES ('PATHE GAUMONT'),
('COMPLEXE DU MIDI'),
('LES CINEMAS DU NORD');

SELECT * FROM theater_complex;


INSERT INTO theater (theater_name, theater_address, theater_postal_code, theater_city, complex_id)
VALUES
('MONTPELLIER GAUMONT MULTIPLEX', 'Odysseum', 34000, 'MONTPELLIER', 1),
('PATHE DU CHAT MIAULANT', 'Rue de la patte molle', 74400, 'CHAT MONIX', 1),
('LILLE AU BOIS DORMANT', 'Allée de la petite couronne', 59000, 'LILLE', 3),
('LES 3 PALMES', null, null, null, 2 ),
('PATHE LA JOLIETTE', 'Rue de Chanterac', 13000, 'MARSEILLE', 1 );

SELECT *
FROM  theater t
JOIN theater_complex tc ON t.complex_id = tc.complex_id
WHERE t.complex_id = 1;