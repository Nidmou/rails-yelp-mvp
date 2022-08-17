class Review < ApplicationRecord
  RATING = (0..5)
  belongs_to :restaurant
  validates :rating,  inclusion: { in: RATING }, numericality: { only_integer: true }
  validates :rating , presence: true
  validates :content, presence: true
end
