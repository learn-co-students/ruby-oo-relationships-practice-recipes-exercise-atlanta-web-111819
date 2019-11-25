
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

    def self.most_popular
        temp = RecipeCard.all.map{|rc| rc.user}
        temp.max_by{|user| temp.count(user)}
    end

    def users
        RecipeCard.all.select{|rc| rc.recipe == self}.map{|item| item.user}
    end

    def ingredients
        RecipeIngredient.all.select{|ri| ri.recipe == self}.map{|item| item.ingredient}
    end

    def allergens
        # binding.pry
        self.users.map{|use| use.allergens}.flatten.select{|alg| self.ingredients.include?(alg)}
    end

    def add_ingredients(ingredients)
        ingredients.map{|item| RecipeIngredient.new(self, item)}
    end

end