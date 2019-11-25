require_relative '../config/environment.rb'

jess = User.new('Jess')
michael = User.new('Michael')

cheese = Ingredient.new('Cheese')
beans = Ingredient.new('Beans')
beef = Ingredient.new('Beef')

tacos = Recipe.new("Fun Tacos")
rc1 = RecipeCard.new(jess, tacos)
ri1 = RecipeIngredient.new(tacos, beef)

Allergy.new(jess,cheese)
binding.pry
