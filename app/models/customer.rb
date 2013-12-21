class Customer < ActiveRecord::Base
  has_many :customer_favorite_collections,
    dependent: :destroy
  has_many :collections,
    through: :customer_favorite_collections
  has_many :artworks
  validates_email_format_of :email
  validates_presence_of :name

  def total_amount_spent
    prices = []
    art_purchased = Artwork.where(customer_id: self).all
    art_purchased.each {|art| prices << art.asking_price}
    prices.inject(:+)
  end

  def favorite_collections
    collections = []
    all_collections = self.collections.all
    all_collections.each {|col| collections << col.name}
    collections
  end

end
