class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :facility, index: true
      t.references :sport, index: true
      t.time :time
    end
  end
end
