class ChangePokemonsTypesToJson < ActiveRecord::Migration[5.2]
  def change
      change_column :pokemons, :types, :json
  end
end
