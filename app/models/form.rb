class Form < ApplicationRecord
  GENRES = ['Retard', 'Annulation', 'Surbooking']
  RETARD_DELAYS = ['Supérieur ou égal à 3h', 'Inférieur à 3h']
  RETARD_REASONS = ['Grève', 'Conditions metéorologiques', 'Autre']
  SURBOOKING_DELAYS = ["Avant d'arriver à l'aéroport", "À l'aéroport"]
  SURBOOKING_REASONS = ['De votre gré', 'Contre votre gré']
  ANNULATION_DELAYS = ['Plus de 14 jours', 'Entre 14 jours et 7 jours', 'Moins de 7 jours', 'Jamais']
  ANNULATION_REASONS = ['2h plus tôt avant le départ prévu',
                        '1h plus tôt avant le départ prévu',
                        "Jusqu'à 2h plus tard après l'arrivée prévue",
                        "Entre 2h et 4h plus tard après l'arrivée prévue",
                        'Autre / Pas de reacheminement']
  belongs_to :user
end
