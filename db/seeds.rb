# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Boat.destroy_all
User.destroy_all
users = []
10.times do |n|
  users << User.create!(
    email: Faker::Internet.email,
    password: 123456789,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

# Create 20 boats associated with 10 random users
20.times do
  Boat.create!(
    location: Faker::Address.city,
    price: Faker::Number.between(from: 100, to: 1000),
    description: Faker::Lorem.paragraph,
    title: Faker::Lorem.words(number: 3).join(" "),
    user: users.sample,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  )
end
