# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


# 10.times do 

# 	first_name = Faker::Name.first_name
# 	beer = Faker::Beer.name
	
#     user = User.create!(first_name: first_name, 
#     	last_name: Faker::Name.last_name, 
#     	description: "J'aime la bière : #{beer}" , 
#     	email: "#{first_name}@gmail.com", 
#     	age: Faker::Number.between(30,70),
#     	city_id: Faker::Number.between(1,10))
# end

# 10.times do

# 	city = City.create!( 
# 		postal_code: Faker::Address.zip, 
# 		name: Faker::Address.city)

# end

# 20.times do
#   livre = Faker::Book.genre
# 	gossip = Gossip.create!(
# 		title: Faker::Artist.name,
# 		content: "Cet artiste lis ce type de livre : #{livre}",
# 		date: Faker::Time.forward(23, :morning),
# 		user_id: Faker::Number.between(1,10))
# end
# 
i = 1
50.times do


	tag = Tag.create!(
        title: Faker::SlackEmoji.people
		)
	lien = GossipTag.create!(
		gossip_id: i,
		tag_id: i)

	if i<20
	i +=1 
	else
		i=1
	end
end

pm = Privatemessage.create!(
	date: Faker::Time.forward(23, :morning),
	content: Faker::StrangerThings.quote,
	recipient_id: Faker::Number.between(1,10),
	sender_id: Faker::Number.between(1,10))