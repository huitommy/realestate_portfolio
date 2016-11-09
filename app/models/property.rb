class Property < ApplicationRecord
  belongs_to :property, optional: true
  belongs_to :wish_list, optional: true

  validates :user_id, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
  validates :year_built, presence: true
  validates :bathroom, presence: true
  validates :bedroom, presence: true
  validates :lot_size, presence: true
  validates :sqft, presence: true
  validates :house_type, presence: true
end
