
def signup
	puts "Bonjour, veuillez saisir votre nouveau MDP :"
	print "> "
	return gets.chomp
end


def login (password)
	puts "Bonjour, veuillez saisir votre MDP :"
	print "> "
	str = gets.chomp
	while password != str
		puts "MDP incorrect, reessayez :"
		print "> "
		str = gets.chomp
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
	password = signup
	if login(password)
		welcome_screen
	end	
end

perform