class Listing < ActiveRecord::Base
	belongs_to :room
	belongs_to :age
    has_attached_file :photo, :styles => { :medium => "250x250>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
	has_many :colorings
	has_many :colors, through: :colorings
def self.search(search)
  if search.present?
    where('name LIKE ?', "%#{search}%")
  else
    where(true)
  end
end

end