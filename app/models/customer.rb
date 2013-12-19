class Customer < ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :name

end
