|Acteur Principal | Commercial                                 |
| :--------------- |:---------------|
|Objectifs        | Consulter détail d'un client               |
|Préconditions    |                                            |
|Entrée           | Id du client                               |
|Sortie           | Affichage des données sur une page dédiée  |

## Scénario nominal
    1 - L'utilisateur recherche le client
    2 - Le client existe dans la bdd
    3 - L'utilisateur clic sur l'icone d'affichage du détail client
    4 - Le corps d'affichage de la page restitue les détails du client

## Scénario alternatif
    1 - L'utilisateur recherche le client
    2 - Le client n'existe dans la bdd
    3 - L'utilisateur clic sur l'icone d'ajout d'un client
    4 - Application du useCase 'Créer un client'
    5 - Après validation et sauvegarde des données saisies, le corps d'affichage de la page restitue les détails du client

## Scénario en erreur
    1 - L'utilisateur recherche le client
    2 - SI une erreur survient lors de la recherche ALORS :
      - Le système affiche le message : "Impossibilité de finaliser la demande"