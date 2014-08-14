class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:facebook]

  has_many :reviews
  has_many :votes
  has_many :likes
  has_many :friends

  def vote_for(review)
    review.votes.find_by(user_id: id)
  end

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.image = auth.info.image
      user.access_token = auth.credentials.token
      user.save!
      user.add_friends
    end
  end

  def add_friends
    graph = Koala::Facebook::API.new(access_token)

    graph.get_connection("me", "friends").each do |hash|
      self.friends.where(name: hash['name'], uid: hash['uid']).first_or_create
    end
  end
end
