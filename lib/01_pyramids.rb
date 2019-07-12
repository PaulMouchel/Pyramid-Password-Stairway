
def ask_floors
	print "Combien d'étages veux-tu ?"
	print "> "
	floors = gets.chomp.to_i
	while ((floors < 1) || (floors > 25))
		puts "Saisis un nombre entre 1 et 25 !"
		print "> "
		floors = gets.chomp.to_i
	end
	return floors
end

def check_parity(floors)
	while floors.even?
		puts "Saisis un nombre impair !!"
		floors = ask_floors
	end
	return floors
end

def half_pyramid(floors)
	puts "Voici la pyramide :"
	1.upto(floors) { |i| puts " "*(floors - i) + "#"*i}
end

def full_pyramid (floors)
	puts "Voici la pyramide :"
	1.upto(floors) { |i| puts " "*(floors - i) + "#"*(i*2-1)}
end

def wtf_pyramid (floors)
	floors = (check_parity(floors)) / 2 + 1
	full_pyramid(floors)
	(floors-1).downto(1) { |i| puts " "*(floors - i) + "#"*(i*2-1)}
end

def menu
	puts "Quelle pyramide veux-tu ?"
	puts "1 : Demi pyramide"
	puts "2 : Pyramide"
	puts "3 : WTF pyramide"
	puts "0 : Quitter"
	return gets.chomp.to_i
end

def perform
	puts "Salut, bienvenue dans ma super pyramide !"
	while true
		case menu
		when 1
			half_pyramid(ask_floors)
		when 2
		  	full_pyramid(ask_floors)
		when 3
		  	wtf_pyramid(ask_floors)
		when 0
			break
		else
		  	puts "Valeur non valide"
		end
		gets
	end
end

perform