class Customer < ActiveRecord::Base
  has_many :customer_favorite_collections,
    dependent: :destroy
  has_many :collections,
    through: :customer_favorite_collections
  validates_email_format_of :email
  validates_presence_of :name


end
