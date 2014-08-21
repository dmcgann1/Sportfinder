class FavouriteSerializer < ActiveModel::Serializer
  attributes :id, :name, :formatted_address, :formatted_phone_number, :rating, :website, :img_url
end
