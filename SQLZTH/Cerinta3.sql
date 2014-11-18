---Minim: sa se scrie un script de populare a tabelelor astfel incat sa existe 2 magazine,
--- iar pentru fiecare magazin sa existe in stoc 4 produse din cele 6 categorii disponibile


USE Magazin
GO

INSERT INTO Magazin (MagazinID,DenumireMagazin,AdresaMagazin) 
VALUES (1,'Best ZTH', 'Int. Crisul Alb Nr. 33'),
       (2,'TooPee','Sos. Oltenitei Nr. 113');

INSERT INTO CategorieProdus(CategorieProdusID,TipCategorie) 
VALUES (1,'Imbracaminte Femei'), (2,'Incaltaminte copii 1-2 ani'), 
(3,'Incaltaminte copii 4-6 ani'),(4,'Incaltaminte copii 6-8 ani'),
(5,'Imbracaminte copii 1-2 ani'),(6,'Imbracaminte copii 3-6 luni');

INSERT INTO Produs(ProdusID,MagazinID,DenumireProdus,CategorieProdusID)
	 VALUES(2,1,'Bluza roz',1), (3,1,'Fusta neagra scurta',1), (4,1,'Camasa alba cu aplicatii ',1),
	        (5,2,'Botosei albastrii',2), (6,2,'Botosei verzi ',2), (7,2,'Pantofi rosi cu arici',2), (8,2,'Sandalute negre lacuite ',3);

INSERT INTO Stoc (StocID,MagazinID,ProdusID,CantitateProdus)
 VALUES (1,1,2,10),(2,1,5,10),(3,1,3,10),(4,1,4,10),
		(5,2,1,10),(6,2,5,10),(7,2,4,10),(8,2,2,10)


----Extra: sa se scrie un script de populare precum cel de mai sus folosind iteratie /bucla
----Hints: INSERT, WHILE , CAST/CONVERT, N'Produs' + counter
