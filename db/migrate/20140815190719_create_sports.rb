class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :name
      t.text :image
    end
  end
end
