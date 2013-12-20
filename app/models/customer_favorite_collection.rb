class CustomerFavoriteCollection < ActiveRecord::Base
  belongs_to :customer
  belongs_to :collection
  validates_presence_of :customer
  validates_numericality_of :customer_id
  validates_presence_of :collection
  validates_numericality_of :collection_id
end
