class Recipe

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def users
        RecipeCard.all.select { |rc| rc.recipe == self}
        .map { |recipe| recipe.user }.compact
    end
    def ingredients
        RecipeIngredient.all.select { |ri| ri.recipe == self }
        .map { |recipe| receipe.ingredient }
    end
    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
    end
    def allergens
        users.map { |user| user.allergens }.flatten
    end 
end