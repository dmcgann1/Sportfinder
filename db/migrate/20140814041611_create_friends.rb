class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :uid
      t.string :name
      t.references :user, index: true
    end
  end
end
