class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.string :description
      t.integer :Price
      t.integer :room_id
      t.integer :age_id
      t.image :picture

      t.timestamps null: false
    end
  end
end
