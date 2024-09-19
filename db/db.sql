CREATE TABLE client {
    id_client INT NOT NULL PRIMARY KEY,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(30) NOT NULL
};

CREATE TABLE commentaire {
    id_com INT NOT NULL PRIMARY KEY,
    date_com DATE NOT NULL CHECK(Date_com <= CURRENT_DATE),
    note VARCHAR(100) NOT NULL,
    id_client CHAR(30) NOT NULL,
    CONSTRAINT commentaire_id_client_fk FOREIGN KEY (id_client) REFERENCES client(id_client)
};