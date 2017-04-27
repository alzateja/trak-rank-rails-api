class UserRatingSerializer < ActiveModel::Serializer
  attributes :id, :ratings, :comment, :status
  has_one :user
  has_one :album
end
