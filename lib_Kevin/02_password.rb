require 'io/console' # Permet d'utiliser la fonction .noecho

# On demande à l'utilisateur de choisir un mot de passe
def sign_up
  puts "Choisir un mot de passe : "
  user_password = STDIN.noecho(&:gets).chomp # La fonction no echo permet de cacher la saisie du mot de passe 
  return user_password
end

# On demande à l'utilisateur son mot de passe et on verifie qu'il correspond bien au mot de passe précédent (si ce n'est pas le cas on recommence -> boucle while)
def log (user_password)
  puts "Quel est votre mot de passe (secret) ?"
  print ">"
  log_password = gets.chomp
  while log_password != user_password
    puts "Mauvais mot de passe ! "
    puts ""
    puts "Quel est votre mot de passe (secret) ?"
    print ">"
    log_password = gets.chomp
    end
end

# On affiche les infos TOP SECRET 
def welcome_screen
  puts ""
  puts "Bienvenu sur votre espace TOP SECRET !"
  puts "Info : Aujourd'hui il fait beau (a ne pas divulguer)"           
end

# On assemble tout ça !
def perform
  user_password = sign_up
  log(user_password)
  welcome_screen 
end

perform