require_relative '../config/environment.rb'
#Users
kevin = User.new('Kevin')
yash = User.new('Yash')
andrew = User.new('Andrew')

#Recipes
choco_milk = Recipe.new("Chocolate Milk")
pizza = Recipe.new("Pizza")
sushi = Recipe.new("Sushi")

#Ingredients
milk = Ingredient.new('Milk')
cheese = Ingredient.new('Cheese')
tuna = Ingredient.new('Tuna')
sauce = Ingredient.new('Tomato Sauce')
rice = Ingredient.new('Rice')
dough = Ingredient.new('Pizza Dough')

#Add ingredients

kevin.add_recipe_card(pizza, "11/25/2019", 10)
andrew.add_recipe_card(sushi, "11/25/2019", 8)
yash.add_recipe_card(choco_milk, "11/25/2019", 6)

#Declare allergens
kevin.declare_allergy(milk)
yash.declare_allergy(tuna)
andrew.declare_allergy(sauce)
andrew.declare_allergy(milk)

#Adding Recipes
pizza.add_ingredients([sauce, dough, cheese])
sushi.add_ingredients([rice, tuna])
choco_milk.add_ingredients([milk, sauce])

binding.pry
