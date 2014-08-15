class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :name, :string
    add_column :users, :image, :text
    add_column :users, :access_token, :string
    add_column :users, :hometown, :string
    add_column :users, :location, :string
  end
end
