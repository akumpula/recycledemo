class AddPhotosToListings < ActiveRecord::Migration
  def change
  	change_table :listings do |t|
  		t.attachment :photo
  end
end
end