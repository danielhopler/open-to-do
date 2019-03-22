# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  User.create!(
    username: Faker::Internet.user_name(5),
    password: 'password'
  )
end

 users = User.all

5.times do
  List.create!(
    user: users.sample,
    title: Faker::Games::Pokemon.name,
    private: false
  )
end

 lists = List.all

10.times do
  Item.create!(
    list: lists.sample,
    name: Faker::Games::Pokemon.move,
    completed: false
  )
end





puts "Seed finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Item.count} items created"
