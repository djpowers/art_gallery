require 'spec_helper'

describe Artist do

  it { should have_valid(:name).when("John", "Dave", "Kelly Ericson") }
  it { should_not have_valid(:name).when(nil, '') }

  it { should have_valid(:email).when("john@artistry.com", "kelly1@artistry.com") }
  it { should_not have_valid(:email).when(nil, '') }

  it { should have_valid(:birthplace).when("Boston, MA", "Massachusetts") }

  it { should have_valid(:art_style).when("John became an artist at the age of 3.") }

end