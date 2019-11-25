class Ingredient
    attr_reader :name
    @@all = []
   def initialize(name)
      @name = name
      @@all << self
   end
   def self.all
      @@all
   end

   def self.most_common_allergen
     allergens = Allergy.all_ingredients
     frequency = allergens.reduce(Hash.new(0)) do |hash, ing|
        hash[ing.name] +=1
        hash
     end
     allergens.max{|allergen| frequency[allergen.name]}
   end

end

