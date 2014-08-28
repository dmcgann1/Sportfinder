class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:facebook]

  has_many :reviews
  has_many :votes
  has_many :likes
  has_many :facilities, through: :likes
  has_many :friendships
  has_many :friends, through: :friendships
  has_many :user_sports
  has_many :sports, through: :user_sports
  has_many :user_bookings
  has_many :bookings, through: :user_bookings


  def vote_for(review)
    review.votes.find_by(user_id: id)
  end

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.email = auth.info.email || auth.info.first_name + auth.info.last_name + "@facebook.com"
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.image = auth.info.image
      user.access_token = auth.credentials.token
      user.save!
      user.add_friends
      # user.get_locations
    end
  end

  def add_friends
    @graph = Koala::Facebook::API.new(access_token)

    @graph.get_connection("me", "friends").each do |hash|
      self.friendships.where(friend_id: User.find_by(uid: hash['id']).id).first_or_create
    end
  end

  # Need Permission to ask for Users location data
  # def get_locations
  #   data = @graph.get_object("me")
  #   self.hometown = data["hometown"]["name"] || "n/a"
  #   self.location = data["location"]["name"] || "n/a"
  # end

end
