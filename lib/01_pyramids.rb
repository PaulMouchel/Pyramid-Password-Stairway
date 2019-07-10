
def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	hauteur = gets.to_i

	if (hauteur >= 1) && (hauteur <= 25)
		puts "Voici la pyramide :"
		1.upto(hauteur) do |i|
			a = hauteur - i
			a.times do
				print " "
			end
			i.times do
				print "#"
			end
			puts ""
		end
	end
end


def full_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	hauteur = gets.to_i

	if (hauteur >= 1) && (hauteur <= 25)
		puts "Voici la pyramide :"
		1.upto(hauteur) do |i|
			a = hauteur - i
			a.times do
				print " "
			end
			((i-1)*2 + 1).times do
				print "#"
			end
			a.times do
				print " "
			end
			puts ""
		end
	end
end

def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	hauteur = gets.to_i
	if hauteur%2 == 0
		puts "Saisis un nombre impair stp !"
	else
		if (hauteur >= 1) && (hauteur <= 25)
			puts "Voici la pyramide :"
			1.upto(hauteur) do |i|
				a = hauteur - i
				a.times do
					print " "
				end
				((i-1)*2 + 1).times do
					print "#"
				end
				a.times do
					print " "
				end
				puts ""
			end
			(hauteur-1).downto(1) do |i|
				a = hauteur - i
				a.times do
					print " "
				end
				((i-1)*2 + 1).times do
					print "#"
				end
				a.times do
					print " "
				end
				puts ""
			end
		end
	end
end

wtf_pyramid