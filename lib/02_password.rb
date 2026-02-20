# Programme 2 : Password

# 1. Signup : définir un mot de passe
def signup
  puts "Définis ton mot de passe :"
  print "> "
  password = gets.chomp
  return password
end

# 2. Login : vérifier le mot de passe
def login(password)
  input = ""
  while input != password
    puts "Entre ton mot de passe :"
    print "> "
    input = gets.chomp
    puts "Mauvais mot de passe, réessaie !" if input != password    #une boucle continue,jusqu'a l'entre du vrai mot de passe
  end
end

# 3. Welcome screen
def welcome_screen
  puts "Bienvenue dans la zone secrète !"
  puts "Voici des infos ultra confidentielles..."
end

# 4. Perform
def perform
  password = signup
  login(password)
  welcome_screen
end

# Lancer le programme
perform
