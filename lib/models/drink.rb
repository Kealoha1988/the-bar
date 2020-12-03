

class Drink
    attr_accessor :strDrink, :strDrinkThumb, :idDrink

    @@all = []

    def initialize(data)
        @strDrink = data["strDrink"]
        @strDrinkThumb = data["strDrinkThumb"]
        @idDrink = data["idDrink"]
        @@all << self
    end

    def self.all
        @@all
    end


end
