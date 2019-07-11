THP project
11/07/2019

Paul MOUCHEL
0651619964

Le dossier /lib contien 4 fichier .rb :

----------------------------------------------------------------------------------------
00_hello.rb
La methode "ask_first_name" demande à l'utilisateur de saisir son nom et retourne le résultat de la saisie
La methode "say_hello (first_name)" prend le nom de l'utilisateur en paramètre et affiche Bonjour utilisateur (utilisateur est le nom passé en parametre)
Dans la methode perform, on appelle "say_hello(ask_first_name)", ce qui va donc appeller la methode ask_first_name puis appeller la methode say_hello avec en parametre le retour de la methode ask_first_name.

----------------------------------------------------------------------------------------
01_pyramids.rb
Dans ce programme , on doit faire trois pyramides différentes avec trois methodes différentes :
On a tout d'abord une première methode commune aux trois pyramides "ask_pyramid_size" qui demande à l'utilisateur le nombre d'étages de la pyramide, controle que le nombre saisi est bien compris entre 1 et 25 puis retourne le nombre d'étages

half_pyramid
Dans cette piramide, on demande la hauteur avec ask_pyramid_size
puis on l'affiche avec la ligne suivante :
1.upto(hauteur) { |i| puts " "*(hauteur - i) + "#"*i } qui boucle sur chaque ligne et affiche le bon nombre d'aspaces et de "#" en fonction de l'étage

full_pyramid
Dans cette piramide, on demande la hauteur avec ask_pyramid_size
puis on l'affiche avec la ligne suivante :
1.upto(hauteur) { |i| puts " "*(hauteur - i) + "#"*((i-1)*2 + 1) } qui boucle sur chaque ligne et affiche le bon nombre d'aspaces et de "#" en fonction de l'étage

wtf_pyramid
Dans cette piramide, on demande la hauteur avec ask_pyramid_size
Puis on controle que la valeur saisie est bien impaire avec check_parity() sinon, on redemande de saisir la hauteur
On fait ensuite une piramide à l'endroit de la moitié de la hauteur arrondi au suppérieur puis une pyramide à l'envers de la moitié de la hauteur arrondi à l'inférieur avec les formules :
1.upto(h) { |i| puts " "*(h - i) + "#"*((i-1)*2 + 1) }
(h-1).downto(1) { |i| puts " "*(h - i) + "#"*((i-1)*2 + 1) }

----------------------------------------------------------------------------------------
02_password.rb
Ici on a une methode signup qui retourne simplement une chaine de caractère saisie par l'utilisateur
La methode login prend le mot de passe initialisé avec la methode signup en paramètre et le compare avec une nouvelle saisie de l'utilisateur
On donne trois essais à l'utilisateur pour trouver le bon mot de passe, si il le trouve la fonction remonte true, sinon false
welcome_screen affiche les données secretes, on conditionne son appel par le retour de la fonction login

----------------------------------------------------------------------------------------
03_stairway.rb
throw_dice retourne un chiffre aleatoire entre 1 et 6
try_to_go_up controle la valeur du dé et en fonction du résultat change la position sur les marches
play lance une partie
average_finish_time lance 100 parties et fait les statistiques de ces parties