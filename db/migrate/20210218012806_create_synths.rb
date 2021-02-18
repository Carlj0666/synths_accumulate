class CreateSynths < ActiveRecord::Migration[6.1]
  def change
    create_table :synths do |t|
      t.string :name
      t.string :brand
      t.boolean :hybrid
      t.float :price
      t.string :description
      t.integer :user_id
      t.integer :tech_id

      t.timestamps
    end
  end
end
