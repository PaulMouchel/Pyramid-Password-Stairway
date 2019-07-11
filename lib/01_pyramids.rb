
def ask_pyramid_size
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	h = gets.to_i
	while (h<1 || h>25)
		puts "Saisis un entre 1 et 25 stp !"
		print "> "
		h = gets.to_i
	end
	return h
end

def check_parity(size)
	while size.even?
		puts "Saisis un nombre impair sinon c'est moche !"
		size = ask_pyramid_size
	end
	return size
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
	hauteur = check_parity(ask_pyramid_size)
	h = hauteur/2 + 1
	puts "Voici la pyramide :"
	1.upto(h) { |i| puts " "*(h - i) + "#"*((i-1)*2 + 1) }
	(h-1).downto(1) { |i| puts " "*(h - i) + "#"*((i-1)*2 + 1) }
end

def perform
	half_pyramid
	full_pyramid
	wtf_pyramid
end

perform
