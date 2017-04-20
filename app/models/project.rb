class Project < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_one :category
  belongs_to :user
  has_many :donations

  validates :title, presence: true, uniqueness: true
  validates :brief, presence: true
  validates :end_date, presence: true
  validates :target_amount, presence: true
end
