require 'spec_helper'

describe Customer do
  it { should have_valid(:name).when('Henrique', 'Jimbo') }
  it { should_not have_valid(:name).when('', nil) }

  it { should have_valid(:email).when('henrique@gmail.com', 'jimbo@aol.com') }
  it { should_not have_valid(:email).when('', nil) }
end
