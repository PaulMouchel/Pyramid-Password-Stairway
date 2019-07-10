
def signup
	puts "Bonjour, veuillez saisir votre nouveau MDP :"
	print "> "
	return gets.chomp
end

def login (password)
	essais = 3
	puts "Bonjour, veuillez saisir votre MDP :"
	print "> "
	str = gets.chomp
	while password != str
		if essais > 0
			puts "MDP incorrect, reessayez : (reste #{essais} essais)"
			print "> "
			str = gets.chomp
			essais -= 1
		else
			puts "Accès refusé"
			return false
		end
	end
	return true
end

def welcome_screen
	puts "Salut, bienvenue dans la zone secrète"
	puts "#################################################"
	puts "#                                               #"
	puts "# Tu peux trouver ici des infos confidentielles #"
	puts "#                                               #"
	puts "#################################################"
end

def perform
	if login(signup)
		welcome_screen
	end	
end

perform