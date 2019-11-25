class User
    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    def recipes
        RecipeCard.all.select { |rc| rc.user == self }
        .map { |rc} rc.recipe}
    end
    def add_recipe_card(recipe, rating, date)
        RecipeCard.new(self, recipe, rating, date)
    end
    def allergens
        Allergy.all.select { |allergy| allergy.user == self }
        .map { |allergy| allergy. ingredient }
    end
end