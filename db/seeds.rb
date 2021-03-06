# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Product.destroy_all

User.create!({
  email: "test@test.ca",
  name: "test",
  password: "test",
  password_confirmation: "test"
  }
)

100.times do |i|

Product.create({
  name: Faker::Commerce.product_name,
  description: Faker::Lorem.sentence(word_count = 8),
  price_in_cents: (rand * 10000).to_i
})
end