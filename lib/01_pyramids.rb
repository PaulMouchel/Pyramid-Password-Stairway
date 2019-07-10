
def ask_pyramid_size
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	return gets.to_i
end

def half_pyramid
	hauteur = ask_pyramid_size
	if (hauteur >= 1) && (hauteur <= 25)
		puts "Voici la pyramide :"
		1.upto(hauteur) do |i|
			puts " "*(hauteur - i) + "#"*i
		end
	end
end


def full_pyramid
	hauteur = ask_pyramid_size
	if (hauteur >= 1) && (hauteur <= 25)
		puts "Voici la pyramide :"
		1.upto(hauteur) do |i|
			puts " "*(hauteur - i) + "#"*((i-1)*2 + 1)
		end
	end
end

def wtf_pyramid
	hauteur = ask_pyramid_size
	if hauteur%2 == 0
		puts "Saisis un nombre impair stp !"
	else
		if (hauteur >= 1) && (hauteur <= 25)
			puts "Voici la pyramide :"
			1.upto(hauteur) do |i|
				puts " "*(hauteur - i) + "#"*((i-1)*2 + 1)
			end
			(hauteur-1).downto(1) do |i|
				puts " "*(hauteur - i) + "#"*((i-1)*2 + 1)
			end
		end
	end
end


#half_pyramid
#full_pyramid
wtf_pyramid