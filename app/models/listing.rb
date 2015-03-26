class Listing < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true
  validates :zip, presence: true

  belongs_to :city
end
