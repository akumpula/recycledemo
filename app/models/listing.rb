class Listing < ActiveRecord::Base
	belongs_to :room
	belongs_to :age
	has_many :colorings
	has_many :colors, through: :colorings
end
