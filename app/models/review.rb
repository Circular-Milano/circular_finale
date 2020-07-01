class Review < ApplicationRecord
  belongs_to :order
  validates :content, presence: true, length: { minimum: 20 }
  validates :rating, presence: true
end
