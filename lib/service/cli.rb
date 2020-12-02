require 'pry'


class Cli

    attr_accessor :user, :drink

    def initialize(user)
        @user = user

    end

    def start
        puts "Hello #{@user} what would you like to drink?"
    end

    def chose_drink(drink)
        @drink = drink
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

def high_ball
    puts " |    |"
    puts " |----|"
    puts " |    |"
    puts " |    |"
    puts " |____|  Enjoy your #{@drink} #{@user
    }!"
end

end


binding.pry