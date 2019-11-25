class User 
    attr_reader :name
    @@all = []

    def initialize(name)
       @name = name
       @@all << self
    end

    def self.all
        @@all
    end

    def recipe_cards
        RecipeCard.all.select {|card| card.user == self}
    end

    def recipes
        recipe_cards.map {|card| card.recipe}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def user_allergies
        Allergy.all.select {|allergen| allergen.user == self}
    end

    def allergens
        user_allergies.map {|allergen| allergen.ingredient }
    end

    def sorted_recipes
        recipe_cards.sort {|card1, card2| card2.rating <=> card1.rating}
    end

    def top_three_recipes
        sorted_recipes[0..2]
    end

    def most_recent_recipe
        recipes[-1]
    end

end