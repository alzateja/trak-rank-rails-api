class UserRating < ApplicationRecord
  belongs_to :user, inverse_of: :user_ratings
  belongs_to :album, inverse_of: :user_ratings

  validates :album, :user, presence: true
end
