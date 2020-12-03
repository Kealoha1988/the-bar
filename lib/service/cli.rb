require 'pry'


class Cli

    attr_accessor :user, :drink, :liquor, :glass

  

    def start
        puts "Who dis?"
        @user = name
        space
        puts "Hello #{@user} what spirit would you like?"
        @liquor = liquor
        space
        puts "Would you like some info about #{@liquor}?"
        if yes_no == "yes"
            space
            sleep(1)
            Api.load_liquor(@liquor)
            liquor_info
        else
            space
            sleep(1)
            puts "Know it all...."
        end
        space
        sleep(2)
        puts "Would you like to see the #{@liquor} cocktails I can make for you?"
        if yes_no == "yes"
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
        sleep(1)
        puts "So what will it be?"
        @drink = chose_drink
        space
        puts "Would you like to know how to make your #{@drink}?"
        Api.load_info(@drink)
        if yes_no == "yes"
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
        puts "Would you like another drink?"
        if yes_no == "yes"
            space
            another
            else
                space
                sleep(1)
                puts "Cheers!!"
            end
    end


    def another
        sleep(2)
        puts "So #{@user} what spirit would you like this time?"
        @liquor = liquor
        space
        puts "Would you like some info about #{@liquor}?"
        if yes_no == "yes"
            space
            sleep(1)
            Api.load_liquor(@liquor)
            liquor_info.pop
        else
            space
            sleep(1)
            puts "Know it all...."
        end
        space
        sleep(2)
        puts "Would you like to see the #{@liquor} cocktails I can make for you?"
        if yes_no == "yes"
            space
            sleep(1)
            puts "Just one moment..."
            Api.load_cocktails(@liquor)
            space
            drink_list.pop
        else
            sleep(1)
            puts "I like a person that knows what they want.."
        end
        space
        sleep(1)
        puts "So what will it be?"
        @drink = chose_drink
        space
        puts "Would you like to know how to make your #{@drink}?"
        Api.load_info(@drink)
        if yes_no == "yes"
        space
        how_to.pop
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
        puts "Would you like another drink?"
        if yes_no == "yes"
            space
            another
            else
                space
                sleep(1)
                puts "Cheers!!"
            end
    end



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

    def glass
        gets.chomp
    end

    def space
        puts "              "
    end


    
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
        elsif @glass == "Coupe Glass" or @glasse == "Pousse cafe glass" or @glass == "Whiskey sour glass" or @glass == "Nick and Nora Glass"
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
