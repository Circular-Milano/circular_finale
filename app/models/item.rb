class Item < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  has_one_attached :photo
  has_many :orders
  has_many :reviews, through: :orders

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
