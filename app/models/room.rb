class Room < ApplicationRecord
  belongs_to :user
  has_many :photos

  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :capacity, presence: true
  validates :bedroom_count, presence: true
  validates :bathroom_count, presence: true
end