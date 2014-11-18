----Cerinta sase:
----Minim: sa se scrie o procedura care introduce produse in stoc (insereaza informatii in tabela Intrari)
----extra: realizati un script care apeleaza procedura 
---Hints: CREATE, INSERT, DECLARE


CREATE PROCEDURE InsertOnIntrari
AS
BEGIN
INSERT INTO Intrari
(IntrariID, DataReceptie, CantitateProdusIntrare, PretUnitarProdus, MagazinID, ProdusID)
VALUES
(1, GETDATE(), 5, 12, 1, 1),
(2, GETDATE(), 4, 10, 2, 1),
(3, GETDATE(), 10, 5, 1, 2),
(4, GETDATE()+1, 23, 7, 2, 2)
END
GO

EXEC InsertOnIntrari

SELECT * FROM Intrari






