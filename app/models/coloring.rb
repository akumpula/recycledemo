class Coloring < ActiveRecord::Base
	belongs_to :listing
	belongs_to :color
end
