# Demi-pyramide
def half_pyramid 
  # L'utilisateur choisi un nombre d'étage et on stock sa réponse dans la variable stage_number
  puts "Salut bienvenu dans ma super pyramide ! Combien d'étages veux tu ? (entre 1 et 25) "
  print "> "
  stage_number = gets.chomp.to_i

  # On verifie avec une boucle while que le nombre est bien compris entre 1 et 25
  while (stage_number > 25 || stage_number < 1)
    puts "Choisis bien un nombre entre 1 et 25 !"
    print "> "
    stage_number = gets.chomp.to_i
  end

  # Création des variables
  i = 1
  block = "#"
  space = " "

  # Démarage de la boucle
  while i<= stage_number
    time = stage_number - i
    puts "#{space*time}#{block*i}"
    i += 1
  end
end

# Pyramide complète
def full_pyramid 
  # L'utilisateur choisi un nombre d'étage et on stock sa réponse dans la variable stage_number
  puts "Salut bienvenu dans ma super pyramide ! Combien d'étages veux tu ? (entre 1 et 25) "
  print "> "
  stage_number = gets.chomp.to_i

  # On verifie avec une boucle while que le nombre est bien compris entre 1 et 25
  while (stage_number > 25 || stage_number < 1)
    puts "Choisis bien un nombre entre 1 et 25 !"
    print "> "
    stage_number = gets.chomp.to_i
  end

  # Création des variables
  i = 1
  time = stage_number - 1
  block = "#"
  space = " "

  # Démarage de la boucle
  while i<= stage_number
    puts "#{space*time}#{block*(2*i-1)}#{space*time}"
    i += 1
    time -= 1
  end
end

# Pyramide mirroir
def wtf_pyramid 
  # L'utilisateur choisi un nombre d'étage et on stock sa réponse dans la variable stage_number
  puts "Salut bienvenu dans ma super pyramide ! Combien d'étages veux tu ? (choisis un nombre impair) "
  print "> "
  stage_number = gets.chomp.to_i

  # On verifie avec une boucle while que le nombre est bien impair
  while (stage_number%2 == 0)
    puts "Choisis bien un nombre impair !"
    print "> "
    stage_number = gets.chomp.to_i
  end

  # Nombre d'étage de la pyramide du haut
  pyramid_stage = stage_number/2 +1

  # Création des variables
  i = 1
  time = pyramid_stage - 1
  block = "#"
  space = " "

  # Démarage de la boucle (pyramide du haut)
  while i<= pyramid_stage
    puts "#{space*time}#{block*(2*i-1)}#{space*time}"
    i += 1
    time -= 1
  end

  # Réinitialisation des variables
  i = 1
  time = pyramid_stage - 1

  # Démarage de la boucle (pyramide du bas 1 étage de moins)
  while i<= pyramid_stage-1
    puts "#{space*(i)}#{block*(2*time-1)}#{space*(i)}"
    i += 1
    time -= 1
  end
end

def perform
  # half_pyramid
  # full_pyramid
  wtf_pyramid
end

perform