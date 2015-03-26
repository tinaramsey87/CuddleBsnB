require 'rails_helper'

describe Listing do
  it { should validate_presence_of :name}
  it { should validate_presence_of :price}
  it { should validate_presence_of :zip}

  it { should belong_to :city}

end
