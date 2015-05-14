class AddPriceToListing < ActiveRecord::Migration
  def change
    add_column :listings, :Price, :string
  end
end
