# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Faker Gem
# loop 10 times
# 	create a user
# 	loop 10 times
# 		create a to do item associated with the user
# 	end
# end

# Create Users
10.times do
	user = User.create!(
		email: Faker::Internet.email,
		password: Faker::Internet.password(10),
		)
	users = User.all

	10.times do 
		item = Item.create!(
			user: user,
			name: Faker::Hipster.sentence
			)
	end
end

me = User.first
me.email = "aaron.ruettinger@gmail.com"
me.password = "password"
me.save!