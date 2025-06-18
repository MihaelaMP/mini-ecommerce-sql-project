-- ====================================================
-- File: query_analisi.sql
-- Autrice: Margareta Mihaela Pesterau
-- Descrizione: Query SQL per analisi dati nel progetto
-- "Mini E-Commerce SQL Project"
-- Ultimo aggiornamento: 18 giugno 2025
-- ====================================================

-- Elenco di tutti i clienti
SELECT * FROM clienti;  
-- Elenco di tutti i prodotti
SELECT * FROM prodotti;
-- Elenco di tutti gli ordini
SELECT * FROM ordini;

-- Elenco delle categorie dei prodotti (distinte)
SELECT DISTINCT categoria
FROM prodotti
ORDER BY categoria;
-- Elenco dei prodotti con il prezzo maggiore di 100
SELECT *    FROM prodotti
WHERE prezzo > 100  