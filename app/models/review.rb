class Review < ActiveRecord::Base

  has_many :votes
  belongs_to :user
  belongs_to :facility

  validates :body, presence: true

  def score
    score = votes.where(is_up: true).count - votes.where(is_up: false).count
  end
end
