----Minim : sa se creeze un view care sa contina urmatoarele informatii:
	--magazin
	--denumire produs
	--categorie produs
	--cantitatea aflata in stoc aferenta produsului

   CREATE VIEW  ThisView 
   AS
   SELECT A.DenumireMagazin, B.DenumireProdus, CP.TipCategorie , C.CantitateProdus, C.ProdusID
   FROM Stoc C
   INNER JOIN  Magazin AS A ON A.MagazinID = C.MagazinID
   INNER JOIN Produs AS B ON B.ProdusID = C.ProdusID
   INNER JOIN  CategorieProdus AS CP ON CP.CategorieProdusID = B.CategorieProdusID
   GO






----Extra:	realizati un script sql care sa se modifice tabela stoc existenta astfel incat sa existe si pretul unitar asociat unui singur produs; 
----		view-ul de mai sus sa se modifice astfel incat sa contina si valoarea stocului
----Hints: ALTER, INNER, SUM