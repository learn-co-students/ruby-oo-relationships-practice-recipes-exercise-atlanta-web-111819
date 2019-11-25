class Recipe
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.most_popular
        most_users = 0
        most_popular = nil
        @@all.each do |recipe|
           if recipe.users.count > most_users
            most_users = recipe.users.count
            most_popular = recipe
           end 
        end
        most_popular
    end

    def recipe_cards
        RecipeCard.all.select do |card|
            card.recipe == self
        end
    end

    def users
        recipe_cards.map {|card| card.user}
    end

    def recipe_ingredients
       RecipeIngredient.all.select {|ri| ri.recipe == self }
    end

    def ingredients 
        recipe_ingredients.map {|ingredient| ingredient.ingredient}
    end

    def allergens
      allergen_array = Allergy.all_ingredients 
      ingredients.select {|ingredient| allergen_array.include?(ingredient)}
    end

    def add_ingredients(ingredients)
        ingredients.each {|ingredient| RecipeIngredient.new(self, ingredient)}
    end

end