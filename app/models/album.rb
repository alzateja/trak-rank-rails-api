class Album < ApplicationRecord
  has_many :users, through: :user_ratings
  has_many :user_ratings, dependent: :destroy

  validates :artist, presence: true
  validates :album, presence: true
end
