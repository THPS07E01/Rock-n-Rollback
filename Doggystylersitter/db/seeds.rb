puts `clear`
i = 0
30.times do |pyra|
	i += 1
	puts "#" * i
	sleep(0.05)
end
puts "Tu as demandé une pyramide de 30 étages c'est ça?"
sleep(2)
puts "Oups trompé d'exo !"
sleep(2)


puts `clear`
puts "                                          ##############################################################################"
puts "                                          ######## ~ L'ancienne base de donnée va être supprimée, KEEP CALM ! ~ ########"
puts ""
puts "                                          ------------------------------------------------------------------------------"


Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all
DogGroup.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'dogsitters'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'dogs'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'strolls'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cities'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'dog_groups'")

puts `clear`


puts "                                          ##############################################################################"
puts "                                          ############## ~ Construction de la nouvelle base de donnée ! ~ ##############"
puts ""
puts "                                          ------------------------------------------------------------------------------"

puts ""
puts ""

i = 0
# SEED City
10.times do |city|
  i += 1
  ct = City.create!(name: Faker::OnePiece.location)
#  puts "City : #{ct.name}"
  print "."
	sleep(0.05)
  print "\u{1F490}"
end
puts ""
puts ""
sleep(1)
puts "De jolies fleurs pour les correcteurs \u{1F493} "
sleep(2)

puts `clear`
puts "                                          ##############################################################################"
puts "                                          ############## ~ Construction de la nouvelle base de donnée ! ~ ##############"
puts ""
puts "                                          ------------------------------------------------------------------------------"
puts ""
puts ""
joke = ["Arrêtez de vous battez.", "Je suis quelqu'un que j'aime beaucoup rigoler.", "Je me sens énormément très bien avec ces joueurs.", "On dirait que c'était comme si y avait rien changé hier.", "Le touquet, c'est toujours une ville que j'aime bien venir.", "J'espère que la routourne va vite tourner.", "Je pense qu'on espère qu'on va gagner.", "On sait qu'on va tomber face à une équipe qui va être regroupé je pense qui va jouer tous derrière.", "Je suis passé par d'autres chemins aussi qu'à pas été facile.", "J'ai revenu en coupe du monde j'avais beaucoup d'envie.", "J'ai qu'ça qu'à dire.", "J'ai couru jusqu'à ce que je pouvais.", "On a dur, franchement on a dur.", "Maintenant, faudra faire avec sans Zizou.", "Chaque année je vieillis d'un an.", "Y'en a z'ont eu peur, y en a y z'ont rigolé."]
puts "Pour te faire patienter voici une sélection des meilleurs phrases de Ribery \u{1F383}"
puts ""

# SEED Dogsitter
20.times do |dogsitter|
  dgsttr = Dogsitter.create!(name: Faker::RickAndMorty.character, city_id: City.all.sample.id)
#  puts "Dogsitter #{dgsttr.name}"
  if dogsitter %5 == 0
    puts joke.sample
    sleep(0.5)
  else
    sleep(0.5)
  end
end

puts `clear`
puts "                                          ##############################################################################"
puts "                                          ############## ~ Construction de la nouvelle base de donnée ! ~ ##############"
puts ""
puts "                                          ------------------------------------------------------------------------------"
puts ""
puts ""

puts "Quel saison tu préfères? 1: Printemps 2: été 3: Automne 4: Hiver"
sleep(4)
puts "Dommage ça sera moi qui choisi l'affichage !"
sleep(2)
puts " "

# SEED Stroll
80.times do |stroll|
  strll = Stroll.create!(date: Faker::Date.forward(253), dogsitter_id: Dogsitter.all.sample.id)
#  puts "Stroll : DATE : #{strll.date}"
print ' '
print "\u{1F363}"
end

# SEED Dog Group
20.times do |dog_group|
  dg_grp = DogGroup.create!(stroll_id: Stroll.all.sample.id)
#  puts "doggroup #{dg_grp.stroll_id}"
end

# SEED Dog
50.times do |dog|
  dg = Dog.create!(name: Faker::Pokemon.name, master: Faker::VForVendetta.character, city_id: City.all.sample.id, dog_group_id: DogGroup.all.sample.id)
#  puts "Dog : #{dg.name} || Master : #{dg.master}"
end






puts `clear`
puts "                                          ##############################################################################"
puts "                                          ######################## ~ Merci pour ta patience ! ~ ########################"
puts "                                                                           Des bisous"
puts "                                          ------------------------------------------------------------------------------"
sleep(2)

puts `clear`
puts "                                                     D'OH !"
puts "                                                            -Homer Simpson"


puts ""
puts ""
puts ""
puts "                                                                 .:----:-`              "  
sleep(0.05)                              
puts "                                                              .-+/-::/+:-s-:-           "   
sleep(0.05)                             
puts "                                                           .::-.------:+/s- ./          "    
sleep(0.05)                            
puts "                                                          /-.----------:/y//-o          "   
sleep(0.05)                             
puts "                                                         +.-------------://:+s          "    
sleep(0.05)                            
puts "                                                        /---------------:////+.         "   
sleep(0.05)                             
puts "                                                      `-/.--------------://////          "    
sleep(0.05)                           
puts "                                                      o-----------------:///:+.          "  
sleep(0.05)                             
puts "                                                     -+:---:+///:--::/-:////:o           "    
sleep(0.05)                           
puts "                                                    /:::::::y/:::::::/s:///:+-           "   
sleep(0.05)                            
puts "                                                    +  .o `:/````:+./+y/+s/:o            "   
sleep(0.05)                            
puts "                                                    /:::::-/+    `. ..s+sy:ss`           "    
sleep(0.05)                           
puts "                                                     s------:/-`  `.:++s/ys:+            "     
sleep(0.05)                          
puts "                                                     +o////////////:////+os`/            "      
sleep(0.05)                         
puts "                                   ..`              /:::////:://++/--///os+o             "      
sleep(0.05)                         
puts "                                ./yosy/            /:------------:os++///o/+             "      
sleep(0.05)                         
puts "                               /syydyhy+-         .+---------------:+oo+o+-`             "         
sleep(0.05)                      
puts "                            `.:yyhyysyhsy`        +:----------::----:/s/+-               "         
sleep(0.05)                      
puts "                            +:-:yhhyoshhho.       `-////+//+++oo/---//s/o.                "        
sleep(0.05)                      
puts "                            +-/yhyhyyyhdss-            `o+/::-----:/so//+.                 "           
sleep(0.05)                  
puts "                            -+:///yyhyysyy.              `y+/:::://oo///+-                 "             
sleep(0.05)                
puts "                            .+::::/hysso++`           `..-o//++o+++//////s:`               "             
sleep(0.05)                
puts "                            /:--:/y//:::o`           `/+.+:-://::::::::::-`/               "            
sleep(0.05)                 
puts "                            o-:+/+s/o--:o         ``.+-.+o-/:`/     .......+                "            
sleep(0.05)                
puts "                            -/------o-:/+   `.---...s/+``+:.  --    `----:/s`                "        
sleep(0.05)                   
puts "                             ./--------:/+`/oo.    `:+         /:::::::/+/:/--:-`            "        
sleep(0.05)                   
puts "                              .+--------:/+/::+/  `-+            `...-/-  ......::`           "       
sleep(0.05)                   
puts "                               o---------:----:/+.-+              ...o`    .......:-          "       
sleep(0.05)                   
puts "                               ::--------------:o:+`              `.::      .......--         "    
sleep(0.05)                      
puts "                                o-------------://h-                .o       `......./`        "       
sleep(0.05)                   
puts "                                `+-----------:///o                 .+`   `-::/++++/o+/        "    
sleep(0.05)                      
puts "                                  //-----::/:/++:`                 .:::o//---://////+         "    
sleep(0.05)                      
puts "                                    -::::::-:+-                   `..:/s------:////:o         "     
sleep(0.05)                     
puts "                                           -:                      `...+:-----:////:s         "                          

