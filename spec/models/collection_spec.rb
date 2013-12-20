require 'spec_helper'

describe Collection do
  it {should have_valid(:name).when("John", "Bruce the Boss")}
  it {should_not have_valid(:name).when(nil, "")}

  it { should have_many(:customer_favorite_collections) }
  it { should have_many(:customers).through(:customer_favorite_collections) }
  it { should have_many(:artworks) }

end
