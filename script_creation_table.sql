\

Auteur      : Bilal Azemmat
Date        : 2026-01-30
Description : Schéma de la table Clients pour le pipeline d'ingestion Azure
Projet      : Azure Data Engineering Portfolio

\



CREATE TABLE dbo.Clients (
	ClientID INT,
	Nom VARCHAR(100),
	Prenom VARCHAR(100),
	Email VARCHAR(100),
	Ville VARCHAR(100),
	DateInscription DATE DEFAULT GETDATE()
);

