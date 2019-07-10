
def ask_pyramid_size
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	h = gets.to_i
	while (h%2 == 0 || h<1 || h>25)
		puts "Saisis un nombre impair entre 1 et 25 stp !"
		print "> "
		h = gets.to_i
	end
	return h
end

def half_pyramid
	hauteur = ask_pyramid_size
	puts "Voici la pyramide :"
	1.upto(hauteur) { |i| puts " "*(hauteur - i) + "#"*i }
end

def full_pyramid
	hauteur = ask_pyramid_size
	puts "Voici la pyramide :"
	1.upto(hauteur) { |i| puts " "*(hauteur - i) + "#"*((i-1)*2 + 1) }
end

def wtf_pyramid
	hauteur = ask_pyramid_size
	puts "Voici la pyramide :"
	1.upto(hauteur) { |i| puts " "*(hauteur - i) + "#"*((i-1)*2 + 1) }
	(hauteur-1).downto(1) { |i| puts " "*(hauteur - i) + "#"*((i-1)*2 + 1) }
end

half_pyramid
full_pyramid
wtf_pyramid