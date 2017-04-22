class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image_src, :image

  def image_src
    object.image.url
  end
end
