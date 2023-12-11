
# POECAHONTAS

En apesanteur le Musk du raton n'a pas d'odeur


![Logo](img/logo.png)

## Infos
Deux dossiers vides sont présent mais non versionnés pour permettre la persistence des données des containers
* /jenkins_conf -> conf de Jenkins
* /db -> DB postgresql


## Installation

Copier le fichier .env-template en .env & définir les valeurs des deux clefs avec des xXxXxXxX

Ce fichier servira à donner les variables d'env pour les containers et permettra de piloter le build en local pour le debug.

Créer les conteneurs des applications :

```bash
  docker compose build
  docker compose up
```

Accéder à Jenkins : http://localhost:8081

L'application tourne sur http://localhost:8080
    
## API Reference du back

#### Get all items

```http
  GET /api/items
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your API key |

#### Get item

```http
  GET /api/items/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of item to fetch |




## Documentation

[Documentation](https://linktodocumentation)

