class Color < ActiveRecord::Base
	has_many :colorings
	has_many :listings, through: :colorings
end
