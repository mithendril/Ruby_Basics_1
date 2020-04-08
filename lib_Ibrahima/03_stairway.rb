# je crée une grille de largeur 11 et hauteur 11 a
def grille_game
	height = 11
	width = 11
	#je remplis la grille avec des valeurs
	grid = Array.new(height) { Array.new(width) }

	#definir la grille comme un escalier
	value = 10
	(0...height).each do |j|
		(0...width).each do |i|
			if i == value
				grid[j][i] = "#"
			end
			grid[j][i] = " "
		end
		value  =value -1
		
	end
puts "#{grid[0][9]}"
=begin
	#ajouter une colonne de nombres de 0 à 10
	numbers = "".ljust(4) #j'insére 4 espaces vides
	
	(0...width).each {|num| numbers << "#{num} " }
	result = "#{numbers}\n\n"

	#ajouter une ligne de nombres et le contenu de la grille
	(0...height).each do |j|
		line = String.new
		(0...width).each do |i|
			line << "#{grid[j][i]} "
		end
		result << "#{(height-1)-j}   #{line}\n"
	end

	#la position du joueur en bas de l'escalier à 10 marches


	#affcihe tout
	puts result
=end
end

def fill_grid
end

def perform
	grille_game	
end
perform