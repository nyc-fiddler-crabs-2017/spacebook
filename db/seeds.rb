# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 5 users
#  10 posts each



5.times do 
  user = User.create(username: Faker::Internet.user_name, age: rand(20..35), city: Faker::GameOfThrones.city)
  10.times do 
    user.posts.create(title: Faker::Hipster.sentence(3), body: Faker::HarryPotter.quote)
  end
end