class ChangeReferenceColumnToInteger < ActiveRecord::Migration
  def change
    remove_column :facilities, :reference, :text
    add_column :facilities, :reference, :integer
  end
end

