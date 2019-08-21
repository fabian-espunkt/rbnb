require 'faker'

puts 'Cleaning current database initiated...'
Alpaca.destroy_all
User.destroy_all
puts "#{User.count} user records and #{Alpaca.count} alpacas have irreversibly been deleted from the database!"
puts 'Seeding initiated. Populating the database with new test users ...'

4.times do |user|
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name ,
    email: Faker::Internet.email,
    password: "login123")
  user.save!
end

puts "Successful seeding of test users. Now, only alpacas are missing."
puts "Seeding initiated. Populating the database with new alpacas ..."

4.times do |alpaca|
  alpaca = Alpaca.new(
      {
        name: Faker::Name.first_name,
        age: Faker::Number.within(range: 1..5),
        address: Faker::Address.street_address,
        color: Faker::Color.color_name,
        craziness_level: 3,
        price: Faker::Number.within(range: 3000..8000),
        user: [User.first, User.second, User.third, User.fourth].sample
      }
    )
  alpaca.save!
end

puts "Finished giving birth to #{Alpaca.count} new baby alpacas and creating #{User.count} new user records. Enjoy testing!"
