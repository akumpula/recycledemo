class Listing < ActiveRecord::Base
	belongs_to :room
	belongs_to :age 
	has_many :colorings 
	has_many :colors, through: :colorings
end

class Room < ActiveRecord::Base
	has_many :listings
end

class Age < ActiveRecord::Base
	has_many :listings
end

class Colorings < ActiveRecord::Base
	belongs_to :listing
	belongs_to :color
end

class Color < ActiveRecord::Base
	has_many :colorings
	has_many :listings, through: :taggings
end

