SELECT * FROM clienti
WHERE nome = 'Mario';

SELECT nome,cognome
FROM Clienti
WHERE EXTRACT(YEAR FROM anno_nascita )=1982;

SELECT COUNT (*) AS numeroFattureIva20 
FROM Fatture
WHERE iva =20;
 
SELECT * 
FROM Prodotti
WHERE EXTRACT(YEAR FROM dataAttivazione)=2017 AND (inProduzione=TRUE OR inCommercio=TRUE);


SELECT Fatture.numero_fattura, Fatture.importo, Fatture.iva, Fatture.dataFattura,
       Clienti.nome, Clienti.cognome, Clienti.regione_residenza
FROM Fatture
JOIN Clienti ON Fatture.idCliente=Clienti.numeroCliente
WHERE Fatture.importo<1000;


SELECT Fatture.numero_fattura, Fatture.importo, Fatture.iva,Fatture.datafattura, Fatture.numerofornitore, Fornitori.denominazione AS nome
FROM Fatture
JOIN Fornitori ON Fatture.numerofornitore=Fornitori.numerofornitore

SELECT COUNT(*), EXTRACT(YEAR FROM datafattura) AS anno
FROM Fatture
WHERE iva=22
GROUP BY anno

SELECT COUNT(*), EXTRACT(YEAR FROM datafattura) AS anno, SUM(importo) AS totale
FROM Fatture
GROUP BY anno


