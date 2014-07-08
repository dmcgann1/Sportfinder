class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.text :name
      t.integer :formatted_phone_number
      t.text :formatted_address
      t.decimal :rating
      t.text :url
      t.text :img_url
      t.text :reference
    end
  end
end
