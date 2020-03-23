class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :generation
      t.string :pokedex_region
      t.json :locations
      t.integer :number
      t.string :name
      t.string :nickname
      t.json :gender
      t.string :types, array: true, default: []
      t.integer :level
      t.json :evolutions
      t.string :nature
      t.json :ability
      t.json :moves
      t.json :learnable_moves
      t.json :egg
      t.string :held_item
      t.json :stats
      t.references :user, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
