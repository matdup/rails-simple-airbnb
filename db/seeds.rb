# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating restaurants...'
flats_attributes = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens',
    description: 'A lovely summer feel for this spacious garden flat',
    price_per_night: 75,
    number_of_guests: 2
  },
  {
    name: 'Garden Flat London',
    address: 'London W9 1DT',
    description: 'Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 85,
    number_of_guests: 3
  },
  {
    name: 'Spacious Garden',
    address: 'Clifton',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 1
  },
  {
    name: 'Garden Flat London',
    address: '10 Clifton Gardens',
    description: 'A lovely summer feel and a beautiful conservatory',
    price_per_night: 35,
    number_of_guests: 2
  }
]
Flat.create!(flats_attributes)
puts 'Finished!'
