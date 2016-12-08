class Property < ApplicationRecord
  validates :user_id, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
  validates :year_built, presence: true
  validates :bathroom, presence: true
  validates :bedroom, presence: true
  validates :lot_size, presence: true
  validates :sqft, presence: true
  validates :house_type, presence: true
  validates :zpid, presence: true
end
