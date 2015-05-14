class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :name

      t.timestamps null: false
    end
  end
end
