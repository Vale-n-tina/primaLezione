SELECT * FROM clienti
WHERE nome = 'Mario';

SELECT nome,cognome
FROM Clienti
WHERE EXTRACT(YEAR FROM anno_nascita )=1982;

SELECT * FROM Fatture
WHERE iva =20;
 
SELECT * 
FROM Prodotti
WHERE EXTRACT(YEAR FROM dataAttivazione)=2017 AND (inProduzione=TRUE OR inCommercio=TRUE);

SELECT Fatture.numeroFattura, Fatture.importo, Fatture.iva, Fatture.dataFattura,
       Clienti.nome, Clienti.cognome, Clienti.regione_residenza
FROM Fatture
JOIN Clienti ON Fatture.idCliente=Clienti.numeroCliente
WHERE Fatture.importo<1000;