class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :pokemon, array: true, default: []
      t.references :user, foreign_key: true
    end
  end
end
