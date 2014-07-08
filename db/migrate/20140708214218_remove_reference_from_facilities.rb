class RemoveReferenceFromFacilities < ActiveRecord::Migration
  def change
    remove_column :facilities, :reference
  end
end
