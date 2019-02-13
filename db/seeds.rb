# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  Flat.create(name: Faker::Movies::LordOfTheRings.location,
              address: Faker::Address.full_address,
              description: Faker::Lorem.paragraph(30),
              price_per_night: Faker::Number.number(3),
              number_of_guests: Faker::Number.number(1))
end
