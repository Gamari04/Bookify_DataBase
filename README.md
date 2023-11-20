# Conception de la Base de Données et Documentation SQL/UML pour Bookify

# Contexte du Projet

Nous cherchons à créer un système de gestion de réservation de salles pour l'entreprise Bookify. Ce système devra permettre aux employés de réserver des salles de réunion en fonction de la disponibilité et des besoins spécifiques.

Le schéma de base de données suivant est conçu pour répondre aux besoins de Bookify. Il doit gérer les informations sur les salles de réunion, les employés, les réservations, les équipements, et les horaires. Les tables incluent des clés primaires, des clés étrangères, et des informations essentielles pour garantir une gestion efficace des données.

## Documentation SQL/UML

### Diagrammes UML

#### Diagramme de Classes
Le diagramme de classes représente les principales entités et leurs relations dans le système Bookify.


class Salles {
  + Id: int
  + Nom: string
  + Capacité: int
  + Équipements: string (Liste séparée ou liée à la table Équipements)
}

class Employés {
  + Id: int
  + Nom: string
  + Email: string
  + Département: string
  + Poste: string
}

class Réservations {
  + Id: int
  + Salle_Id: int (Clé étrangère vers la table Salles)
  + Employé_Id: int (Clé étrangère vers la table Employés)
  + Date_Début: datetime
  + Date_Fin: datetime
}

class Équipements {
  + Id: int
  + Nom: string
}
## Trello
https://trello.com/b/b9jGq3eR/brief5-squad2