
class Recipe

    attr_accessor  :drink_name, :ingredient_1, :ingredient_2, :ingredient_3, :ingredient_4, :ingredient_5, :ingredient_6, :ingredient_7, :drink_instructions, :glass_type, :list_ingredients 
    

    @@all = []

    
    
    def initialize(data)
        
        @drink_name = data["strDrink"]

        @drink_instructions = data["strInstructions"]

        @glass_type = data["strGlass"]

        @ingredient_1 = data["strIngredient1"]
        @ingredient_2 = data["strIngredient2"]
        @ingredient_3 = data["strIngredient3"]
        @ingredient_4 = data["strIngredient4"]
        @ingredient_5 = data["strIngredient5"]
        @ingredient_6 = data["strIngredient6"]
        @ingredient_7 = data["strIngredient7"]


        @@all << self
    end

    def self.all
        @@all
    end


end

