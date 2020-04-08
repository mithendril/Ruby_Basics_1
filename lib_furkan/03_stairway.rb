def partie
    joueur = 0
    tour = 0
    p = 0
    tab = []
    while p != 100
      while joueur != 10
        tour += 1
        a = 1 + rand(6)
        if a == 5 || a == 6
            joueur += 1
            puts "Le joueur monte d'une marche et se trouve à la marche #{joueur}"
        elsif a == 1
            joueur -= 1
            puts "Le joueur descend d'une marche et se trouve à la marche #{joueur}"
        else
            puts "Il ne se passe rien et se trouve à la marche #{joueur}"
        end
      end
      puts "Super c'est trop cool"
      puts tour
      tab << tour
      p += 1
      joueur = 0
      tour = 0
    end

    return tab
end

def average_finish_time(tab)
  a = 0
    100.times do |i|
      a = a + tab[i]
    end
    b = a / 100
    puts b
end

def perform
  tab = partie
  average_finish_time(tab)
end

perform