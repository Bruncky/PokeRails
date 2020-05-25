require "open-uri"
require "nokogiri"

# This methods scrapes Pokémon names
class ScrapeNames
    def call
        # Opens the URL and reads it
        html_doc = Nokogiri::HTML(URI.open("https://pokemondb.net/pokedex/national").read)

        # Searches the URL for the given CSS selector
        html_doc.search(".ent-name").each_with_index.map do |element, _index|
            element.text
        end
    end
end
