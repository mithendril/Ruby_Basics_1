#Fonction signup
require 'io/console'
def signup
	puts"Veuillez définir un mot de passe secret !"
	print">"
	mdp = gets.chomp
	puts"password created successfully  !BRAVO!"
	puts" "
	return mdp
end

#Fonction login
def login(good_mdp)
	puts"Veuillez entrer votre mot de passe secret pour vous connecter!"
	print">"
	mdp = STDIN.noecho(&:gets).chomp
	while mdp != good_mdp
		puts"vos vous etes trompés, vous devez recommencer !"	
		puts" "
		puts"Veuillez entrer votre mot de passe secret!"
		print">"
		mdp = STDIN.noecho(&:gets).chomp	
	end
	puts" "
	
end

#Fonction welcome_screen
def welcome_screen
	
	puts"Bienvenue dans votre zone secrète"
end

#Méthode perform
def perform
	user1 = signup
	login(user1)
	welcome_screen
end
perform