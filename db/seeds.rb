# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0606060606',
    category:     'chinese'
  },
  {
    name:         'Blend',
    address:      '15 Rue de Charonne, 75011 Paris',
    phone_number: '0607070707',
    category:     'italian'
  },
  {
    name:         'Septime',
    address:      '80 Rue de Charonne, 75011 Paris',
    phone_number: '0608080808',
    category:     'french'
  },
  {
    name:         'KB CaféShop',
    address:      '53 Avenue Trudaine, 75009 Paris',
    phone_number: '0609090909',
    category:     'belgian'
  },
  {
    name:         'La compagnie des crèpes',
    address:      '30 cour Saint Emilion, 75012 Paris',
    phone_number: '0604040404',
    category:     'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

puts "Creating reviews..."
reviews_attributes = [
  {
    content: "Very good food",
    rating: 5,
    restaurant_id: 1
  },
  {
    content: "Good food",
    rating: 4,
    restaurant_id: 2
  },
  {
    content: "Bof",
    rating: 2,
    restaurant_id: 3
  },
  {
    content: "A eviter",
    rating: 1,
    restaurant_id: 4
  },
  {
    content: "Very bad food",
    rating: 0,
    restaurant_id: 5
  }
]
Review.create!(reviews_attributes)
puts "done"
