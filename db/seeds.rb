require 'faker'

puts 'Cleaning database...'
User.destroy_all
Property.destroy_all

puts '🌱 Seeding data...'

User.create!(
  first_name: 'Ariel',
  last_name: 'Lima',
  email: 'ariel@email.com',
  password: '123456'
)

User.create!(
  first_name: 'Anne',
  last_name: 'Bortoli',
  email: 'anne@email.com',
  password: '123456'
)

User.create!(
  first_name: 'Augusto',
  last_name: 'Lopes',
  email: 'meleu@email.com',
  password: '123456'
)

puts '👩🏽‍🦱 Creating users with faker...'

10.times do |i|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  User.create!(
    first_name:,
    last_name:,
    email: "#{first_name.downcase}_#{i}@email.com",
    password: '123456'
  )
end

puts '🏠 Creating properties with faker...'

Property.create!(
  title: Faker::Tea.variety,
  description: Faker::Restaurant.description,
  price: rand(100..200),
  owner_id: 1
)

Property.create!(
  title: Faker::Tea.variety,
  description: Faker::Restaurant.description,
  price: rand(100..200),
  owner_id: 2
)

Property.create!(
  title: Faker::Tea.variety,
  description: Faker::Restaurant.description,
  price: rand(100..200),
  owner_id: 3
)

10.times do
  Property.create!(
    title: Faker::Tea.variety,
    description: Faker::Restaurant.description,
    price: rand(100..200),
    owner: User.all.sample
  )
end

puts 'Finished!'
