class CreateConsoles < ActiveRecord::Migration[6.1]
  def change
    create_table :consoles do |t|
      t.string :name
      t.integer :cost
      t.string :img_url
      t.integer :storage_capacity

      t.timestamps
    end
  end
end
