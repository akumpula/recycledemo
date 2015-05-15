class CreateImages < ActiveRecord::Migration
  def change
    create_table :picture do |t|
      add_attachment :listings, :picture
      t.attachment :picture
      t.timestamps null: false
    end
  end
end
