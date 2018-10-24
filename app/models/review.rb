class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :inclusion => 0..5
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
end
