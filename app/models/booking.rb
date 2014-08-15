class Booking < ActiveRecord::Base
  has_many :user_bookings
  has_many :users, through: :user_bookings
  belongs_to :sport
  belongs_to :facility
end
