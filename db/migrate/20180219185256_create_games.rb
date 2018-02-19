class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :game_description
      t.string :developer
      t.string :publisher
      t.string :genre

      t.timestamps
    end
  end
end
