def signup
  puts "Défini un MDP, GROS !"
  mdp = gets.chomp
  return mdp
end

def login(user)
  puts "Peux-tu me donner ton MDP, WESH ?"
  mdp = gets.chomp
  while mdp != user
    puts "ERROR, il faut réécrir votre msg"
    mdp = gets.chomp
  end
end

def welcome_screen
    puts "Bienvenido My Friend"
    puts "Savais-tu : Mithendril s'appelle Kevin"
end

def perform
  user = signup
  login(user)
  welcome_screen
end

perform