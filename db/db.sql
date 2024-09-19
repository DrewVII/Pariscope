CREATE TABLE client {
    id_c INT NOT NULL PRIMARY KEY,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(30) NOT NULL
};

CREATE TABLE commentaire {
    id_com INT NOT NULL PRIMARY KEY,
    date_com DATE NOT NULL PRIMARY KEY,
    id_c 
}