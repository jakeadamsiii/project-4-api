class Project < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :category
  belongs_to :user
  has_many :donations, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :brief, presence: true
  validates :end_date, presence: true
  validates :target_amount, presence: true
end
