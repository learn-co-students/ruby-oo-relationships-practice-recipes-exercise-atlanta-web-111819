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

    def recipes
        RecipeCard.all.select{|rc| rc.user == self}.map{|rc| rc.recipe}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(recipe, self, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select{|alg| alg.user == self}.map{|alg| alg.ingredient}
    end

    def top_three_recipes
        RecipeCard.all.select{|rc| rc.user == self}.flatten.sort_by{|rc| rc.rating}.slice(0, 2)
    end

    def most_recent_recipe
        RecipeCard.all.select{|rc| rc.user == self}.flatten.sort_by{|rc| rc.date}.first
    end


end