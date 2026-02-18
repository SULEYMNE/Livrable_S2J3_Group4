
# 1. Méthode qui prend un prénom en paramètre
def say_hello(first_name)
  puts "Bonjour, #{first_name} !"
end

# 2. Méthode qui demande le prénom à l'utilisateur
def ask_first_name
  puts "Quel est ton prénom ?"
  print "> "
  first_name = gets.chomp
  return first_name
end

# 3. Méthode perform qui combine tout
def perform
  name = ask_first_name
  say_hello(name)
end

# Lancer le programme
perform
