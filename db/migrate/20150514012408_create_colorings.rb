class CreateColorings < ActiveRecord::Migration
  def change
    create_table :colorings do |t|
      t.integer :listing_id
      t.integer :color_id

      t.timestamps null: false
    end
  end
end
