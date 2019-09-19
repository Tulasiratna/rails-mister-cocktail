# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all

Dose.destroy_all
Cocktail.destroy_all

# dose_descriptions = ['10cl', '20cl', '30cl']

json = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
ingredients = JSON.parse(json)
puts ingredients['drinks']
ingredients['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end
# Dose.create(description: dose_descriptions.random)

