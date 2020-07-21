# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserMatch.destroy_all
Match.destroy_all
User.destroy_all

cities = ['Denver', 'Aurora', 'Boulder', 'Colorado Springs', 'Golden', 'Pueblo', 'Ft. Collins', 'Grand Junction', 'Bailey', 'Frisco']

cities.each do |city|
  50.times do
    User.create(
      username: Faker::Twitter.screen_name,
      email: Faker::Internet.email,
      name: Faker::Name.name,
      interests: Faker::Hipster.word,
      city: city
    )
  end
end

User.all.each do |user|
  Match.create(
    username: user.username,
    email: user.email,
    name: user.name,
    interests: user.interests,
    city: user.city
  )
end
