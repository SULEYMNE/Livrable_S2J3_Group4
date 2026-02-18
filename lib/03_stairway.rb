# Programme 3 : Stairway

# 1. Jeu vidéo
def play
  position = 0   # Le joueur commence à la marche 0

  # Tant que le joueur n'a pas atteint la 10ème marche
  while position < 10
    dice = rand(1..6)   # On lance un dé (nombre aléatoire entre 1 et 6)

    # On regarde le résultat du dé avec "case"
    case dice
    when 5, 6
      position += 1     # Si le dé vaut 5 ou 6 → avancer d'une marche
      puts "Tu avances d'une marche (#{position}/10)"
    when 1
      position -= 1 if position > 0   # Si le dé vaut 1 → descendre d'une marche (mais pas en dessous de 0)
      puts "Tu descends d'une marche (#{position}/10)"
    else
      puts "Rien ne se passe (#{position}/10)"   # Si le dé vaut 2, 3 ou 4 → rester sur place
    end
  end

  # Quand la boucle se termine, le joueur est à la 10ème marche
  puts "Bravo ! Tu es arrivé à la 10ème marche 🎉"
end

# 2. Statistiques
def average_finish_time
  total_turns = 0       # Compteur du nombre total de tours
  simulations = 20     # On simule 100 parties

  simulations.times do   # Répéter 100 fois
    position = 0
    turns = 0

    # Une partie complète
    while position < 10
      dice = rand(1..6)
      case dice
      when 5, 6
        position += 1
      when 1
        position -= 1 if position > 0
      end
      turns += 1   # On compte le nombre de tours
    end

    total_turns += turns   # On ajoute le nombre de tours de cette partie
  end

  # Calcul de la moyenne
  average = total_turns / simulations.to_f
  puts "Nombre moyen de tours pour atteindre la 10ème marche : #{average.round(2)}"
end

# Méthode perform pour lancer le jeu et les statistiques
def perform
  play
  average_finish_time
end

# Lancer le programme
perform
