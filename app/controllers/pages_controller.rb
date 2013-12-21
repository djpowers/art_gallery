class PagesController < ApplicationController
  def index
    @customers = Customer.all
  end
end
