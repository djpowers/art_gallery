require 'spec_helper'

describe CustomerFavoriteCollection do
  it {should validate_presence_of :customer}
  it {should validate_numericality_of :customer_id}

  it {should validate_presence_of :collection}
  it {should validate_numericality_of :collection_id}

  it {should belong_to(:customer)}
  it {should belong_to(:collection)}
end
