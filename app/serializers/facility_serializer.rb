class FacilitySerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url, :formatted_address, :formatted_phone_number, :rating, :website, :reviews

  def reviews
    array = []
    object.reviews.sort_by(&:score).reverse.each do |review|
      array << {id: review.id, user: review.user.name, score: review.score, body: review.body}
    end
    array
  end
end

