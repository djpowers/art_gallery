class Artwork < ActiveRecord::Base
  validates :date_created, date: true
  validates :date_listed, date: true
  validates_numericality_of :asking_price, allow_nil: true, allow_blank: true,
    greater_than_or_equal_to: 0
  validates_numericality_of :medium_id
  validates_numericality_of :artist_id
  validates_numericality_of :collection_id
  validates_numericality_of :customer_id
  validates :for_sale?, :inclusion => {:in => [true, false]}

  belongs_to :medium
  belongs_to :artist
  belongs_to :collection
  belongs_to :customer
end
