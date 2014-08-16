class UserBooking < ActiveRecord::Base
  belongs_to :user
  belongs_to :booking, dependent: :destroy
end
