class Collection < ActiveRecord::Base
  has_many :customer_favorite_collections
  has_many :customers,
    through: :customer_favorite_collections
  has_many :artworks

  validates_presence_of :name

end
