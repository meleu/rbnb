require 'faker'

puts "Cleaning database..."
User.destroy_all
Property.destroy_all

puts "🌱 Seeding data..."

User.create!(
  name: "#Ariel Lima",
  email: "ariel@email.com",
  password: '123456'
)

User.create!(
  name: "#Anne Bortoli",
  email: "anne@email.com",
  password: '123456'
)

User.create!(
  name: "#Augusto Lopes",
  email: "meleu@email.com",
  password: '123456'
)

puts "👩🏽‍🦱 Creating users with faker..."

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  User.create!(
    name: "#{first_name} #{last_name}",
    email: "#{first_name.downcase}@email.com",
    password: '123456'
  )
end

puts "🏠 Creating properties with faker..."

10.times do

  Property.create!(
    title: Faker::Tea.variety,
    description: Faker::Restaurant.description,
    price: Faker::Commerce.price,
    owner_id: rand(1..10)
  )
end

puts 'Finished!'
