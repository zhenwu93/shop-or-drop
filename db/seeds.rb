# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Buyer.create(first_name: "Mike", last_name: "Wu", address: '234 loco st', )
# t.string "first_name"
# t.string "last_name"
# t.string "address"
# t.integer "phone_number"
# t.string "username"
# t.string "password"
# t.string "email"

10.times do
  Buyer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.phone_number, username: Faker::AquaTeenHungerForce.character , password: Faker::AquaTeenHungerForce.character,
email: Faker::Internet.email)
end

10.times do
  Seller.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::AquaTeenHungerForce.character , password: Faker::AquaTeenHungerForce.character,
email: Faker::Internet.email, rating: rand(1..5))
end

10.times do
  Product.create(name: Faker::Beer.name, description: Faker::Beer.style , price: rand(1..100), quantity: rand(1..20),  seller_id: rand(1..10))
end

10.times do
  owner = Seller.all.sample
  club = Club.create(name: Faker::Name.name, owner_id: owner.id)
  3.times do
    member = Seller.all.sample
    ClubSeller.create(club_id: club.id, seller_id: member.id)
  end
end

Product.all.each do |product|
  seller = Seller.all.sample
  club = seller.clubs.sample
  Listing.create(club_id: club.id, seller_id: seller.id, product_id: product.id)
end
