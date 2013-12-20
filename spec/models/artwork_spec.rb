require 'spec_helper'

describe Artwork do
  it { should have_valid(:date_created).when(Date.parse("2013-12-20")) }
  it { should have_valid(:date_listed).when(Date.parse("2013-12-20")) }

  it { should have_valid(:asking_price).when(99.99, 100, 100.00) }
  it { should_not have_valid(:asking_price).when(-99.99, -1, "one") }

  it { should validate_numericality_of :medium_id }
  it { should validate_numericality_of :artist_id }
  it { should validate_numericality_of :collection_id }
  it { should validate_numericality_of :customer_id }

  it { should allow_value(true).for(:for_sale?) }
  it { should allow_value(false).for(:for_sale?) }

  end
