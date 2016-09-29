# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Item.destroy_all
Category.destroy_all

(1..3).each do |n|
  category = Category.create(category: "Category ##{n}")
  (1..5).each do |t|
    item = Item.create(name: "Item no. #{t}", description: "A detailed description", category: category)
  end
end
