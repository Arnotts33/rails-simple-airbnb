# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Deleting previous seeds"

Flat.destroy_all

puts "Creating seeds"

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Spacious & modern Flat Paris',
  address: '10 rue du Pre aux Clercs 75006 Paris',
  description: 'A nice parisian feel, close to shops and cafes. Two double bedrooms, spacious living area ans open kitchen',
  price_per_night: 125,
  number_of_guests: 4
)

Flat.create!(
  name: 'Green & Spacious House Noumea',
  address: '16 rue des mangroves 98807 Noumea',
  description: 'A lovely exotic feel for this spacious garden house with a swimming pool. 4 double bedrooms, open plan living area, open kitchen and golf',
  price_per_night: 400,
  number_of_guests: 8
)

Flat.create!(
  name: 'Small & modern Studio Flat Bordeaux',
  address: '16 rue de la devise 33000 Bordeaux',
  description: 'A lovely small one bedroom flat. Modern and very well located near top restaurants.',
  price_per_night: 60,
  number_of_guests: 2
)

puts "Seeds created"
