#require 'date'


class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_one :review
  #  validates_presence_of :item, :user, :start_time, :end_time
end


#def order_status(start_date, end_date)
 #   date_today = DateTime.current.beginning_of_day
 #   if date_today > end_date
  #    'expired'
  #  elsif (date_today <= end_date) && (date_today >= start_date)
  #    'active'
  #  else
  #    'inactive'
  #  end
#end
