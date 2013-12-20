class Customer < ActiveRecord::Base
  has_many :customer_favorite_collections
  has_many :collections,
    through: :customer_favorite_collections
  validates_presence_of :email
  validates_presence_of :name

end
