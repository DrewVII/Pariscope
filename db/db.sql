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

CREATE TABLE reservation {
    date_r DATE NOT NULL,
    id_client VARCHAR(30) NOT NULL,
    id_sejour VARCHAR(30) NOT NULL,
    CONSTRAINT reservation_id_client_fk FOREIGN KEY (id_client) REFERENCES client(id_client),
    CONSTRAINT reservation_id_sejour_fk FOREIGN KEY (id_sejour) REFERENCES sejour(id_sejour)
};

CREATE TABLE activite {
    id_activite INT NOT NULL PRIMARY KEY,
    ref_activite VARCHAR(100) NOT NULL,
    jour_activite DATE NOT NULL,
    heure_activite TIME NOT NULL,
    duree_activite INT NOT NULL
}

CREATE TABLE aime {
    id_client VARCHAR(30) NOT NULL,
    id_activite VARCHAR(30) NOT NULL,
    CONSTRAINT reservation_id_client_fk FOREIGN KEY (id_client) REFERENCES client(id_client),
    CONSTRAINT reservation_id_activite_fk FOREIGN KEY (id_activite) REFERENCES activite(id_activite)
}

CREATE TABLE mail {
    id_mail VARCHAR(30) NOT NULL,
    contenu VARCHAR(255) NOT NULL,
    date_mail DATE NOT NULL
}