USE Magazin
GO

CREATE TABLE dbo.Magazin 
(
  MagazinID int  NOT NULL PRIMARY KEY,
  DenumireMagazin varchar(50) NOT NULL,
  AdresaMagazin varchar(50) NOT NULL

)

CREATE TABLE dbo.CategorieProdus
(
  CategorieProdusID int  NOT NULL PRIMARY KEY,
  TipCategorie varchar(30) NOT NULL
)

CREATE TABLE dbo.Produs
(
  ProdusID int  NOT NULL PRIMARY KEY,
  DenumireProdus varchar(30) NOT NULL,
  MagazinID int FOREIGN KEY REFERENCES  Magazin(MagazinID) ,
  CategorieProdusID int FOREIGN KEY REFERENCES  CategorieProdus(CategorieProdusID) 
)

CREATE TABLE dbo.Stoc
(
  StocID int  NOT NULL PRIMARY KEY,
  MagazinID int FOREIGN KEY REFERENCES Magazin(MagazinID) NOT NULL ,
  ProdusID int FOREIGN KEY REFERENCES Produs(ProdusID) NOT NULL ,
  CantitateProdus int NULL
)

CREATE TABLE dbo.Intrari
(
  IntrariID int  NOT NULL PRIMARY KEY ,
  DataReceptie  datetime NOT NULL,
  CantitateProdusIntrare int NOT NULL,
  PretUnitarProdus decimal(8,2) NOT NULL,
  MagazinID int FOREIGN KEY REFERENCES Magazin(MagazinID) ,
  ProdusID int FOREIGN KEY REFERENCES Produs(ProdusID)
)

CREATE TABLE dbo.Iesiri
(
  IntrariID int  NOT NULL PRIMARY KEY,
  DataIesireStoc  datetime NOT NULL,
  CantitateProdusIesire int NOT NULL,
  PretUnitarProdus decimal(8,2) NOT NULL,
  MagazinID int FOREIGN KEY REFERENCES Magazin(MagazinID) ,
  ProdusID int FOREIGN KEY REFERENCES Produs(ProdusID) 
)

----- de facut extra(trigger)
CREATE TRIGGER ProdusTriggerAfterInsert ON dbo.Produs 
FOR INSERT
AS DECLARE @StocID int, @MagazinID int, @ProdusID int, @CantitateProdus int;
 SELECT @MagazinID=i.MagazinID FROM inserted i;
 SELECT @ProdusID=i.ProdusID FROM inserted i;
 
 SET @StocID= 'Inserted Record -- After Insert Trigger.';
 SET @CantitateProdus= 'Inserted Record -- After Insert Trigger.';

 INSERT INTO Stoc(StocID,MagazinID,ProdusID,CantitateProdus)
 VALUES (@StocID,@MagazinID,@ProdusID,@CantitateProdus);

 PRINT 'AFTER INSERT trigger fired.'
 GO
 




