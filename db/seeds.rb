# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
nain_gourmand =  { name: "Le Nain Gourmand", address: "Forgefer, Dun Morogh, Azeroth", category: "belgian" }
le_kebab =  { name: "Le Kebab", address: "Durum Avenue 18", category: "french" }
mcdo =  { name: "McDonalds", address: "McDonalds Way 1", category: "japanese" }

[ dishoom, pizza_east, nain_gourmand, le_kebab, mcdo ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
