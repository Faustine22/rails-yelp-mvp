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
la_mamma = {name: "la mamma", address: "10 rue victor hugo,13100 aix en provence", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese"}
ciel = {name: "ciel", address: "17 Rue Haxo, 13001 Marseille", category: "chinese"}
la_marmite = {name: "la marmite", address: "10 Rue Venture, 13001 Marseille", category: "italian"}
brasserie_debussy = {name: "brasserie debussy", address: "cours estienne d'orves, 13001 Marseille", category:"belgian" }


[ pizza_east, ciel, la_marmite, brasserie_debussy].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
