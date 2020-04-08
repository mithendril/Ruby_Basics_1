#Fonction half_pyramide
def half_pyramid(nb_etage)
	
	#j'initialise une variable i qui représente le nombre de fois que j'aurais # sur une ligne d'affiche
	i=1 
	#j'initialise le nombre d'étage que souhaite l'utlisateur
	nb_etage.times do    
	#j'affiche les étages  
		puts ("#"*i).rjust(nb_etage)
	#j'incrémente la variable i
		i = i+1	
	end
end


#Fonction full_pyramide
def full_pyramid (nb_etage)

  nb_etage.times {|n|
    print ' ' * (nb_etage - n)
    puts '#' * (2 * n + 1)
  }
end

#Fonction wtf_pyramide
def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?(choisis un nombre impair)"
	print "> "
	nb_etage = gets.chomp.to_i

	#verification si l'utlisateur a bien entrer un nombre impair
	while (nb_etage.even?)
		puts "Veuillez entrer un nombre impair SVP"
		print "> "
		nb_etage = gets.chomp.to_i	
	end	

	#je construis la pyramide à moitié 
	((nb_etage/2)+1).times {|n|
    print ' ' * (nb_etage - n)
    puts '#' * (2 * n + 1)
    }

    #je construis le reste de la pyramide
    k= (nb_etage/2) -1
    k.downto(0) {|i|
    	print ' ' * (nb_etage - i)
    	puts ('#' * (2*i +1))	
	}
end


#Fonction wtf_pyramide_bonus
def wtf_pyramid_bonus
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?(choisis un nombre impair)"
	print "> "
	nb_etage = gets.chomp.to_i

	#Sortir de la fonction si l'utlisateur saisit un nombre pair
	if nb_etage.even? 
		return 0	
	end	

	#je construis la pyramide à moitié 
	((nb_etage/2)+1).times {|n|
    print ' ' * (nb_etage - n)
    puts '#' * (2 * n + 1)
    }

    #je construis le reste de la pyramide
    k= (nb_etage/2) -1
    k.downto(0) {|i|
    	print ' ' * (nb_etage - i)
    	puts ('#' * (2*i +1))	
	}
end



def perform
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? "
	print "> "
	etage = gets.chomp.to_i

	#verification si l'utlisateur a bien entrer un nombre entre 1 et 25
	while ((etage <1) || (etage >=25))
		puts "Veuillez entrer un nombre entre 1 et 25 SVP"
		print "> "
		etage = gets.chomp.to_i	
	end

	#appel des fonctions
	half_pyramid(etage)
	full_pyramid(etage)

	#N.B: si tu veux tester la fonction wtf_pyramid ou wtf_pyramid_bonus;
	#il faut mettre en commentaire tout le perform sauf la fonction en question : MERCI 	;)

	wtf_pyramid #appel de la fonction sans argument
	wtf_pyramid_bonus #appel de la fonction sans argument
end
perform


