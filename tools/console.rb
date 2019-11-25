require_relative '../config/environment.rb'

user1 = User.new("Joe")
user2 = User.new("Paul")
user3 = User.new("Eric")

recipe1 = Recipe.new("Pie")
recipe2 = Recipe.new("Cake")
recipe3 = Recipe.new("Nachos")

ingredient1 = Ingredient.new("chips")
ingredient2 = Ingredient.new("flour")
ingredient3 = Ingredient.new("eggs")

RecipeCard.new(recipe1, user1)
RecipeCard.new(recipe1, user3)
RecipeCard.new(recipe1, user2)
RecipeCard.new(recipe2, user1)
RecipeCard.new(recipe3, user2)

RecipeIngredient.new(recipe1, ingredient1)
RecipeIngredient.new(recipe1, ingredient2)
RecipeIngredient.new(recipe1, ingredient3)

Allergy.new(user1, ingredient2)
Allergy.new(user2, ingredient1)
Allergy.new(user2, ingredient3)

binding.pry
