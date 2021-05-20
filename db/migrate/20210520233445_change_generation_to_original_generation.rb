class ChangeGenerationToOriginalGeneration < ActiveRecord::Migration[6.1]
    def change
        rename_column :pokemons, :generation, :original_generation
        rename_column :pokemons, :pokedex_region, :original_pokedex_region
    end
end
