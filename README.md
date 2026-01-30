Portfolio Data Engineering : Pipeline Azure End-to-End

Auteur : Bilal Azemmat
Date : 30 Janvier 2026

---

Pourquoi ce projet ?

J'ai réalisé ce projet pour mettre en pratique une chaîne de traitement complète (ELT) sur Microsoft Azure.
Mon but était de partir de fichiers bruts et d'arriver à un tableau de bord exploitable, en automatisant tout le processus.


Ma Stack Technique:

* **Azure Data Factory : Pour l'orchestration et la copie des données.
* **Azure SQL Database : Pour le stockage structuré.
* **Power BI : Pour la visualisation finale.
* **Data Flow : Pour le nettoyage (gestion des doublons et des NULLs).


Ce que j'ai implémenté:

1.  **Automation : Le pipeline se déclenche seul tous les matins à 08h00.
2.  **Qualité des données : J'ai créé une logique pour gérer les clients sans ville (remplacement par "Inconnue") et supprimer les doublons.
3.  **Monitoring : Si le pipeline échoue, je reçois une alerte.
4.  **Gestion Avancée (SQL) : Mise en place d'une procédure stockée ("MERGE") pour gérer l'Upsert (mise à jour si existant, insertion si nouveau) et garantir l'unicité des données.


Résultat visuel:

Capture de mon dashboard Power BI connecté à la base SQL :

![Dashboard Power BI](Publication%20Power%20BI.png)
