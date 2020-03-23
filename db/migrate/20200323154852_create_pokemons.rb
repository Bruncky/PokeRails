class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :generation
      t.string :pokedex_region
      t.string :locations, array: true, default: []
      t.integer :number
      t.string :name
      t.string :nickname
      t.json :gender
      t.string :type
      t.json :evolutions
      t.string :nature
      t.string :ability
      t.string :moves, array: true, default: []
      t.string :learnable_moves, array: true, default: []
      t.json :egg
      t.string :held_item
      t.json :stats
      t.references :user, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
