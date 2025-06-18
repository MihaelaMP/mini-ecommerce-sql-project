-- CREAZIONE TABELLA PRODOTTI
DROP TABLE IF EXISTS prodotti;
CREATE TABLE prodotti (
    id_prodotto INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    categoria TEXT,
    prezzo REAL NOT NULL
);

-- CREAZIONE TABELLA CLIENTI
DROP TABLE IF EXISTS clienti;
CREATE TABLE clienti (
    id_cliente INTEGER PRIMARY KEY,
    nome TEXT,
    email TEXT,
    città TEXT,
    data_registrazione DATE,
    genere TEXT
);


-- CREAZIONE TABELLA ORDINI
DROP TABLE IF EXISTS ordini;
CREATE TABLE ordini (
    id_ordine INTEGER PRIMARY KEY,
    id_cliente INTEGER,
    data_ordine DATE,
    stato TEXT,
    FOREIGN KEY (id_cliente) REFERENCES clienti(id_cliente)
);

-- CREAZIONE TABELLA DETTAGLI_ORDINE
DROP TABLE IF EXISTS dettagli_ordine;
CREATE TABLE dettagli_ordine (
    id_dettaglio INTEGER PRIMARY KEY,
    id_ordine INTEGER,
    id_prodotto INTEGER,
    quantita INTEGER,
    prezzo_unitario REAL,
    FOREIGN KEY (id_ordine) REFERENCES ordini(id_ordine),
    FOREIGN KEY (id_prodotto) REFERENCES prodotti(id_prodotto)
);
