# On demande à l'utilisateur son Prénom
def ask_first_name
  puts "Quel est ton nom ?"
  first_name = gets.chomp 
return first_name
end

# On lui dit bonjour (personnalisé en fonction du nom de l'utilisateur -> paramètre de la méthode)
def say_hello (first_name)
  puts "Bonjour #{first_name} !"
end

# On assemble tout ça !
def perform
  say_hello(ask_first_name)
end

perform