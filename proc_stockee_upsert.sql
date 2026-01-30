
Auteur      : Bilal Azemmat
Date        : 2026-01-30
Description : Procédure stockée pour gérer l'Upsert (Insert ou Update) des clients afin d'éviter les doublons.
Projet      : Azure Data Engineering Portfolio


--



CREATE PROCEDURE dbo.sp_UpsertClient
    @ClientID INT,
    @Nom VARCHAR(100),
    @Prenom VARCHAR(100),
    @Email VARCHAR(100),
    @Ville VARCHAR(100)
AS
BEGIN
    
    MERGE dbo.Clients AS Target
    USING (SELECT @ClientID, @Nom, @Prenom, @Email, @Ville) AS Source (ClientID, Nom, Prenom, Email, Ville)
    ON (Target.ClientID = Source.ClientID) 

    WHEN MATCHED THEN
        UPDATE SET 
            Target.Nom = Source.Nom,
            Target.Prenom = Source.Prenom,
            Target.Email = Source.Email,
            Target.Ville = Source.Ville

    WHEN NOT MATCHED THEN
        INSERT (ClientID, Nom, Prenom, Email, Ville, DateInscription)
        VALUES (Source.ClientID, Source.Nom, Source.Prenom, Source.Email, Source.Ville, GETDATE());
END
GO