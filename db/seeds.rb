# 20.times do
#   restaurant = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, rating: rand(1..5))
#   puts "Created #{restaurant.name}"
# end

puts "Cleaning database..."
Restaurant.destroy_all

20.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample )
    5.times do
      restaurant.reviews = Review.create(content: "sdfgsdfgsfdg")
    end 
  puts "Created #{restaurant.name}"
end
puts "Finished!"


