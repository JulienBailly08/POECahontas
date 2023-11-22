|Acteur Principal | Commercial                                 |
| :--------------- |:---------------|
|Objectifs        | Consulter détail d'un client               |
|Préconditions    | Le client existe en bdd                    |
|Entrée           | Id du client                               |
|Sortie           | Affichage des données sur une page dédiée  |

## Scénario nominal
    1 - L'utilisateur recherche le client
    2 - Le client existe dans la bdd
    3 - L'utilisateur selectionne le client afin d'en afficher les détails
    4 - Le corps d'affichage de la page restitue les détails du client

## Scénario alternatif
    1 - L'utilisateur recherche le client
    2 - Le client n'existe dans la bdd
    3 - L'utilisateur active la fonctionnalité de création du client
    4 - Après validation et sauvegarde des données saisies, le corps d'affichage de la page restitue les détails du client

## Scénario en erreur
    1 - L'utilisateur recherche le client
    2 - La base de données renvoit une erreur lors de la requête du client
    3 - Le système affiche le message : "Impossibilité de finaliser la demande"
    4 - les infos fournies par l'erreur sont conservées dans les logs du système pour diagnostic ultérieur

## Description des écrans

    1 - Origine - Ecran de liste des clients
        - La liste des clients disponibles en base de données est affiché sur la zone centrale de la page.
        - Un champs de recherche est disponible et permet d'affiner la liste des résultats présentés.
    
    2 - Objectif - Ecran de détail du client
        - Des champs contenant les informations du client sont affichés sur la page principale.
        - Sur la partie gauche de la fenêtre, des elements permettent d'intéragir avec les données du client :
            - Activer la modification
            - Créer un devis


## Règles de gestion

    - Le champ de recherche permettra d'effectuer une recherche indifféremment sur le nom du client ou une entreprise