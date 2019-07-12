def throw_dice(auto)
	if !auto
		puts "Appuyez sur entrée pour lancer le dé"
		gets
	end
	return (1 + rand(6))
end

def move(dice, step, auto)
	print "Vous avez fait un #{dice} " if !auto
	if dice >= 5
		puts "Vous montez :)" if !auto
		return 1
	elsif dice <= 1 && step > 0
		puts "vous redesendez :(" if !auto
		return -1
	else
		puts "Rien ne se passe" if !auto
		return 0
	end
end

def play(auto = false)
	step = 0
	turns = 0
	puts "Début du jeu" if !auto
	while step < 10
		puts "Vous êtes sur la marche : #{step}" if !auto
		step += move(throw_dice(auto), step, auto)
		turns += 1
	end
	puts "Fin de partie, vous êtes en haut, Félicitations !!!!" if !auto
	return turns
end

def average_finish_time
	parties = 0
	while parties <= 0
		puts "Combien de parties voulez-vous lancer ?"
		parties = gets.chomp.to_i
	end
	total = 0.0
	parties.times do
		total += play(true)
	end
	average = total / parties
	puts "Le nombre de tours moyen pour arriver en haut sur les #{parties} parties est : #{average} tours"
end

def menu
	puts "Bienvenue dans mon jeu, que veux-tu faire"
	puts "1 : Partie normale"
	puts "2 : Statistiques"
	puts "0 : Quitter"
	return gets.chomp.to_i
end

def perform
	while true
		case menu
		when 1
			play
		when 2
		  	average_finish_time
		when 0
			break
		else
		  	puts "Valeur non valide"
		end
		gets
	end
	
end

perform