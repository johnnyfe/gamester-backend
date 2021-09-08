class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.integer :years_of_experience
      t.string :photo_url
      t.string :country

      t.timestamps
    end
  end
end
