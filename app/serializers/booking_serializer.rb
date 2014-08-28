class BookingSerializer < ActiveModel::Serializer
  attributes :id, :time, :users, :created_at

  has_one :sport
  has_one :facility

  def users
    array = []
    object.users.each do |user|
      array << {id: user.id, name: user.name, image: user.image}
    end
    array
  end
end
