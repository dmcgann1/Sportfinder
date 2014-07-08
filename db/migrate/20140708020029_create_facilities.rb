class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.text :sport_type
      t.text :area
      t.text :name
    end
  end
end
