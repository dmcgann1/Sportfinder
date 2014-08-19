class UserSport < ActiveRecord::Base
  belongs_to :user
  belongs_to :sport

  validates_uniqueness_of :sport_id, scope: :user_id
  # validates :skill_level, inclusion: { in: %w(Beginner, Intermediate, Advanced) }

end
