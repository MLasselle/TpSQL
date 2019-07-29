/**************************************************
       TP Maxime
       Premiere partie : CREATIONS des tables
*************************************************/
USE master
IF (EXISTS(SELECT * FROM sys.databases WHERE Name = 'DbAgences'))
BEGIN
    DROP DATABASE DbAgences
END

GO

CREATE DATABASE DbAgences
GO

use DbAgences
GO

CREATE TABLE Agence (
CodAgt char(5) not null,
NomAgt varchar(25) not null,
AdressAgt varchar(30) not null,
Tel1Agt varchar(13) null,
Tel2Agt varchar(13) null,
primary key(CodAgt)
)
GO


CREATE TABLE Client(
Id_Client char(10) not null,
CodAgence char(5) not null,
NomCli varchar(25) not null,
PrenomCli varchar(25) not null,
AdresseCli varchar(30) not null,
TelCli varchar(14) null,
primary key (Id_Client)
)

GO

CREATE TABLE Operation(

Id_Client char(10) not null,
TypCompte char(1) not null,
DatOperation datetime not null,
TypeOp char(1) not null,
Montant money null,
primary key(Id_Client,TypCompte,DatOperation)
)
GO

CREATE TABLE Compte(
Id_Client char(10) not null,
TypCompte char(1) not null,
DatOuv datetime not null,
Solde money null,
primary key(Id_Client,TypCompte)
)

GO

insert Compte (Id_Client, TypCompte, DatOuv, Solde) values ('C100111001', 'C', '10/10/96', 5000)
insert Compte (Id_Client, TypCompte, DatOuv, Solde) values ('C100111001', 'E', '11/20/96', 3000)
insert Compte (Id_Client, TypCompte, DatOuv, Solde) values ('C100111002', 'C', '03/13/97',12300)
insert Compte (Id_Client, TypCompte, DatOuv, Solde) values ('C100111003', 'C', '12/23/98', 1200)
insert Compte (Id_Client, TypCompte, DatOuv, Solde) values ('C100111003', 'V', '10/09/98', 5000)
insert Compte (Id_Client, TypCompte, DatOuv, Solde) values ('C100112001', 'C', '09/15/98', 7600)
insert Compte (Id_Client, TypCompte, DatOuv, Solde) values ('C100113002', 'C', '03/24/98', 1300)
insert Compte (Id_Client, TypCompte, DatOuv, Solde) values ('C100113003', 'C', '12/04/95', 4500)


insert Agence (CodAgt, NomAgt, AdressAgt, Tel1Agt, Tel2Agt) values ('A0001', 'Agence Centre-Ville', '1 Place Ville-Marie', '(514)999-9999', '(514)999-9998')
insert Agence (CodAgt, NomAgt, AdressAgt, Tel1Agt, Tel2Agt) values ('A0002', 'Agence Rive-Sud', '25 Bd Tachereau', '(450)444-4443', '(450)434-4444')
insert Agence (CodAgt, NomAgt, AdressAgt, Tel1Agt, Tel2Agt) values ('A0003', 'Agence Laval', '3000 Rue Saguenay', '(450)333-3333', '(450)333-3331')
insert Agence (CodAgt, NomAgt, AdressAgt, Tel1Agt, Tel2Agt) values ('A0004', 'Agence NDG', '145 Rue Pivot', '(514)744-6767', '(222)222-2222')


insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111001', 'C', '12/13/97','R', 60)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111001', 'E', '12/15/97','D', 300)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111001', 'C', '12/20/97','D', 800)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111001', 'E', '12/23/97','R', 100)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111002', 'C', '03/20/97','D', 1000)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111002', 'C', '03/25/97','R', 40)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111002', 'C', '05/20/97','D', 500)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111002', 'C', '08/20/97','R', 80)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111003', 'C', '12/25/98','D', 1000)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111003', 'C', '12/01/99','D', 100)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111003', 'V', '09/11/98','R', 100)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111003', 'V', '11/13/98','D', 30)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111003', 'V', '10/12/98','D', 70)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100111003', 'C', '10/01/99','R', 100)
insert Operation (Id_Client, TypCompte, DatOperation, TypeOp, Montant)values ('C100113002', 'C', '02/04/99','D', 1000)


insert Client (Id_Client, CodAgence, NomCli, PrenomCli, AdresseCli, TelCli) values ('C100111001', 'A0001', 'Tremblay', 'Sophie', '12 Rue St-Denis #7', '(514)765-9899')
insert Client (Id_Client, CodAgence, NomCli, PrenomCli, AdresseCli, TelCli) values ('C100111002', 'A0001', 'Choquette', 'Alain', '145 Av Papineau #15', '(514)235-1314')
insert Client (Id_Client, CodAgence, NomCli, PrenomCli, AdresseCli, TelCli) values ('C100112001', 'A0002', 'Maggs', 'Steve', '101 Rue Marlo #12', '(450)345-6767')
insert Client (Id_Client, CodAgence, NomCli, PrenomCli, AdresseCli, TelCli) values ('C100113002', 'A0003', 'Bonvi', 'Betty', '10 Rue Bolero', '(450)332-2222')
insert Client (Id_Client, CodAgence, NomCli, PrenomCli, AdresseCli, TelCli) values ('C100111003', 'A0001', 'Nassim', 'Ali', '2345 place Ardenne #4', '(450)445-5676')
insert Client (Id_Client, CodAgence, NomCli, PrenomCli, AdresseCli, TelCli) values ('C100113003', 'A0003', 'Thran Ti', 'Quan', '104 Rue Saguenay', '(450)340-8907')

GO

/*******************************************
Deuxieme partie : Requete
*******************************************/

----------#1------------

SELECT  CodAgt AS "CodeAgence", NomAgt AS "NomAgence", AdressAgt AS "AddressAgence", Tel1Agt AS "Tel1Agence",Tel2Agt AS "Tel2Agence"

FROM Agence 
SELECT Id_Client, CodAgence AS "Code Agence", NomCli AS "NomClient", PrenomCli AS "PrenomClient", AdresseCli AS "AdressClient", TelCli AS "TelClient"

FROM Client

SELECT Id_Client, TypCompte AS "TypeCompte", DatOuv AS "DateOuveture", Solde 

FROM Compte

SELECT Id_Client, TypCompte AS "TypeCompte", DatOperation As "DateOperation", TypCompte AS "TypeOperation", CONVERT(VARCHAR(10),STR(montant),5) AS "Montant"

FROM Operation

----------#2------------

SELECT CL.Id_Client AS "Identificateur", NomCli AS "Nom", PrenomCli AS "Prenom", 
case TypCompte when 'C' then 'Compte Cheque' when 'E' then 'Compte Epargne' when 'V' then 'Compte Visa' else '' end as [Type Compte]

FROM Client CL JOIN Compte CMT
		ON CL.Id_Client = CMT.Id_Client

----------#3------------

SELECT NomCli AS"Nom", PrenomCli AS "Prenom", DatOperation AS "Date Operation", TypCompte AS "Type de Compte", TypeOp AS "Type d'Operation"

FROM Client CL JOIN Operation OP
		ON CL.Id_Client = OP.Id_Client

----------#4------------

SELECT DISTINCT CL.Id_Client AS "Identificateur",NomCli AS "Nom",PrenomCli AS "Prenom" 

FROM Client CL INNER JOIN Operation OP
		ON CL.Id_Client = OP.Id_Client
WHERE YEAR(OP.DatOperation)=1999

----------#5------------

SELECT NomCli AS "Nom", PrenomCli AS "Prenom", TypeOp , COUNT(OP.Id_Client) AS "Nombre d'Operation",SUM(OP.Montant) AS "Montant total des operations"

FROM Client CL INNER JOIN Operation OP
	ON CL.Id_Client = OP.Id_Client
GROUP BY TypeOp,NomCli,PrenomCli

----------#6------------

SELECT DISTINCT TypCompte AS "Type de Compte",

sum(CASE year(DatOperation) WHEN 1997 then
CASE TypeOp WHEN 'D' THEN 
Montant else 0 END else 0 END) AS "1997 Credit",

sum(CASE year(DatOperation) WHEN 1997 then
CASE TypeOp WHEN 'R' THEN 
Montant else 0 END else 0 END) AS "1997 Debit",

sum(CASE year(DatOperation) WHEN 1998 then
CASE TypeOp WHEN 'D' THEN 
Montant else 0 END else 0 END) AS "1998 Credit",

sum(CASE year(DatOperation) WHEN 1998 then
CASE TypeOp WHEN 'R' THEN 
Montant else 0 END else 0 END) AS "1998 Debit",

sum(CASE year(DatOperation) WHEN 1999 then
CASE TypeOp WHEN 'D' THEN 
Montant else 0 END else 0 END) AS "1999 Credit",

sum(CASE year(DatOperation) WHEN 1999 then
CASE TypeOp WHEN 'R' THEN 
Montant else 0 END else 0 END) AS "1999 Debit"

FROM Operation
GROUP BY TypCompte


----------#7------------

SELECT c.Nomcli AS"Nom", c.PrenomCli AS "Prenom", o.Solde
FROM Client c
LEFT JOIN Compte o ON c.Id_Client = o.Id_Client
WHERE o.TypCompte ='C' AND o.Solde > (SELECT avg(solde) FROM Compte WHERE TypCompte='C')

----------#8------------
--A = P(1 + rt) formula to calculate simple interest rate
update Compte
set 
	Solde=Solde+(Solde*(1+(0.003*DATEDIFF(yy,getdate(),datouv))))
where 
	TypCompte='E'

GO


----------#9------------
UPDATE Compte 
set 
	Compte.solde =
	case o.TypeOp when 'D' then
	Compte.Solde+o.solde
	when 'R' then Compte.Solde-o.solde end 
from 
	(select Id_Client, TypCompte, TypeOp, sum(Montant) as solde
	from Operation group by Id_Client, TypCompte,TypeOp) o
where 
	Compte.Id_Client=o.Id_Client and Compte.TypCompte=o.TypCompte

----------#10------------

GO

CREATE VIEW AgenceCentre AS
	SELECT NomCli AS "Nom", PrenomCli AS "Prenom", TypCompte AS "Compte",Solde
	FROM   Agence AG	JOIN Client CL
		ON AG.CodAgt = CL.CodAgence
						JOIN Compte CMT
		ON CL.Id_Client = CMT.Id_Client
	WHERE NomAgt = 'Agence Centre-Ville'

GO

SELECT * FROM AgenceCentre

GO			
			--------

CREATE VIEW AgenceLaval AS
	SELECT NomCli AS "Nom", PrenomCli AS "Prenom", TypCompte AS "Compte",Solde
	FROM   Agence AG	JOIN Client CL
		ON AG.CodAgt = CL.CodAgence
						JOIN Compte CMT
		ON CL.Id_Client = CMT.Id_Client
	WHERE NomAgt = 'Agence Laval'

GO

SELECT * FROM AgenceLaval

GO
			--------

CREATE VIEW AgenceRiveSud AS
	SELECT NomCli AS "Nom", PrenomCli AS "Prenom", TypCompte AS "Compte",Solde
	FROM   Agence AG	JOIN Client CL
		ON AG.CodAgt = CL.CodAgence
						JOIN Compte CMT
		ON CL.Id_Client = CMT.Id_Client
	WHERE NomAgt = 'Agence Rive-Sud'

GO

SELECT * FROM AgenceRiveSud

GO
			--------
CREATE VIEW AgenceNDG AS
	SELECT NomCli AS "Nom", PrenomCli AS "Prenom", TypCompte AS "Compte",Solde
	FROM   Agence AG	JOIN Client CL
		ON AG.CodAgt = CL.CodAgence
						JOIN Compte CMT
		ON CL.Id_Client = CMT.Id_Client
	WHERE NomAgt = 'Agence NDG'

GO

SELECT * FROM AgenceNDG

----------#11------------

SELECT NomCli AS "Nom", PrenomCli AS "Prenom"

FROM Client CL LEFT JOIN Operation OP
	ON CL.Id_Client = OP.Id_Client
WHERE TypeOp IS NULL


