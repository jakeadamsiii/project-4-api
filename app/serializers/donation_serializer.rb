class DonationSerializer < ActiveModel::Serializer
  attributes :id, :amount
  has_one :user
  has_one :project
end
