class Item < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :rating, inclusion: { in: 1..5}
end
