

class Info
    attr_accessor :idIngredient, :strIngredient, :strDescription

    @@all = []

    def initialize(data)
        @idIngredient = data["idIngredient"]
        @strIngredient = data["strIngredient"]
        @strIngredient = data["strDescription"]
        @@all << self
    end

    def self.all
        @@all
    end


end

