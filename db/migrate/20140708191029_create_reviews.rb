class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true
      t.references :facility, index: true
      t.text :body
      t.integer :vote_count
      t.datetime :submitted_at
      t.timestamps
    end
  end
end
