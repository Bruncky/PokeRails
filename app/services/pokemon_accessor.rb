require 'open-uri'
require 'nokogiri'

class PokemonAccessor
    def initialize
        @regions = {
            "Generation 1" => "Kanto",
            "Generation 2" => "Johto",
            "Generation 3" => "Hoenn",
            "Generation 4" => "Sinnoh",
            "Generation 5" => "Unova",
            "Generation 6" => "Kalos",
            "Generation 7" => "Alola",
            "Generation 8" => "Galar"
        }
    end

    def call
        scrape_names[0..8].each do |pokemon|
            save_pokemon(pokemon)
        end
    end

    # private

    def save_pokemon(pokemon)
        pokemon = Pokemon.new(
            generation: scrape_generation(pokemon),
            pokedex_region: @regions[scrape_generation(pokemon)],
            locations: scrape_locations,
            number: 26,
            name: pokemon,
            gender: {
                "gender": "Male",
                "ratio":
                {
                    "male": 50.2,
                    "female": 49.8
                }
            },
            types: ["Electric"],
            level: 100,
            nature: "Bashful",
            ability: {
                "name": "Static",
                "description": "The opponent has a 30% chance of being induced with PARALYZE when using an attack, that requires physical contact, against this Pokémon."
            },
            moves: {
                "Thunderbolt": {
                    "type": "Electric",
                    "category": "Special",
                    "attack": 90,
                    "accuracy": 100,
                    "PP": 15,
                    "effect %": 10,
                    "description": "A strong electric blast crashes down on the target. This may also leave the target with paralysis."
                },
                "Thunder": {
                    "type": "Electric",
                    "category": "Effect",
                    "attack": 110,
                    "accuracy": 70,
                    "PP": 10,
                    "effect %": 30,
                    "description": "A wicked thunderbolt is dropped on the target to inflict damage. This may also leave the target with paralysis."
                },
                "Electro Ball": {
                    "type": "Electric",
                    "category": "Special",
                    "accuracy": 100,
                    "PP": 10,
                    "effect %": 0,
                    "description": "The user hurls an electric orb at the target. The faster the user is than the target, the greater the move's power."
                },
                "Nuzzle": {
                    "type": "Electric",
                    "category": "Physical",
                    "attack": 20,
                    "accuracy": 100,
                    "PP": 20,
                    "effect %": 100,
                    "description": "The user attacks by nuzzling its electrified cheeks against the target. This also leaves the target with paralysis."
                }
            },
            learnable_moves: {
                "Discharge": {
                    "level": 32,
                    "type": "Electric",
                    "category": "Special",
                    "attack": 80,
                    "accuracy": 100,
                    "PP": 15,
                    "effect %": 30,
                    "description": "The user strikes everything around it by letting loose a flare of electricity. This may also cause paralysis."
                }
            },
            held_item: "Magnet",
            stats: {
                "HP": 267,
                "Attack": 250,
                "Defense": 136,
                "Speed": 274,
                "Sp. Def": 180,
                "Sp. Attack": 223
            }
        )
        # -----
        pokemon.user = User.last
        pokemon.team = Team.first
        # -----
        # pokemon_photo = URI.open("https://res.cloudinary.com/bruncky/image/upload/v1585056141/Pok%C3%A9Rails/Seed%20Images/Raichu.png")

        # pokemon.photos.attach(io: pokemon_photo, filename: 'pokemon.png', content_type: 'image/png')
        # -----
        pokemon.save!
    end

    # -------------------- SCRAPING METHODS --------------------

    def scrape_names
        # Opens the URL and reads it
        html_doc = Nokogiri::HTML(open("https://pokemondb.net/pokedex/national").read)

        # Searches the URL for the given CSS selector
        html_doc.search('.ent-name').each_with_index.map do |element, index|
            element.text
        end
    end

    def scrape_generation(pokemon)
        # Opens the URL and reads it
        html_doc = Nokogiri::HTML(open("https://pokemondb.net/pokedex/#{pokemon}").read)

        # Searches the URL for all the Generation in which that Pokémon was introduced
        # This is also used to determine the PokéDex region of origin for that Pokémon
        html_doc.search('.data-table.sprites-table.sprites-history-table > thead > tr th[2]').text
    end

    def scrape_locations(pokemon)
        # Opens the URL and reads it
        html_doc = Nokogiri::HTML(open("https://bulbapedia.bulbagarden.net/wiki/#{pokemon}_(Pokemon)").read)

        games_hash = {}

        # Searches the URL for a table containing the name of a game and where the
        # Pokémon can be found inside that game
        html_doc.search('.roundytr.roundybottom .roundy tr')[0..43].map do |row|
            row.search('th a').map do |game|
                row.search('tr > td').map do |location|
                    games_hash[game.text.strip] = location.text.strip
                end
            end
        end.reject! { |string| string.nil? || string.empty? }

        games_hash
    end

#     def scrape_test
#         # Opens the URL and reads it
#         html_doc = Nokogiri::HTML(open("https://bulbapedia.bulbagarden.net/wiki/Bulbasaur_(Pokemon)").read)
#
#         games_hash = {}
#
#         # Searches the URL for the given CSS selector
#         # This gets all the games + useless stuff
#         html_doc.search('.roundytr.roundybottom .roundy tr')[0..43].map do |row|
#             row.search('th a').map do |game|
#                 row.search('tr > td').map do |location|
#                     games_hash[game.text.strip] = location.text.strip
#                 end
#             end
#         end.reject! { |string| string.nil? || string.empty? }
#
#         games_hash
#     end
end
