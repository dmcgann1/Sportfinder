class Facility < ActiveRecord::Base

  has_many :reviews

  def self.google_create(object)
  f = Facility.create!(
    name: object.name,
    formatted_phone_number: object.formatted_phone_number,
    formatted_address: object.formatted_address,
    rating: object.rating,
    url: object.url,
    identifier: object.id
  )

  photo = object.photos[0]
  if photo
    f.update(img_url: photo.fetch_url(800))
    f.save!
  else
    f.update(img_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR6DvWxavCtGlz3CHRmACBDlv_hCDKlEHC5RiCsAqxp6T1RBEzf1w")
    f.save!
  end

    return f
  end

end
