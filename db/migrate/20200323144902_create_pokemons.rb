class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :generation
      t.string :pokedex_region
      t.string :locations
      t.integer :number
      t.string :name
      t.string :nickname
      t.string :gender
      t.string :type
      t.string :evolutions
      t.string :nature
      t.string :ability
      t.string :moves
      t.string :learnable_moves
      t.string :egg
      t.string :held_item
      t.string :stats

      t.timestamps
    end
  end
end
