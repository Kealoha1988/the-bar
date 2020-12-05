require 'pry'
# require 'httxy'
require 'rest-client'
require 'json'

class Api


    def self.base_url
        "https://thecocktaildb.com/api/json/v2/9973533/"
    end

        def self.load_margarita
        cool = RestClient.get(base_url + "search.php?s=margarita")
        data = JSON.parse(cool.body)
        data["drinks"].each do |x|
            Recipe.new(x)
        end
    end

end

