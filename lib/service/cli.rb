require 'pry'


class Cli

    attr_accessor :user, :drink, :liquor, :glass

  

    def start
        scene_1
        scene_2
    end


    def another
        new_drink

        scene_2
    end


#user input
    def yes_no
        gets.chomp
    end


    def name
        gets.chomp
    end


    def liquor
        gets.chomp
    end

    def chose_drink
        gets.chomp
    end

    
    def space
        puts "              "
    end

    def liquor_options
        liquors = ["GIN", "TEQUILA", "SCOTCH", "BOURBON", "VODKA"]
        if liquors.include?(@liquor.upcase) == true
         @liquor
        else
            sleep(1)
         puts "Sorry I don't have that right now so you are getting vodka"
         @liquor = "vodka"
        end
     end

        # def valid_drink
    #     if drink_list.include?(@drink) == true
    #         @drink
    #     else
    #         puts "Ok lets try that again"
    #         scene_2
    #     end
    # end





    
    #end of user input

    
    def liquor_info
        Info.all.each do |x|
            puts x.strIngredient
        end
    end
    
    def drink_list
        Drink.all.each do |x|
            puts x.strDrink
        end
    end
    
    def how_to
        Recipe.all.each do |x|
            puts x.strInstructions
        end
    end

    def spell_check
        if Drink.all.find do |x| x.strDrink.upcase == @drink.upcase
            Api.load_info(@drink)
        end
        else
            serve
        end
    end
    
    def glassed
        Recipe.all.each do |x| 
            @glass = x.strGlass
        end
    end
    
    
    
    
    
    def serve
        if @glass == "Cocktail glass" or @glass == "Margarita glass" or @glass == "Martini Glass"
            shake
            martini_glass
        elsif @glass == "Champagne flute" or @glass == "Wine Glass"
             sleep(1)
             puts "pop"
            sleep(1)
            puts "pour......"
            sleep(2)
            champagne_flute
        elsif @glass == "Old-fashioned glass" or @glass == "Whiskey Glass"
            stir
            rocks_glass
        elsif @glass == "Coupe Glass" or @glasse == "Pousse cafe glass" or @glass == "Whiskey sour glass" or @glass == "Nick and Nora Glass" or @glass == "Margarita/Coupette glass"
            shake
            coupe_glass
        else
            stir
            highball_glass
        end
    end

    def shake
        sleep(1)
        puts "shake..."
        sleep(1)
        puts "shake..."
        sleep(2)
    end

    def stir
        sleep(1)
            puts "stir..."
            sleep(1)
            puts "stir..."
            sleep(2)
    end


    
    
    def martini_glass
        puts " \\\-----/"
        puts "  \\\   / "
        puts "   \\\ /  "
        puts "    |   "
        puts "    |   "
        puts "    |   "
        puts "   ---  Enjoy your #{@drink} #{@user
}!"
end


def rocks_glass
puts " |       |"
puts " |-------|"
puts " |       |"
puts " |_______| Enjoy your #{@drink} #{@user
}!"
end

def coupe_glass
puts "   |-------|"
puts "    \\\_____/ "
puts "       |    "
puts "       |    "
puts "      ---  Enjoy your #{@drink} #{@user
}!  "
end

def champagne_flute
puts "  |    |"
puts "  |----|"
puts "  |o  o|"
puts "  |  o |"
puts "   \\\o / "
puts "    ||  "
puts "    ||  "
puts "    ||  "
puts "   ----   Enjoy your #{@drink} #{@user
}!"
end

def highball_glass
    puts " |    |"
    puts " |----|"
    puts " |    |"
    puts " |    |"
    puts " |____|  Enjoy your #{@drink} #{@user
    }!"
end

end



def scene_1
    puts "New bar who dis?"
    @user = name
    space
    puts "Hello #{@user} what spirit would you like? I have Vodka, Gin, Bourbon, Scotch, and Tequila."
    @liquor = liquor
    liquor_options
    space
    puts "Would you like some info about #{@liquor}?"
    if yes_no.upcase == "YES"
        space
        sleep(1)
        Api.load_liquor(@liquor)
        liquor_info
    else
        space
        sleep(1)
        puts "Haha just checking...."
    end
    space
    sleep(2)
    puts "Would you like to see the #{@liquor} cocktails I can make for you?"
    Api.load_cocktails(@liquor)
    if yes_no.upcase == "YES"
        space
        sleep(1)
        puts "Just one moment..."
        space
        drink_list
    else
        sleep(1)
        puts "Fine then..."
    end
    space
end

def scene_2
    sleep(1)
    puts "So what will it be? Please pay attention to the"
    @drink = chose_drink
    space
    spell_check
    puts "Would you like to know how to make your #{@drink}?"
    space
    if yes_no.upcase == "YES"
        space
        how_to
    else
        space
        sleep(1) 
        puts "Aight then"
    end
    space
    puts "Let me get you the proper glass"
    glassed
    space
    serve
    space
    sleep(2)
    space
    Drink.all.clear
    Info.all.clear
    Recipe.all.clear
    puts "Would you like another drink?"
    if yes_no.upcase == "YES"
        space
        another
        else
            space
            sleep(1)
            puts "Cheers!!"
        end
    end

    def new_drink

        puts "So #{@user} what spirit would you like this time?"
        @liquor = liquor
        liquor_options
        space
        puts "Want me to tell you a little about #{@liquor}?"
        if yes_no.upcase == "YES"
            space
            sleep(1)
            Api.load_liquor(@liquor)
            liquor_info
        else
            space
            sleep(1)
            puts "Cool cool...."
        end
        space
        sleep(2)
        puts "Would you like to see the #{@liquor} cocktails I can make for you?"
        if yes_no.upcase == "YES"
            space
            sleep(1)
            puts "Just one moment..."
            Api.load_cocktails(@liquor)
            space
            drink_list
        else
            sleep(1)
            puts "Fine then..."
        end
        space
    end