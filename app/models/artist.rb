class Artist < ActiveRecord::Base
  validates_presence_of :name
  validates_email_format_of :email

  has_many :artworks
end
