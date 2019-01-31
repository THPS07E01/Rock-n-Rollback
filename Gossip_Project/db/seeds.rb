require 'faker'

puts `clear`
puts "YOUR DATABASE IS GOING TO BE DELETED AND OVERWRITTEN"
sleep(2)
puts "DO YOU WANT TO CONTINUE ? #{"Y/N".blink}"
sleep(3)
puts "IT'S TOO LATE, DELETION IN PROGRESS"

City.destroy_all
User.destroy_all
Tag.destroy_all
Gossip.destroy_all
Comment.destroy_all
Subcomment.destroy_all
Like.destroy_all
PrivateMessage.destroy_all
GossipTag.destroy_all
MultiRecipient.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cities'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'users'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'tags'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'gossips'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'comments'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'subcomments'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'likes'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'private_messages'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'gossip_tags'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'multi_recipients'")

puts `clear`
puts "DELETION IS NOW COMPLETE"
sleep(3)
puts `clear`
puts "BECAREFUL YOUR DATABASE WILL NOW BE OVERWRITTEN"
sleep(3)

cit = 0
usr = 0
ta = 0
gos = 0
com = 0
scom = 0
li = 0
pm = 0

10.times do
	city = City.create!(name: Faker::Pokemon.location, zip_code: Faker::Internet.ip_v4_address)
	puts "#{Faker::File.file_name('user/documents')} - #{rand(99999999)} Ko - OVERWRITTEN"
	cit += 1
end

10.times do
	user = User.create!(first_name: Faker::Pokemon.name, last_name: Faker::LeagueOfLegends.rank, email: Faker::Internet.email, age: rand(18..120), description: Faker::HeyArnold.quote, city_id: City.all.sample.id)
	puts "#{Faker::File.file_name('user/documents')} - #{rand(99999999)} Ko - OVERWRITTEN"
	usr += 1
end

10.times do
	tag = Tag.create!(title: Faker::Pokemon.move)
	puts "#{Faker::File.file_name('user/documents')} - #{rand(99999999)} Ko - OVERWRITTEN"
	ta += 1
end

10.times do
	gossip = Gossip.create!(title: Faker::Dessert.variety, content: Faker::RickAndMorty.quote, user_id: User.all.sample.id)
	puts "#{Faker::File.file_name('user/documents')} - #{rand(99999999)} Ko - OVERWRITTEN"
	gos += 1
end

10.times do
	comment = Comment.create!(user_id: User.all.sample.id, gossip_id: Gossip.all.sample.id, body: Faker::Lovecraft.paragraph)
	puts "#{Faker::File.file_name('user/documents')} - #{rand(99999999)} Ko - OVERWRITTEN"
	com += 1
end

10.times do
	subcomment = Subcomment.create!(user_id: User.all.sample.id, comment_id: Comment.all.sample.id, body: Faker::ChuckNorris.fact)
	puts "#{Faker::File.file_name('user/documents')} - #{rand(99999999)} Ko - OVERWRITTEN"
	scom += 1
end

10.times do
	like = Like.create!(user_id: User.all.sample.id, gossip_id: Gossip.all.sample.id, comment_id: Comment.all.sample.id, subcomment_id: Subcomment.all.sample.id)
	puts "#{Faker::File.file_name('user/documents')} - #{rand(99999999)} Ko - OVERWRITTEN"
	li += 1
end

10.times do
	private_message = PrivateMessage.create!(sender_id: User.all.sample.id, body: Faker::NewGirl.quote)
	puts "#{Faker::File.file_name('user/documents')} - #{rand(99999999)} Ko - OVERWRITTEN"
	pm += 1
end

10.times do
	multi_recipient = MultiRecipient.create!(private_message_id: PrivateMessage.all.sample.id, recipient_id: User.all.sample.id)
	puts "#{Faker::File.file_name('user/documents')} - #{rand(99999999)} Ko - OVERWRITTEN"
end

10.times do
	gossiptag = GossipTag.create!(gossip_id: User.all.sample.id, tag_id: Gossip.all.sample.id)
	puts "#{Faker::File.file_name('user/documents')} - #{rand(99999999)} Ko - OVERWRITTEN"
end

puts `clear`
puts "EVERYTHING HAS BEEN OVERWRITTEN, CONGRATULATIONS !"
sleep(3)
puts `clear`

puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNdmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNMMMMMMMMNdddmMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmddNMMMMMMNddmmMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmddmMMMMMMmdmmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmdmNMMMMNmmmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmmmNMMNmmmNMMMMMMNmmmdmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmmNMMmmmNMMMNNmmdddmmmMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmmNNmmNNNmmmmmNNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNmmdddddddmmmmNNNNNMMMMdMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNMMMMMMMNmdhso//:--------::://+oyhmNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNdmNdhyshmds+/--....................---:/+ydNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNo-://///:-..........................--------/sdNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNdo:-:++:-.............................----------:+ymMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNho/:/+/:...............................--------------:omMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMNh+/:/+o/--..............................----------------/ohNMMmdydMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMNh+/::/o+////::::::-....................---::-------------:+--:++:--oMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMmo/:::/o++-`      `.::...............--://///::///:----:/+++:--------oMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMd+:::::o++:     ``    -/........------//-``      `.://--/o:-----------:dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMd+:::::/o-//`    ``    `o-------------+:`    `       `:+--/o/-----------:yNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMm+::::::++--//.`       `/+------------:+`     .`       `o:-:/s/-----------:omMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMNs/::::::o+---:///:----/++/////:--------+:`            `:o::::+s:------------/hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMh//::///:os-------::///++:....-///:------//:-````````.:++::::::s/-------------:smMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMNo/////////s/--://::///:.```......-/++//:::::////////+/:::::::::s+---------------/dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMm+/////////+s::+.`    `-` `....--....--::::///+++/::::::::::::::oo----------------:hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMm+//////////oyo.      `-  `..://-...```````````.-o/:::::::::::::+o-----------------:yNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMNo///////+++/-`           `..-..```````````````.:s/:::::::::::::+s-------------------oNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMd+//+++/:.`             ````````````````````../o/::::::::::::::+o--------------------+NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMhoo/-`                 ```````````````````..+o::::::::::::::::oo---------------------yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMdo-`                   ```````````````````..:s::::::::::::::/+oy+---------------------/dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMd/`                     ```````````````````...o/::::::::::/+oo+/:s/---------------------:sMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMy`                      ````````````````````..-s/:://+ooo+o+/::::/s/::-------------------:oNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMd-                      `````````````````````..-yooo++//::::::::::/s::::------------------:+NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMd-                    ```````````````````````..-y/::::::::::::::::oo:::::::--------------::+NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMN+``                ````````````````````````...-y/::::::::::::::::oo:::::::::::::--------::sMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMm/..```        ```````````````````````````....+o:::::::::::::::::+s::::::::::::::::--::::/hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMNy:...``````````````````````````````````...-+o/::::::::::::::::::y/:::::::::::::::::::::yNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMmy/-....```````````````````````````....-+o+::::::::::::::::::::os/::::::::::::::::::/yNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMNmh+:-.......``````````````......-:///::::::::::::::::::::::::+s+/::::::::::::::/odMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMNmhyo/:---.........-----::////:-....-----::::::::::::::::::/+o+/::::::::://ohNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNs--::////////////::::---................---::::::::::::::://:::::::/+++/+mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh-.........................................-----::::::::::::::::::::::::::yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN/..........................................------:::::::::::::::::::::::::+mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMh-...........................................--------::::::::::::::::::::::/hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMNo............................................--------:::::::::::::::::::::::sMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMm/...........................................----------::::::::::::::::::::::+NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMNMMMMMMMMMMMMMMd-...........................................----------::::::::::::::::::::::/mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMmo+oydmmmNNNNNNNy-...........................................--------::::::::::::::::::::::::/mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMh/:://+++ooooosy:-.......................................---------::::::::::::::::::::::::::/mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMd+////////////y/:---...................................--------::::::::::::///::::::::/+/o:+NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMmy+//////////yo::::-----..........................---------::::::::::::::/+:o+::::/++:-.s+sMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMdo/////////os::::::::-----------........------------::::::::::::::::::++.`-++//+/-.--:+hmMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMNho////////y/::::::::::::::::------------:::::::::::::::::::::::::::+/``.--------:::::ymdysoyMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMmyo//////+s/:::::::::::::::::::::::::::::::::::::::::::::::::::::+/`.--::::::::::::::/:--:hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMNho+////os/:::::::::::::::::::::::::::::::::::::::::::::::::::+/``-:::::::::::::::::--/dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMNds+///os+:::::::::::::::::::::::::::::::::::::::::::::::::+/``.-::::::::::::::::::sNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMNhs+/+ss/::::::::::::::::::::::::::::::::::::::::::::::/s.`.-:::::::::::::::::/hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNdyooys/::::::::::::::::::::::::::::::::::::::::::::++``-::::::::::::::::/sNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmdhdy+/:::::::::::::::::::::::::::::::::::::::::o:`.-:::::::::::::::smMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmyo//::::::::::::::::::::::::::::::////+ooy/`.-::::::::::::/smMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmhso+///::::::::::::::::///+osyhydmNNNMMMd-`-:::::::::/ohNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNds+//++ooooo++++++++++oshdmmNNMMMMNMMMMMMMMMmo:-::::/+shmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNh+::::------:::////+++++odMMMMMMMMMMMMMMMMMMMMMMNmddddNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm/-----...```````...--::://+mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmhdmmmmdyo-.``````...----:::oNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNh/.-/syddmddhys+/:yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.03)
puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNMMMMMMMMMMMNMMNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
puts ''
puts "C'était une blague, y'a juste #{cit} Cities, #{usr} Users, #{ta} Tags, #{gos} Gossips, #{com} Comments, #{scom} Sub-comments, #{li} Likes et #{pm} Private Messages qui ont été ajoutés à la database."
puts ""
sleep(3)
puts "Pokemon GO!ssip".blink
puts ''
