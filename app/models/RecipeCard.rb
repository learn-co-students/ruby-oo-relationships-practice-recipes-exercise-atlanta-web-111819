class RecipeCard

    attr_accessor :recipe, :user
    attr_reader :date, :rating

    @@all = []

    def initialize(recipe, user, date = "2019-11-25", rating = 10)
        @recipe = recipe
        @user = user
        @date = date
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end


end