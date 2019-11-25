class Ingredient
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
    end

    def self.most_common_allergen
        temp = Allergen.all.map{|alg| alg.ingredient}
        temp.max_by{|ing| temp.count(ing)}
    end

end
