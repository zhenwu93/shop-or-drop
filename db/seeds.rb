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

20.times do
  Seller.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::AquaTeenHungerForce.character , password: Faker::AquaTeenHungerForce.character,
email: Faker::Internet.email, rating: rand(1..5))
end

10.times do
  owner = Seller.all.sample
  club = Club.create(name: Faker::Name.name, owner_id: owner.id)
  3.times do
    member = Seller.all.sample
    ClubSeller.create(club_id: club.id, seller_id: member.id)
  end
end

Product.create(name: "Jordan Retro High Off-White Blue", description:"Time for some Tobacco Road vibes with these Jordan 1 Retro Off-Whites. Also known as the “UNC” editions, these Jordan 1s are the third colorway designed by Virgil Abloh and made in collaboration with his Off-White label. The sneakers come in a white, dark powder blue and cone colorway, with a white and blue deconstructed leather upper and Off-White detailing throughout. If you’re a fan of Virgil Abloh’s work and want to rep Off-White, this pair is another must-have." , price: 865, quantity: 1,  seller_id: 1, image_url: 'https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Off-White-University-Blue/Images/Air-Jordan-1-Retro-High-Off-White-University-Blue/Lv2/img01.jpg?auto=format,compress&w=1117&q=90')

Product.create(name: "Jordan Retro Travis Scott Cactus Jack", description:"The only way to describe the Travis Scott Air Jordan 4 Retros properly would be to use the rappers own adlib: la flame. These Jordan 4s were made in collaboration with rapper, Travis Scott and nicknamed the “Cactus Jack” edition. Similar in design to the infamous Eminem pair, these feature a lighter shade of blue suede on the upper. Black accents, a red liner, paint splatter detailing, a white midsole and “Cactus Jack” branding on the back heel tab finish things off for this pair. These dropped in June of 2018 for $225 and came exclusively in men’s sizes. If you’re a fan of Travis Scott and the AJ 4, this pair is another must-have. Straight up!" , price: 315, quantity: 1,  seller_id: rand(1..10), image_url: 'https://stockx-360.imgix.net/Air-Jordan-4-Retro-Travis-Scott-Cactus-Jack/Images/Air-Jordan-4-Retro-Travis-Scott-Cactus-Jack/Lv2/img01.jpg?auto=format,compress&w=1117&q=90')

Product.create(name: "Jordan Retro High Off-White White", description:"After Virgil Abloh & Nike’s 2017 “Chicago” edition Air Jordan I, an all-white version arrived in March 2018 as a European exclusive, leaving sneakerheads in the rest of the world yearning for a pair. First debuting on the OFF-WHITE runway at Paris Fashion Week, the ultra-clean rendition featured the same well-appointed details as the first, simply boasting a more pared-down colorway that created almost the same levels of buzz as the first release." , price: 1725, quantity: 1,  seller_id: 1, image_url: 'https://stockx-360.imgix.net/air-jordan-1-retro-high-off-white-white_TruView/Images/air-jordan-1-retro-high-off-white-white_TruView/Lv2/img01.jpg?auto=format,compress&w=1117&q=90')

Product.create(name: "Yeezy Boost 350 V2 Blue Tint", description:"If you're looking for the pair that Kanye claimed jumped over the jumpman, look no further than the ultra-popular adidas Yeezy Boost 350 V2 Blue Tint colorway. Like previous releases, the Blue Tint Yeezy Boost is made up of a Primeknit based upper and features the Zebra like striped pattern across the upper. These shoes also feature adidas' now famous Boost cushioning that became the go-to for many sneakerheads over the past few years due to its incredible comfort." , price: 385, quantity: 1,  seller_id: 1, image_url: 'https://stockx-360.imgix.net/Adidas-Yeezy-Boost-350-V2-Blue-Tint/Images/Adidas-Yeezy-Boost-350-V2-Blue-Tint/Lv2/img01.jpg?auto=format,compress&w=1117&q=90')

Product.create(name: "Supreme Comme Des Garcons SHIRT Box Logo Hooded Sweatshirt Black", description:"Season: SS17, Color: Black" , price: 725, quantity: 1,  seller_id: 1, image_url: 'https://stockx.imgix.net/products/streetwear/Supreme-Comme-Des-Garcons-SHIRT-Box-Logo-Hooded-Sweatshirt-Black.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color')

Product.create(name: "Supreme Box Logo Hooded Sweatshirt Black", description:"Season: FW16, Color: Black" , price: 1500, quantity: 1,  seller_id: 1, image_url: 'https://stockx.imgix.net/products/streetwear/Supreme-Box-Logo-Hooded-Sweatshirt-Black.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=color')

Product.create(name: "Yeezy Boost 350 V2 Zebra", description:"Adidas is back with their latest Yeezy Boost 350 V2. Fresh off the heels of NBA All-Star Weekend, these Yeezy's are nicknamed the Zebras, and come in a classic white, black and red color scheme. Sporting a white-based Primeknit upper with black accents giving off a Zebra stripe vibe, “SPLY-350” displayed across the sides in red finished off by a translucent BOOST cushioned sole. To date they are the most limited adidas Yeezy release and have instantly become one of the most popular colorways." , price: 370, quantity: 1,  seller_id: 1, image_url: 'https://stockx-360.imgix.net/Adidas-Yeezy-Boost-350-V2-Zebra/Images/Adidas-Yeezy-Boost-350-V2-Zebra/Lv2/img01.jpg?auto=format,compress&w=1117&q=90')


Product.all.each do |product|
  seller = Seller.all.sample
  club = seller.clubs.sample
  Listing.create(club_id: club.id, seller_id: seller.id, product_id: product.id)
end
