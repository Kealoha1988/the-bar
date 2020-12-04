require 'pry'
# require 'httparty'
require 'rest-client'
require 'json'

class Api


    def self.base_url
        "https://thecocktaildb.com/api/json/v2/9973533/"
    end

    array = ["gin", "vodka", "bourbon", "scotch", "tequila"]

    def self.load_liquor(x)
        cool = RestClient.get(base_url + "/search.php?i=#{x}")
        data = JSON.parse(cool.body)
        data["ingredients"].each do |wack|
            Info.new(wack)
        end
    end

    def self.load_cocktails(x)
        cool = RestClient.get(base_url + "/filter.php?i=#{x}")
        data = JSON.parse(cool.body)
        data["drinks"].each do |wack|
            Drink.new(wack)
        end
    end

    def self.load_info(x)
        cool = RestClient.get(base_url + "search.php?s=#{x}")
        data = JSON.parse(cool.body)
        data["drinks"].each do |wack|
            Recipe.new(wack)
        end
    end
    
end

