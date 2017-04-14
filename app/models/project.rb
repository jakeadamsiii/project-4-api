class Project < ApplicationRecord
  has_one :category
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :brief, presence: true
  validates :end_date, presence: true
  validates :target_amount, presence: true
end
