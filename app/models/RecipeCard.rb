class RecipeCard
    attr_reader :user, :recipe, :date

    attr_accessor :rating
    @@all = []

   def initialize(user, recipe, date, rating=5)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    @@all << self
   end

   def self.all
    @@all
   end
end