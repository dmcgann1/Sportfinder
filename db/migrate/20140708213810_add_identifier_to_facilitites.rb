class AddIdentifierToFacilitites < ActiveRecord::Migration
  def change
    add_column :facilities, :identifier, :string
  end
end
