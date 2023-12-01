# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Booking.destroy_all
Boat.destroy_all
User.destroy_all




eke = User.create!(
  email: "eke@eke.com",
  password: "password",
  first_name: "Ugorji",
  last_name: "Eke"
)

boat1 = Boat.create!(
  location: "Bermuda",
  price: 100,
  description: "This beautiful boat is a true Joy to take on the worlds marines",
  title: "MarineJoy",
  user: eke
)

file = File.open(File.join(__dir__, "../app/assets/images/Centre-Console-Boats.jpg"))
boat1.photo.attach(io: file, filename: "bermuda.png", content_type: "image/png")
boat1.save

boat2 = Boat.create!(
  location: "Venice, Italy",
  price: 800,
  description: "Deck Boats come with an open deck area that provides plenty of seating arrangements for a small group of people.",
  title: "Deck Boat",
  user: eke
)

file = File.open(File.join(__dir__, "../app/assets/images/Deck-Boat.jpg"))
boat2.photo.attach(io: file, filename: "bermuda.png", content_type: "image/png")
boat2.save

christain = User.create!(
  email: "christain@christain.com",
  password: "password",
  first_name: "Chris",
  last_name: "Davids"
)

boat3 = Boat.create!(
  location: "Barcelona",
  price: 100,
  description: "A banana boat is a type of watercraft that is solely utilized for recreational activities and family entertainment.",
  title: "Banana Boat",
  user: christain
)

file = File.open(File.join(__dir__, "../app/assets/images/Banana-Boats.jpg"))
boat3.photo.attach(io: file, filename: "bermuda.png", content_type: "image/png")
boat3.save

boat4 = Boat.create!(
  location: "Nice, France",
  price: 500,
  description: "The PWC boats, also known as water scooters and jetski, are customized boats for adventurous activities.",
  title: "Personal Watercraft (PWC) Boats",
  user: christain
)

file = File.open(File.join(__dir__, "../app/assets/images/Centre-Console-Boats.jpg"))
boat4.photo.attach(io: file, filename: "bermuda.png", content_type: "image/png")
boat4.save

joseph = User.create!(
  email: "joseph@joseph.com",
  password: "password",
  first_name: "Joseph",
  last_name: "Segbefia"
)

boat5 = Boat.create!(
  location: "Athens, Greece",
  price: 1500,
  description: "The motor yacht has a standard length of 12m and above, with one or two diesel engines per navigation requirements in inland waters or the oceans.",
  title: "Motor Yacht Boats",
  user: joseph
)

file = File.open(File.join(__dir__, "../app/assets/images/Motor-Yacht-Boats.jpg"))
boat5.photo.attach(io: file, filename: "bermuda.png", content_type: "image/png")
boat5.save

boat6 = Boat.create!(
  location: "Cyprus",
  price: 700,
  description: "Powered by diesel or petrol engines, these fibreglass boats are large in measurement and are useful for the game fish pursuit, especially pelagic fishes like tuna and marlin.",
  title: "Fishing boat",
  user: joseph
)

file = File.open(File.join(__dir__, "../app/assets/images/Trawler-Boat .jpg"))
boat6.photo.attach(io: file, filename: "bermuda.png", content_type: "image/png")
boat6.save

mounzer = User.create!(
  email: "mounzer@mounzer.com",
  password: "password",
  first_name: "Mounzer",
  last_name: "Majzoub"
)

boat7 = Boat.create!(
  location: "Malta",
  price: 2000,
  description: "Catamaran is a multi-hulled watercraft that features two parallel hulls of equal size. Catamaran Boats feature less hull volume, shallower draft, and higher displacement than vessels with a single hull.",
  title: "Catamaran Boat",
  user: mounzer
)

file = File.open(File.join(__dir__, "../app/assets/images/Catamaran-Boat.jpg"))
boat7.photo.attach(io: file, filename: "bermuda.png", content_type: "image/png")
boat7.save

boat8 = Boat.create!(
  location: "Gibraltrar",
  price: 500,
  description: "Essentially a boat that features a hull with no cabin or foredeck and the helm station in the centre of the boat, Centre Consoles are great for couples.",
  title: "Couple Boat",
  user: mounzer
)

file = File.open(File.join(__dir__, "../app/assets/images/Couple-Boats.jpeg"))
boat8.photo.attach(io: file, filename: "bermuda.png", content_type: "image/png")
boat8.save
