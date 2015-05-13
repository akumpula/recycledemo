
class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.string :room
      t.string :age
      t.string :color
      t.integer :price
      t.timestamps null: false
    end
end
end
