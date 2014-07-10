class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :facility, index: true
      t.references :user, index: true
    end
  end
end
