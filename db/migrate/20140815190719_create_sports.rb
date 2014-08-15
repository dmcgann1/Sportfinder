class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :name
    end
  end
end
