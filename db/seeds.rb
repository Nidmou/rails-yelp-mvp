# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishies = { name: "Dishies", address: "30 rue brothers, lyon", phone_number: "098765665", category: "italian" }
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE",phone_number: "0999065665", category:"french"}
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ",phone_number: "0987656666", category:"french"}
fish_and_fresh = { name: "Fish and Fresh", address: "17 Boundary , Paris",phone_number: "098766665", category:"belgian" }
pizza_paris =  { name: "Pizza Paris", address: "100 av francois mitterand, Paris",phone_number: "0657765665", category:"chinese"}

[dishies, dishoom, pizza_east, fish_and_fresh, pizza_paris].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
