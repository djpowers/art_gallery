class Medium < ActiveRecord::Base
  has_many :artworks

  validates_presence_of :title
  validates_presence_of :artwork_id

end
