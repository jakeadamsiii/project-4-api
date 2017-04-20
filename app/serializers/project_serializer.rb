class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :end_date, :brief, :video, :target_amount, :image_src, :current_amount, :amount_remaining
  has_one :category
  has_one :user
  has_many :donations

  def image_src
    object.image.url
  end

  def current_amount
    object.donations.reduce(0) { |sum,n| sum + n.amount }
  end
  
  def amount_remaining
    object.target_amount - current_amount
  end

end
