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
    2 - L'interrogation de la base de données n'aboutit pas et une erreur est retournée
    3 - Le système affiche le message : "Impossibilité de finaliser la demande"
    4 - Une trâce de cette erreure est conservée dans les logs du système pour diagnostic ultérieur