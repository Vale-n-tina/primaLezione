/*
CREATE TABLE Clienti(
numeroCliente SERIAL PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
cognome VARCHAR(30) NOT NULL,
anno_nascita DATE NOT NULL,
regione_residenza VARCHAR(30) NOT NULL
);

CREATE TABLE Prodotti(
 idProdotto SERIAL PRIMARY KEY,
 descrizione VARCHAR (200),
 inProduzione BOOLEAN,
 inCommercio BOOLEAN,
 dataAttivazione DATE DEFAULT CURRENT_DATE,
 dataDisattivazione DATE
);

CREATE TABLE Fornitori(
numeroFornitore SERIAL PRIMARY KEY,
denominazione VARCHAR(20)NOT NULL,
regioneResidenza VARCHAR(20) NOT NULL
);

CREATE TABLE Fatture(
numeroFattura SERIAL PRIMARY KEY, 
tipologia VARCHAR(30),
importo DECIMAL NOT NULL,
iva DECIMAL NOT NULL,
idCliente INTEGER REFERENCES Clienti (numeroCliente),
dataFattura DATE DEFAULT CURRENT_DATE,
numeroFornitore INTEGER REFERENCES Fornitori(numeroFornitore) 
);*/

INSERT INTO Clienti (nome, cognome, anno_nascita, regione_residenza) 
VALUES 
('Valentina', 'Gargiulo', '2000-03-10', 'Roma'),
('Nicola', 'Albanese', '1867-02-16', 'Napoli'),
('Ginevra', 'Pizzicanella', '1982-04-5', 'Sardegna'),
('Mario', 'Rossi', '1982-04-5', 'Venezia'),
('Martina', 'Verdi','1982-04-5', 'Venezia'),
('Giulia', 'Gialli', '1980-04-5','Molise'),
('Paolo', 'Gialli', '1980-09-05', 'Emilia-Romagna'),
('Giulia', 'Rossi', '1993-04-17', 'Lazio'),
('Luca', 'Bianchi', '1985-01-23', 'Liguria');

INSERT INTO Prodotti (descrizione, inProduzione, inCommercio, dataAttivazione, dataDisattivazione) 
VALUES
('Smartphone X100', TRUE, TRUE, '2023-01-01', NULL),
('Laptop Z300', TRUE, TRUE, '2022-05-15', NULL),
('Cuffie Wireless', TRUE, FALSE, '2021-07-20', '2023-01-01'),
('Televisore QLED', TRUE, TRUE, '2023-03-10', NULL),
('Tablet Pro 10', FALSE, FALSE, '2022-08-01', '2023-04-30'),
('Smartwatch Alpha', TRUE, TRUE, '2023-01-10', NULL),
('Monitor 24" LED', TRUE, TRUE, '2023-03-01', NULL),
('Speaker Bluetooth', TRUE, FALSE, '2022-06-20', '2023-02-15'),
('Macchina Fotografica 4K', TRUE, TRUE, '2023-02-01', NULL),
('Zaino per Laptop', FALSE, FALSE, '2021-09-25', '2022-05-01');

INSERT INTO Fornitori (denominazione, regioneResidenza)
VALUES
('TechCorp', 'Lazio'),
('ElectroWorld', 'Campania'),
('FurniTech', 'Piemonte'),
('GlobalSupply', 'Toscana'),
('TechnoMart', 'Lombardia'),
('AudioTech', 'Sicilia'),
('OfficeGear', 'Veneto'),
('FotoPlus', 'Emilia-Romagna'),
('MonitorMaster', 'Lazio'),
('BackPackers', 'Liguria');

INSERT INTO Fatture (tipologia, importo, iva, idCliente, dataFattura, numeroFornitore) 
VALUES
('Vendita', 500.00, 22.00, 11, '2023-02-01', 11),
('Vendita', 1200.00, 22.00, 12, '2023-02-15', 20),
('Vendita', 300.00, 22.00, 19, '2023-03-01', 12),
('Servizio', 150.00, 22.00, 19, '2023-03-10', 14),
('Vendita', 850.00, 20.00, 13, '2023-03-20', 15),
('Vendita', 150.00, 22.00, 14, '2023-03-05', 11),
('Vendita', 350.00, 22.00, 15, '2023-03-15', 12),
('Servizio', 100.00, 22.00, 16, '2023-04-01', 13),
('Vendita', 800.00, 22.00, 18, '2023-04-07', 14),
('Vendita', 1200.00, 20.00, 17, '2023-04-10', 15);




