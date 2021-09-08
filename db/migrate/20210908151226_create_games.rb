class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :category
      t.integer :cost
      t.integer :rate
      t.float :average_length
      t.string :img_url
      t.float :storage_space
      t.references :console, null: false, foreign_key: true

      t.timestamps
    end
  end
end
