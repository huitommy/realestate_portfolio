class WatchList < ApplicationRecord
  belongs_to :user
  has_many :properties

  validates :user_id, presence: true
end
