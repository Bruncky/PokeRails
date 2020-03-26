require 'open-uri'
require 'nokogiri'

class PokemonScraper
    def call
        # Opens the URL and reads it
        html_doc = Nokogiri::HTML(open("https://pokemondb.net/pokedex/national").read)

        # Searches the URL for the given CSS selector
        html_doc.search('.ent-name').each_with_index.map do |element, index|
            element.text
        end
    end
end
