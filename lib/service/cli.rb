

class Cli
    
    attr_accessor :user, :drink, :liquor, :glass, :drink_info, :ingredient_info


    
    
    def start
        scene_1
        scene_2
    end
    
    
    def another
        optional_scene
        scene_2
    end
    
    
    #user input

    def yes_no                  #used for yes/no questions
        user_input = gets.chomp.downcase
        if user_input == "yes" || user_input == "yes please" || user_input == "ok" || user_input == "please" || user_input == "okay" || user_input == "k" || user_input == "yeah" || user_input == "y" || user_input == "ya" || user_input == "yea" || user_input == "yep" || user_input == "sounds good" || user_input == "aight" || user_input == "alright"  || user_input == "alrighty" || user_input == "sure" || user_input == "why not" || user_input == "absolutely" || user_input == "definitely" || user_input == "def" || user_input == "positive" || user_input == "i guess"
            "yes"
        elsif user_input == "exit"
            bounce
        else
            "no"
        end
    end
    
    
    def name                    #get att name from user input
        input = gets.chomp.downcase
        if input == "exit"
            bounce
        else
            input.capitalize
        end
    end
    
    
    def liquor                  #get att liquor from user input
        input = gets.chomp.downcase
        if input == "exit"
            bounce
        else
            input
        end
    end

    def bounce                  #exit the app
        space
        puts "Have a CHAMPERS on me!!"
        space
        champagne_flute
        space
        exit
    end
    
    def chose_drink             #get user input for att drink from user
        input = gets.chomp
        if input == "1"
            "Margarita"
        elsif input == "2"
            "Blue Margarita"
        elsif input == "3"
            "Tommy's Margarita"
        elsif input == "4"
            "Whitecap Margarita"
        elsif input == "5"
            "Strawberry Margarita"
        elsif input == "6"
            "Smashed Watermelon Margarita"
        elsif input == "exit"
            bounce
        else
            puts "Sorry I don't believe that's a MARG!"
            puts "Please follow the instructions!"
            chose_drink
        end
    end
    
    
    def space                  #line spacer
        puts "              "
    end
    
    #end of user input
      
    def drink_list             #makes the menu
        Recipe.all.each.with_index(1) do |x, index|
            puts "#{index}  #{x.drink_name}"
        end
    end

    
    def your_drink             #finds the drink by name makes new array
        cool = []
        cool << Recipe.all.find{|n| n.drink_name == @drink}
        @drink_info = cool
    end
end


    def your_drink_how         #take new att array and get instructions
        @drink_info.find{|n| puts n.drink_instructions}
    end


    def your_ingredients        #take new att arry and make another array for ingredients
        @drink_info.select{|n| @ingredient_info  = n.ingredient_1, n.ingredient_2, n.ingredient_3, n.ingredient_4, n.ingredient_5, n.ingredient_6, n.ingredient_7}
    end

    
    def glassed                 #take new att array to find and att glass type
        @drink_info.find{|g| @glass = g.glass_type}
    end
    
    
    def serve                   #make att glass draw glass type and serves
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
            shake
            rocks_glass
        elsif @glass == "Coupe Glass" or @glass == "Pousse cafe glass" or @glass == "Whiskey sour glass" or @glass == "Nick and Nora Glass" or @glass == "Margarita/Coupette glass"
            shake
            coupe_glass
        else
            shake
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


                                #pictures of glasses
def martini_glass
    puts " \\\-----/"
    puts "  \\\   / "
    puts "   \\\ /  "
    puts "    |   "
    puts "    |   "
    puts "    |   "
    puts "   ---  Enjoy your #{@drink} #{@user}!"
end

def rocks_glass
puts " |       |"
puts " |-------|"
puts " |       |"
puts " |_______| Enjoy your #{@drink} #{@user}!"
end

def coupe_glass
puts "   |-------|"
puts "    \\\_____/ "
puts "       |    "
puts "       |    "
puts "      ---  Enjoy your #{@drink} #{@user}!  "
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
puts "   ----   Cheers! This one is on the house!!"
end

def highball_glass
puts " |    |"
puts " |----|"
puts " |    |"
puts " |    |"
puts " |____|  Enjoy your #{@drink} #{@user}!"
end

                                #The program


def scene_1
    space
    space
    puts "Hey gimmie a sec.."
    space
    Api.load_margarita
    puts "Welcome to The Marg Bar who dis?"
    @user = name
    space
    puts "Hello #{@user}!"
    sleep(1)
    space
    puts "By the way if you ever need to leave just type exit"
    sleep(2)
    space
    puts "Let me get you a menu"
    sleep(2)
    space
    drink_list
    space
    sleep(1)
    puts "Obviously being a MARG BAR we only serve margs..."
end



def scene_2
    sleep(1)
    space
    puts "So what will it be?"
    space
    puts "Just type the number to the left of the marg you would like."
    @drink = chose_drink
    your_drink
    space
    puts "Would you like to know how to make a #{@drink}?"
    if yes_no == "yes"
        space
        puts "These are the ingredients you need"
        space
        sleep(1)
        your_ingredients
        puts @ingredient_info.uniq
        sleep(2)
        space
        puts "Then you just have to"
        sleep(1)
        space
        your_drink_how
        space
        puts "Ready to for your drink?"
        if yes_no == "yes"
            space
            puts "K give me one sec"
        else
        space
        puts "K take your time"
        sleep(4)
        space
        puts "Alright thats long enough..."
        end
    else
        space
        sleep(1) 
        puts "Aight then what ever"
        space
    end
    space
    sleep(2)
    puts "Let me get you the proper glass because this is NEW YORK!!"
    glassed
    space
    sleep(2)
    serve
    space
    sleep(2)
    space
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

    
    
    
    def optional_scene
        sleep(2)
        puts "So #{@user} the last MARG was pretty good huh?"
        space
        
        drink_list
        space
        sleep(1)
        "You know the drill"
    end
   