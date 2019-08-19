# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning current database initiated...'
User.destroy_all
puts "#{User.count} user records have irreversibly been deleted from the database!"

puts 'Seeding initiated...'
puts 'Populating the database with new test users...'

100.times do |user|
  user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , email: Faker::Internet.email, password: "login123")
  user.save!
end

puts "Finished! Your database now has #{User.count} user records. Enjoy testing."
