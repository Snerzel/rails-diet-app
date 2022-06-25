# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pro = Pro.create(name: 'test', email: 'somethingelse',password: 'test')

user = User.create(email: 'something', name: 'none', password: 'test',age: 23, weight: 'lb', gender: 'male', health: 'fine', diet_type: 'something', restrictions: 'oil', pro: pro)

# 3.times do
#     name = ['tomato', 'peas', 'chicken'].sample
#     nutrition_level = [1,2,5,6].sample
#     diet_type = ['v', 'q', 'p'].sample
#     ingredients = ['test', 'tomato', 'chicken']
#     user = User.first
#     Meal.create(name: name, nutrition_level: nutrition_level, diet_type: diet_type, ingredients: ingredients, user: user)
# end
