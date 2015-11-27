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
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: Faker::Internet.password(10),
		item: Faker::Hipster.sentence
		)
end