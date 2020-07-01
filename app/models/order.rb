class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_one :review, dependent: :destroy # @order.reviews
end
