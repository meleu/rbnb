require 'faker'

puts "Cleaning database..."
User.destroy_all
Property.destroy_all

puts "🌱 Seeding data..."
puts "👩🏽‍🦱 Creating users with faker..."

10.times do
  fn = Faker::Name.first_name
  ln = Faker::Name.last_name

  User.create(
    name: "#{fn} #{ln}",
    email: "#{fn.downcase}@email.com",
    password: '123456'
  )
end

puts "🏠 Creating properties with faker..."

10.times do

  Property.create(
    title: Faker::Tea.variety,
    description: Faker::Restaurant.description,
    price: Faker::Commerce.price,
    owner_id: rand(1..10)
  )
end

puts 'Finished!'
