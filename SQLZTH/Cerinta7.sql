----Cerinta sapte:
----Minim: sa se afiseze pentru fiecare magazin ultimele 1 produse adaugate in stoc 


SELECT IntrariID AS ID, DataReceptie AS Data_Receptie, CantitateProdusIntrare AS Cantitate, PretUnitarProdus  AS Pret_Produs
FROM Intrari 
WHERE DataReceptie IN ( SELECT MAX (DataReceptie) FROM Intrari) 


----Maxim: sa se afiseze pentru fiecare magazin primele 2 produse din fiecare categorie de produse adaugate in stoc

---INCOMPLET!!! --------------------------------

WITH Intrari  AS (
		SELECT MagazinID, ProdusID, DataReceptie, 
		ROW_NUMBER() OVER (PARTITION BY MagazinID Order BY DataReceptie DESC) AS Row
		FROM Intrari 
			)			
SELECT MagazinID, ProdusID, DataReceptie, Row  FROM Intrari
WHERE Row >=2 


----Hints: GROUP BY, ROW_NUMBER  