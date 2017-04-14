class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :end_date, :brief, :video, :image, :target_amount
  has_one :category
  has_one :user
end
