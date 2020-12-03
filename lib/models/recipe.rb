
class Recipe
    attr_accessor :strInstructions, :strDrink, :strGlass

    @@all = []
  

    def initialize(data)
        @strDrink = data["strDrink"]
        @strInstructions = data["strInstructions"]
        @strGlass = data["strGlass"]
        @@all << self
    end

    def self.all
        @@all
    end


end

