class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :amount, presence: true
  validates :user, presence: true
  validates :project, presence: true
end
