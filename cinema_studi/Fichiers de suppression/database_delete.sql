/* ON SUPPRIME LA BASE DE DONNEES COMPLETE SI ELLE EXISTE */
DROP DATABASE IF EXISTS theaterDB;

/* ON CREE UNE NOUVELLE BASE DE DONNEES SI ELLE N'EXISTE PAS */
CREATE DATABASE IF NOT EXISTS theaterDB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;