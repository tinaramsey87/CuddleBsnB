require 'rails_helper'

describe City do
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }

  it { should have_many :listings}
end
