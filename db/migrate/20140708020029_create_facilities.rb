class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.text :name
      t.integer :formatted_phone_number
      t.text :formatted_address
      t.decimal :rating
      t.text :website
      t.text :img_url
      t.integer :reviews
      t.text :reference
      t.text :opening_hours
    end
  end
end
