class PokemonsController < ApplicationController
    def index
        @pokemons = Pokemon.all
    end

    def show
        # @pokemon = Pokemon.new()
    end
end
