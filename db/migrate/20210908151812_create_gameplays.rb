class CreateGameplays < ActiveRecord::Migration[6.1]
  def change
    create_table :gameplays do |t|
      t.integer :game_time
      t.integer :likes
      t.string :video_url
      t.references :game, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
