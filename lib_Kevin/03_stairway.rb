# Création de la matrice (toile de fond)
def playground_grid
  # Gènere une matrice 12x12 vide
  grid = Array.new(12){Array.new(12)}

  # Remplissage de la matrice avec des espaces vide -> " "
  (0..11).each do |i|
    (0..11).each do |j|
      grid[i][j] = " " 
    end      
  end
  return grid
end

# Création du sol
def init_ground (grid)
  (0..10).each do |i|
    grid[i][11] = "="
  end 
end

# Création de l'escalier
def init_stair (grid)
  value = 10 # index max du [j]

  # On remplit la matrice de "#" si on est en dessous de la diagonale [i][i]. Sinon on place des espaces vides " ".
  (1..10).each do |i|
    (1..10).each do |j|
      if j>=value
        grid[i][j] = "#" 
      end
    end
    value = value -1
  end
end

#Création du personnage 
def init_player (grid)
  grid[0][10] = "8"
end

# On affiche la matrice
def print_playground (grid)
  (0..11).each do |j|
    (0..11).each do |i|
      print grid[i][j] + " "
    end
    puts ""
  end
end

# Lancé de dés à 6 faces
def rand_nb_6 
  rand_numb = 1 + rand(6)
  puts "Vous avez fait un #{rand_numb}"
  return rand_numb
end

# Lancé de dés à 6 faces (sans interraction avec le joueur)
def rand_nb_6_no_player
  rand_numb = 1 + rand(6)
  return rand_numb
end


# Régle de déplacement du personnage
def move_status (number,stage)
  case number
    when 6
      stage = stage + 1
      puts "Bien joué ! Tu avances d'une marche. Tu es sur la marche n°#{stage}"
    when 5
      stage = stage + 1
      puts "Bien joué ! Tu avances d'une marche. Tu es sur la marche n°#{stage}"
    when 4
      puts "Rien ne se passe tu restes sur la marche. Tu es sur la marche n°#{stage}"
    when 3
      puts "Rien ne se passe tu restes sur la marche. Tu es sur la marche n°#{stage}"
    when 2
      puts "Rien ne se passe tu restes sur la marche. Tu es sur la marche n°#{stage}"
    else
      if stage != 0 
        stage = stage - 1
      end
      puts "Pas de chance ! Tu descends d'une marche. Tu es sur la marche n°#{stage}"
  end
  return stage
end

# Régle de déplacement du personnage (sans interraction avec le joueur)
def move_status_no_player (number,stage)
  case number
    when 6
      stage = stage + 1
    when 5
      stage = stage + 1
    when 4
    when 3
    when 2
    else
      if stage != 0 
        stage = stage - 1
      end
  end
  return stage
end

# Déplacement du personnage
def move_player (grid,stage)
  grid[stage][10-stage] = "8" # Déplace d'un rang sur l'anti-diagonale
  if stage != 0 
    grid[stage-1][10-stage+1] = " " # Effface le personnage précédent
  end
  grid[stage+1][10-1*stage-1] = " " # Effface le personnage suivant
end   

# Vérification de la condition de victoire
def check_victory (stage)
  if stage == 10
    puts "Bravo tu as gagné !"
    victory = true
  else
    victory = false
  end
return victory
end

# Vérification de la condition de victoire (sans interraction avec le joueur)
def check_victory_no_player (stage)
  if stage == 10
    victory = true
  else
    victory = false
  end
return victory
end

# Inittialisation de la carte la toile de fond du jeu
def init_playground(grid)
  init_ground(grid)
  init_stair(grid)
  init_player(grid)
end

# Moteur du jeu 
def play_engin (stage)
  puts "Appuyer sur entrer pour lancer le dés"
  choise = gets.chomp
  alea = rand_nb_6
  stage = move_status(alea,stage)
  return stage
end

# Moteur de jeu sans interaction avec le joueur
def play_engin_no_player (stage)
  alea = rand_nb_6_no_player
  stage = move_status_no_player(alea,stage)
  return stage
end


# Démarage du jeu
def lunch_game
  # Initialisation du plateau
  grid = playground_grid
  init_playground(grid)
  print_playground(grid)

  # Initialisation de l'étage et de la condition de victoire
  stage = 0
  victory = false

  # Démarrage du jeu !
  while (victory != true)
    # On lance le moteur de jeu
    stage = play_engin(stage)
    # On bouge le joueur sur la grille
    move_player(grid,stage)
    # On affiche la grille
    print_playground(grid)
    # On vérifie si le joueur à gagné ou non 
    victory = check_victory(stage)
  end
end

# Statistique sur le nombre de tours moyen pour arriver à la 10ème marche (on peut faire mieux en enlevant les phrases destinées au joueur...)
def average_finish_time (number)
  sum = 0
  number.times do
    stage = 0
    victory = false
    count = 0
    # On fait fonctionner le jeu sans interraction du joueur et on incrémente le conteur à chaque tour de jeu
    while (victory != true)
     stage = play_engin_no_player(stage)
     victory = check_victory_no_player(stage)
     count += 1
    end
    # Une fois fini on injecte count (nombre de tour pour finir la partie) dans sum pour pouvoir faire une moyenne sur "number" parties
    sum += count
  end
  # On fait la moyenne sur "number" parties
  tours_moyen = sum/number
  # On affiche cette moyenne
  puts "Il faut en moyenne #{tours_moyen} tours pour gagner. (Moyenne faite sur #{number} d'essais)"
end



def perform
  # lunch_game
  average_finish_time(1000000)
end

perform