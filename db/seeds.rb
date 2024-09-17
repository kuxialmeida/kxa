require 'faker'
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleanning Database"
Product.destroy_all
Category.destroy_all
puts "Database cleaned"

puts "Creating Products"

10.times do
  Product.create(
    name: Faker::Esport.player,
    description: Faker::Esport.team,
    price: Faker::Commerce.price,
    stock: rand(1...20),
    photos: [
      ActiveStorage::Blob.create_and_upload!(
        io: URI.open("https://res.cloudinary.com/dchyt1n73/image/upload/v1726405751/kwrdckynqbbgt4egwtu6.jpg"),
        filename: "Merlin_M28S.jpg",
        content_type: 'image/jpg',
      ),
    ]
  )
end

puts "Products Created succesfully"

puts "Creating Categories"
Category.create [
  {name: 'Energize'},
  {name: 'Haste'},
  {name: 'Alarme'}
]
puts "Category created successfuly"
