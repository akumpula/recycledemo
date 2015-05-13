class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end

class Listing < ActiveRecord::Base
	belongs_to :name
	belongs_to :description
	belongs_to :price
	belongs_to :room
	belongs_to :age
	has_many :colors
end

class Room < ActiveRecord::Base
	has_many :listings

end

class Age < ActiveRecord::Base
	has_many :listings
end
class Color < ActiveRecord::Base
	has_many :listing
end
