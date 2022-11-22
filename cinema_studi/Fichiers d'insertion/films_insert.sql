 /* ON SELECTIONE LA BASE DE DONNEES*/
USE theaterDB;


/* ON INSERE DES DONNEES */
INSERT INTO film (film_title, film_year, film_length)
 VALUES
 ('Vertigo', 1958, 128),
 ('The Innocents',1961, 100),
 ('The Deer Hunter',1978, 183),
 ('Amadeus',1984, 160),
 ('Blade Runner',1982, 117),
 ('Eyes Wide Shut',1999, 159),
 ('The Usual Suspects',1995, 106),
 ('Chinatown',1974, 130),
 ('Boogie Nights',1997, 155),
 ('Annie Hall',1977,  93),
 ('Princess Mononoke',1997, 134),
 ('The Shawshank Redem',1994, 142),
 ('American Beauty',1999, 122),
 ('Titanic',1997, 194),
 ('Good Will Hunting',1997, 126),
 ('Deliverance',1972, 109),
 ('Trainspotting',1996,  94),
 ('The Prestige',2006, 130),
 ('Donnie Darko',2001, 113),
 ('Slumdog Millionaire',2008, 120),
 ('Aliens',1986, 137),
 ('Beyond the Sea',2004, 118),
 ('Avatar',2009, 162),
 ('Seven Samurai',1954, 207),
 ('Spirited Away',2001, 125),
 ('Back to the Future',1985, 116),
 ('Braveheart',1995, 178);

 SELECT *
 FROM film
 WHERE film_year >= 2000;