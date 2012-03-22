class DoubleImageElement < PageElement
  key :first_image_uid, String
  image_accessor :first_image
  key :second_image_uid, String
  image_accessor :second_image
end
