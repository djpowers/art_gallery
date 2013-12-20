require 'spec_helper'

describe Medium do
  it { should have_valid(:title).when('canvas') }
  it { should_not have_valid(:title).when(nil, '') }

  it { should have_valid(:artwork_id).when(FactoryGirl.create(:artwork).id) }
  it { should_not have_valid(:artwork_id).when(nil, '')}

  it { should have_many(:artworks) }
end
