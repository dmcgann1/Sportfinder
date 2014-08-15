class CreateUserBookings < ActiveRecord::Migration
  def change
    create_table :user_bookings do |t|
      t.references :user, index: true
      t.references :booking, index: true
    end
  end
end
