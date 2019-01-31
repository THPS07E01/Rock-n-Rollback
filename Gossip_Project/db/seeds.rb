require 'faker'

puts `clear`
puts "Suppression de la base de données en cours..."
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
puts "Ecriture de la base de données..."
sleep(2)
10.times do
	city = City.create!(name: Faker::Pokemon.location, zip_code: Faker::Internet.ip_v4_address)
	puts "City : #{city.name} | #{city.zip_code}"
end

10.times do
	user = User.create!(first_name: Faker::DragonBall.character, last_name: Faker::LeagueOfLegends.rank, email: Faker::Internet.email, age: rand(18..120), description: Faker::HeyArnold.quote, city_id: City.all.sample.id)
	puts "User : #{user.first_name} | #{user.last_name} | #{user.email} | #{user.age} | #{user.description} | #{user.city_id}"
end

10.times do
	tag = Tag.create!(title: Faker::FunnyName.name)
	puts "Tag : #{tag.title}"
end

10.times do
	gossip = Gossip.create!(title: Faker::Dessert.variety, content: Faker::RickAndMorty.quote, user_id: User.all.sample.id)
	puts "Gossip : #{gossip.title} | #{gossip.content} | #{gossip.user_id}"
end

10.times do
	comment = Comment.create!(user_id: User.all.sample.id, gossip_id: Gossip.all.sample.id, body: Faker::Lovecraft.paragraph)
	puts "Comment : #{comment.user_id} | #{comment.gossip_id} | #{comment.body}"
end

10.times do
	subcomment = Subcomment.create!(user_id: User.all.sample.id, comment_id: Comment.all.sample.id, body: Faker::ChuckNorris.fact)
	puts "Subcomment : #{subcomment.user_id} | #{subcomment.comment_id} | #{subcomment.body}"
end

10.times do
	like = Like.create!(user_id: User.all.sample.id, gossip_id: Gossip.all.sample.id, comment_id: Comment.all.sample.id, subcomment_id: Subcomment.all.sample.id)
	puts "Like : User ID #{like.user_id} | Gossip ID #{like.gossip_id} | Comment ID #{like.comment_id} | Subcomment ID #{like.subcomment_id}"
end

10.times do
	private_message = PrivateMessage.create!(sender_id: User.all.sample.id, body: Faker::ChuckNorris.fact)
	puts "PrivateMessage : #{private_message.sender_id} | #{private_message.body}"
end

10.times do
	multi_recipient = MultiRecipient.create!(private_message_id: PrivateMessage.all.sample.id, recipient_id: User.all.sample.id)
	puts "MultiRecipient : Private ID #{multi_recipient.private_message_id} | Recipient ID #{multi_recipient.recipient_id}"
end

10.times do
	gossiptag = GossipTag.create!(gossip_id: User.all.sample.id, tag_id: Gossip.all.sample.id)
	puts "GossipTag : #{gossiptag.gossip_id} | #{gossiptag.tag_id}"
end
