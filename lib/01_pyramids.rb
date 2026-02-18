# Programme 1 : Pyramids

# 1. Moitié de pyramide
def half_pyramid
  # On demande à l'utilisateur combien d'étages il veut
  puts "Salut, bienvenue dans ma demi-pyramide ! Combien d'étages veux-tu ?"
  print "> "
  n = gets.chomp.to_i   # gets = lire au clavier, chomp = enlever le retour à la ligne, to_i = convertir en nombre

  # La boucle 1.upto(n) répète le code en partant de 1 jusqu'à n
  1.upto(n) do |i|
    puts "#" * i        # Affiche i fois le caractère "#"
  end
end

# 2. Pyramide complète
def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  n = gets.chomp.to_i

  # On construit la pyramide ligne par ligne
  1.upto(n) do |i|
    spaces = " " * (n - i)       # Espaces à gauche pour centrer la pyramide
    bricks = "#" * (2 * i - 1)   # Nombre de "#" augmente de 2 à chaque étage
    puts spaces + bricks         # On affiche la ligne complète
  end
end

# 3. Pyramide en losange
def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Choisis un nombre impair :"
  print "> "
  n = gets.chomp.to_i

  # Vérification : si l'utilisateur tape un nombre pair, on arrête
  if n.even?
    puts "Erreur : il faut un nombre impair !"
    return
  end

  mid = (n / 2) + 1   # Milieu de la pyramide (nombre d'étages du haut)

  # Partie haute (comme une pyramide normale)
  1.upto(mid) do |i|
    spaces = " " * (mid - i)
    bricks = "#" * (2 * i - 1)
    puts spaces + bricks
  end

  # Partie basse (on redescend en miroir)
  (mid - 1).downto(1) do |i|
    spaces = " " * (mid - i)
    bricks = "#" * (2 * i - 1)
    puts spaces + bricks
  end
end

# Méthode perform pour tester toutes les pyramides
def perform
  half_pyramid
  full_pyramid
  wtf_pyramid
end

# Lancer le programme
perform
