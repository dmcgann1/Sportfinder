class CreateUserSports < ActiveRecord::Migration
  def change
    create_table :user_sports do |t|
      t.references :user, index: true
      t.references :sport, index: true
      t.string :skill_level
      t.string :rating
    end
  end
end
