class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image, :hometown, :location, :friends

  has_many :sports
  has_many :bookings
  has_many :facilities

  def friends
    array = []
    object.friends.each do |friend|
      array << {id: friend.id, name: friend.name, email: friend.email, image: friend.image}
    end
    array
  end

end
