class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :end_date, :brief, :video, :target_amount, :image_src
  has_one :category
  has_one :user

  def image_src
    object.image.url
  end
end
