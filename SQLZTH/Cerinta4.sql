----Minim: sa se scrie un query din care sa reiasa pt fiecare magazin care sunt categoriile de produse inexistente in stoc

USE MAGAZIN 
GO

SELECT A.ProdusID, A.MagazinID, A.DenumireProdus, A.CategorieProdusID 
FROM Produs A LEFT JOIN Stoc B
ON A.ProdusID=B.ProdusID  
WHERE B.ProdusID IS  NULL

SELECT  * FROM stoc

----Extra: sa se re-scrie query-ul in cat mai multe moduri

SELECT ProdusID, DenumireProdus, MagazinID, CategorieProdusID 
FROM Produs
WHERE ProdusID  NOT IN (SELECT ProdusID FROM STOC)
