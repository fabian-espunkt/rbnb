require 'faker'

puts 'Cleaning current database initiated...'
# Booking.destroy_all
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

# 4.times do |alpaca|
#   descriptions = [
#     "A beautiful create with a strong urge to pee when touched. Calm behaviour, strong passion.",
#     "Barks at cats and slightly arrogant attitude towards other alpacas. Solo walk recommended.",
#     "Very chill, but naughty when touched on the tail. Ocasionally, it spits at people.",
#     "Has a great sense of humour. Don't feed carrots because it becomes suicidal because of it."
#   ]

#   pictures = [
#     "https://jerseyeveningpost.com/resizer/j9A69AuLBrqxVP_zJ_BEgZ4BhBI=/1000x0/filters:quality(100)/arc-anglerfish-arc2-prod-jerseyeveningpost-mna.s3.amazonaws.com/public/Z3U2Z7JVWVEERBYUGIFBGGYHSM.jpg",
#     "https://www.thatsfarming.com/uploads/news/resizeExact_1200_800/3408-alpaca-1191300-1280.jpg",
#     "https://www.marylandzoo.org/wp-content/uploads/2017/10/Alpaca2-1024x683.jpg",
#     "https://jerseyeveningpost.com/resizer/j9A69AuLBrqxVP_zJ_BEgZ4BhBI=/1000x0/filters:quality(100)/arc-anglerfish-arc2-prod-jerseyeveningpost-mna.s3.amazonaws.com/public/Z3U2Z7JVWVEERBYUGIFBGGYHSM.jpg"
#   ]
#   alpaca = Alpaca.new(
#       {
#         name: Faker::Name.first_name,
#         age: Faker::Number.within(range: 1..5),
#         address: Faker::Address.street_address,
#         color: Faker::Color.color_name,
#         craziness_level: 3,
#         price: Faker::Number.within(range: 3000..8000),
#         user: [User.first, User.second, User.third, User.fourth].sample
#         description: descriptions.sample
#         photo: pictures.sample
#       }
#     )
#   alpaca.save!
# end
url1 = "https://jerseyeveningpost.com/resizer/j9A69AuLBrqxVP_zJ_BEgZ4BhBI=/1000x0/filters:quality(100)/arc-anglerfish-arc2-prod-jerseyeveningpost-mna.s3.amazonaws.com/public/Z3U2Z7JVWVEERBYUGIFBGGYHSM.jpg"
alpaca1 = Alpaca.new(
   {
      name: "Holger",
      age: Faker::Number.within(range: 1..25),
      address: Faker::Address.street_address,
      color: Faker::Color.color_name,
      craziness_level: 1,
      price: Faker::Number.within(range: 39..500),
      user: User.first,
      description: "A beautiful create with a strong urge to pee when touched. Calm behaviour, strong passion."
      }
    )
alpaca1.remote_photo_url = url1
alpaca1.save!

url2 = "https://www.thatsfarming.com/uploads/news/resizeExact_1200_800/3408-alpaca-1191300-1280.jpg"
alpaca2 = Alpaca.new(
   {
      name: "Peter",
      age: Faker::Number.within(range: 1..25),
      address: Faker::Address.street_address,
      color: Faker::Color.color_name,
      craziness_level: 2,
      price: Faker::Number.within(range: 39..500),
      user: User.second,
      description: "Barks at cats and slightly arrogant attitude towards other alpacas. Solo walk recommended."
      }
    )
alpaca2.remote_photo_url = url2
alpaca2.save!

url3 = "https://www.marylandzoo.org/wp-content/uploads/2017/10/Alpaca2-1024x683.jpg"
alpaca3 = Alpaca.new(
   {
      name: "Melanie",
      age: Faker::Number.within(range: 1..25),
      address: Faker::Address.street_address,
      color: Faker::Color.color_name,
      craziness_level: 3,
      price: Faker::Number.within(range: 39..500),
      user: User.third,
      description: "Very chill, but naughty when touched on the tail. Ocasionally, it spits at people."
      }
    )
alpaca3.remote_photo_url = url3
alpaca3.save!

url4 = "https://jerseyeveningpost.com/resizer/j9A69AuLBrqxVP_zJ_BEgZ4BhBI=/1000x0/filters:quality(100)/arc-anglerfish-arc2-prod-jerseyeveningpost-mna.s3.amazonaws.com/public/Z3U2Z7JVWVEERBYUGIFBGGYHSM.jpg"
alpaca4 = Alpaca.new(
   {
      name: "Steven",
      age: Faker::Number.within(range: 1..25),
      address: Faker::Address.street_address,
      color: Faker::Color.color_name,
      craziness_level: 2,
      price: Faker::Number.within(range: 39..500),
      user: User.fourth,
      description: "Has a great sense of humour. Don't feed carrots because it becomes suicidal because of it."
      }
    )
alpaca4.remote_photo_url = url4
alpaca4.save!


puts "Finished giving birth to #{Alpaca.count} new baby alpacas and creating #{User.count} new user records. Enjoy testing!"
