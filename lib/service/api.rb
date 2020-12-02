require 'pry'
require 'httparty'
require 'rest-client'

class Api


    def self.base_url
        "https://thecocktaildb.com/api/json/v2/9973533/"
    end

    def self.load_data
        load_characters
    end

    def self.load_liquor(x)
        response = RestClient.get(base_url + "/search.php?i=#{x}")
        data = JSON.parse(response.body)
       
        end

        binding.pry

end





