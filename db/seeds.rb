# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do 
  Manufacturer.create!(
    name: Faker::Company.unique.name,
    description: Faker::Company.industry
  )
end

20.times do 
  Category.create!(
    name: Faker::Color.color_name
  )
end

20.times do
  Product.create!(
    name: Faker::Food.unique.dish,
    description: Faker::Food.description,
    price: Faker::Number.between(from: 100, to: 1000),
    product_image: "https://picsum.photos/350/350/?random",
    manufacturer: Manufacturer.offset(rand(Manufacturer.count)).first, 
    category: Category.offset(rand(Category.count)).first,
  )
end

Tag.create([
  {name: 'デザイン'},
  {name: '使い心地'},
  {name: '成分'},
  {name: '価格'},
  {name: '説明書'},
  {name: '耐久性'}
])