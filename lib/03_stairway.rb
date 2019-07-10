def throw_dice
	return (1 + rand(6))
end

def try_to_go_up (dice_value, actual_step)
	print "Vous avez fait un #{dice_value} "
	if dice_value >= 5
		actual_step += 1
		puts "vous arrivez sur la marche #{actual_step}"
	elsif dice_value <= 1 && actual_step >= 1
		actual_step -= 1
		puts "vous redesendez sur la marche #{actual_step}"
	else
		puts "Vous restez sur la marche #{actual_step}"
	end
	return actual_step
end


def play
	actual_step = 0
	puts "Début du jeu"
	puts "Vous être à la marche : #{actual_step}"
	turns = 0
	while actual_step < 10
		actual_step = try_to_go_up(throw_dice, actual_step)
		turns += 1
	end
	puts "Fin de partie, vous êtes en haut en #{turns} tours, Félicitations !!!!"
	return turns
end

def average_finish_time
	stats = []
	1.upto(100) do
		stats << play
	end
	total = 0
	stats.each do |i|
	total += i
	end
	average = total.to_f / stats.size
	puts "Le nombre de tours moyen pour arriver en haut est : #{average} tours"
end

def perform
	#play
	average_finish_time
end

perform