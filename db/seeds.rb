# ------- Seeder 1 ----------------

puts 'Cleaning current database initiated...'
puts 'Destroying current bookings...'
# Booking.destroy_all
puts 'Destroying current alpacas...'
Alpaca.destroy_all
puts 'Destroying current users...'
User.destroy_all
puts "Success! #{Booking.count} bookings, #{User.count} users and #{Alpaca.count} alpacas have irreversibly been deleted from the database!"
puts 'Creating new users...'

user1 = User.new(
    first_name: "Fabian",
    last_name: "Schulze Wierling",
    email: "fabian.schuwie@gmail.com",
    password: "123456")
  user1.save!

user2 = User.new(
    first_name: "Simone",
    last_name: "Hoffmann",
    email: "simone.hoffmann@gmail.com",
    password: "123456")
  user2.save!


user3 = User.new(
    first_name: "Dominik",
    last_name: "Wojciechowsk",
    email: "dominik.wojciechowski@gmail.com",
    password: "123456")
  user3.save!

user4 = User.new(
    first_name: "Max",
    last_name: "Example",
    email: "example@example.com",
    password: "123456")
  user4.save!

puts "Success! Seeding populated #{User.count} users in your database."
puts "Creating new alpacas..."

url1 = "https://jerseyeveningpost.com/resizer/j9A69AuLBrqxVP_zJ_BEgZ4BhBI=/1000x0/filters:quality(100)/arc-anglerfish-arc2-prod-jerseyeveningpost-mna.s3.amazonaws.com/public/Z3U2Z7JVWVEERBYUGIFBGGYHSM.jpg"
alpaca1 = Alpaca.new(
   {
      name: "Holger",
      age: 25,
      address: "Graefestraße 47-50, 10967 Berlin",
      color: "beige",
      craziness_level: 1,
      price: 299,
      user: User.first,
      description: "A beautiful creature with a strong urge to pee when touched. Calm behaviour, strong passion."
      }
    )
alpaca1.remote_photo_url = url1
alpaca1.save!

url2 = "https://www.thatsfarming.com/uploads/news/resizeExact_1200_800/3408-alpaca-1191300-1280.jpg"
alpaca2 = Alpaca.new(
   {
      name: "Peter",
      age: 18,
      address: "Pariser Platz, 10117 Berlin",
      color: "white",
      craziness_level: 2,
      price: 250,
      user: User.second,
      description: "Barks at cats and slightly arrogant attitude towards other alpacas."
      }
    )
alpaca2.remote_photo_url = url2
alpaca2.save!

url3 = "https://www.marylandzoo.org/wp-content/uploads/2017/10/Alpaca2-1024x683.jpg"
alpaca3 = Alpaca.new(
   {
      name: "Melanie",
      age: 22,
      address: "Los-Angeles-Platz 30, Hamburg",
      color: "white",
      craziness_level: 3,
      price: 120,
      user: User.third,
      description: "Very chill, but naughty when touched on the tail. Ocasionally, it spits at people."
      }
    )
alpaca3.remote_photo_url = url3
alpaca3.save!

url4 = "https://bloximages.newyork1.vip.townnews.com/coastalview.com/content/tncms/assets/v3/editorial/6/ef/6eff4bfc-91ea-11e9-8d14-33c569d56e66/5d09187036b78.image.jpg"
alpaca4 = Alpaca.new(
   {
      name: "Steven",
      age: 14,
      address: "Chausseestraße 41, 10115 Berlin",
      color: "black",
      craziness_level: 2,
      price: 180,
      user: User.fourth,
      description: "Has a great sense of humour. Don't feed carrots because it becomes suicidal because of it."
      }
    )
alpaca4.remote_photo_url = url4
alpaca4.save!

url5 = "https://static.theworks.co.uk/images/5052089242234_Z.jpg"
alpaca5 = Alpaca.new(
   {
      name: "Dimitri",
      age: 14,
      address: "Speyerer Str. 23-17, 60327 Frankfurt am Main",
      color: "glitter",
      craziness_level: 3,
      price: 300,
      user: User.fourth,
      description: "Loves to be covered in baby oil while twerking and singing a random song."
      }
    )
alpaca5.remote_photo_url = url5
alpaca5.save!

url6 = "https://static.wixstatic.com/media/016259_96ebc50d89c0431bb16fee403efac680~mv2.jpg"
alpaca6 = Alpaca.new(
   {
      name: "Andy",
      age: 20,
      address: "Malta House, 36-38 Piccadilly, Mayfair, London W1J 0DP",
      color: "glitter",
      craziness_level: 10,
      price: 5,
      user: User.first,
      description: "Broken but it still brings joy. Likes to observe rivers and lakes."
      }
    )
alpaca6.remote_photo_url = url6
alpaca6.save!

url7 = "https://atgbcentral.com/data/out/122/5019575-alpaca.jpg"
alpaca7 = Alpaca.new(
   {
      name: "Sarah",
      age: 20,
      address: "Via Santa Maria Ausiliatrice, 41, 00181 Roma",
      color: "brown",
      craziness_level: 5,
      price: 40,
      user: User.second,
      description: "Eats everything so be careful when going out. People might disappear."
      }
    )
alpaca7.remote_photo_url = url7
alpaca7.save!

url8 = "https://www.brandtely-alpakas.de/files/bilder/Unsere%20Tiere/brandtely-alpaka-25.jpg"
alpaca8 = Alpaca.new(
   {
      name: "Leon",
      age: 20,
      address: " 76 rue Lenotre, Rambouillet",
      color: "brown",
      craziness_level: 18,
      price: 98,
      user: User.third,
      description: "Will get angry if it doesn't post anything on Instagram for more than 1 hour."
      }
    )
alpaca8.remote_photo_url = url8
alpaca8.save!

puts "Success! Created #{Alpaca.count} alpacas"
puts "Finished! Enjoy testing your seeded database."

# ------- Seeder 2 ----------------

# require 'faker'

# puts 'Cleaning current database initiated...'
# Booking.destroy_all
# Alpaca.destroy_all
# puts 'Cleaning User'
# User.destroy_all


# puts "#{User.count} user records and #{Alpaca.count} alpacas have irreversibly been deleted from the database!"
# puts 'Seeding initiated. Populating the database with new test users ...'

# 4.times do |user|
#   user = User.new(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name ,
#     email: Faker::Internet.email,
#     password: "login123")
#   user.save!
# end

# puts "Created 4 users"

# puts "Successful seeding of test users. Now, only alpacas are missing."
# puts "Seeding initiated. Populating the database with new alpacas ..."

# url1 = "https://jerseyeveningpost.com/resizer/j9A69AuLBrqxVP_zJ_BEgZ4BhBI=/1000x0/filters:quality(100)/arc-anglerfish-arc2-prod-jerseyeveningpost-mna.s3.amazonaws.com/public/Z3U2Z7JVWVEERBYUGIFBGGYHSM.jpg"
# alpaca1 = Alpaca.new(
#    {
#       name: "Holger",
#       age: Faker::Number.within(range: 1..25),
#       address: Faker::Address.street_address,
#       color: Faker::Color.color_name,
#       craziness_level: 1,
#       price: Faker::Number.within(range: 39..500),
#       user: User.first,
#       description: "A beautiful creature with a strong urge to pee when touched. Calm behaviour, strong passion."
#       }
#     )
# alpaca1.remote_photo_url = url1
# alpaca1.save!

# url2 = "https://www.thatsfarming.com/uploads/news/resizeExact_1200_800/3408-alpaca-1191300-1280.jpg"
# alpaca2 = Alpaca.new(
#    {
#       name: "Peter",
#       age: Faker::Number.within(range: 1..25),
#       address: Faker::Address.street_address,
#       color: Faker::Color.color_name,
#       craziness_level: 2,
#       price: Faker::Number.within(range: 39..500),
#       user: User.second,
#       description: "Barks at cats and slightly arrogant attitude towards other alpacas. Solo walk recommended."
#       }
#     )
# alpaca2.remote_photo_url = url2
# alpaca2.save!

# url3 = "https://www.marylandzoo.org/wp-content/uploads/2017/10/Alpaca2-1024x683.jpg"
# alpaca3 = Alpaca.new(
#    {
#       name: "Melanie",
#       age: Faker::Number.within(range: 1..25),
#       address: Faker::Address.street_address,
#       color: Faker::Color.color_name,
#       craziness_level: 3,
#       price: Faker::Number.within(range: 39..500),
#       user: User.third,
#       description: "Very chill, but naughty when touched on the tail. Ocasionally, it spits at people."
#       }
#     )
# alpaca3.remote_photo_url = url3
# alpaca3.save!

# url4 = "https://bloximages.newyork1.vip.townnews.com/coastalview.com/content/tncms/assets/v3/editorial/6/ef/6eff4bfc-91ea-11e9-8d14-33c569d56e66/5d09187036b78.image.jpg"
# alpaca4 = Alpaca.new(
#    {
#       name: "Steven",
#       age: Faker::Number.within(range: 1..25),
#       address: Faker::Address.street_address,
#       color: Faker::Color.color_name,
#       craziness_level: 2,
#       price: Faker::Number.within(range: 39..500),
#       user: User.fourth,
#       description: "Has a great sense of humour. Don't feed carrots because it becomes suicidal because of it."
#       }
#     )
# alpaca4.remote_photo_url = url4
# alpaca4.save!

# puts "Created 4 alpacas"
# puts "Finished giving birth to #{Alpaca.count} new baby alpacas and creating #{User.count} new user records. Enjoy testing!"

