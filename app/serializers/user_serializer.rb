class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :password_confirmation, :image_src

  def image_src
    object.image.url
  end
end
