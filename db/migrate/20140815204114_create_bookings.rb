class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :facility, index: true
      t.references :sport, index: true
      t.datetime :time

      t.timestamps
    end
  end
end
